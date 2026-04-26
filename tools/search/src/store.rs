//! SQLite + USearch readers. Mirrors the Python writer schema in
//! tools/indexer/odin_master/store.py.

use anyhow::{Context, Result};
use rusqlite::Connection;
use serde::Serialize;
use std::path::Path;
use usearch::{Index, IndexOptions, MetricKind, ScalarKind};

#[derive(Debug, Clone, Serialize)]
pub struct ChunkHit {
    pub id: i64,
    pub source_id: String,
    pub tier: i64,
    pub view: String,
    pub path: String,
    pub heading_path: String,
    pub char_offset: i64,
    pub text: String,
    /// Lower BM25 = better in SQLite's bm25() — we negate when emitting so
    /// downstream RRF treats higher score as better.
    pub score: f64,
}

pub fn open_db(path: &Path) -> Result<Connection> {
    Connection::open(path).with_context(|| format!("opening sqlite at {}", path.display()))
}

/// Sanitize a free-form user query for FTS5: quote each whitespace-delimited
/// token (so `context.allocator` is a literal token, not a syntax expression),
/// then join with OR so a multi-word query is fuzzy. BM25 handles ranking.
fn sanitize_fts_query(q: &str) -> String {
    q.split_whitespace()
        .map(|t| t.trim_matches(|c: char| !c.is_alphanumeric() && c != '.' && c != '_' && c != '-'))
        .filter(|t| !t.is_empty())
        .map(|t| format!("\"{}\"", t.replace('"', "\"\"")))
        .collect::<Vec<_>>()
        .join(" OR ")
}

pub fn keyword_search(
    con: &Connection,
    query: &str,
    top: usize,
    tiers: &[u8],
    source: Option<&str>,
) -> Result<Vec<ChunkHit>> {
    let safe_query = sanitize_fts_query(query);
    if safe_query.is_empty() {
        return Ok(vec![]);
    }
    let mut where_clauses = vec![
        "chunks.id = chunks_fts.rowid".to_string(),
        "chunks_fts MATCH ?1".to_string(),
    ];
    let mut params: Vec<Box<dyn rusqlite::ToSql>> = vec![Box::new(safe_query)];
    let mut next_idx = 2;
    if !tiers.is_empty() {
        let placeholders: Vec<String> = (0..tiers.len()).map(|i| format!("?{}", next_idx + i)).collect();
        where_clauses.push(format!("chunks.tier IN ({})", placeholders.join(",")));
        for t in tiers {
            params.push(Box::new(*t as i64));
            next_idx += 1;
        }
    }
    if let Some(s) = source {
        where_clauses.push(format!("chunks.source_id = ?{}", next_idx));
        params.push(Box::new(s.to_string()));
        next_idx += 1;
    }
    let limit_idx = next_idx;
    params.push(Box::new(top as i64));
    let sql = format!(
        "SELECT chunks.id, chunks.source_id, chunks.tier, chunks.view, chunks.path,
                chunks.heading_path, chunks.char_offset, chunks.text, bm25(chunks_fts) as bm25_score
         FROM chunks_fts, chunks
         WHERE {}
         ORDER BY bm25(chunks_fts) ASC LIMIT ?{}",
        where_clauses.join(" AND "),
        limit_idx
    );
    let mut stmt = con.prepare(&sql)?;
    let rows = stmt
        .query_map(rusqlite::params_from_iter(params.iter().map(|b| b.as_ref())), |row| {
            Ok(ChunkHit {
                id: row.get(0)?,
                source_id: row.get(1)?,
                tier: row.get(2)?,
                view: row.get(3)?,
                path: row.get(4)?,
                heading_path: row.get(5)?,
                char_offset: row.get(6)?,
                text: row.get(7)?,
                score: -row.get::<_, f64>(8)?, // higher score = better
            })
        })?
        .collect::<rusqlite::Result<Vec<_>>>()?;
    Ok(rows)
}

pub fn open_vector_index(path: &Path) -> Result<Index> {
    let opts = IndexOptions {
        dimensions: 1024,
        metric: MetricKind::Cos,
        quantization: ScalarKind::F32,
        ..Default::default()
    };
    let index = Index::new(&opts).context("creating usearch index")?;
    if path.exists() {
        index.load(path.to_str().context("usearch path not utf-8")?)?;
    }
    Ok(index)
}

pub fn vector_search(idx: &Index, query: &[f32], top: usize) -> Result<Vec<(u64, f32)>> {
    let matches = idx.search(query, top)?;
    Ok(matches
        .keys
        .iter()
        .copied()
        .zip(matches.distances.iter().copied())
        .collect())
}

pub fn fetch_chunks_by_ids(con: &Connection, ids: &[u64]) -> Result<Vec<ChunkHit>> {
    if ids.is_empty() {
        return Ok(vec![]);
    }
    let placeholders: Vec<String> = (0..ids.len()).map(|i| format!("?{}", i + 1)).collect();
    let sql = format!(
        "SELECT id, source_id, tier, view, path, heading_path, char_offset, text
         FROM chunks WHERE id IN ({})",
        placeholders.join(",")
    );
    let mut stmt = con.prepare(&sql)?;
    let params: Vec<Box<dyn rusqlite::ToSql>> = ids.iter().map(|i| Box::new(*i as i64) as _).collect();
    let rows = stmt
        .query_map(rusqlite::params_from_iter(params.iter().map(|b| b.as_ref())), |row| {
            Ok(ChunkHit {
                id: row.get(0)?,
                source_id: row.get(1)?,
                tier: row.get(2)?,
                view: row.get(3)?,
                path: row.get(4)?,
                heading_path: row.get(5)?,
                char_offset: row.get(6)?,
                text: row.get(7)?,
                score: 0.0,
            })
        })?
        .collect::<rusqlite::Result<Vec<_>>>()?;
    Ok(rows)
}

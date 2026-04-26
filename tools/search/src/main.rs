//! odin-search — hot-path search CLI for the odin_master corpus.
//!
//! Plan 3: BM25 (SQLite FTS5) + vector (USearch HNSW) + Reciprocal Rank Fusion.
//! Embeddings via Ollama /api/embed (qwen3-embedding:4b) with a deterministic
//! fake mode (ODIN_MASTER_FAKE_EMBEDDINGS=1) for tests.
//!
//! Flag surface (per spec §5.5):
//!   --json --top --tier --source --view
//!   --keyword-only --semantic-only --fast --doctor

mod embed;
mod fuse;
mod manifest;
mod repo_root;
mod settings;
mod store;

use anyhow::{Context, Result};
use clap::{Parser, ValueEnum};
use serde::Serialize;

#[derive(Clone, Copy, ValueEnum, PartialEq, Eq)]
enum View {
    Verbatim,
    Summary,
    All,
}

#[derive(Parser)]
#[command(
    name = "odin-search",
    about = "Local hybrid search CLI for the odin_master corpus.",
    version
)]
struct Cli {
    /// The query string. Required unless --doctor is passed.
    query: Option<String>,
    /// Emit machine-readable JSON instead of human-formatted output.
    #[arg(long)]
    json: bool,
    /// Number of results to return.
    #[arg(long, default_value_t = 10)]
    top: usize,
    /// Restrict to comma-separated tier numbers (e.g. `--tier 1,2`).
    #[arg(long, value_delimiter = ',')]
    tier: Vec<u8>,
    /// Restrict to a single manifest source id (e.g. `--source odin-book`).
    #[arg(long)]
    source: Option<String>,
    /// Filter by view: verbatim, summary, or all.
    #[arg(long, value_enum, default_value_t = View::All)]
    view: View,
    /// Force keyword-only mode (skip the embedding step).
    #[arg(long)]
    keyword_only: bool,
    /// Force vector-only mode (skip BM25).
    #[arg(long)]
    semantic_only: bool,
    /// Alias for --keyword-only.
    #[arg(long)]
    fast: bool,
    /// Diagnose: settings, index state, Ollama reachability.
    #[arg(long)]
    doctor: bool,
}

#[derive(Serialize)]
struct Output<'a> {
    query: &'a str,
    results: Vec<store::ChunkHit>,
}

fn main() -> Result<()> {
    let cli = Cli::parse();
    let cfg = settings::load();

    if cli.doctor {
        return run_doctor(&cfg);
    }

    let query = cli.query.as_deref().context(
        "<QUERY> is required (use --doctor for diagnostics)",
    )?;

    let root = repo_root::find().context(
        "could not locate content/manifest.yaml in any parent of cwd",
    )?;
    let idx_dir = repo_root::index_dir(&root);
    let db_path = idx_dir.join("chunks.sqlite");
    if !db_path.is_file() {
        anyhow::bail!(
            "index not built: {} (run `odin-master reindex` from the repo root)",
            db_path.display()
        );
    }
    let con = store::open_db(&db_path)?;

    let want_vector = !cli.keyword_only && !cli.fast && cfg.enable_vector_search;
    let want_keyword = !cli.semantic_only;

    let mut lists: Vec<Vec<store::ChunkHit>> = Vec::new();
    if want_keyword {
        let kw = store::keyword_search(&con, query, cli.top, &cli.tier, cli.source.as_deref())?;
        lists.push(kw);
    }
    if want_vector {
        let vec_path = idx_dir.join("vectors.usearch");
        if vec_path.is_file() {
            let qvec = embed::embed_query(query, &cfg.ollama_url, &cfg.embedding_model)?;
            let idx = store::open_vector_index(&vec_path)?;
            let hits = store::vector_search(&idx, &qvec, cli.top)?;
            let ids: Vec<u64> = hits.iter().map(|(k, _)| *k).collect();
            let mut chunks = store::fetch_chunks_by_ids(&con, &ids)?;
            // re-order chunks to match HNSW ranking
            chunks.sort_by_key(|c| ids.iter().position(|i| *i as i64 == c.id).unwrap_or(usize::MAX));
            lists.push(chunks);
        }
    }

    let mut combined = if lists.len() == 1 {
        lists.into_iter().next().unwrap()
    } else {
        fuse::rrf_combine(lists)
    };

    if cli.view != View::All {
        let v = match cli.view {
            View::Verbatim => "verbatim",
            View::Summary => "summary",
            View::All => unreachable!(),
        };
        combined.retain(|c| c.view == v);
    }

    if combined.len() > cli.top {
        combined.truncate(cli.top);
    }

    if cli.json {
        let out = Output { query, results: combined };
        serde_json::to_writer_pretty(std::io::stdout(), &out)?;
        println!();
    } else {
        if combined.is_empty() {
            eprintln!("(no results)");
        } else {
            let bases = manifest::source_base_dirs(&root).unwrap_or_default();
            let total = combined.len();
            for (i, hit) in combined.iter().enumerate() {
                print_hit(i + 1, hit, bases.get(&hit.source_id));
                if i + 1 < total {
                    println!();
                }
            }
        }
    }
    Ok(())
}

fn print_hit(n: usize, hit: &store::ChunkHit, base_dir: Option<&std::path::PathBuf>) {
    println!("{:>3}. {}/{}  [t{}]", n, hit.source_id, hit.path, hit.tier);
    let heading = hit.heading_path.trim();
    if !heading.is_empty() && heading != "/" {
        println!("     {}", heading);
    }
    let snippet: String = hit.text.chars().take(400).collect();
    let trailing = if hit.text.chars().count() > 400 { "…" } else { "" };
    for line in snippet.lines() {
        println!("     > {}", line);
    }
    if !trailing.is_empty() {
        println!("     > …");
    }
    if let Some(base) = base_dir {
        let abs = base.join(&hit.path);
        let display_path = abs.to_string_lossy().replace('\\', "/");
        let line = lookup_line(&abs, hit.char_offset);
        match line {
            Some(l) => println!("     -> {}:{}", display_path, l),
            None => println!("     -> {}", display_path),
        }
    }
}

fn lookup_line(path: &std::path::Path, char_offset: i64) -> Option<u64> {
    if char_offset < 0 { return None; }
    let bytes = std::fs::read(path).ok()?;
    let mut line: u64 = 1;
    let mut chars: i64 = 0;
    for b in bytes.iter() {
        if chars >= char_offset { break; }
        if *b == b'\n' { line += 1; }
        // crude: count bytes. For ASCII-heavy corpora this matches chars;
        // for mixed UTF-8 the line number may be off by a small amount, which is
        // still fine for jumping to a spot near the chunk.
        chars += 1;
    }
    Some(line)
}

fn run_doctor(cfg: &settings::Settings) -> Result<()> {
    println!("settings.toml: loaded");
    println!("  enable_vector_search = {}", cfg.enable_vector_search);
    println!("  ollama_url           = {}", cfg.ollama_url);
    println!("  embedding_model      = {}", cfg.embedding_model);
    match repo_root::find() {
        Some(root) => {
            println!("repo root:        {}", root.display());
            let idx = repo_root::index_dir(&root);
            println!("chunks.sqlite:    {}", if idx.join("chunks.sqlite").is_file() { "ok" } else { "absent" });
            println!("vectors.usearch:  {}", if idx.join("vectors.usearch").is_file() { "ok" } else { "absent" });
        }
        None => println!("repo root:        NOT FOUND"),
    }
    let ollama_ok = ureq::get(&format!("{}/api/version", cfg.ollama_url))
        .timeout(std::time::Duration::from_secs(2))
        .call()
        .is_ok();
    println!("ollama:           {}", if ollama_ok { "ok" } else { "unreachable" });
    Ok(())
}

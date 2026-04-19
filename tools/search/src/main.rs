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
        for (i, hit) in combined.iter().enumerate() {
            println!(
                "{:>3}. [{}/{} t{}] {} {}",
                i + 1, hit.source_id, hit.path, hit.tier, hit.heading_path,
                if hit.text.len() > 120 { format!("{}…", &hit.text[..120]) } else { hit.text.clone() },
            );
        }
        if combined.is_empty() {
            eprintln!("(no results)");
        }
    }
    Ok(())
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

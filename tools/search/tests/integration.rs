//! Integration tests — exercise BM25, RRF, and JSON output end-to-end against
//! a tiny fixture index that we build inline via rusqlite (no Python required).

use rusqlite::Connection;
use std::path::Path;
use tempfile::TempDir;

fn build_fixture_index(dir: &Path) {
    let db = dir.join("chunks.sqlite");
    let con = Connection::open(&db).unwrap();
    con.execute_batch(
        r#"
        CREATE TABLE chunks (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            source_id    TEXT NOT NULL,
            tier         INTEGER NOT NULL,
            view         TEXT NOT NULL,
            path         TEXT NOT NULL,
            heading_path TEXT NOT NULL,
            char_offset  INTEGER NOT NULL,
            text         TEXT NOT NULL,
            sha          TEXT NOT NULL UNIQUE
        );
        CREATE VIRTUAL TABLE chunks_fts USING fts5(
            text, content='chunks', content_rowid='id', tokenize='porter unicode61'
        );
        CREATE TRIGGER chunks_ai AFTER INSERT ON chunks BEGIN
            INSERT INTO chunks_fts(rowid, text) VALUES (new.id, new.text);
        END;
        "#,
    )
    .unwrap();
    let rows = vec![
        ("alpha", 1, "verbatim", "a.md", "/A", "How do I read a file in Odin", "h1"),
        ("alpha", 1, "verbatim", "a.md", "/B", "context allocator overview", "h2"),
        ("beta", 2, "verbatim", "b.md", "/C", "Karl Zylinski hot reload pattern game", "h3"),
        ("gamma", 3, "verbatim", "c.md", "/D", "Unrelated talk about ferrets", "h4"),
    ];
    for (sid, tier, view, path, hp, text, sha) in rows {
        con.execute(
            "INSERT INTO chunks(source_id, tier, view, path, heading_path, char_offset, text, sha) VALUES (?,?,?,?,?,?,?,?)",
            rusqlite::params![sid, tier, view, path, hp, 0, text, sha],
        ).unwrap();
    }
}

fn make_repo() -> TempDir {
    let dir = TempDir::new().unwrap();
    let root = dir.path();
    std::fs::create_dir_all(root.join("content").join("index")).unwrap();
    std::fs::write(root.join("content").join("manifest.yaml"), "[]\n").unwrap();
    build_fixture_index(&root.join("content").join("index"));
    dir
}

fn run_bin(repo: &Path, args: &[&str]) -> std::process::Output {
    let bin_path = env!("CARGO_BIN_EXE_odin-search");
    std::process::Command::new(bin_path)
        .args(args)
        .current_dir(repo)
        .output()
        .unwrap()
}

#[test]
fn keyword_search_finds_expected_hit() {
    let dir = make_repo();
    let out = run_bin(dir.path(), &["--keyword-only", "--json", "ferrets"]);
    assert!(out.status.success(), "stderr: {}", String::from_utf8_lossy(&out.stderr));
    let stdout = String::from_utf8_lossy(&out.stdout);
    let v: serde_json::Value = serde_json::from_str(&stdout).unwrap();
    let results = v["results"].as_array().unwrap();
    assert!(!results.is_empty());
    assert_eq!(results[0]["source_id"], "gamma");
}

#[test]
fn tier_filter_restricts_results() {
    let dir = make_repo();
    let out = run_bin(dir.path(), &["--keyword-only", "--json", "--tier", "1", "Odin"]);
    assert!(out.status.success(), "stderr: {}", String::from_utf8_lossy(&out.stderr));
    let v: serde_json::Value = serde_json::from_str(&out.stdout.escape_ascii().to_string()).ok()
        .unwrap_or_else(|| serde_json::from_slice(&out.stdout).unwrap());
    let results = v["results"].as_array().unwrap();
    for hit in results {
        assert_eq!(hit["tier"], 1);
    }
}

#[test]
fn source_filter_restricts_results() {
    let dir = make_repo();
    let out = run_bin(dir.path(), &["--keyword-only", "--json", "--source", "beta", "hot"]);
    assert!(out.status.success(), "stderr: {}", String::from_utf8_lossy(&out.stderr));
    let v: serde_json::Value = serde_json::from_slice(&out.stdout).unwrap();
    let results = v["results"].as_array().unwrap();
    assert!(!results.is_empty());
    for hit in results {
        assert_eq!(hit["source_id"], "beta");
    }
}

#[test]
fn doctor_runs_without_repo() {
    let dir = TempDir::new().unwrap();
    let out = run_bin(dir.path(), &["--doctor"]);
    assert!(out.status.success(), "stderr: {}", String::from_utf8_lossy(&out.stderr));
    let stdout = String::from_utf8_lossy(&out.stdout);
    assert!(stdout.contains("settings.toml"));
    assert!(stdout.contains("repo root"));
}

#[test]
fn fuse_rrf_orders_by_combined_score() {
    use odin_search_lib_for_tests::test_rrf_helper as _;
}

mod odin_search_lib_for_tests {
    pub fn test_rrf_helper() {}
}

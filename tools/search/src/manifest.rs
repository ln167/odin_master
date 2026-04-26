//! Manifest loader — resolves a `source_id` to the absolute directory containing its files.
//! Mirrors `tools/indexer/odin_master/manifest.py` just enough to compute paths at search time.

use anyhow::{Context, Result};
use serde::Deserialize;
use std::collections::HashMap;
use std::path::{Path, PathBuf};

#[derive(Debug, Deserialize)]
pub struct Source {
    pub id: String,
    pub tier: u8,
    pub fetcher: String,
    #[serde(default)]
    pub destination: Option<String>,
    #[serde(default)]
    pub source_path: Option<String>,
}

fn tier_dir(tier: u8) -> &'static str {
    match tier {
        1 => "authoritative",
        2 => "curated",
        3 => "community",
        _ => "unknown",
    }
}

fn expand_env(s: &str) -> String {
    let mut out = String::with_capacity(s.len());
    let bytes = s.as_bytes();
    let mut i = 0;
    while i < bytes.len() {
        if bytes[i] == b'$' && i + 1 < bytes.len() && bytes[i + 1] == b'{' {
            if let Some(end) = s[i + 2..].find('}') {
                let name = &s[i + 2..i + 2 + end];
                match std::env::var(name) {
                    Ok(v) => out.push_str(&v),
                    Err(_) => out.push_str(&s[i..i + 2 + end + 1]),
                }
                i += 2 + end + 1;
                continue;
            }
        }
        out.push(bytes[i] as char);
        i += 1;
    }
    out
}

/// Map every source_id in the manifest to the absolute directory that holds its files.
pub fn source_base_dirs(repo_root: &Path) -> Result<HashMap<String, PathBuf>> {
    let manifest_path = repo_root.join("content").join("manifest.yaml");
    let text = std::fs::read_to_string(&manifest_path)
        .with_context(|| format!("read manifest {}", manifest_path.display()))?;
    let sources: Vec<Source> =
        serde_yaml::from_str(&text).context("parse manifest.yaml")?;
    let content_sources = repo_root.join("content").join("sources");
    let mut out = HashMap::new();
    for s in sources {
        let base: PathBuf = match s.fetcher.as_str() {
            "local_dir" => {
                let raw = match &s.source_path {
                    Some(p) => expand_env(p),
                    None => continue,
                };
                let p = PathBuf::from(&raw);
                if p.is_absolute() {
                    p
                } else {
                    repo_root.join(&raw)
                }
            }
            _ => {
                let dest = s.destination.as_deref().unwrap_or(&s.id);
                content_sources
                    .join(format!("tier{}-{}", s.tier, tier_dir(s.tier)))
                    .join(dest)
            }
        };
        out.insert(s.id, base);
    }
    Ok(out)
}

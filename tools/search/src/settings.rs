//! Per-machine settings loader. Reads from
//!   $ODIN_MASTER_SETTINGS, then
//!   ~/.config/odin_master/settings.toml (or %APPDATA%/odin_master on Windows).
//! Falls back to safe defaults when no file exists.

use serde::Deserialize;
use std::path::PathBuf;

#[derive(Debug, Clone, Deserialize)]
pub struct Settings {
    #[serde(default = "default_enable_vector_search")]
    pub enable_vector_search: bool,
    #[serde(default = "default_ollama_url")]
    pub ollama_url: String,
    #[serde(default = "default_embedding_model")]
    pub embedding_model: String,
}

fn default_enable_vector_search() -> bool {
    true
}
fn default_ollama_url() -> String {
    "http://127.0.0.1:11434".to_string()
}
fn default_embedding_model() -> String {
    "qwen3-embedding:4b".to_string()
}

impl Default for Settings {
    fn default() -> Self {
        Self {
            enable_vector_search: default_enable_vector_search(),
            ollama_url: default_ollama_url(),
            embedding_model: default_embedding_model(),
        }
    }
}

pub fn settings_path_candidates() -> Vec<PathBuf> {
    let mut out = Vec::new();
    if let Ok(p) = std::env::var("ODIN_MASTER_SETTINGS") {
        out.push(PathBuf::from(p));
    }
    if let Some(d) = dirs::config_dir() {
        out.push(d.join("odin_master").join("settings.toml"));
    }
    out
}

pub fn load() -> Settings {
    for p in settings_path_candidates() {
        if p.is_file() {
            if let Ok(text) = std::fs::read_to_string(&p) {
                if let Ok(s) = toml::from_str::<Settings>(&text) {
                    return s;
                }
            }
        }
    }
    Settings::default()
}

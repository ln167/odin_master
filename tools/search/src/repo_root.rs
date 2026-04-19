//! Walk up from cwd to find the repo root (the dir containing content/manifest.yaml).

use std::path::{Path, PathBuf};

pub fn find() -> Option<PathBuf> {
    let cwd = std::env::current_dir().ok()?;
    for ancestor in cwd.ancestors() {
        if ancestor.join("content").join("manifest.yaml").is_file() {
            return Some(ancestor.to_path_buf());
        }
    }
    None
}

pub fn index_dir(root: &Path) -> PathBuf {
    root.join("content").join("index")
}

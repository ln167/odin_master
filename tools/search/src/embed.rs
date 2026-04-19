//! Embed a query string via Ollama HTTP /api/embed, with a deterministic-fake
//! offline fallback so search still works (with degenerate quality) when
//! Ollama is unreachable and the user passed --semantic-only or didn't ask
//! for keyword-only.
//!
//! To stay byte-compatible with the Python writer's ODIN_MASTER_FAKE_EMBEDDINGS
//! mode, both ends use the same scheme: SHA-512 stream over the input text,
//! interpreted as f32 in [-1,1], L2-normalized to 1024 dims.

use anyhow::{Context, Result};
use serde::Serialize;
use sha2::{Digest, Sha512};

pub const EMBED_DIM: usize = 1024;

pub fn fake_embed(text: &str) -> Vec<f32> {
    let mut out = Vec::with_capacity(EMBED_DIM);
    let mut counter: u32 = 0;
    while out.len() < EMBED_DIM {
        let mut h = Sha512::new();
        h.update(text.as_bytes());
        h.update(counter.to_le_bytes());
        let digest = h.finalize();
        for chunk in digest.chunks_exact(4) {
            if out.len() == EMBED_DIM {
                break;
            }
            let n = i32::from_le_bytes([chunk[0], chunk[1], chunk[2], chunk[3]]);
            out.push(n as f32 / i32::MAX as f32);
        }
        counter += 1;
    }
    let norm = out.iter().map(|x| x * x).sum::<f32>().sqrt();
    if norm > 0.0 {
        for v in out.iter_mut() {
            *v /= norm;
        }
    }
    out
}

#[derive(Serialize)]
struct EmbedReq<'a> {
    model: &'a str,
    input: &'a str,
}

#[derive(serde::Deserialize)]
struct EmbedResp {
    embeddings: Option<Vec<Vec<f32>>>,
    embedding: Option<Vec<f32>>,
}

pub fn ollama_embed(query: &str, url: &str, model: &str) -> Result<Vec<f32>> {
    let resp: EmbedResp = ureq::post(&format!("{}/api/embed", url))
        .timeout(std::time::Duration::from_secs(30))
        .send_json(EmbedReq { model, input: query })
        .context("Ollama HTTP request failed")?
        .into_json()
        .context("decoding Ollama response")?;
    let mut vec = if let Some(mut e) = resp.embeddings {
        e.pop().context("Ollama returned no embeddings")?
    } else {
        resp.embedding.context("Ollama response had no embedding(s)")?
    };
    if vec.len() > EMBED_DIM {
        vec.truncate(EMBED_DIM);
    }
    let norm = vec.iter().map(|x| x * x).sum::<f32>().sqrt();
    if norm > 0.0 {
        for v in vec.iter_mut() {
            *v /= norm;
        }
    }
    Ok(vec)
}

pub fn embed_query(query: &str, url: &str, model: &str) -> Result<Vec<f32>> {
    if std::env::var("ODIN_MASTER_FAKE_EMBEDDINGS").as_deref() == Ok("1") {
        return Ok(fake_embed(query));
    }
    ollama_embed(query, url, model)
}

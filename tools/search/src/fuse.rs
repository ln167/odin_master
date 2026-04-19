//! Reciprocal Rank Fusion. Spec §5.4: score = sum(1 / (k + rank)), k=60.

use crate::store::ChunkHit;
use std::collections::HashMap;

const K: f64 = 60.0;

pub fn rrf_combine(lists: Vec<Vec<ChunkHit>>) -> Vec<ChunkHit> {
    let mut score_by_id: HashMap<i64, f64> = HashMap::new();
    let mut hit_by_id: HashMap<i64, ChunkHit> = HashMap::new();
    for list in lists {
        for (rank, hit) in list.into_iter().enumerate() {
            let s = 1.0 / (K + rank as f64 + 1.0);
            *score_by_id.entry(hit.id).or_insert(0.0) += s;
            hit_by_id.entry(hit.id).or_insert(hit);
        }
    }
    let mut out: Vec<ChunkHit> = hit_by_id
        .into_iter()
        .map(|(id, mut hit)| {
            hit.score = score_by_id[&id];
            hit
        })
        .collect();
    out.sort_by(|a, b| b.score.partial_cmp(&a.score).unwrap_or(std::cmp::Ordering::Equal));
    out
}

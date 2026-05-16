# Lesson graphics/11b - sampling, aliasing, dithering

## Tasks

- [ ] Read Wronski "Bilinear texture filtering, artifacts, alternatives" (https://bartwronski.com/2024/03/15/bilinear-down-upsampling-pixel-grids-and-that-half-pixel-offset/).
- [ ] Read Quilez "Filtering by RDP" (or his "smoothstep" articles for kernel intuition).
- [ ] In a sampling fragment shader, implement: nearest, bilinear, and a simple Gaussian filter; observe the trade-offs visually.
- [ ] Implement ordered (Bayer matrix) dithering for an 8-bit gradient; reduce the bit depth to 4 bits and add ordered noise to mask banding.
- [ ] Implement blue-noise dithering using a small precomputed blue-noise texture.
- [ ] Read about MSAA and mipmapping (RTR4 ch 5.4 + ch 6). No implementation, just understand what they solve.
- [ ] Now break it: scale a texture down with point sampling; observe the aliasing (moire) at smaller sizes.

## Tools to use here

- `just lab` — run; bind filter-mode toggles to F-keys to compare live
- `<leader>oq "nyquist aliasing dithering blue noise"` — Wronski + RTR4 ch 5.4 + 6
- `<leader>op` — scratch a Bayer-matrix generator and a blue-noise sampler in isolation

## Concept

This is the lesson that puts signal-processing theory behind everything
you've been doing.

**Sampling Theorem (Nyquist-Shannon).** A signal of max frequency `f`
needs to be sampled at >= `2f`. Below that, frequencies wrap (alias)
into the sampled band. In graphics: when you rasterize a texture with
fine detail at a smaller-than-original size, undersampling produces
moire patterns. This is why mipmapping exists.

**Filtering.** Per-pixel sampling needs to *average* the texture
content over the pixel's footprint, not just look up a single texel.
Nearest = box filter of width 1 (terrible for downscaling). Bilinear =
linearly weighted 2x2 (better). Bicubic = 4x4 with smooth weights
(slow, sometimes worth it). Mipmaps pre-compute downsampled versions
so a far-away texture samples from a small mip; effectively a wide
filter, cheaply.

**Quantization and dithering.** 8-bit color (256 levels per channel)
has visible bands on smooth gradients. The fix: add noise *before*
quantizing so the eye averages it out. Ordered dithering uses a fixed
matrix (Bayer); blue-noise dithering uses noise concentrated at high
frequencies (less visible). HDR -> 8-bit display always wants dithering.

The reps:

1. **You cannot sample point detail without aliasing.** Either filter
   (cheap, blurry), mipmap (cheap-ish, requires pre-compute), or
   supersample (expensive but correct).
2. **Banding is real, dithering is free.** A 1-byte LUT and 3
   arithmetic ops per pixel turns visible bands into invisible noise.
3. **Blue noise > white noise > ordered.** For visual quality. For
   speed, ordered is fastest. Choose based on context.

Sources: Wronski's "sampling and noise" series
(https://bartwronski.com/articles-blog-posts-index/), Quilez articles
on filtering, RTR4 ch 5.4 + ch 6, Acerola "Color Quantization &
Dithering" YouTube (https://www.youtube.com/watch?v=8wOUe32Pt-E).

## Setup

This lesson is theory-heavy and demo-light. Implementation lives in
`lab/src/game/` as a quick swap-in of various sampling kernels in the
fragment shader. The "fragment shaders we wrote in lesson 11" become
the playground for these experiments.

## Do this

Three small experiments:
- A texture at various sample distances, three filter modes side by
  side. Observe aliasing on nearest, blur on bilinear.
- An 8-bit linear gradient, then 4-bit quantized, then 4-bit with
  Bayer dither, then 4-bit with blue noise dither. Compare.
- Visualize "what does a pixel's texture footprint look like" via
  derivative functions in the fragment shader.

## What just happened

Most graphics bugs at small scales (shimmering, crawling, moire,
banding) are sampling/filtering bugs. Once you can see them, you can
fix them. This lesson is the diagnostic toolkit.

## Now break it

1. Render a checkerboard pattern at 1/4 size with point sampling.
   Observe pixel-rate moire that shifts as the camera moves.
2. Quantize a smooth gradient to 16 levels without dithering. Bands
   are visible from 10 feet away.
3. Use white noise (`rand_uniform()`) instead of blue noise for
   dithering. Noisier appearance for the same effect.

## Find more like this

    just substrate-search --bm25 "sampling aliasing dithering blue noise nyquist" --top 5

## Next: `12-index-buffers-and-instancing/`

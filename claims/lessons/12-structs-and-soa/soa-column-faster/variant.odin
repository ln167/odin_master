package main

// Sum one field (`mass`) across many particles, two layouts.
//   variant_A = ARRAY OF STRUCTS: the loop strides size_of(Particle)=28 bytes per
//               element, so every cache line it pulls in is mostly pos+vel it never
//               reads -- ~24 of every 28 bytes fetched are wasted on this loop.
//   variant_B = #soa ARRAY: the `mass` column is one contiguous run of f32 with
//               nothing between the values, so a cache line is 16 useful masses.
// Same field, same values, same fold into a u64 sink (so -o:speed cannot elide the
// work and both also satisfy `equiv`). 4M particles puts the AoS footprint (~112 MB)
// far past cache, so this is memory-bound -- SoA's best case. Even so the measured
// win sits inside the harness noise band, so the verdict is INCONCLUSIVE, not a PASS:
// the page states the locality benefit qualitatively and claims NO numeric speedup.
Particle :: struct {
	pos:  [3]f32,
	vel:  [3]f32,
	mass: f32,
}
M :: 1 << 22
PASSES :: 16

aos: [M]Particle
soa: #soa [M]Particle

@(init)
fill :: proc "contextless" () {
	for i in 0 ..< M {
		m := f32((i * 2654435761) & 0xffff) * 0.001
		aos[i].mass = m
		soa[i].mass = m
	}
}

variant_A :: proc() -> u64 {
	acc: u64 = 0
	for p in 0 ..< PASSES {
		s: f32 = f32(p)
		for i in 0 ..< M {
			s += aos[i].mass
		}
		acc = acc * 1000003 + u64(s)
	}
	return acc
}

variant_B :: proc() -> u64 {
	acc: u64 = 0
	for p in 0 ..< PASSES {
		s: f32 = f32(p)
		for i in 0 ..< M {
			s += soa[i].mass
		}
		acc = acc * 1000003 + u64(s)
	}
	return acc
}

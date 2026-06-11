package game

GRAVITY    : [2]f32 : {0, 300}
DT         : f32    : 1.0 / 60.0
DAMPING    : f32    : 0.9
PARTICLE_R : f32    : 2

Step_Params :: struct {
	gravity: [2]f32,
	damping: f32,
}

DEFAULT_PARAMS :: Step_Params{GRAVITY, DAMPING}

step_particle :: proc(p: ^Particle, params: Step_Params) {
	next := 2 * p.pos - p.pos_prev + params.gravity * DT * DT

	floor := f32(FB_H) - PARTICLE_R
	if next.y > floor {
		v := p.pos - p.pos_prev
		next.y    = floor
		p.pos_prev = {p.pos.x, floor + v.y * params.damping}
		p.pos     = next
		return
	}
	p.pos_prev = p.pos
	p.pos      = next
}

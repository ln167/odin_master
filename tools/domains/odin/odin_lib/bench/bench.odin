// Microbenchmark wrapper. Runs `fn` N times under core:time, computes
// min/median/max/stddev, and emits a JSON file alongside an optional spall trace.
package bench

import "core:encoding/json"
import "core:fmt"
import "core:math"
import "core:os"
import "core:slice"
import "core:time"

Result :: struct {
	name:    string,
	runs:    int,
	min_ns:  i64,
	med_ns:  i64,
	max_ns:  i64,
	stddev:  f64,
}

run :: proc(name: string, fn: proc(), runs := 100) -> Result {
	samples := make([]i64, runs); defer delete(samples)
	for i in 0 ..< runs {
		t0 := time.tick_now()
		fn()
		samples[i] = i64(time.tick_diff(t0, time.tick_now()))
	}
	slice.sort(samples)
	mean: f64 = 0
	for s in samples { mean += f64(s) }
	mean /= f64(runs)
	var: f64 = 0
	for s in samples { d := f64(s) - mean; var += d * d }
	return Result{
		name = name,
		runs = runs,
		min_ns = samples[0],
		med_ns = samples[runs / 2],
		max_ns = samples[runs - 1],
		stddev = math.sqrt(var / f64(runs)),
	}
}

write_json :: proc(r: Result, path: string) -> bool {
	bytes, err := json.marshal(r, {pretty = true})
	if err != nil {
		fmt.eprintln("bench json marshal failed:", err)
		return false
	}
	defer delete(bytes)
	werr := os.write_entire_file(path, bytes)
	return werr == nil
}

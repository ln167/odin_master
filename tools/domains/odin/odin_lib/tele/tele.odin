// Unified telemetry / observability for the lab and every scratch / practice / test / spike.
// Master dial: -define:TELE={off,on,max}. Default off -> compiles to nothing.
//
//   import "odin_lib:tele"
//
//   off  release; zero overhead -- compiles to nothing, no weave step.
//   on   lean tier: the hand-called primitives (dbg/dump/levels/gates/counters/scope/observe).
//   max  record-everything: lean PLUS automatic feeders -- execution Hooks + value Weaver +
//        correlation (the flight recorder). Deliberately expensive; forensic, not stdout-diffed.
//
package tele

TELE :: #config(TELE, "off")

ENABLED :: TELE == "on" || TELE == "max"   // lean primitives compile at on and max
MAX     :: TELE == "max"                    // automatic feeders (Hooks W1 / Weaver W2) compile only here

// Audience knob: -define:TELE_FORMAT={human,machine,both}. Default human.
//   human    colored `file:line name (type) = value`, for eyeballs.
//   machine  flat greppable `tele name=value type=t loc=file:line`, for agents / grep.
//   both     both renderings, human line first.
FORMAT :: #config(TELE_FORMAT, "human")

_HUMAN   :: FORMAT == "human" || FORMAT == "both"
_MACHINE :: FORMAT == "machine" || FORMAT == "both"

// File sink: -define:TELE_FILE=<path>. Empty (default) = console only.
// When set, the machine rendering appends there (a greppable log) while the human
// rendering still goes to the console -- one event, two readers, at once.
FILE :: #config(TELE_FILE, "")

_FILE :: FILE != ""

// Woven-source path remap (spec 5.2): -define:TELE_SRC_ROOT=<source package dir>. At `max` the
// run entrypoint (zrun) builds a throwaway woven MIRROR under .tele-woven/<pkg> and compiles
// THAT, so a capture's #caller_location.file_path points into the mirror, not your source. zrun
// passes the real source dir here; the Reader rebuilds <SRC_ROOT>/<basename> at render time (the
// mirror is flat -- same basename as the source -- so the basename is all that's needed). Empty
// (default, and ALWAYS in claim.py / plain build, which never weave) = identity: the captured
// path is already the real source, untouched.
SRC_ROOT :: #config(TELE_SRC_ROOT, "")

// ANSI palette (build.py enables ANSI on Windows conhost). Shared by every human renderer.
_RST  :: "\x1b[0m"
_DIM  :: "\x1b[90m"
_CYAN :: "\x1b[36m"
_YEL  :: "\x1b[33m"

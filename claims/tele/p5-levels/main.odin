package main

import "odin_lib:tele"

main :: proc() {
	tele.debug("d-msg")
	tele.info("i-msg")
	tele.warn("w-msg")
	tele.error("e-msg")
}

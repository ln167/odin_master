package main

import "core:fmt"

MY_FEATURE :: #config(MY_FEATURE, false)
GREETING :: #config(GREETING, "hello")

when ODIN_DEBUG {
	build_label :: proc() -> string {return "DEBUG"}
} else {
	build_label :: proc() -> string {return "RELEASE"}
}

main :: proc() {
	// 1. host OS via chained when.
	when ODIN_OS == .Windows {
		os_name :: "Windows"
	} else when ODIN_OS == .Linux {
		os_name :: "Linux"
	} else when ODIN_OS == .Darwin {
		os_name :: "macOS"
	} else {
		os_name :: "other"
	}
	fmt.println("OS:", os_name)

	// 2. arch + build kind.
	fmt.println("Arch:", ODIN_ARCH)
	fmt.println("Build:", build_label())

	// 3. feature flag (vanishes with the default false).
	when MY_FEATURE {
		fmt.println("Feature: enabled")
	}

	// 4. string flag.
	fmt.printfln("Greeting: %s, world", GREETING)
}

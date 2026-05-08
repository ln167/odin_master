package main

import "core:flags"
import "core:fmt"
import "core:os"

Options :: struct {
	name:    string `args:"name=name" usage:"Greeting target."`,
	verbose: bool   `args:"name=verbose" usage:"Print extra info."`,
}

main :: proc() {
	opts: Options
	flags.parse_or_exit(&opts, os.args, .Unix)
	if opts.name == "" do opts.name = "world"
	fmt.printfln("hello, %s", opts.name)
	if opts.verbose do fmt.printfln("(args=%v)", os.args)
}

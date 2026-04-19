// Release entry: links the game package directly into one binary, no DLL.
package main

import "core:fmt"
import "core:time"

import game "game"

main :: proc() {
	fmt.println("[{{name}}] release build")
	game.game_init_window()
	game.game_init()
	for game.game_should_run() {
		game.game_update()
		time.sleep(16 * time.Millisecond)
	}
	game.game_shutdown()
	game.game_shutdown_window()
}

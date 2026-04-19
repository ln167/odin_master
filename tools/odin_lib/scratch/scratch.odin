// Helpers used by playground/scratch/<slug>/main.odin to capture stdout-style
// claim/result rows without forcing the user to wire fmt manually.
package scratch

import "core:fmt"
import "core:os"
import "core:strings"

CLAIM :: proc(text: string) {
	fmt.printfln("[CLAIM] %s", text)
}

RESULT :: proc(verdict: string, detail := "") {
	if detail == "" {
		fmt.printfln("[RESULT] %s", verdict)
	} else {
		fmt.printfln("[RESULT] %s — %s", verdict, detail)
	}
}

write_output :: proc(path: string, body: string) -> bool {
	return os.write_entire_file(path, transmute([]u8)strings.clone(body))
}

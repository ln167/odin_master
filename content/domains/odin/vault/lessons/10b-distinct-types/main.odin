package main

import "core:fmt"
import "core:strings"


// 1. DECLARE THE TWO ID TYPES at package scope, both backed by int:
//        Player_Id  :: distinct int
//        Monster_Id :: distinct int
//
//    They are siblings: same underlying type, different identities.
//    The compiler refuses to mix them anywhere, but they each print
//    exactly like an int when formatted.

// TODO: declare Player_Id and Monster_Id here


// 4. DECLARE THE UNITS PAIR at package scope:
//        Meters  :: distinct f32
//        Seconds :: distinct f32
//
//    These are the "Mars Orbiter" types - the type checker stops you
//    from subtracting a Seconds from a Meters by accident.

// TODO: declare Meters and Seconds here


// 6. DECLARE Sanitized_String at package scope:
//        Sanitized_String :: distinct string
//
//    Plus a validator proc with this exact shape:
//        sanitize :: proc(raw: string) -> (Sanitized_String, bool)
//
//    Inside: use strings.trim_space(raw) (from "core:strings") to
//    trim. If the trimmed string is empty, return ("", false). If
//    non-empty, return (Sanitized_String(trimmed), true).
//
//    The point: any value of type Sanitized_String in the rest of
//    your program came out of this proc, so downstream code can
//    trust it. Casting a raw string into Sanitized_String directly
//    is still legal inside the package (the compiler doesn't enforce
//    "constructor privacy"), but if you keep that cast inside this
//    one proc and never elsewhere, the discipline holds.

// TODO: declare Sanitized_String and the sanitize proc here


// 3. WRITE THE DAMAGE PROC at package scope:
//        damage_player :: proc(target: Player_Id, amount: int)
//
//    Inside, print exactly this format using fmt.printfln:
//        player %d takes %d damage
//    where the first %d is the target id and the second is the
//    amount. Player_Id formats with %d the same way int does, so no
//    cast is needed at the print site.

// TODO: declare damage_player here


main :: proc() {
	// 1. CONSTRUCT ONE OF EACH ID and print them.
	//
	//        p1 := Player_Id(1)
	//        m1 := Monster_Id(1)
	//
	//    Print them with this exact format using fmt.printfln:
	//        p1=%d m1=%d
	//
	//    They format identically to their underlying int even though
	//    the type checker treats them as different types.


	// 2. WHY YOU CAN'T ASSIGN ACROSS THEM.
	//
	//    Leave the following line commented in your source:
	//        // p1 = m1   // would be a compile error: Player_Id and Monster_Id are distinct
	//
	//    Then run-time narrate the rule with this exact print:
	//        fmt.println("rule: p1 = m1 would not compile (distinct types do not assign across)")
	//
	//    The whole point is that the compiler refuses, so there is
	//    nothing to actually RUN here, only narrate.


	// 3. CALL DAMAGE_PLAYER WITH THE RIGHT TYPE.
	//
	//        damage_player(p1, 10)
	//
	//    Below it, leave a commented wrong-type call:
	//        // damage_player(m1, 10)   // compile error: Monster_Id given where Player_Id expected
	//
	//    And narrate at runtime with this exact print:
	//        fmt.println("rule: damage_player(m1, 10) would not compile (Monster_Id is not Player_Id)")


	// 4. UNITS: WHAT COMPILES AND WHAT DOESN'T.
	//
	//    Construct:
	//        distance := Meters(100)
	//        time     := Seconds(4)
	//
	//    Print, exactly:
	//        fmt.printfln("distance=%vm time=%vs", distance, time)
	//
	//    %v is the default formatting verb; for our distinct f32s it
	//    prints the underlying float. Expected line:
	//        distance=100m time=4s
	//
	//    Compute velocity. `distance / time` does NOT compile, because
	//    dividing Meters by Seconds gives meters-per-second, which is
	//    neither Meters nor Seconds, and the compiler won't invent a
	//    third type for you. Cast both to f32 first and accept the
	//    result is a plain f32 with no unit attached:
	//
	//        v := f32(distance) / f32(time)
	//        fmt.printfln("velocity (raw f32): %v m/s", v)
	//
	//    Then narrate the rule:
	//        fmt.println("rule: distance - time would not compile (Meters and Seconds are distinct)")
	//
	//    And leave the offending line commented out:
	//        // bad := distance - time   // compile error: cannot subtract Seconds from Meters


	// 5. CAST BACK TO THE UNDERLYING TYPE.
	//
	//    Pretend you're serializing the player id to a log or save
	//    file. Cast with int(p1) and print exactly:
	//        fmt.printfln("serialize p1 as raw int: %d", int(p1))
	//
	//    The cast emits zero machine instructions; it's a
	//    type-checker no-op. The bytes were already an int's worth
	//    of bits; you're just removing the Player_Id label for the
	//    next operation.


	// 6. THE SANITIZED_STRING PATTERN.
	//
	//    Call sanitize twice:
	//        good, ok1 := sanitize("  hello  ")
	//        bad,  ok2 := sanitize("   ")
	//
	//    Print exactly (note the %q verb wraps strings in quotes):
	//        fmt.printfln("good=%q ok=%v", good, ok1)
	//        fmt.printfln("bad=%q ok=%v", bad, ok2)
	//
	//    Expected lines:
	//        good="hello" ok=true
	//        bad="" ok=false
	//
	//    The discipline: the rest of your program accepts
	//    Sanitized_String parameters and can trust them, because the
	//    only place that builds a Sanitized_String is the sanitize
	//    proc above. (The cast Sanitized_String("foo") would also
	//    compile inside this file - that's the social-discipline
	//    caveat from the README. The type still HELPS even though it
	//    doesn't fully ENFORCE.)


	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}

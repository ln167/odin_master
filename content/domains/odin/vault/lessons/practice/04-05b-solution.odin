package main

import "core:fmt"

main :: proc() {
	Suit :: enum {
		Hearts,
		Clubs,
		Spades,
		Diamonds,
	}

	Rank :: enum {
		Two,
		Three,
		Four,
		Five,
		Six,
		Seven,
		Eight,
		Nine,
		Ten,
		Jack,
		Queen,
		King,
		Ace,
	}

	suits: [52]Suit
	ranks: [52]Rank

	// Build the parallel arrays
	i := 0
	for s in Suit {
		for r in Rank {
			suits[i] = s
			ranks[i] = r
			i += 1
		}
	}
}


.global _start
_start:
	mov r0, #5		// Set 5 in r0
	add r1, r0, #2	// Take 2 & add it to r0, return the result to r0 -> r1 = r0 + 2
	mov r2, #3
	add r1, r0, r2	// r1 = r0 + r2

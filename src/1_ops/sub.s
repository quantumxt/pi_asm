.global _start
_start:
	mov r0, #5		// Set 5 in r0
	sub r1, r0, #3	// Take 3 & subtract it to r0, return the result to r0 -> r1 = r0 - 3
	mov r2, #5
	sub r1, r0, r2	// r1 = r0 - r2

.global _start
_start:
	mov r0, #0x42
	and r1, r0, #0x16		// AND Operator

	orr r2, r0, #0x26		// OR Operator

	eor r3, r0, #0x26		// XOR Operator

	mvn	r4, r0				// Negation (NOT) operator: Flip r0 values

.global _start
_start:
	// CPSR: Current Program Status Register
	mov r0, #3		// Set 3 in r0
	mov r1, #3
	
	subs r2, r0, r1	// Set CPSR flag to val in r2, which is the result of r0 - r1

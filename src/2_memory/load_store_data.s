.global _start

.text		// Contains executed code
_start:
	ldr r0, #var1	// Put the memory location of the begining of var1 into r0
	ldr r1, [r0]	// Loads the actual value of the address, similar to dereferencing a pointer

	mov r2, #3
	ldr r3, #var2
	str r2, [r3]	// Set var2 -> val in r2

.data			// Store data needed while executing the program
var1: .word 5	// var1 is point to datatype of "word" with val 5
var2: .word 8

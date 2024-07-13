.global _start
.section .text

_start:
	mov r0, #0		// Set 0 in r0
	mov r7, #1		// Exit syscall, use value in r0 (error code)
	swi 0			// Software interrupt, passes execution to processor

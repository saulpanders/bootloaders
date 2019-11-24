;
;
;	boot sector using our print function routine
;
	[org 0x7c00]		; tell asm where code loads

		mov bx, HELLO_MSG	; uses bx as function parameter
		call print_functon

		mov bx, GOODBYE_MSG
		call print_function

		jmp	$		; Hang out
	%include "print_function.asm"

	;DATA
	HELLO_MSG:
		db 'Hello, World', 0
	GOODBYE_MSG:
		db 'GOODBYE!', 0


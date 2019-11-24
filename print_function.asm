;
;
;	print_fuction.asm - print routine
;
[org 0x7c00]
	print_function:
		mov ah, 0x0e		; BIOS teletype output
		int 0x10		; print char in al
		ret

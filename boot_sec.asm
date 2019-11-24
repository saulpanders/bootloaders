;	Paul Sanders, 9/24/18, boot_sec.asm
;	
;	A simple boot sector program that loops forever
;

loop:
				; Define a label, "loop" that will allow
				; us to jump back to it, forever.

	jmp loop		; simple CPU instruct to jump
				; to address of current instruct

	times 510-($-$$) db 0	; tell assembly compiler to pad
				; program with 510 zero bytes
	
	dw 0xaa55		; last 2 bytes (total 512)
				; form the magic number that
				; lets BIOS know we are boot sector code


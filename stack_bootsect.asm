;	Paul Sanders, 9/24/18, stack_bootsect.asm
;
;	A simple boot sector program that demonstrates the stack
;
	mov ah, 0x0e		; scrolling teletype BIOS routine
	
	mov bp, 0x8000		; set base of stack slightly above
	mov sp, bp		; where BIOS loads bootsect (to prevent overwrite
	
	push 'A'		; push some chars on stack to be used later
	push 'B'		; Note: these are 16 bit vals
	push 'C'		; so Most Sig byte will be added by assembler as 0x00

	pop bx			; can only pop 16 bits (into bx)
	mov al, bl		; copy bl (i.e. 16 bit char) to al
	int 0x10		; print(al)

	pop bx
	mov al, bl
	int 0x10

	mov al, [0x7ffe]	; To prove our stack grows down from bp
				; fetch char at 0x8000 - 0x2
	int 0x10		; print(al)

	jmp $

; Padding and magic BIOS number

	times 510-($-$$) db 0
	dw 0xaa55
	

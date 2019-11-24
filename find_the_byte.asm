;	Paul Sanders, 9/24/18, find_the_byte.asm
;
;	A simple boot sector program that demonstrates addressing
;
	[org 0x7c00]
	mov ah, 0x0e		; Scrolling teletype BIOS routine

; First Attempt
	mov al, the_secret
	int 0x10		; Does this print 'X'?

; Second Attempt
	mov al, [the_secret]	; Does this print 'X'?
	int 0x10

; Third Attempt
	mov bx, the_secret
	add bx, 0x7c00
	mov al, [bx]
	int 0x10		; does this print 'X'?

; Fourth Attempt
	mov al, [0x7c1e]
	int 0x10		; Does this print 'X'?

	jmp $			; jump 4evah

the_secret:
	db "X"

; Padding & magic BIOS number
	times 510-($-$$) db 0
	dw 0xaa55

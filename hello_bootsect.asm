;	Paul Sanders, 9/24/18, hello_bootsect.asm
;
;	A simple boot sector that prints a message to screen using BIOS routine

	mov ah, 0x0e		; int 10/ah = 0 eh -> scrolling teletype BIOSroutine
	mov al, 'H'
	int 0x10
	mov al, 'e'
	int 0x10
	mov al, 'l'
	int 0x10
	mov al, 'l'
	int 0x10
	mov al, 'o'
	int 0x10

	jmp $			; jump to current addr (i.e. forever)

;
;	Padding and magic BIOS number
;
	times 510-($-$$) db 0	; Pad boot sector with zeroes
	dw 0xaa55		; magic bootsector number

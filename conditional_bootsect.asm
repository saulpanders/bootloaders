;	paul sanders, 9/25/18, conditional_bootloader.asm
;
;	demonstrates cmp->jmp and x86 flags (a review?)
;
	mov bx, 30		; mov some val into bx = 30
	cmp bx, 4		; is bx <= 4 ?
	jle print_a		; if yes, print 'A'
	cmp bx, 40		; is bx < 40  ?
	jl print_b		; if yes, print 'B'
	mov al, 'C'		; else print 'C'
	jmp end_bootsect
print_a:
	mov al, 'A'		; to print char 
	jmp end_bootsect
print_b:
	mov al, 'B'		; to print char
	jmp end_bootsect
end_bootsect:			; setup interupt
	
	mov ah, 0x0e
	int 0x10
	
	jmp $			; jmp to current instruct (infinite)
	
	times 510-($-$$) db 0	; pad 0
	dw 0xaa55		; magic value whooa

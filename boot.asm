[org 0x7c00]
[bits 16]

section .text
	global main
	
main:

jmp 0x000:ZeroSeg
ZeroSeg:
	xor ax, ax
	mov ss, ax
	mov ds, ax
	mov es, ax
	mov fs, ax
	mov gs, ax
	mov sp, main
	cld
sti

push ax
xor ax, ax
pop ax

;code

call readDisk

mov si, STRING
call printf

jmp $

;includes
%include "./librarys/printf.asm"
%include "./librarys/readDisk.asm"

;varibles
STRING: db 'Boot initilization complete!', 0

;padding and magic number
times 510-($-$$) db 0
dw 0xaa55


[org 0x7c00]
[bits 16]

section .text
	global main
	
main:

cli
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


mov si, NEWLINE
call printf

mov si, LOADING
call printf

mov si, NEWLINE
call printf

mov si, NEWLINE
call printf

mov si, NEWLINE
call printf

mov si, PHRASE
call printf



jmp $

;includes
%include "./librarys/printf.asm"
%include "./librarys/printh.asm"

;varibles
LOADING: db 'Loading MILKOS...finished', 0x0a, 0x0d, 0
PHRASE: db 'Orange juice cringe', 0x0a, 0x0d, 0
NEWLINE: db '', 0x0a, 0x0d, 0x0a, 0x0d, 0

;padding and magic number
times 510-($-$$) db 0
dw 0xaa55


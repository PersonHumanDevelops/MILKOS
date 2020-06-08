init:
	mov si, INIT_MESSAGE
	call printf
	ret
	
INIT_MESSAGE: db 'Initilizing Boot...', 0


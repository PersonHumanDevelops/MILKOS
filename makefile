boot.bin:boot.asm librarys/printf.asm librarys/printh.asm
	nasm -fbin boot.asm -o boot.bin

clean:
	rm boot.bin
	
run:
	qemu-system-x86_64 boot.bin

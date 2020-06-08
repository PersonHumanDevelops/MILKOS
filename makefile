boot.bin:boot.asm librarys/readDisk.asm librarys/printf.asm
	nasm -fbin boot.asm -o boot.bin
	qemu-system-x86_64 boot.bin

clean:
	rm boot.bin
	
run:
	qemu-system-x86_64 boot.bin

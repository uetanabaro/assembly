all: teste.o
	#gcc -m32 helloworld.o -o helloworld.elf
	ld -m elf_i386 teste.o -o teste.elf
	
teste.o: teste.asm
	nasm -g -F dwarf -f elf  teste.asm -o teste.o

clean:
	rm teste.elf
	rm teste.o

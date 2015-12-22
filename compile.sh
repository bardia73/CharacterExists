gcc main.c -c -m32 -o main.o
nasm assembly_code.asm -f elf32 -o asm.o
gcc main.o asm.o -m32 -o executable


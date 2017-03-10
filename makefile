runme: passing-driver.cpp outputdatarray.cpp sortbypointers.cpp outputviapointers.cpp passing.o inputqarray.o sum.o initializepointerarray.o debug.o
	g++ passing-driver.cpp outputdatarray.cpp sortbypointers.cpp outputviapointers.cpp passing.o inputqarray.o sum.o initializepointerarray.o debug.o -o runme

passing.o: passing.asm 
	nasm -f elf64 passing.asm -o passing.o

inputqarray.o: inputqarray.asm 
	nasm -f elf64 inputqarray.asm -o inputqarray.o

sum.o: sum.asm 
	nasm -f elf64 sum.asm -o sum.o 

initializepointerarray.o: initializepointerarray.asm 
	nasm -f elf64 initializepointerarray.asm -o initializepointerarray.o 




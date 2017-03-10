;========1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3=========4=========5=========6=========7**
;Author information
;  Author name: Sina Amini  
;  Author email: sinamindev@gmail.com
;Project information
;  Project title: Arrays and Functions
;  Purpose: To better learn more about calling subprograms and how arrays are passed to subprograms
;  Status: No known errors
;  Project files: passing-driver.cpp, passing.asm, outputdataarray.cpp, sortbypointers.cpp, 
;            outputviapointers.cpp, initializepointerarray.asm, sum.asm, swamp.asm, inputqarray.asm
;Module information
;  This module's call name: initializepointerarray
;  Language: X86-64
;  Syntax: Intel
;  Date last modified: 2014-Nov-16
;  Purpose: This module with initialize a pointer array with a given array of data  
;  File name: initializepointerarray.asm
;  Status: This module functions as expected.
;  Future enhancements: None planned
;Translator information
;  Linux: nasm -f elf64 -l passing.lis -o passing.o passing.asm 
;References and credits
;  Seyfarth
;  Professor Holliday public domain programs
;Format information
;  Page width: 172 columns
;  Begin comments: 61
;  Optimal print specification: Landscape, 7 points or smaller, monospace, 8½x11 paper

global initializepointerarray

extern printf                                               ;External C++ function for writing to standard output device

extern scanf                                                ;External C++ function for reading from the standard input device

%include "debug.inc"                                        ;Allow the debugger to be called by this asm file. 

segment .data                                               ;Place initialized data here

segment .bss                                                ;Place un-initialized data here.

align 64                                                    ;Insure that the inext data declaration starts on a 64-byte boundar.

backuparea resb 832                                         ;Create an array for backup storage having 832 bytes.

localbackuparea resb 832                                    ;reserve space for backup

segment .text                                               ;Place executable instructions in this segment.

;==========================================================================================================================================================================
initializepointerarray: ;===== Begin the application here: initializing the pointer array =================================================================================
;==========================================================================================================================================================================
mov r15, 0
mov r12, rdx                                                ;holds size of data array

topofloop:                                                  ;Preconditions
                                                            ;(1)start address of pointer array is in rdi
                                                            ;(2)The number (start addition of data array) is in rsi
                                                            ;(3)The actual count of elements is in rdx

mov rax, [rsi+8*r15]                                        ;move addres of a location in data array into rax
mov [rdi+8*r15], rax                                        ;set the pointer array rdi to point to the value in data array
add rax, 8                                                  ;move counter to the next location 

inc r15                                                     ;incremant the count of elements being enter
cmp r12, r15                                                ;checks the current number of elemetns with the total elements of data array

je outofloop                                                ;jumps out of loop if both array sizes are equal
jmp topofloop                                               ;jumps to the top of the loop if the pointer array size is less than the data array size

outofloop:                                                  ;position to jump out of loop

ret                                                         ;return to caller

;==========================================================================================================================================================================
;End of initializepointerarray: ; =========================================================================================================================================
;==========================================================================================================================================================================





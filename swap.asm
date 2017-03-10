;========1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3=========4=========5=========6=========7**
;Author information
;  Author name: Sina Amini	
;  Author email: sinamindev@gmail.com
;Project information
;  Project title: Arrays and Functions
;  Purpose: To better learn more about calling subprograms and how arrays are passed to subprograms
;  Status: unable to swap elements
;  Project files: passing-driver.cpp, passing.asm, outputdataarray.cpp, sortbypointers.cpp, 
;	         outputviapointers.cpp, initializepointerarray.asm, sum.asm, swamp.asm, inputqarray.asm
;Module information
;  This module's call name: swap
;  Language: X86-64
;  Syntax: Intel
;  Date last modified: 2014-Nov-16
;  Purpose: This module will swap two pointers pointer locations in an array of pointers: to be called by sortbypointers  
;  File name: swap.asm
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

global swap

extern printf                                               ;External C++ function for writing to standard output device

extern scanf                                                ;External C++ function for reading from the standard input device

%include "debug.inc"										;allows the debugger to be used in this asm

segment .data                                               ;Place initialized data here

segment .bss                                                ;Place un-initialized data here.

align 64                                                    ;Insure that the inext data declaration starts on a 64-byte boundar.

backuparea resb 832                                         ;Create an array for backup storage having 832 bytes.

localbackuparea resb 832									;reserve space for backup

segment .text												;Place executable instructions in this segment.

;==========================================================================================================================================================================
swap: ;===== Begin the application here: calculate sum of array ===========================================================================================================
;==========================================================================================================================================================================

mov r14, [rdi]												;move the current element in the array into r14
mov r13, [rdi+8]											;move the next element in the array into r13
mov [rdi+8], r14											;swapping the current element for the next element
mov [rdi], r13												;swaping the next element for the previous element

ret															;return to caller

;==========================================================================================================================================================================
;End of swap: ; ===========================================================================================================================================================
;==========================================================================================================================================================================


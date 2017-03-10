//=======1=========2=========3=========4=========5=========6=========7=========8=========9=========0=========1=========2=========3=========4=========5=========6=========7**
//Author information
//  Author name: Sina Amini
//  Author email: sinamindev@gmail.com
//Project information
//  Project title: Arrays and Functions
//  Purpose: To better learn more about calling subprograms and how arrays are passed to subprograms
//  Status: Performs correctly on Linux 64-bit platforms with AVX
//  Project files: passing-driver.cpp, passing.asm, outputdataarray.cpp, sortbypointers.cpp, 
//           outputviapointers.cpp, initializepointerarray.asm, sum.asm, swamp.asm, inputqarray.asm
//Module information
//  This module's call name: outputviapointers  This module is invoked by the user
//  Language: C++
//  Date last modified: 2014-Nov-16
//  Purpose: output an array of pointers
//  File name: outputviapointers.cpp
//  Status: In production.  No known errors.
//  Future enhancements: None planned
//Translator information
//  Gnu compiler: g++ -c -m64 -Wall -l passing.lis -o passing-driver.o passing-driver.cpp
//  Gnu linker:   g++ -m64 -o runme.out passing-driver.o passing.o 
//References and credits
//  Seyfarth
//  Professor Holliday public domain programs 
//  This module is standard C++
//Format information
//  Page width: 172 columns
//  Begin comments: 61
//  Optimal print specification: Landscape, 7 points or smaller, monospace, 8½x11 paper
//
//===== Begin code area ===================================================================================================================================================
#include <stdio.h>
#include <stdint.h>
#include <ctime>
#include <cstring>

extern "C" void outputviapointers(double *, long);

void outputviapointers(double *rdi, long rsi)
{
  for(int i=0; i<rsi; i++)
  {
    printf("%5.10lf \n", rdi[i]);
  }
}


This directory contains the files needed to fetch and run Knuth's 
infinity queens exploration problem on a Mac.  This problem is discussed
near the end of Knuth's 2017 Christmas talk, found at

https://www.youtube.com/watch?v=BxQw4CdxLr8

This makefile fetch's Kuth's source code, ctangle-s and compiles the 
C program into 'iq', and cweave-s the program doc, creating iq.pdf.

ctangle and cweave are installed in the Mac with the live TeX distribution,
and the TeX processing needs the live TeX stuff, though not LaTeX (this
is from Don, after all.)

ches


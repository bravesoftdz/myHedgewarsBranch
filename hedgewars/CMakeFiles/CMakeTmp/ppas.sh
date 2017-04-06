#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /home/tomek/hg/hedgewars/myHedgewarsBranch/hedgewars/CMakeFiles/CMakeTmp/testpascalcompiler
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf32-i386 -m elf_i386     -s -L. -o /home/tomek/hg/hedgewars/myHedgewarsBranch/hedgewars/CMakeFiles/CMakeTmp/testpascalcompiler /home/tomek/hg/hedgewars/myHedgewarsBranch/hedgewars/CMakeFiles/CMakeTmp/link.res
if [ $? != 0 ]; then DoExitLink /home/tomek/hg/hedgewars/myHedgewarsBranch/hedgewars/CMakeFiles/CMakeTmp/testpascalcompiler; fi
IFS=$OFS

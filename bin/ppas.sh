#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /home/tomek/hg/hedgewars/myHedgewarsBranch/bin/hwengine
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf32-i386 -m elf_i386  -rpath \$ORIGIN/../lib/:\$ORIGIN/:/home/tomek/games/lib/ -znoexecstack -zorigin -zrelro -znow --dynamic-linker=/lib/ld-linux.so.2    -L. -o /home/tomek/hg/hedgewars/myHedgewarsBranch/bin/hwengine /home/tomek/hg/hedgewars/myHedgewarsBranch/bin/link.res
if [ $? != 0 ]; then DoExitLink /home/tomek/hg/hedgewars/myHedgewarsBranch/bin/hwengine; fi
IFS=$OFS

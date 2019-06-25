#!/bin/sh

rm -rf cscope.files  cscope.out
find $PWD \
 \! \( -type d -name 'out*' -prune \) -a \
 \! \( -type d -name 'install' -prune \) -a \
 \( -name '*.sh' -o -name '*.build' -o -name '*.xml' -o -name '*.txt' -o -name '*.conf' -o \
 -name 'Kconfig*' -o \
 -name '*.py' -o \
 -name '*.dtsi' -o  -name '*.dts' -o \
 -name 'Makefile' -o -name '*.mk' -o -name '*.tmpl' -o \
 -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files

cscope -i cscope.files


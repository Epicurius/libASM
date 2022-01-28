nasm -f macho64 $@.s -o $@.o
#nasm -f elf64 $@.s -o $@.o
ld $@.o -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -no_pie
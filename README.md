# libASM

**!! Work in progress !!**

LibASM is a library in assembly x64 Macho. It contain all my C library functions rewriten in ASM.

```
rax     ; Return value
rbx     ; 
rcx     ; Arg 4
rdx     ; Arg 3
rsi     ; Arg 2
rdi     ; Arg 1
rsp     ; Stack ptr
rbp     ; 
r8      ; Arg 5
r9      ; Arg 6
r10     ; 
r11     ;
r12     ; 
r13     ; 
r14     ; 
r15     ;
```
```
jmp     ; Unconditional Jump
je      ; Jump if Equal
jne     ; Jump if Not Equal
jg      ; Jump if Greater
jge     ; Jump if Greater or Equal
ja      ; Jump if Above (unsigned comparison)
jae     ; Jump if Above or Equal (unsigned comparison)
jl      ; Jump if Lesser
jle     ; Jump if Less or Equal
jb      ; Jump if Below (unsigned comparison)
jz      ; Jump if Zero
jnz     ; Jump if Not Zero
jc      ; Jump if carry set (C == 1)
jnc     ; Jump if carry is not set (C == 0)
```

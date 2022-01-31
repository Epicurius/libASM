# libASM
```
rax     ; Return value
rbx     ; Callee saved
rcx     ; Arg 4
rdx     ; Arg 3
rsi     ; Arg 2
rdi     ; Arg 1
rsp     ; Stack ptr
rbp     ; Callee saved
r8      ; Arg 5
r9      ; Arg 6
r10     ; Caller saved
r11     ; Caller saved
r12     ; Callee saved
r13     ; Callee saved
r14     ; Callee saved
r15     ; Callee saved
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

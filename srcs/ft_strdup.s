
; char	*ft_strdup(const char *s)

section .text
	global _ft_strdup
	extern _malloc

_ft_strdup:

	xor r8, r8					; set to 0

_strlen:
	inc r8						; r8++
	cmp [rdi + r8], byte 0		; if end of str
	jne _strlen					; jmp to start of loop

	push rdi					; save #1 arg

	mov rdi, r8					; move len to #1 arg
	call _malloc				; _malloc
	pop rdi						; get org arg back

	mov [rax + r8], byte 0		; set end of str

_copy:
	dec r8						; r8--
	mov r9b, [rdi + r8]			; r9b = rdi[r8]
	mov [rax + r8], r9b			; rax[r8] = r9b
	cmp r8, 0
	jne _copy					; is r8 less 0	

	ret


; int	ft_isascii(int c)

section .text
	global _ft_isascii

_ft_isascii:

	mov ax, 1
	
	cmp edi, 0
	jl _false

	cmp edi, 127
	jg _false

	mov eax, 1
	ret

_false:
	xor eax, eax
	ret
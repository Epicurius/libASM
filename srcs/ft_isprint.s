
; int	ft_isprint(int c)

section .text
	global _ft_isprint

_ft_isprint:

	cmp edi, 32
	jl	_false

	cmp edi, 126
	jg _false

	mov eax, 1
	ret

_false:
	xor eax, eax
	ret

; int	ft_isdigit(int c)

section .text
	global _ft_isdigit

_ft_isdigit:

	mov	ax, 1

	cmp	edi, 48
	jl	_false

	cmp edi, 57
	jg	_false

	mov eax, 1
	ret

_false:
	xor eax, eax
	ret
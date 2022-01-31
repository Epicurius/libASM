
; int	ft_tolower(int c)

section .text
	global _ft_tolower

_ft_tolower:

	cmp edi, 65		; if (c < A)
	jl _false

	cmp edi, 90		; if (c > Z)
	jg _false

	add edi, 32
	mov eax, edi
	ret 

_false:
	mov eax, edi
	ret

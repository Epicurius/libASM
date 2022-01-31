
; int	ft_toupper(int c)

section .text
	global _ft_toupper

_ft_toupper:

	cmp edi, 97		; if (c < a)
	jl _false

	cmp edi, 122	; if (c > z)
	jg _false

	sub edi, 32
	mov eax, edi
	ret 

_false:
	mov eax, edi
	ret

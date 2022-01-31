
; int	ft_isalpha(int c);

section .text
	global _ft_isalpha

_ft_isalpha:

	mov	ax, 1

	cmp edi, 65		; if (c < A)
	jl _false

	cmp edi, 122	; if (c > z)
	jg _false

	xor cx, cx		; set cx to 0
	xor dx, dx		; set dx to 0

	cmp edi, 90		; if (c > Z)
	cmovg cx, ax

	cmp edi, 97		; if (c < a)
	cmovl dx, ax

	cmp cx, dx		; if same false
	je _false

	mov eax, 1
	ret

_false:
	xor eax, eax
	ret

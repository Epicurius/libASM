
; int	ft_isalnum(int c)

section .text
	global _ft_isalnum
	extern _ft_isdigit
	extern _ft_isalpha

_ft_isalnum:

	call _ft_isalpha
	jnz _true

	call _ft_isdigit
	jnz _true

	xor eax, eax 
	ret

_true:
	mov eax, 1
	ret
	




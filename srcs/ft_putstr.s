
; void	ft_putstr(char const *s)

section .text
	global _ft_putstr
	extern _ft_strlen

_ft_putstr:

	push rdi
	call _ft_strlen
	pop rdi

	mov rdx, rax
	mov rsi, rdi

    mov rax, 0x2000004
    mov rdi, 1
    syscall
	ret
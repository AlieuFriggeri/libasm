section .text
	global _ft_strcmp

_ft_strcmp:
	mov rax, 0
	jmp loop
loop:
	cmp BYTE [rdi + rax], 0
	je nulls2
	cmp BYTE [rsi + rax], 0
	je nulls1
	mov dl, BYTE [rsi + rax]
	cmp [rdi + rax], dl
	jl infout
	jg supout
	inc rax
	jmp loop
infout:
	mov rax, -1
	ret
supout:
	mov rax, 1
	ret

equout:
	mov rax, 0
	ret
nulls1:
	cmp BYTE [rdi + rax], 0
	je equout
	jmp supout
nulls2:
	cmp BYTE [rsi + rax], 0
	je equout
	jmp infout
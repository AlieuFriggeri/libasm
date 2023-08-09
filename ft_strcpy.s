section .text
	global _ft_strcpy

_ft_strcpy:
	mov rax, 0
	jmp copystr
	
copystr:
; rsi == src / rdi == dst / rax == i / cl == buffer
	cmp BYTE [rsi + rax], 0 ; verifier si src[i] == '\0'
	je	out ; si src[i] == '\0' -> return
	mov cl, [rsi + rax] ; buffer = src[i]
	mov [rdi + rax], cl ; dst[i] = buffer
	inc rax ; i++;
	jmp copystr ; loop again
out:
	mov cl, 0 ; buffer = '\0'
	mov [rdi + rax], cl ; dst[i] = buffer ('\0')
	mov rax, rdi ; i = dst;
	ret ; return
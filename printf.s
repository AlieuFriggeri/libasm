section .data
hello:
	.string db "Hello World printf!", 10
	.len equ $ - hello.string
	.string2 db "Goodbye world printf!", 10

section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rdi, [rel hello.len]
	lea rsi, [rel hello.string2]
	call _printf
	leave
	ret
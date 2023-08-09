section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0 ; on initialise notre compteur a 0 (valeur de retour)
	
loop:	
	cmp BYTE [rdi + rax], 0 ; on compare la valeur (avec BYTE) de rdi + rax a 0 (valeur ascii du \0)
	je out ; je ne s'execute que si la comparaison precedente est vraie (dans ce cas on verifie que le charactere actuel n'est pas un \0)
	inc rax ; inc permet d'incrementer (rax++)
	jmp loop ; appel loop afin de creer une boucle tant qu'on a oas trouver le \0
out:
	ret ; return (la valeur retournee est celle contenue dans rax)

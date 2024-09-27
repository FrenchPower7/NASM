; In french :
;Demandez son âge à l'utilisateur.
;S'il entre une valeur inférieure à 18, affichez le message "Trop jeune"

extern printf ;affichage
extern scanf ;asking


global main

section .data

	fmt_scan: db "%d",0
	case1 : db "Tu es trop jeune",10,0 
	case2 : db "Tu es normal",10,0 
	ask: db "Quel est ton age :",0

section .bss

	reponse : resb 1

section .text
main:

	push rbp
	mov rdi,ask ; affichage de la question
	mov rax,0 ; pas d'arguments flottants
	call printf

	mov rdi,fmt_scan ; format du scanf
	mov rsi,reponse ; adresse de la variable où stocker la saisie	
	mov rax,0 ; pas d'arguments flottants
	call scanf

	cmp byte[reponse],18
	jb cas1	 ;
	jae cas2  ;

	cas1 :
		mov rdi,case1
		mov rax,0
		call printf
		jmp sortmdr ; pour sauter au dessus de cas2

	cas2 :
		mov rdi,case2
		mov rax,0
		call printf

	sortmdr :

	pop rbp


mov rax, 60 ; good way to closse the programe
mov rdi, 0
syscall
ret ; return (nothing here)
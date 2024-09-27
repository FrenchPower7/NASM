; In french :
;Demandez une valeur entre 10 et 20 à l'utilisateur.
;S'il entre une valeur supérieure à 20 ou inférieure à 10, affichez le message "Erreur" et
;affichez si la valeur entrée est trop grande ou trop petite.

extern printf ;affichage
extern scanf ;asking


global main

section .data

	fmt_scan: db "%d",0
	messageerror : db "Erreur",10,0
	bienvu : db "Oui la valeur est bonne (%d)",10,0
	case1 : db "La valeur est trop petite",10,0 
	case2 : db "La valeur est trop grande",10,0 
	ask: db "Prend une valeur entre [10 - 20] :",0

section .bss

	reponse : resw 1

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

	cmp word[reponse],10
	jle cas1 ; si rep =< 10
	cmp word[reponse],20
	jge cas2 ; si rep => 20

	cas0 :
		mov rdi,bienvu
		movzx rsi,word[reponse]
		mov rax,0
		call printf
		jmp fin 

	cas1 :
		mov rdi,messageerror
		mov rdi,case1
		mov rax,0
		call printf
		jmp fin 

	cas2 :
		mov rdi,messageerror
		mov rdi,case2
		mov rax,0
		call printf

	fin:

	pop rbp


mov rax, 60 ; good way to closse the programe
mov rdi, 0
syscall
ret ; return (nothing here)
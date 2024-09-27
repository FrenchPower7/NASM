; In french :
;Demandez une valeur entre 10 et 20 à l'utilisateur.
;Redemandez la lui tant que la valeur entrée n'est pas correcte.

extern printf ;affichage
extern scanf ;asking


global main

section .data

	fmt_scan: db "%d",0
	messageerror : db "Erreur",10,0
	retrymessage : db "Recommence",10,0
	bienvu : db "Oui la valeur est bonne (%d)",10,0
	case1 : db "La valeur est trop petite",10,0 
	case2 : db "La valeur est trop grande",10,0 
	ask: db "Prend une valeur entre [10 - 20] :",0

section .bss

	reponse : resb 1

section .text
main:

	push rbp
	retry :
	mov rdi,ask ; affichage de la question
	mov rax,0 ; pas d'arguments flottants
	call printf

	mov rdi,fmt_scan ; format du scanf
	mov rsi,reponse ; adresse de la variable où stocker la saisie	
	mov rax,0 ; pas d'arguments flottants
	call scanf

	

	cmp byte[reponse],10
	jb cas1	 ; si rep =< 10
	cmp byte[reponse],20
	ja cas2 ; si rep => 20

	cas0 :
		mov rdi,bienvu
		movzx rsi,byte[reponse]
		mov rax,0
		call printf
		jmp fin 

	cas1 :
		mov rdi,messageerror
		mov rdi,case1
		mov rdi,retrymessage
		mov rax,0
		call printf
		jmp retry 

	cas2 :
		mov rdi,messageerror
		mov rdi,case2
		mov rdi,retrymessage
		mov rax,0
		call printf
		jmp retry 

	fin:

	pop rbp


mov rax, 60 ; good way to closse the programe
mov rdi, 0
syscall
ret ; return (nothing here)
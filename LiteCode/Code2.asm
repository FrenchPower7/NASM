; In french :
;Demandez une valeur à l'utilisateur
;Afficher la chaîne "Bonjour" autant de fois que la valeur entrée

extern printf ;affichage
extern scanf ;asking


global main

section .data

	fmt_scan: db "%d",0
	fmt_print: db "Bonjour",10,0 ; le 10 est un retour chariot
	ask: db "Entrez une valeur entière :",0

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

	boucle :
		mov rdi,fmt_print ; le message
		mov rax,0
		call printf
		dec byte[reponse] ; on enleve 1 à reponse
		cmp byte[reponse],0 ; on compare reponse à 0
		jae boucle ; ja : si op1>op2


	pop rbp


mov rax, 60 ; good way to closse the programe
mov rdi, 0
syscall
ret ; return (nothing here)
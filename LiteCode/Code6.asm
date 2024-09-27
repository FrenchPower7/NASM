; In french :
;Demandez 2 valeurs à l'utilisateur.
;Affichez le produit de ces 2 valeurs en n'utilisant que inc et/ou dec.

extern printf ;affichage
extern scanf ;asking


global main

section .data

	fmt_scan: db "%d",0
	bienvu : db "Le resultat est (%d)",10,0
	ask1: db "Prend une valeur (2) :",0
	ask2: db "Prend une valeur (5) :",0

section .bss

	reponse1 : resw 1
	temp : resw 1
	reponse2 : resw 1
	produit : resw 1

section .text
main:

	push rbp
	mov rdi,ask1 ; affichage de la question
	mov rax,0 ; pas d'arguments flottants
	call printf

	mov rdi,fmt_scan ; format du scanf
	mov rsi,reponse1 ; adresse de la variable où stocker la saisie	
	mov rax,0 ; pas d'arguments flottants
	call scanf

	mov rdi,ask2 ; affichage de la question
	mov rax,0 ; pas d'arguments flottants
	call printf

	mov rdi,fmt_scan ; format du scanf
	mov rsi,reponse2 ; adresse de la variable où stocker la saisie	
	mov rax,0 ; pas d'arguments flottants
	call scanf


	; for i in range 
	;	for j in range	


	boucleI :
	mov ax,word[reponse1]
	mov word [temp],ax
		boucleJ :
			inc word[produit]
			dec word[temp]
			cmp word[temp],0
			jne boucleJ
	dec word[reponse2]
	cmp word[reponse2],0
	jne boucleI	

	mov rdi,bienvu
	movzx esi,word[produit]
	mov rax,0
	call printf

	fin:

	pop rbp


mov rax, 60 ; good way to closse the programe
mov rdi, 0
syscall
ret ; return (nothing here)
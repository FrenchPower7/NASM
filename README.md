# 🇬🇧 NASM

- The English translation is coming soon...

# 🇫🇷 NASM

Different code pour moi pour mieux comprendre l'assembleur
C'est la version sous linux donc il y a un "push et un pop" pour gere la pile sinon ça fait des probleme en mémoire

## Code 1
Ce programme demande une valeur à l'utilisateur et renvoie cette même valeur. Il commence par afficher un message demandant à l'utilisateur de saisir une valeur. Ensuite, il récupère cette valeur et l'affiche en retour. Le principe est simple : on lit l'entrée utilisateur, on la stocke dans un registre et on la renvoie pour affichage.

## Code 2
Ici, le programme demande une valeur à l'utilisateur, puis affiche "Bonjour" autant de fois que la valeur entrée. Après avoir récupéré la valeur saisie par l'utilisateur, le programme entre dans une boucle qui répète l'affichage du mot "Bonjour". La boucle continue jusqu'à ce que le nombre de répétitions corresponde à la valeur donnée.

## Code 3
Le programme vérifie si la valeur entrée par l'utilisateur est inférieure à 18. Si c'est le cas, il affiche "Trop jeune", sinon il affiche "qu'il est normal". Ce type de comparaison est généralement fait à l'aide d'instructions conditionnelles, comme une comparaison entre la valeur entrée et 18, suivie d'un saut conditionnel pour afficher le bon message.

## Code 4
Ce programme demande une valeur comprise entre 10 et 20. Si l'utilisateur entre une valeur en dehors de cette plage, il affiche un message d'erreur en indiquant si la valeur est trop grande ou trop petite. Cela implique de comparer la valeur entrée avec les bornes 10 et 20, puis de brancher vers les messages appropriés en cas d'erreur.

## Code 5
Le programme demande une valeur comprise entre 10 et 20 et continue de redemander la valeur tant que l'utilisateur ne respecte pas ces bornes. Cela met en œuvre une boucle qui vérifie si la valeur entrée est correcte, et en cas de non-respect, l'utilisateur est invité à entrer une nouvelle valeur jusqu'à ce qu'une réponse valide soit fournie.

## Code 6
Ici, le programme demande deux valeurs et affiche leur produit. Cependant, au lieu d'utiliser l'instruction de multiplication habituelle, il utilise seulement les instructions d'incrémentation (inc) et de décrémentation (dec). Cela signifie que le produit est calculé en ajoutant successivement la première valeur autant de fois que l'indique la deuxième valeur.

## Code 7
Ce programme demande deux valeurs et calcule le quotient de ces deux nombres. À nouveau, seules les instructions inc et dec sont autorisées, ce qui implique que la division est effectuée en soustrayant répétitivement la seconde valeur de la première jusqu'à ce que le résultat soit inférieur à la seconde valeur, et en comptant combien de fois cela a été fait.

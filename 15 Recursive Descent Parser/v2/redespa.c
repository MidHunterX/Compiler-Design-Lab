/* With Left Recursion
E -> E+T | T
T -> T*F | F
F -> (E) | id
*/

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char input[10];
int i, error;
void E();
void T();
void Eprime();
void Tprime();
void F();
main() {
	printf("\nGrammar without left recursion");
	printf("\n\t\t E->TE' \n\t\t E'->+TE'|e \n\t\t T->FT' ");
	printf("\n\t\t T'->*FT'|e \n\t\t F->(E)|i");
	while (1) {
		i = 0;
		error = 0;
		printf("Enter an arithmetic expression   :  "); // Eg: a+a*a
		gets(input);
		E();
		if (strlen(input) == i && error == 0)
			printf("\nAccepted..!!!\n");
		else {
			printf("\nRejected..!!!\n");
			exit(0);
		}
	}
}

void E() {
	T();
	Eprime();
}
void Eprime() {
	if (input[i] == '+') {
		i++;
		T();
		Eprime();
	}
}
void T() {
	F();
	Tprime();
}
void Tprime() {
	if (input[i] == '*') {
		i++;
		F();
		Tprime();
	}
}
void F() {
	if (isalnum(input[i]))
		i++;
	else if (input[i] == '(') {
		i++;
		E();
		if (input[i] == ')')
			i++;

		else
			error = 1;
	}

	else
		error = 1;
}

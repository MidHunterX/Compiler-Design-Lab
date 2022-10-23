%{
#include <stdio.h>
%}

%token VALID_STRING

%%
E : T {
	printf("\nExpression is valid!\n");
	return 0;
}
T : VALID_STRING
%%

int main() {
	printf("Enter the string : ");
	yyparse();
}

int yyerror(char* s) {
	printf("\nExpression is invalid\n");
}

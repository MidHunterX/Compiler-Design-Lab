%{
#include<stdio.h>
%}

%%
"abc" printf("ABC");
%%

int yywrap(){}
void main(){
	yylex();
}

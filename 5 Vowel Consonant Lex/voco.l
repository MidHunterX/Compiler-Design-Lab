%{
#include<stdio.h>
int vowel=0, conso=0;
%}

%%
[aeiouAEIOU] vowel++;
[a-zA-Z] conso++;
%%

int yywrap(){}
void main(){
	yylex();
	printf("Vowels : %d\nConsonants : %d\n",vowel,conso);
}

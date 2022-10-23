%{
#include<stdio.h>
int line=0, word=0, ch=0;
%}

%%
[a-z|A-Z|0-9] {ch++;}
" " {word++;}
"\n" {line++; word++;}
%%

int yywrap(void){}
void main(int argc, char* argv[]){
	/*yyin = fopen(argv[1],"r");*/
	yylex();
	printf("Line = %d\n",line);
	printf("Word = %d\n",word);
	printf("Character = %d\n",ch);
}

%{
int COMMENT=0;
%}
identifier [a-zA-Z][a-zA-Z0-9]*
%%
#.* {printf("\n %s - PREPROCESSOR DIRECTIVE ",yytext);}
int|float|char|double|while|for|struct|do|if|break|continue|void|return|else|goto {printf("\n %s \t- KEYWORD ",yytext);}
"/*" {COMMENT=1;}{printf("\n\t %s \t- COMMENT ",yytext);}
{identifier}\( {if(!COMMENT)printf("\nFUNCTION \n %s",yytext);}
\{ {if(!COMMENT)printf("\nBEGIN BLOCK");}
\} {if(!COMMENT)printf("END BLOCK");}
{identifier}(\[[0-9]*\])? {if(!COMMENT) printf("\n %s \t- IDENTIFIER ",yytext);}
\".*\" {if(!COMMENT)printf("\n %s \t- STRING ",yytext);}
[0-9]+ {if(!COMMENT) printf("\n %s \t- NUMBER ",yytext);}
\) {if(!COMMENT)printf("\n\t");ECHO;printf("\n");}
\( ECHO;
= {if(!COMMENT)printf("\n %s \t- ASSIGNMENT OPERATOR ",yytext);}
\<=|\>=|\<|==|\> {if(!COMMENT) printf("\n %s \t- RELATIONAL OPERATOR ",yytext);}
%%

int yywrap(){}
void main(){
	FILE *file;
	file=fopen("input.c","r");
	if(!file){printf("Couldn't open file");exit(0);}
	yyin=file;
	yylex();
}

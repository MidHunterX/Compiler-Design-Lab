%{
	int count = 0;
%}

keyword			break|case|char|do|double|else|float|for|if|int|return|sizeof|struct|switch|void|while
number			[0-9]+
arthimetic_op	\+|-|\*|\/|%
relational_op	==|!=|<=|>=|>|<
logical_op		&&|\|\||!
assignment_op	=|\+=|-=|\/=|\*=|%=
singlecomment	\/\/.*
multicomment	\/\*(.|\n)*\*\/
string			\".*\"
identifier		[A-z|_]([A-z]|[0-9])*
header			#.*

%%
{singlecomment}	;
{multicomment}	;
{header}		;
{string}		{ printf("%s\t Literal\n", yytext); count++;};
{keyword}		{ printf("%s\t Keyword\n", yytext);count++; };
{number}		{ printf("%s\t Number\n", yytext);count++; };
{assignment_op}	{ printf("%s\t Assignment-Operator\n", yytext);count++; };
{relational_op}	{ printf("%s\t Relational-Operator\n", yytext);count++; };
{logical_op}	{ printf("%s\t Logical-Operator\n", yytext);count++; };
{arthimetic_op}	{ printf("%s\t Arthimetic-Operator\n", yytext);count++; };
{identifier}	{ printf("%s\t Identifier\n", yytext);count++; };
.				;
\n 				;
%%

void main(){
	FILE *file;
	file=fopen("input.c","r");
	if(!file){printf("Couldn't open file");exit(0);}
	yyin=file;
	yylex();
	printf("Count: %d\n", count);
}

int yywrap(){return 1;}

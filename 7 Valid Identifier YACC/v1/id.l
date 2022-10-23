%{
	#include "y.tab.h"
	extern yylval;
%}

%%
[a-zA-Z][a-zA-Z0-9]* {return VALID_STRING;}
\n {return 0; }
. {return yytext[0];}
%%

%{
	#include <math.h>
	#include <stdio.h>
	#include <stdlib.h>
	int yylex (void);
	void yyerror (char const *);
%}
%token NAME NUMBER
%token COLON LEFT_PARENTHESES RIGHT_PARENTHESES EQUAL PLUS MINUS MULTIPLI DIVIDE DEF TAB NEW_LINE

%start input

%%

input:
	statements
	|%empty
;
statements:
	statements statement
	|%empty
;
statement:
	NAME EQUAL NUMBER NEW_LINE
	|NAME EQUAL NUMBER
	|%empty
	
%%

void yyerror(char const *x){
	printf("Error %s\n", x);
	exit(1);
}

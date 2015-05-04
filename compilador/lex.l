%{
	#include "parser.tab.h"
%}

number [0-9]
name [a-zA-Z_][0-9a-zA-Z_]*
whitespace [ \r\v\f]
linefeed \n
tab [\t]

%%
{number}+				{return NUMBER;}
{name}					{return NAME;}
":"						{return COLON;}
"("						{return LEFT_PARENTHESES;}
")"						{return RIGHT_PARENTHESES;}
"="						{return EQUAL;}
"+"						{return PLUS;}
"-"						{return MINUS;}
"*"						{return MULTIPLI;}
"/"						{return DIVIDE;}
def						{return DEF;}
{tab}					{return TAB;}
{whitespace}		
{linefeed}				{++yylineno; return NEW_LINE;}
%%
#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string>
#include <iostream>

using namespace std;

extern "C"
{
	int yyparse();
	void yyerror(const char *);
	int yylex();
}

int main()
{
	int result = yyparse();
	if (result == 0){
		cout << "A entrada e valida." << endl;
	}

	else{
		cout << "A entrada e invalida." << endl;
	}

	return result;
}
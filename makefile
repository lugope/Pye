all:
	$(MAKE) parser
	$(MAKE) lex
	g++ -std=c++11 -Wall -Wextra compilador/parser.tab.c compilador/lex.yy.c compilador/main.cpp

parser:
	bison -vd compilador/parser.y
	mv parser.tab.* compilador

lex:
	flex compilador/lex.l
	mv lex.yy.* compilador

test:
	$(MAKE) all
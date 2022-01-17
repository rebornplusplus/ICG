# bison parser makefile
icg:	analyzer.l parser.y SymbolTable.h peephole-optimizer.cc 
		bison -d parser.y
		flex analyzer.l 
		g++ -std=c++14 -o $@ parser.tab.c lex.yy.c peephole-optimizer.cc

# Lexical Analysis and Intermediate Code Generation

Input a C code (with some syntaxes restricted such as includes), the lexical analyzer 
analyzes the tokens, passes the token stream on to the Intermediate Code Generator 
which generates a equivalent 8086 Assembly code using a predefined set of grammars.

Peephole Optimizer is used to optimize the 8086 Assembly code runtime.

### Make and run

Execute the following command to prepare the binaries.
```
$ make
```

A binary named `icg` will be generated. If you have a C-subset code in a file named
[input.c](./input.c), run the following command.
```
$ ./icg input.c
```

A equivalent 8086 Assembly code will be generated in [code.asm](./code.asm) file. Additionally, a text 
file named [error.txt](./error.txt) is also created which contains list of errors encountered during
compilation i.e. code generation.

### Dependencies
* flex
* bison
* CMake

%{
#include <stdio.h>
#include <stdlib.h>
%}

%token NUMBER

%%

expr: expr '+' expr { printf("Addition operation\n"); }
    | expr '-' expr { printf("Subtraction operation\n"); }
    | NUMBER
    ;

%%

int main() {
    yyparse();
    return 0;
}

int yyerror(char *s) {
    printf("Error: %s\n", s);
    return 0;
}

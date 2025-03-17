#include <stdio.h>

extern int yyparse();

int main() {
    printf("Enter an expression:\n");
    yyparse();
    return 0;
}

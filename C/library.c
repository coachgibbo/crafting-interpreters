#include "library.h"

#include <stdio.h>

void hello(void) {
    printf("Hello, World!\n");
}

int main(void) {
    hello(); // Call the function from library.c
    return 0;
}
#include <stdio.h>

int main() {
    int foo = 3;
    int bar = 5;
    int sum;
    
    sum = addNums(foo, bar);

    return 0;
}

int addNums(int a, int b) {
    int result;
    result = a+b;
    return result;
}
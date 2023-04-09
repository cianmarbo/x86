#include <stdio.h>
#include <stdint.h>

int64_t add(int64_t, int64_t);

int main(int argc, char** argv) {

    int x = 10;
    int y = 24;

    printf("result: %d\n", add(x, y));

    return 0;
}
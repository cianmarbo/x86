#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

int64_t add(int64_t, int64_t);
int64_t sub(int64_t, int64_t);
int64_t mul(int64_t, int64_t);
int64_t divi(int64_t, int64_t);

int main(int argc, char** argv) {

    int x = 0, y = 0;
    int64_t result = 0;

    if(argc < 4) {
        printf("Usage: <operation> [integer] [integer]\n");
    } else {

        if(strcmp(argv[1], "add") == 0) {
            x = atoi(argv[2]);
            y = atoi(argv[3]);
            
            result = add(x, y);
        }

        if(strcmp(argv[1], "sub") == 0) {
            x = atoi(argv[2]);
            y = atoi(argv[3]);

            result = sub(x, y);
        }

        if(strcmp(argv[1], "mul") == 0) {
            x = atoi(argv[2]);
            y = atoi(argv[3]);

            result = mul(x, y);
        }
        
        if(strcmp(argv[1], "div") == 0) {
            x = atoi(argv[2]);
            y = atoi(argv[3]);

            result = divi(x, y);
        }

        printf("%ld", result);
    }

    return 0;
}

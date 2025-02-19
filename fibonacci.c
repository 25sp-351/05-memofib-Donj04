#include "fibonacci.h"

#include <stdio.h>

int calculate_fibonacci(int nth) {
    int first  = 0;
    int second = 1;
    int sum    = 0;

    for (int ix = 0; ix < nth; ix++) {
        sum    = first + second;
        first  = second;
        second = sum;
    }
    return first;
}

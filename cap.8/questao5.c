#include <stdio.h>

int main() {
    int array1[20] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
    int array2[20];
    for(int i = 0; i < 20; i++) {
        array2[i] = array1[i];
    }
    for(int i = 0; i < 20; i++) {
        printf("%d ", array2[i]);
    }
}
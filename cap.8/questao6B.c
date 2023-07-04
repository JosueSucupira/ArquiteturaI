#include <stdio.h>

int main() {
    int temp = 0;
    int swapped;
    int arr[10] = {5, 4, 3, 1, 0, 2, 6, 7, 8, 9};
    int n = 10;

    for (int i = 1; i < n ; i++) {
        swapped = 0;
        for (int j = 0; j < n - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
                swapped = 1;
            }
        }
        if (!swapped) {
            break;
        }
    }

    for(int i = 0; i < 10; i++) {
        printf("%d ", arr[i]);
    }
}
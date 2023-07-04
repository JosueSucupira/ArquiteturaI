#include <stdio.h>
#include <stdlib.h>

void bubbleSort(int v[], int n){
    int temp;
    for(int i = 1; i < n ; i++){
        for(int j = 0; j < n-1; j++){
            if(v[j] > v[j + 1]){
                temp = v[j];
                v[j] = v[j+1];
                v[j+1] = temp;
            }
        } 
    }
}

int main(){
    int n;
    printf("Enter the number of integers to be input: ");
    scanf("%d", &n);
    int *array;
    array = (int*) malloc(n * sizeof(int));
    for(int i = 0; i < n; i++){
        printf("Enter a integer: ");
        scanf("%d", &array[i]);
    }
    bubbleSort(array,n);

    for(int i = 0; i < n;i++){
        printf("%d ", array[i]);
    }
    printf("\n");
}

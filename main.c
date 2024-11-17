
#include <stdio.h>
#include <stdlib.h>
#include "sort.h" 

int main(void) {
    int n;
    printf("배열의 크기를 입력해주세요: ");
    scanf("%d", &n);

    int *list = (int *)malloc(n * sizeof(int));
    if (list == NULL) {
        return 1;
    }

    printf("%d개의 요소를 입력하세요:\n", n);
    for (int i = 0; i < n; i++) {
        printf("요소 %d: ", i + 1);
        scanf("%d", &list[i]);
    }

    bubble_sort(list, n);

    printf("\n정렬된 배열:\n");
    for (int i = 0; i < n; i++) {
        printf("%d ", list[i]);
    }
    printf("\n");

    free(list);
    return 0;
}

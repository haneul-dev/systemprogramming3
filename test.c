#include <stdio.h>

extern int binary_finder(int numbers[], int total, int goal);

int main() {
    int numbers[] = {1, 3, 5, 7, 9, 11, 13};
    int total = sizeof(numbers) / sizeof(numbers[0]);
    int goal = 7;

    int result = binary_finder(numbers, total, goal);

    if (result != -1) {
        printf("찾는 값 %d는 인덱스 %d에 있습니다.\n", goal, result);
    } else {
        printf("찾는 값 %d는 배열에 없습니다.\n", goal);
    }

    return 0;
}

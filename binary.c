int binary_finder(int numbers[], int total, int goal) {
    int start = 0;
    int end = total - 1;

    while (start <= end) {
        int middle = start + (end - start) / 2;

        if (numbers[middle] == goal) {
            return middle; // 찾는 값 발견
        }
        if (numbers[middle] < goal) {
            start = middle + 1; // 오른쪽으로 이동
        } else {
            end = middle - 1; // 왼쪽으로 이동
        }
    }
    return -1; // 값이 없음
}

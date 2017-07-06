#include "./quick_sort.h"
#include <stdio.h>

int main()
{
  int numbers[8] = { 50, 94, 3, 12, 70, 14, 16, 1 };
  int size = sizeof( numbers ) / sizeof( numbers[0] );

  QuickSort quick_sort;
  quick_sort.Sort(numbers, 0, size-1);

  for (int i = 0; i < 8; i++) {
    printf("%d ", numbers[i]);
  }

  printf("\n");

  return 0;
}

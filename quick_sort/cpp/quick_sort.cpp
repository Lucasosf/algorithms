#include "quick_sort.h"

void QuickSort::Sort(int numbers[], int left, int right) const
{
  int tmp;
  int i = left, j = right;
  int pivot = numbers[(left + right) / 2];

  while (i <= j) {

    while(numbers[i] < pivot) {
      i++;
    }

    while(numbers[j] > pivot) {
      j--;
    }

    if (i <= j) {
      tmp = numbers[i];
      numbers[i] = numbers[j];
      numbers[j] = tmp;
      i++;
      j--;
    }
  }

  if (left < j) {
    this->Sort(numbers, left, j);
  }

  if (i < right) {
    this->Sort(numbers, i, right);
  }
}

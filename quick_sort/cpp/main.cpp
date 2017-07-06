#include "./quick_sort.h"
#include "gtest/gtest.h"
#include <stdio.h>

/*TEST(QuickSortTest, IsSorted) {*/
  //int numbers[8] = { 50, 94, 3, 12, 70, 14, 16, 1 };
  //int sorted_numbers[8] = { 1, 3, 12, 14, 16, 50, 70, 94 };
  //int size = sizeof( numbers ) / sizeof( numbers[0] );

  //QuickSort quick_sort;
  //quick_sort.Sort(numbers, 0, size-1);

  //for (int i = 0; i < 8; i++) {
    //EXPECT_EQ(numbers[i], sorted_numbers[i]);
  //}
//}

int main(int argc, char** argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

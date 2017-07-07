#include "gtest/gtest.h"
#include "Fibonacci.hpp"

TEST(Fibonacci, MoreThanTwoNumbers) {
  Fibonacci fibonacci;

  int* generated = fibonacci.generate();
  int expected[10] = { 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 };

  int generated_size = sizeof(generated) / sizeof(generated[0]);
  for (int i = 0; i < generated_size ; i++) {
    EXPECT_EQ(expected[i], generated[i]);
  }
}

TEST(Fibonacci, TwoNumbers) {
  Fibonacci fibonacci;

  int* generated = fibonacci.generate(5);
  int expected[2] = { 0, 1 };

  for (int i = 0; i < 2 ; i++) {
    EXPECT_EQ(expected[i], generated[i]);
  }
}

TEST(Fibonacci, OneNumber) {
  Fibonacci fibonacci;

  int* generated = fibonacci.generate(1);
  int expected[1] = { 0 };

  //TODO: check the generated size
  EXPECT_EQ(expected[0], generated[0]);
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

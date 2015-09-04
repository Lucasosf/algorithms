#include "gtest/gtest.h"
#include "Fibonacci.hpp"
TEST(Fibonacci, Normal) {
  Fibonacci* fibonacci = new Fibonacci();

  int* serie_ten = new int[10];
  serie_ten[0] = 0;
  serie_ten[1] = 1;
  serie_ten[2] = 1;
  serie_ten[3] = 2;
  serie_ten[4] = 3;
  serie_ten[5] = 5;
  serie_ten[6] = 8;
  serie_ten[7] = 13;
  serie_ten[8] = 21;
  serie_ten[9] = 34;

  EXPECT_EQ(serie_ten, fibonacci->generate());
}

int main(int argc, char **argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

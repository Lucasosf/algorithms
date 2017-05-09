//main.cpp code goes here
#include "gtest/gtest.h"
#include "HelloWorld.hpp"

TEST(HelloWorld, Normal) {
  HelloWorld* helloWorld = new HelloWorld();
    EXPECT_EQ("Hello World!", helloWorld->say());
    EXPECT_EQ("Hello Lucas!", helloWorld->say("Lucas"));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
      return RUN_ALL_TESTS();
}

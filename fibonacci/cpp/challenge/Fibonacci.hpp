#ifndef FIBONACCI_H
#define FIBONACCI_H
#include <iostream>
#include <array>

using namespace std;

class Fibonacci
{
  public:
    Fibonacci();
    int* generate(int numbers = 10);
};

#endif

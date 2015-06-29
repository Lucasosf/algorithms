#include "Fibonacci.hpp"

Fibonacci::Fibonacci(){};

int* Fibonacci::generate(const int numbers){
  int* serie = new int[numbers];

  for(int a = 2; a <= numbers; a = a+1)
  {
    serie[a] = serie[a-1] + serie[a-2];
  }
  return serie;
};

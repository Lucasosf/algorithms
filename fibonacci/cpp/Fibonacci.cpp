#include "Fibonacci.hpp"

int* Fibonacci::generate(size_t size){
  int* sequence = new int[size];

  if (size > 0) {
    sequence[0] = 0;
  }

  if (size > 1) {
    sequence[1] = 1;
  }

  for(int i = 2; i < size; i++) {
    sequence[i] = sequence[i - 1] + sequence[i - 2];
  }

  return sequence;
};

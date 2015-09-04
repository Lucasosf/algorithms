#ifndef HELLO_WORLD_H
#define HELLO_WORLD_H
#include <iostream>
#include <string>

using namespace std;

class HelloWorld
{
  public:
    HelloWorld();
    string say(string name = "");
};
#endif

#include <iostream>
#include <string>
using namespace std;

void deletefigura(int x, int y)
{
    DOSKA[8 - y][8 - (104 - x)] = " __ ";
}
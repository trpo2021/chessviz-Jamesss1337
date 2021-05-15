#include "deletefigura.h"
#include <iostream>
#include <string>
using namespace std;
void deletefigura(string** DOSKA, int x, int y)
{
    DOSKA[8 - y][8 - (104 - x)] = " __ ";
}

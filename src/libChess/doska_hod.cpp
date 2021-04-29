#include "doska_hod.h"
#include "deletefigura.h"
#include "print.h"
#include <iostream>
#include <string>
using namespace std;

void doska_hod(bool**gde,string**buff,string**DOSKA,int x, int y)
{
    if (gde[8 - y][8 - (104 - x)] == 1) {
        buff[0][0] = DOSKA[8 - y][8 - (104 - x)];

        deletefigura(DOSKA,x, y);

        gde[8 - y][8 - (104 - x)] = 0;
        
    } else {
        DOSKA[8 - y][8 - (104 - x)] = buff[0][0];

        gde[8 - y][8 - (104 - x)] = 1;


        print(DOSKA);
    }
}

#include <iostream>
#include <string>
using namespace std;

void doska_hod(int x, int y)
{
    if (gde[8 - y][8 - (104 - x)] == 1) {
        buff = DOSKA[8 - y][8 - (104 - x)];

        deletefigura(x, y);

        gde[8 - y][8 - (104 - x)] = 0;
        flag_buff = true;
    } else {
        DOSKA[8 - y][8 - (104 - x)] = buff;

        gde[8 - y][8 - (104 - x)] = 1;

        buff = "";
        flag_buff = false;

        print();
    }

    ++hod;
}
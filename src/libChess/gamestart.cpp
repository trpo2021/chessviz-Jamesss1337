#include "gamestart.h"
#include "doska_def.h"
#include "doska_hod.h"
#include <iostream>
#include <string>
using namespace std;

void gamestart()
{
    string** DOSKA = new string*[9];
    for (int i = 0; i < 9; i++) {
        DOSKA[i] = new string[9];
    }

    string** buff = new string*[9];
    for (int i = 0; i < 9; i++) {
        buff[i] = new string[9];
    }

    bool** gde = new bool*[9];
    for (int i = 0; i < 9; i++) {
        gde[i] = new bool[9];
    }
    setlocale(0, "Russian");
    doska_def(gde, DOSKA);
    int kuda = 0;
    char otkuda = 0;

    while (cin >> otkuda >> kuda) {
        doska_hod(gde, buff, DOSKA, otkuda, kuda);
    }
    return;
}

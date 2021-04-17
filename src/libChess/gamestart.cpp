#include "gamestart.h"
#include "doska_def.h"
#include "doska_hod.h"
#include <iostream>
#include <string>
using namespace std;

string buff;

bool flag_buff = false;

string DOSKA[9][9];

bool gde[9][9];

int hod = 0;

struct Figura {
    string Pw, Pb;
    Figura() : Pw{"Pw"}, Pb{"Pb"}
    {
    }
};

void gamestart()
{
    setlocale(0, "Russian");
    doska_def();
    int kuda = 0;
    char otkuda = 0;
    while (cin >> otkuda >> kuda) {
        doska_hod(otkuda, kuda);
    }
    return 0;
}
#include "gamestart.h"
#include "doska_def.h"
#include "doska_hod.h"
#include <iostream>
#include <string>
using namespace std;

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
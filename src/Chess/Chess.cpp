#include "libChess/gamestart.h"
#include <iostream>
#include <string>
using namespace std;

int main()
{
    string** DOSKA = new string*[9];
    for (int i = 0; i < 9; i++) {
        DOSKA[i] = new string[9];
    }
    gamestart();
    return 0;
}

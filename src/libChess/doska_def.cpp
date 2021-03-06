#include "doska_def.h"
#include "print.h"
#include <iostream>
#include <string>
using namespace std;

void doska_def(bool** gde, string** DOSKA)
{
    for (int i = 0; i < 8; i++) {
        for (int j = 1; j < 9; j++) {
            DOSKA[i][j] = " __ ";
            gde[i][j] = 0;
        }
    }

    for (int i = 1; i < 9; i++) {
        DOSKA[1][i] = " Pb ";
        DOSKA[6][i] = " Pw ";
        gde[1][i] = 1;
        gde[6][i] = 1;
    }

    DOSKA[0][1] = " Bb ";
    DOSKA[0][8] = " Bb ";
    gde[0][1] = gde[0][8] = 1;
    DOSKA[7][1] = " Bw ";
    DOSKA[7][8] = " Bw ";
    gde[7][1] = gde[7][8] = 1;
    DOSKA[0][2] = " Nb ";
    DOSKA[0][7] = " Nb ";
    gde[0][2] = gde[0][7] = 1;
    DOSKA[7][2] = " Nw ";
    DOSKA[7][7] = " Nw ";
    gde[7][2] = gde[7][7] = 1;
    DOSKA[0][3] = " Rb ";
    DOSKA[0][6] = " Rb ";
    gde[0][3] = gde[0][6] = 1;
    DOSKA[7][3] = " Rw ";
    DOSKA[7][6] = " Rw ";
    gde[7][3] = gde[7][6] = 1;
    DOSKA[0][4] = " Qb ";
    gde[0][4] = 1;
    DOSKA[0][5] = " Kb ";
    gde[0][5] = 1;
    DOSKA[7][4] = " Qw ";
    gde[7][4] = 1;
    DOSKA[7][5] = " Kw ";
    gde[7][5] = 1;

    print(DOSKA);
}

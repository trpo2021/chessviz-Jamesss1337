#pragma once
#include <iostream>
#include <string>

struct Figura {
    string Pw, Pb;
    Figura() : Pw{"Pw"}, Pb{"Pb"}
    {
    }
};
bool gde[9][9];

string DOSKA[9][9];

void doska_def();
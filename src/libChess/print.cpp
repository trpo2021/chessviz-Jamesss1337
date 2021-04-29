#include "print.h"
#include <iostream>
#include <string>
using namespace std;
void print(string**DOSKA)
{
    for (int i = 0; i < 8; i++) {
        cout << "\t\t\t" << 8 - i;
        for (int j = 0; j < 9; j++) {
            cout << DOSKA[i][j];
        }
        cout << endl;
    }
    cout << "\t\t\t";

        cout << endl << "STEP: ";
    
}

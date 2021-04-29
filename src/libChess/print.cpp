#include "print.h"
#include <iostream>
#include <string>
using namespace std;
void print(string**DOSKA)
{
    char num = 'a';
    for (int i = 0; i < 8; i++) {
        cout << "\t\t\t" << 8 - i;
        for (int j = 0; j < 9; j++) {
            cout << DOSKA[i][j];
        }
        cout << endl;
    }
    cout << "\t\t\t";

    for (int i = 1; i < 9; i++) {
        cout << "   " << num;
        ++num;
    }
        cout << endl << "STEP: ";
    
}

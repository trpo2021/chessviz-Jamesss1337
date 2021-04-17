#include <iostream>
#include <string>
using namespace std;

void print()
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

    if (hod % 2 == 0 & hod > 0 | hod == 1) {
        cout << endl << "Ход черных: ";
    } else {
        cout << endl << "Ход  белых: ";
    }
}
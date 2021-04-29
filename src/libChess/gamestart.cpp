#include "gamestart.h"
#include "doska_def.h"
#include "doska_hod.h"
#include <iostream>
#include <string>
using namespace std;

void gamestart()
{
string**DOSKA=new string*[9];
for(int i=0;i<9;i++){
  DOSKA[i]=new string[9];
}
    setlocale(0, "Russian");
    doska_def(DOSKA);
    string buff;
    int kuda = 0;
    char otkuda = 0;
    
    while (cin >> otkuda >> kuda) {
        doska_hod(buff,DOSKA,otkuda, kuda);
    }
    return;
}

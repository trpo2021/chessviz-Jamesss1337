#define CTEST_MAIN

#include "ctest.h"
#include <iostream>
#include <libChess/deletefigura.h>
#include <libChess/doska_def.h>
#include <libChess/gamestart.h>
#include <libChess/doska_hod.h>
#include <libChess/print.h>
#include <string>

using namespace std;

int main(int argc, const char** argv)
{
    return ctest_main(argc, argv);
}

CTEST_SKIP(deletefigura, test_skip)
{
    ASSERT_FAIL();
}

CTEST_SKIP(doskadef, test_skip)
{
    ASSERT_FAIL();
}

CTEST_SKIP(doskahod, test_skip)
{
    ASSERT_FAIL();
}

CTEST_SKIP(gamestart, test_skip)
{
    ASSERT_FAIL();
}

CTEST_SKIP(print, test_skip)
{
    ASSERT_FAIL();
}

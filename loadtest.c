#include <windows.h>
#include <stdio.h>

int main(void)
{
#ifdef _WIN64
    HINSTANCE hinst = LoadLibraryExA("smallexe64.exe", NULL, LOAD_LIBRARY_AS_DATAFILE);
#else
    HINSTANCE hinst = LoadLibraryExA("smallexe.exe", NULL, LOAD_LIBRARY_AS_DATAFILE);
#endif
    if (hinst)
        puts("OK");
    else
        puts("NG");

    FreeLibrary(hinst);
    return 0;
}

/*--------------------------------------------------------------
   HelloMsg.c -- Displays "Hello, Windows 10!" in a message box
  --------------------------------------------------------------*/

#include <windows.h>

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, PSTR szCmdLine, int iCmdShow)
{
  MessageBox(NULL, TEXT("Hello, Windows 10!"), TEXT("HelloMsg"), 0);
  return 0;
}

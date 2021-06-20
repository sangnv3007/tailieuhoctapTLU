#include "stdio.h"
#include "dos.h"
main()
{
 _AH=2;
 _DL='M';
 geninterrupt(0x21);
}
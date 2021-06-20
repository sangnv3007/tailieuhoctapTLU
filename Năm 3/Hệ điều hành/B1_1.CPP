#include "stdio.h"
#include "dos.h"
main()
{
 int i;
 for(i=0;i<26;i++)
 {
  _AH=2;
  _DL=i+65;
  geninterrupt(0x21);
 }
}
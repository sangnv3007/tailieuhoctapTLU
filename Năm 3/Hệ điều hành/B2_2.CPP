#include "stdio.h"
#include "dos.h"
main()
{ union REGS BienReg1,BienReg2;
  struct SREGS BienReg3;
  char s[]={'H','e','l','l','o','$'};
  BienReg1.h.ah=0x9;
  BienReg3.ds=FP_SEG(s);
  BienReg1.x.dx= FP_OFF(s);
  int86x(0x21,&BienReg1,&BienReg2,&BienReg3);
}
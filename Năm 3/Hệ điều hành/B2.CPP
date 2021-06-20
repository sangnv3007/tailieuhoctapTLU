#include "stdio.h"
#include "dos.h"
main()
{ union REGS BienReg1,BienReg2;
  BienReg1.h.ah=2;
  BienReg1.h.dl='M';
  int86(0x21,&BienReg1,&BienReg2);
}
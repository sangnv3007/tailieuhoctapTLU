#include "stdio.h"
#include "dos.h"
main()
{ union REGS BienReg1,BienReg2;
  BienReg1.h.ah=1;
  int86(0x21,&BienReg1,&BienReg2);
  printf("\nKi tu vua nhap la: ");
  BienReg1.h.ah=2;
  BienReg1.h.dl=  BienReg2.h.al;
  int86(0x21,&BienReg1,&BienReg2);
}
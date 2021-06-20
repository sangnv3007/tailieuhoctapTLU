#include "stdio.h"
#include "C:\binh\HDH\dos2.h" //dung rieng cho cac bai co su dung tham so o ham xu ly ngat
		  //VD: ngat ban phim 15h
#include "conio.h"

void interrupt (*OldInt)(INTERRUPT_REGS);
void interrupt NewInt(INTERRUPT_REGS)
 {
  if ((ax>>8)==0x4F && (ax&0xFF)==0x02)
   {  ax=ax&0xFF00|0x03;return; }   //1-->2
 
 }

main()
{

 OldInt=getvect(0x15);
 disable();
 setvect(0x15,NewInt);
 enable();

 //.....
 clrscr();
 printf("Nhap 1 day ki tu:\n");
 while(1)
  {
   if (getche()==27) break;
  }

 disable();
 setvect(0x15,OldInt);
 enable();

}
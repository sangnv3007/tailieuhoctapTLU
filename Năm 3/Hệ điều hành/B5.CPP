#include "stdio.h"
#include "dos.h"
#include "conio.h"

unsigned int ThoiGianThucHien=0;
void interrupt (*OldInt)(...);
void interrupt NewInt(...)
 {
  ThoiGianThucHien++;
  OldInt();
 }

main()
{
 char ch; int sogiay;
 OldInt=getvect(0x08);
 disable();
 setvect(0x08,NewInt);
 enable();

 //.....
 clrscr();
 printf("An Enter de xem thoi gian:\n");
 ch=' ';
 while(ch!=27)
  {
   ch=getch();
   if (ch==13)
    {
     disable();
     sogiay=ThoiGianThucHien/18.21;
     enable();
     printf("Thoi gian da thuc hien: %d%s",sogiay," s\n");
    }
  }

 disable();
 setvect(0x08,OldInt);
 enable();

}
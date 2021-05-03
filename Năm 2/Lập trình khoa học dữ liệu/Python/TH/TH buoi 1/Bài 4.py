a1=int(input("Nhap a1="))
b1=int(input("Nhap b1="))
c1=int(input("Nhap c1="))
a2=int(input("Nhap a2="))
b2=int(input("Nhap b2="))
c2=int(input("Nhap c2="))
#Phương pháp Cramer
D = a1 * b2 - a2 * b1;
Dx = c1 * b2 - c2 * b1;
Dy = a1 * c2 - a2 * c1;
if (D == 0):
        if (Dx==Dy==0):
            print("He phuong trinh co vo so nghiem")
        else:
         print("He phuong trinh vo nghiem")
else: 
        x = Dx / D;
        y = Dy / D;
        print("x=",x)
        print("y=",y)

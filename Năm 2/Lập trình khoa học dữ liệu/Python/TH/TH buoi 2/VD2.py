a=int(input("Nhap a:"))
b=int(input("Nhap b:"))
temp1 = a;
temp2 = b;
while (temp1 != temp2):
    if (temp1 > temp2):
        temp1 -= temp2;
    else:
        temp2 -= temp1;
uscln = temp1;
bscnn =(a*b)/uscln;
#tính USCLN của a và b
print("Ước số chung lớn nhất của", a, "và", b, "là:", uscln);
#tính BSCNN của a và b
print("Bội số chung nhỏ nhất của", a, "và", b, "là:", bscnn);

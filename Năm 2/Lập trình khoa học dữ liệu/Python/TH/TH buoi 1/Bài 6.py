km=float(input("Nhap so ki-lo-met:"))
if(km>0 and km<=1):
    print("gia tien phai tra la:15000")
elif(km>=2 and km<=5):
    print("Gia tien phai tra la:",(km-1)*135000+15000)
elif(km>=6 and km<=120):
    print("Gia tien phai tra la:",(km-5)*11000+4*13500+15000)
elif(km>120):
    print("Gia tien phai tra la:",((km-5)*11000+13500*4+15000)*0.9)
else:
    print("Ban da nhap sai vui long nhap lai")

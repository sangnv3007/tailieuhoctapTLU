a=int(input("Nhap a:"))
kt=0
if(a<2):
    print("So nay khong phai so nguyen to")
if(a>=2):
    for i in range(2,a+1):
        if(a%i==0):
            kt=kt+1
    if(kt==2):
        print("Số",a,"la so nguyen to")
        


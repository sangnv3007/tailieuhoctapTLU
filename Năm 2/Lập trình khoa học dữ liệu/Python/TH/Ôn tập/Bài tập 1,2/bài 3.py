a=int(input("Nhập a(0<a<b):"))
b=int(input("Nhập b(b>0):"))
for i in range (a,b+1):
    if(i%7==0 and i%5!=0):
        print(i)
    

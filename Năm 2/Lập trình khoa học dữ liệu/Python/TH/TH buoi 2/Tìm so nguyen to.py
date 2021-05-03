import math
A=int(input("Nhap A>0:"))
B=int(input("Nhap B:"))
dem=0;
if(A>0 and B>0):
    for i in range(A,B+1):
        isPrime=True
        if(i<2):
            isPrime=False
        for j in range (2,i):
            if (i%j==0):
                isPrime=False
        if isPrime:
            print("%d"%i)        
else:
    print("Vui lòng nhập a,b là số dương")
    

    
    

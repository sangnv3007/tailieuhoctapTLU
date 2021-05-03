A=int(input("Nhap A>0:"))
B=int(input("Nhap B:"))
for i in range (A,B+1):
    if(i%7==0 and i%5!=0):
        print(i,end=";")
        

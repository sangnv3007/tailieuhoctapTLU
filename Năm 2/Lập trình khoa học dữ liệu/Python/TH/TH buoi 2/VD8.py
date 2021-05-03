import math
n=int(input("Enter N>=2:"))
#caub
def Tinh(n):
    s2=1
    for i in range(2,n+1):
        s2+=1/(i*(i-1))
    return s2
print("S2= ",Tinh(n))
#caua
s1=0
for i in range(1,n+1):
        s1=s1+math.factorial(i)
print("S1=",s1)
#cauc
s3=0
for i in range(1,n+1):
    s3=s3+((-1)*(1-i))*1/(math.factorial(i))
print("S3",s3)
#bài 7-----------------------


        

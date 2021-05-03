import math
#Thuật toán tìm bscnn
def uscln(a,b):
    if(b==0):
        return a;
    return uscln(b,a%b)
def bscnn(a, b):
    return int((a * b) / uscln(a, b));
#tìm số nguyên tố
def isPrimeNumber(n):
    # so nguyen n < 2 khong phai la so nguyen to
    if (n < 2):
        return False;
    # check so nguyen to khi n >= 2
    a = int(math.sqrt(n));
    for i in range(2, a+ 1):
        if (n % i == 0):
            return False;
    return True;
n = int(input("Nhập số nguyên dương n = "));
dict1={}
list1=[]
for i in range (2, n+1):
    if (isPrimeNumber(i)):
       list1.append(i)
for i in list1:
    value=bscnn(i,n)
    dict1.update({i:value})
print("List 1= ",dict1)
    
    
            
    

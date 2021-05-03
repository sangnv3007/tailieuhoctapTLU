#bài 1
list1=[]
for i in range(20,201):
    if(i%7==0 and i%5!=0):
        list1.append(str(i)) #thêm các số i thỏa mãn điều kiện vào list1
print(";".join(list1))#in ra chuỗi trên một dòng cách nhau bởi dấu phẩy
#bài 2
def gt(n):
    gt=n
    if (n==0):
        return 1
    if(n<0):
        return False
    if(n>0):
        for i in range (1,n):
            gt=gt*i
        return gt
n=int(input("Nhap n: "))
print(gt(n))
#bài 3
dict1={}
n=int(input("Nhap n: "))
for i in range(1,n+1):
    dict1.update({i:i*i})
print(dict1)
#bài4
#Cách 1
def fibonaci(n):
    f0=0
    f1=1
    dem=0
    list1=['0','1']
    if(n<0):
        return -1
    else:
        while(dem<n):
            f2=f0+f1
            f0,f1=f1,f2      
            dem=dem+1
            list1.append(str(f2))
        return list1
n=int(input("Nhap n: "))
print(";".join(fibonaci(n)))
#Cách 2
string=""
def fibonacci(n):
    f0 = 0;
    f1 = 1;
    fn = 1;
    if (n < 0):
        return -1;
    elif (n == 0 or n == 1):
        return n;
    else:
        for i in range(2, n):
            f0 = f1;
            f1 = fn;
            fn = f0 + f1;
        return f1;
n=int(input("Nhap n: "))
for i in range (0,n+1):
    print(fibonacci(n))
def uscln(a,b):
    if b == 0:
        return a
    else:
        return uscln(b,a % b)
def bscnn(a,b)
    return (a*b)/uscln(a,b)
a=int(input("Nhap a=")
b=int(input("Nhap b=")
print(uscln(a,b))
print(bscnn(a,b))
#bài5
def isPrime(n):
    if(n<2):
        return False
    for i in range (2,n//2+1):
        if(n%i==0):
            return False   
    return True
try:    
    n=int(input("Nhap n: "))
    list1=[]
    for i in range(2,n+1):
        if(isPrime(i)):
            list1.append(i)   
    print(list1)
except:
    print("Vui long nhap lai n !!!")
#bài6
#cách 1
def isPrime(n):
    if(n<2):
        return False
    for i in range(2,n//2+1):
        if(n%i==0):
            return False
    return True
list1=[]
for i in range(10**5,10**6):
    if(isPrime(i)):
        list1.append(i)
print(list1)
#cách 2
print(tuple( i for i in range(10**5,10**6) if(isPrime(i))))
    
    

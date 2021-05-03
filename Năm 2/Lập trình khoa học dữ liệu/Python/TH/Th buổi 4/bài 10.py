import math
n=int(input("Nhap n= "))
set1=set()
set2=set()
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
for i in range(2,n+1):
    if(isPrimeNumber(i)):
        set1.add(i)
        set2.add(i*i)
# Phép Hiệu: thuộc set1 nhưng không thuộc set2
print("Phep Hieu: ",set1 - set2) 
# Phép Hợp: thuộc set1 hoặc set2
print("Phep Hơp: ",set1 | set2)
# Phép Giao: thuộc cả set1 và set2
if(set1 & set2==set()):
    print("Khong co phan tu nao thuoc ca 2 set")
# Phép Xor : thuộc hoặc set1, hoặc set2 nhưng không phải cả 2
print("Phep Xor: ",set1 ^ set2)

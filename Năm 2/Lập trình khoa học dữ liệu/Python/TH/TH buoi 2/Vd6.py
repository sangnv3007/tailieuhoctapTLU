n=int(input("Nhap n:"))
for i in range (1,n//2+1):
    sum = 0;
    if (n % i == 0):
        sum += i;   
if (i == sum):
    print("Số này là số hoàn chỉnh")    
else:
    print("Số này không là số hoàn chỉnh")

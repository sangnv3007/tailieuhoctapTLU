def isPrime(n):
    if(n<2):
        return False
    for i in range(2,n//2+1):    
        if(n%i==0):
            return False
    return True
n=int(input("Nhập n: "))
list1=[]
for i in range(1,n):
    if(isPrime(i)):
        list1.append(i)
print(list1)

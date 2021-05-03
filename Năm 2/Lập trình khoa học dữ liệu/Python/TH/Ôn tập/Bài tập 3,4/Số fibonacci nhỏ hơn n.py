def isPrime(n):   
    for i in range(2,n+1):
        if(n<2):
            return False
        for j in range(2,i):
            if(i%j==0):
                return False
        return True
n=int(input("Nhập n: "))
for i in range(1,n):
    if(isPrime(i)):
        print(i)

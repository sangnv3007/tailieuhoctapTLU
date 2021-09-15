def fibonaci(n):
    f0=0
    f1=1
    fn=1
    if(n<0):
        return -1
    elif (n==1 or n==0):
        return n
    else:
        for i in range(2,n+1):
            f0=f1
            f1=fn
            fn=f0+f1
        return f1
n=int(input("Nhập n= "))
print(fibonaci(n))
list1=[]
for i in range(0,n):
    if(fibonaci(i)<n):
        list1.append(fibonaci(i))
print(list1)
        

def fibonaci(n):
    f0=1
    f1=1
    fn=1
    if(n<0):
        return -1
    elif(n==0 or n==1):
        return n
    else:
        for i in range(2,n+1):
            f0=f1
            f1=fn
            fn=f0+f1
        return f1
list1=[]
n=int(input("Nhập n :"))
for i in range(0,n):
    list1.append(fibonaci(i))
print(list1)

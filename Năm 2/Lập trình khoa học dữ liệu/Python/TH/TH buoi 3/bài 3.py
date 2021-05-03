l=[]
sum=0
n=int(input("Nhap n:"))
for i in range (1,n): #i chạy từ 3 đến n-1
    if(n%i==0):
        sum+=i
    if(sum>i):
        l.append(i)
print(tuple(l))
        

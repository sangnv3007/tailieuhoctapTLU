n=int(input("Nhap n:"))
sum=0
set1=set()
for i in range(1,n+1):
    for j in range(2,i//2+1):
        if(i%j==0):
            sum+=i
    if(sum>i):
        set1.add(i)
print(set1)
        
    
            
 


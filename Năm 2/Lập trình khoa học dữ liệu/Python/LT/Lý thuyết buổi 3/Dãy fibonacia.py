fo=0
f1=1
L=[0,1]
n=int(input("Nhap n:"))
for i in range (2,n+1):
    L.append(L[i-1]+L[i-2])
print(L)

n=int(input("Nhap n=")) #5
for i in range (1,n+1): #i(1,5) 
    s=n-i #43210
    k=s*" "
    print(k,end='')
    print(((2*i)-1)*"*")

n=int(input("Nhap n="))
for i in range (1,n+1):
    s=n-i
    k=s*" "
    print(k,end='')
    print(((2*i)-1)*'*')

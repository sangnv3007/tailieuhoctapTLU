#tinh to hop C(i;j)
def Gt(n):
    if(n!=1):
        return n*Gt(n-1)
    else:
        return 1
i=int(input("Nhap i="))
j=int(input("Nhap j="))
print("To hop cua C(i;j) la:",(Gt(i)/(Gt(j)*Gt(i-j))))

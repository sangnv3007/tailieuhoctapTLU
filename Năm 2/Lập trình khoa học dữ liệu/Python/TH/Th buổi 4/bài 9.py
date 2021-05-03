number=set()
list1=input("Nhap vao cac so cach nhau bang ki tu trong:").split()
for i in list1:
    number.add(i)
print("So phan tu cua tap hop la:",len(number))
print("MAX=",max(number))
print("MIN=",min(number))


string_number=input('Nhap so nhi phan:').split(",")
dict1={}
for i in string_number:
    key=int(i,2)
    dict1.update({key:i})
print(dict1)

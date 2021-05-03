f=open('sinhvien.txt')
data=f.read()
dict1={}
list1=[]
list1.append(data.split(";\n"))
for i in list1:
    for j in i:
        value=i[1:]
        dict1.update({i[0]:value})
print(dict1)

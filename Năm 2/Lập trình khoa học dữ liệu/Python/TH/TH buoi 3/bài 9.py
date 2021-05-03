f=open('1851061983.txt')
data=f.read()
dict1={}
for i in data:
    value=data.count(i)
    dict1.update({i:value})
print(dict1)

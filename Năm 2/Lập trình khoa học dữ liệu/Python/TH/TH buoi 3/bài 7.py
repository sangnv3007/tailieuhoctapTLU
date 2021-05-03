f=open('1851061983.txt')
data=f.readlines()
print(data)
max=0
print("Dong dai nhat trong file la:")
for i in data:
    if(len(i)>max):
        max=len(i)
    if(len(i)==max):
        print(i)
    



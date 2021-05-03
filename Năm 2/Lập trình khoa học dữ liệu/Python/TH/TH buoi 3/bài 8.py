f=open('1851061983.txt')
data=f.read()
list1=[]
list1.append(data.split())
max=0
print("Từ dài nhất trong file la:")
for i in list1:
   for j in i:
       if(len(j)>max):
           max=len(j)
for i in list1:
    for j in i:
        if(len(j)==max):
            print(j)

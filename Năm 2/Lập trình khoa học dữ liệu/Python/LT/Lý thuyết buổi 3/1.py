string = 'Ưellcom to lap trinh khong kho'
count1=0
count2=0
for i in string:
    if(i.islower()):
        count1 +=1
    if(i.isupper()):
        count2+= 1
print("So ki tu thuong la:{}\nSo ki tu hoa la:{}".format(count1,count2))


#import numpy as np
#import pandas as pd
#import matplotlib.pyplot as plt
#----------bài 1---------#
# nhập dãy số cách nhau bởi kí tự space và in ra
input_number=input("Nhap day so: ").split()
print("Day so ban vua nhap la:",input_number)
sort_number=sorted(input_number,reverse=True)
#Chuyển dãy số sang số nhị phân bằng hàm bin()
for i in range (len(input_number)):
       input_number[i]=bin(int(input_number[i]))
print("Day sau khi chuyen sang so nhi phan la: ",input_number)
#Sắp sếp dãy theo thứ tự giảm dần
print("Day sap xep theo thu tu giam dan la: ",sort_number)
#Tạo ra từ điển với key là số thâp phân và value là số nhị phân tương ứng
dict1={}
for i in input_number:
    key=int(i,2)
    dict1.update({key:i})
print("New dictionary",dict1)
#In ra màn hình số chính phương và chia hết cho 3
def ktcp(a):
    if a<=0:
        return False
    else:
        for i in range(1,a+1):
            if i*i==a:
                return True
        return False
def ktCp(a):
    if a<=0:
        return False
    else:
        b=int(a**0.5)
        if(b*b==a):
            return True
        else:
            return False
list1=[]
list1=set(dict1.keys())
print("Cac so thoa man dk la: ")
for i in list1:
    if(ktCp(i) and i%3==0):
        print(i)
"""
#-----------bài 2---------#
df=pd.read_csv('K59.csv')
print(df)
index=np.arange(1,9)
width=0.3
x=df['so luong mau']
plt.bar(index,df['KNN'],width,color='r',label="KNN")
plt.bar(index+width,df['FIS'],width,color='b',label="FIS")
plt.xticks(index+width/2,x)
x1=df.loc[:,'KNN'].values
x2=df.loc[:,'FIS'].values
y=df.loc[:,'so luong mau'].values
plt.plot(x1,y,'b-o',label="KNN")
plt.plot(x2,y,'r-o',label="FIS")
plt.title("So sánh 2 phương pháp KNN và FIS")
plt.xlabel('Số lượng mẫu')
plt.ylabel('Tỷ lệ')
plt.legend()
plt.show()
"""
from sklearn import linear_model
model=linear_model.LinearRegression()
model.fit(df[['KNN']],df.FIS)
print("He so hoi quy:",model.coef_)
print("Sai so:",model.intercept_)



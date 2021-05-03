f=open("D:\Học Tập\Lập trình khoa học dữ liệu\Python\TH\Th buổi 4\sinhvien.txt")
#bài 1 In ra 5 dòng cuối
"""
line1=f.readline()
for i in range(2,7):
    linei=f.readline()
    print(linei)
"""
#bài 2(Tìm dòng ngắn nhất trong file)
line=f.readlines()
min=100
print("Dòng ngắn trong file là: ")
for i in line:
    if(len(i)<min):
        min=len(i)
for i in line:
    if(len(i)==min):
        print(i)
#bài 3 Tìm từ dài nhất trong file
"""
data=f.read()
list1=[]
list1.append(data.split())
max=0
print("Từ dài nhất trong file là:")
for i in list1:
   for j in i:
       if(len(j)>max):
           max=len(j)
for i in list1:
    for j in i:
        if(len(j)==max):
            print(j)
"""
#bài 4 Đọc 1 file, thống kê và in ra tất cả các chữ cái có
#trong file và số lần xuất hiện của các chữ đó

data=f.read()
dict1={})
for i in data:
    value=data.count(i)
    dict1.update({i:value})
print(dict1,"\n")
#bài 5 Đọc 1 file, thống kê và in ra tần xuất xuất hiện của
#tất cả các từ trong file, in theo thứ tự giảm dần của
#số lần xuất hiện
s=[]
for i in sorted(dict1,key=dict1.get,reverse=True):
    s.append((i,dict1[i]))
print(s)


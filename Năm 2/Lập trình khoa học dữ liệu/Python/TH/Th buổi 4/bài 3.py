dict1={'một':1,'hai':2,'nam':5,'chín':9,'mười':10}
s=[]
#sắp xếp giảm dần theo giá trị của key
for i in sorted(dict1, key=dict1.get, reverse=True):
    s.append((i,dict1[i]))
print(s[0],s[1],s[2])


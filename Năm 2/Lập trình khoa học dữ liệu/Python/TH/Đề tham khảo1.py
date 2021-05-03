"""
import numpy as np
import pandas as pd
a={'name':"Ronaldo","age":43,"Math":7,"English":8,"Literature":6}
b={'name':"Messi","age":44,"Math":7,"English":9,"Literature":3}
c={'name':"Cavani","age":22,"Math":4,"English":8,"Literature":5}
d=[a,b,c]
data=pd.DataFrame(d)
for i in range (0,data.shape[0]):
    print(data.loc[i,:])
def average(a,b,c):
    return (a+b+c)/3
data["Average"]=average(data["Math"],data["English"],data["Literature"])
print(data)
"""
class SinhVien:
    def __init__(self,name="",age=0,math=0,english=0,literature=0):
        self.name=name
        self.age=age
        self.math=math
        self.english=english
        self.literature=literature
    def average(self):
        return(self.math+self.english+self.literature)/3
Ronaldo=SinhVien("Ronaldo",42,7,8,9)
Messi=SinhVien("Messi",42,7,8,9)
Cavani=SinhVien("Cavani",42,7,8,9)
print(Ronaldo.__dict__)
print(Ronaldo.average())

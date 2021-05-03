import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv('')
print(df)
index=np.arange(1,9)
width=0.3
x=df['so luong mau']
plt.bar(index,df['KNN'],width,color='r',label="KNN")
plt.bar(index+width,df['FIS'],width,color='b',label="FIS")
plt.xticks(index+width/2,x)
plt.title("So sánh 2 phương pháp KNN và FIS")
plt.xlabel('Số lượng mẫu')
plt.ylabel('Tỷ lệ')
plt.legend()
plt.show()
from sklearn import datasets,linear_model
model=linear_model.LinearRegression()
#model.fit(df[['KNN']],df.FIS)
print("He so hoi quy:",model.coef_)
print("Sai so:",model.intercept_)
from sklearn import linear_model
model=linear_model.LinearRegression()
x=df.loc[:,['KNN']].values
y=df.FIS.values
model.fit(x,y)

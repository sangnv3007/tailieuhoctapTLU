import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
data=pd.read_csv("iris.csv")
print(data)
L=list((np.linalg.norm(data,axis=0))**2)
T=tuple(data.mean(axis=0))
print("________Tồng bình phương các cột______\n",L)
print("________Trung bình cộng các cột______\n",T)
plt.plot(data.loc[:,['SepalWidth']].values,'bo',data.loc[:,['SepalLength']].values,'ro')
plt.xlabel("SepalWidth")
plt.ylabel("SepalLength")
#plt.show()
from sklearn import linear_model
model=linear_model.LinearRegression
X=drop("quality")
model.fit()

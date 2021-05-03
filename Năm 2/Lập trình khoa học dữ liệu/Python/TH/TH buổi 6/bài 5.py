import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv('winequality-red.csv',sep=";")
print(df)
tong=df.sum(axis=0)
#print("-----Sum Columns-----\n",tong)
gtnn=df.min(axis=0)
#print("-----Min columns-----\n",gtnn)
gtln=df.max(axis=0)
#print("-----Max columns-----\n",gtln)
tb=df.mean(axis=0)
#print("-----Average columns-----\n",tb)
alcohol=df.loc[:,["alcohol"]].values
quality=df.loc[:,["quality"]].values
plt.plot(alcohol,quality,'ro')
plt.xlabel("Alcohol")
plt.ylabel("Quality")
plt.show()
from sklearn import linear_model
X=df.drop(['quality'],axis=1)
model=linear_model.LinearRegression()
model.fit(X,df.quality)
print(model.intercept_)
print(model.predict([[7.8,0.88,0,2.6,0.098,25,67,0.9968,3.2,0.68,9.8]]))



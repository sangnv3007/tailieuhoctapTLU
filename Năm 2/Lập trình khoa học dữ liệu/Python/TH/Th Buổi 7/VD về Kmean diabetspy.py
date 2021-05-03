import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans

#load file
data=pd.read_csv("diabetes.csv")

#Build x,y
x=data.loc[:,:'age'].values
y=data.loc[:,'class'].values
y[y=='tested_positive']=0
y[y=='tested_negative']=1
#Build model
model_Kmeans=KMeans(n_clusters=2).fit(x)
label_Kmeans=model_Kmeans.predict(x)
print(y)                               
print(label_Kmeans)
plt.plot(x,y,'ro')
#plt.show()

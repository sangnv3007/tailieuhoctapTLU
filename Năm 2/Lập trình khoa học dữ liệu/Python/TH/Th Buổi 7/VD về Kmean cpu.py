import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans

#load file
data=pd.read_csv("cpu.csv")

#Build x,y
x=data.loc[:,:'CHMAX'].values
y=data.loc[:,'class'].values

#Build model
model_Kmeans=KMeans(n_clusters=3).fit(x)
label_Kmeans=model_Kmeans.predict(x)
print(y)                               
print(label_Kmeans)
plt.plot(x,y,'bo')
plt.show()



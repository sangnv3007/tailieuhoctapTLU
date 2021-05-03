import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
data=pd.read_csv("KNNFIS.csv")
print(data)
index=np.arange(1,9)
width=0.3
plt.bar(index,data['KNN'],width,color='b',label='KNN')
plt.bar(index+width,data['FIS'],width,color='r',label='FIS')
plt.legend()
plt.title("So sánh KNN và FIS")
plt.xticks(index+width/2,data['soluongmau'])
plt.xlabel("Số lượng mẫu")
#plt.show()
from sklearn import linear_model
model=linear_model.LinearRegression()
model.fit(data[['KNN']],data.FIS.values)
print("Hệ số hồi quy là: ",model.coef_)
print("Sai số là: ",model.intercept_)


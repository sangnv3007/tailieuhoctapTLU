import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv(r'D:\Học Tập\Lập trình khoa học dữ liệu\Python\TH\TH buổi 6\K59.csv')
print(df)
x=df['so luong mau']
y=df['KNN']
z=df['FIS']
plt.bar(np.arange(len(x)),y,0.4,color='r',label="KNN")
plt.bar(np.arange(len(x))+0.4,z,color='b',label="FIS")
plt.xticks(np.arange(len(x))+0.2,x)
plt.title("So sánh 2 phương pháp KNN và FIS")
plt.xlabel('Số lượng mẫu')
plt.ylabel('Tỷ lệ')
plt.legend()
plt.show()

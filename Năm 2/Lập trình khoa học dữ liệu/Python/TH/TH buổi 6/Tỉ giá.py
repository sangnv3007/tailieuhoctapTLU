import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv('tigia.csv')
print(df)
sort=df.sort_values(['Ma NT'])
print(sort)
plt.bar(range(len(df)),df['Gia'],color='r',label="Giá")
plt.xticks(range(len(df)),df['Ma NT'])
plt.legend()
plt.title("Tỉ giá ngoại tệ mua vào so với VNĐ")
plt.show()

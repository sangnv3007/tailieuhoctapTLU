import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv('tigia.csv')
print(df)
a=df.sort_values(['Gia'], ascending=False)#sắp sếp theo thứ tự giảm dần
print(a)
plt.bar(range(len(df)),df['Gia'],color='r',label="Mã NT")
plt.xticks(range(len(df)),df['Ma NT'])
plt.legend()
plt.xlabel("Tên mã ngoại tệ")
plt.show()





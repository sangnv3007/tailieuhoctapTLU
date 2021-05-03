import numpy as np
import matplotlib.pyplot as plt
data=['Data 1','Data 2','Data 3','Data 4']
data_MCFIS=[94.04,93.39,85.64,85.63]
data_MCFISR=[95.36,95.36,88.36,88.87]
index=np.arange(1,5)
width=0.3
plt.bar(index,data_MCFIS,width,color='red',label='M-CFIS')
plt.bar(index+width,data_MCFISR,width,color='green',label='M-CFIS-R')
plt.title('Biểu đồ cột so sánh M-CFIS và M-CFIS-R')
plt.ylabel("Đơn vị tính theo %")
plt.xticks(index+width/2,data) #gán các nhãn dán tương ứng vào vị trí giữa 2 cột 
plt.legend()
plt.show()

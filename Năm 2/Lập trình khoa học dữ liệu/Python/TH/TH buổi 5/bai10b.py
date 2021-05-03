import numpy as np
import matplotlib.pyplot as plt
E={'Java':31.3,'Python':24.8,'PHP':12.4,'JavaScript':11.3,'C#':10.8,'C++':9.4}
plt.pie(E.values(),(0.1,0,0,0,0,0),labels=E.keys(),autopct='%1.1f%%',shadow=True)
plt.axis('equal')
plt.show()

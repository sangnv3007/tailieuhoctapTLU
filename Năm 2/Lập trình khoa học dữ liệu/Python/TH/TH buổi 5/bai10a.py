import numpy as np
import matplotlib.pyplot as plt
D={'Java':22.2,'Python':17.6,'PHP':8.8,'JavaScript':8,'C#':7.7,'C++':6.7}
plt.bar(range(len(D)),D.values(),align='center')
plt.xticks(range(len(D)),D.keys())
plt.ylabel('Popularity')
plt.show()


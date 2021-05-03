import numpy as np
import matplotlib.pyplot as plt
x=[1,4,5,6,7]
y=[2,6,3,6,3]
plt.plot(x,y,'bo')
plt.plot(x,y, 'r:')
plt.axis([1,8,1,8])
plt.xticks(np.arange(1,8,1))
plt.xlabel("x-axis")
plt.ylabel("y-axis")
plt.title("Display marker")
plt.show()

import numpy as np
import matplotlib.pyplot as plt
plt.plot([10,20,30],[20,40,10],'b',label="line1")
plt.plot([10,20,30],[40,10,30],'g',label="line2")
plt.legend()
plt.axis([10,30,10,40])
plt.xticks(np.arange(10,30,5))
plt.xlabel("x-axis")
plt.ylabel("y-axis")
plt.title("Two or more line on same plot with suitable legend")
plt.show()

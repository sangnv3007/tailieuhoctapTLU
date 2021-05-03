import numpy as np
import math
def eulucid(x,y):
    return math.sqrt(sum(x-y)**2)
x=np.random.randint(1,100,(7,5))
y=np.zeros((7,7))
for i in range(7):
    for j in range(i,7):
        y[i,j]=eulucid(x[i],x[j])
print(y)
        

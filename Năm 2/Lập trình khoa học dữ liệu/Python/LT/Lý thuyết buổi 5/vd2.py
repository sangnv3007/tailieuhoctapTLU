import numpy as np
a=np.random.randint(1000,size=100)
print(a)
b=a[a%2==1]
print(b)

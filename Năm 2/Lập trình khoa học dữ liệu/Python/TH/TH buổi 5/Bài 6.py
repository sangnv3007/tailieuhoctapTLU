import numpy as np
a=np.random.randint(0,10,10)
b=np.random.randint(0,10,10)
c=b-a
print(c)
print("a=",a," ","b=",b)
print("Khoang cac euclid giua a va b la:",np.linalg.norm(c))



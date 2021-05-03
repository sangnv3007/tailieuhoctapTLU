import numpy as np
a=np.random.randint(1,100,(3,3))
b=np.random.randint(1,100,(3,3))
print(a)
print(b)
c=np.concatenate([a,b], axis=1)
d=np.concatenate([a,b], axis=0)
print(c)
print(d)




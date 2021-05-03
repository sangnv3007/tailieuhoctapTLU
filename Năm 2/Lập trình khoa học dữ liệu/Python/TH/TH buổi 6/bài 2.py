import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
df=pd.DataFrame(np.random.randint(0,101,(5,6)))
df=df/100
print(df)
print(df.max())
print(df.min())
dftb=(df.sum()/5)
print(dftb)
E={'Cột 1':dftb[0],'Cột 2':dftb[1],'Cột 3':dftb[2],'Cột 4':dftb[3],'Cột 5':dftb[4]}
plt.bar(range(len(E)),E.values(),align='center')
plt.xticks(range(len(E)),E.keys())
plt.show()



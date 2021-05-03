import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
sr1=pd.Series(np.random.randint(10,size=5))
sr2=pd.Series(np.random.randint(10,size=5))
print(sr1+sr2)
print(sr1-sr2)
print(sr1*sr2)
print(sr1/sr2)
plt.plot(sr1,sr2,'o')
plt.xlabel('Trục x')
plt.ylabel('Trục y')
plt.show()



import numpy as np
import pandas as pd
df3 = pd.DataFrame({'X' : ['A', 'B', 'A', 'B'], 'Y' : [1, 4, 3, 2]})
print(df3)
print(df3.groupby(['Y']).get_group(1))


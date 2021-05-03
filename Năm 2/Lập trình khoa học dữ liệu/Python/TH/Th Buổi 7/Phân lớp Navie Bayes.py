import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.naive_bayes import GaussianNB
data=pd.read_csv('iris.csv')
x=data.loc[:,:'PetalWidth'].values
y=data.loc[:,'Name'].values
from sklearn import metrics
model_NB=GaussianNB().fit(x,y)
print(model_NB.predict(x))
print(metrics.classification_report(y,model_NB.predict(x)))
print(metrics.confusion_matrix(y,model_NB.predict(x)))


from sklearn import datasets
from sklearn import metrics
from sklearn import tree
dataset=datasets.load_iris()
dataset.data[0:6]
Y=dataset.target
X=dataset.data
model=tree.DecisionTreeClassifier()
model.fit(X,Y)
model.score(X,Y)
predicted=model.predict(X)
print(predicted)

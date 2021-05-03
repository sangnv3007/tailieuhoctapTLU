from sklearn import datasets
from sklearn import metrics
from sklearn.cluster import KMeans
dataset=datasets.load_iris()
Y=dataset.target
X=dataset.data
print(Y)
kmeans=KMeans(n_clusters=3).fit(X)
pred_label=kmeans.predict(X)
print(pred_label)

f=open('test.txt','r')
s=""
line1=f.readline()
for line1 in f:
    s=s+line1+
l=s.split()
print(l)



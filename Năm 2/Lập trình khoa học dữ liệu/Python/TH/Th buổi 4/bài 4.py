dict1={}
S="dai hoc thuy loi"
print(S.split())
for i in S:
    value=S.count(i)
    dict1.update({i:value})
print(dict1)

l = []
while True:
    s = input()
    if not s:
       break
    l.append(tuple(s.split(";")))
print(l)

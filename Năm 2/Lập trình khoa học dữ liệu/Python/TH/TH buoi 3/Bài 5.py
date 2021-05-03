list1 = input('Enter a sequence number: ').split(',')
for x in  range (len(list1)):
    list1[x]=hex(int(list1[x]))
print(list1)

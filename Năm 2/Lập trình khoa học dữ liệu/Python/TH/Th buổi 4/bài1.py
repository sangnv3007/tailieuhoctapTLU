D={1:'one',2:"two",3:'three',4:'four',5:'five',6:'six',7:'seven',8:'eight',9:'nine',10:'ten'}
s=[]
for i in sorted(D,key=D.get):
    s.append((i,D[i]))
print("Tu dien sap xep cac value theo bang chu cai la: ",s)

list1=[]
check="co"
while(True):
    if(check=="co"):
        bin1=input("Nhap vao so nhi phan:")
        list1.append(bin1)
        check=input("Ban co muon nhap tiep khong?\nCo hoac khong?")
    else:
        break
print("list so nhi phan la: ",list1)
list2=[]
for i in list1:
    inti=int(i,2)
    list2.append(inti)
print("list so thap phan la: ",list2)


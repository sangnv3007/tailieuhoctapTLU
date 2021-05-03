d={}
check="yes"
while(True):
    if(check=='yes'):
        key=input("Nhap key:")
        value=input("Nhap gia tri tuong ung:")
        d[key]=value;
        check=input("Ban co muon tiep tuc:\nCó hoặc Không:")
    else:
        break
print(d)

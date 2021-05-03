thang = int(input("\ntháng: "))
nam = int(input("năm: "))
nam_nhuan = False
if (nam%4==0 and nam%100!=0) or(nam%400==0):
    nam_nhuan = True
if thang==2:
    print("29 ngày" if nam_nhuan else "28 ngày")
else: 
    print("31 ngày" if thang==1 or thang==3 or thang ==5 or thang ==7 or thang==8 or thang==10 or thang ==12 else "30 ngày")

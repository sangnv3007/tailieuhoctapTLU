diem=float(input("Nhap diem cua ban theo thang diem 10:"))
if(diem<0 or diem>10):
    print("Ban da nhap sai theo thang diem 10!!!")
if(diem>=0 or diem<=4):
    print("Diem cau ban theo he so 4 la:F")
elif(diem>4 or diem<=5.5):
    print("Diem cau ban theo he so 4 la:D")
elif(diem>5.5 or diem<=7):
    print("Diem cau ban theo he so 4 la:C")
elif(diem>7 or diem<=8.5):
    print("Diem cau ban theo he so 4 la:B")
else:
    print("Diem cua ban theo he so 4 la A")

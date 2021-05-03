So_tien=float(input("Nhap so tien nguoi do linh duoc trong nam vua roi"))
pt=int(input("Nhap so nguoi phu thuoc"))
if(So_tien>0 and So_tien<=60):
    print("Thue thu nhap ca nhan theo nam la:",((So_tien-108-pt*43,2)*0.05))
elif(So_tien>60 and So_tien<=120):
    print("Thue thu nhap ca nhan theo nam la:",((So_tien-108-pt*43,2)*0.1))
elif(So_tien>60 and So_tien<=120):
    print("Thue thu nhap ca nhan theo nam la:",((So_tien-108-pt*43,2)*0.15))
elif(So_tien>120 and So_tien<=216):
    print("Thue thu nhap ca nhan theo nam la:",(So_tien-108-pt*43,2)*0.2)
elif(So_tien>216 and So_tien<=384):
    print("Thue thu nhap ca nhan theo nam la:",(So_tien-108-pt*43,2)*0.25)
elif(So_tien>384 and So_tien<=624):
    print("Thue thu nhap ca nhan theo nam la:",(So_tien-108-pt*43,2)*0.3)
elif(So_tien>624 and So_tien<=960):
    print("Thue thu nhap ca nhan theo nam la:",(So_tien-108-pt*43,2)*0.35)
else:
    print("So tien ban nhap khong dung")

while True:
    try:
        x = int(input("Nhập số X: "))
        break
    except:
        print("Lỗi, hãy nhập lại.")
print("X =", x)

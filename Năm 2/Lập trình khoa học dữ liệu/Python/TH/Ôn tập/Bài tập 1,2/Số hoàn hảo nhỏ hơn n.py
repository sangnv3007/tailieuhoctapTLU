while True:
    try:
        n=int(input("Nhập n: "))
        if(n>0):  
            for i in range(1,n+1):
                dem=0
                for j in range(1,i):
                    if(i%j==0):
                        dem+=j
                if(dem==i):
                    print("{0}".format(i))
            break
        else:
            print("Bạn đã nhập sai n")
    except:
        print("Lỗi nhập ký tự")

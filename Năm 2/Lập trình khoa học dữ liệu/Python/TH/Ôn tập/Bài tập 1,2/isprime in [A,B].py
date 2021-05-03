try:
    a=int(input("Nhập a(a>0) :"))
    b=int(input("Nhập b(b>0 và b>a) :"))
    if(a>0 and b>0):
        for i in range(a,b+1):
            isPrime=True
            if(i<2):
                isPrime=False
            for j in range (2,i):
                if(i%j==0):
                    isPrime=False
            if(isPrime):
                print("{0}".format(i))
    else:
        print("Vui lòng nhập lại a ,b")
except:
    print("Bạn đã nhâp sai a và b")

        

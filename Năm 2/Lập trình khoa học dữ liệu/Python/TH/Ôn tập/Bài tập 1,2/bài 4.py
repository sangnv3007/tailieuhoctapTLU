def gt(a):
    gt=a
    if(a==0 and a==1):
        return 1
    else:
        for i in range(1,a):
            gt=gt*i
    return gt
n=int(input("Nhập n:"))
#print(gt(n))
#câu a
s1=0
for i in range (1,n+1):
    s1+=1/gt(i)
print("s1=",s1)
#câu b
s2=0
for i in range(1,n+1):
    s2=+1/(i*(i-1))
print("s2=",s2)
#câu c
s3=0
for i in range(1,n+1):
    s3=s3+((-1)**(n-1))*(1/(gt(i)))
print("S3=",s3)
                        

    

import math
def dodai(m,n,p,q):
    return math.sqrt(pow((n-m), 2)+pow((q-p), 2))
x1 = int(input('x1= '))
y1 = int(input('y1= '))
x2 = int(input('x2= '))
y2 = int(input('y2= '))
x3 = int(input('x3= '))
y3 = int(input('y3= '))
AB = dodai(x1,x2,y1,y2)
AC = dodai(x1,x3,y1,y3)
BC = dodai(x2,x3,y2,y3)
#AB,AC,BC = 6,8,10 #vuông 00,60,08
#AB,AC,BC = 4,4,2 #cân 00,40,04
#AB,AC,BC = 4,4,4 #đều 
if AB>0 and AC>0 and BC>0 and AB+AC>BC and AB+BC>AC and BC+AC>AB:
    if AB==AC==BC:
        print("tam giác ABC là tam giác đều")
    elif (AB==AC) or (AB==BC) or (AC==BC):
        print("đây là tam giác cân")
    elif ((AC**2==AB**2+BC**2)or(AB**2==AC**2+BC**2)or(BC**2==AB*AB+AC*AC)):
        print("đây là tam giác vuông")
else:
    print("Ban da nhap toa do khong tao thanh 1 tam giac")
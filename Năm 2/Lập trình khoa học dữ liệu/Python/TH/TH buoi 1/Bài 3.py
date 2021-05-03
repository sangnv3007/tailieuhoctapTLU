n=int(input("Nhap thu trong tuần bằng sô:"))
print("2.Thu hai\n3.Thu 3\n4.Thu tu\n5.Thu nam\n6.Thu sau\n7.Thu bay\n8.Chu nhat");
switch(n):{   
    case 0:
        print("Monday");
        break;
    case 1:
        print("Tuesday");
        break;
    case 2:
        print("Wednesday");
        break;
    case 3:
        print("Thusday");
        break;
    case 4:
        print("Friday");
        break;
    case 5:
        print("Saturday");
        break;
    case 6:
        print("Sunday");
        break;
    }
default:
    print("Khong la thu nao trong tuan");
    break;

#include <iostream>
using namespace std;

char F(char R, char Ki)
{
    return R+Ki;
}

int main()
{
    string P,C;
    char K[3],L[3],R[3];
    cout<<"Nhap chuoi plaintext: ";getline(cin,P);C=P;
    cout<<"Nhap chuoi khoa: ";cin>>K[0];

    //encode
    R[0]=P[0];
    L[0]=P[1];
    for (int i = 1; i <= 2; i++)
    {
        K[i]=K[0]<<i;
        R[i]=L[i-1]^F(R[i-1],K[i]);
        L[i]=R[i-1];
    }
    C[0]=L[2];
    C[1]=R[2];

    cout<<"Khoi ma hoa: "<<C;
}
#include <iostream>
using namespace std;

int Kt_So(char kt) { return kt-'A'; }

char So_Kt(int so) { return 'A'+so; }

int main()
{
    string P,C,K;
    string B="ABCDEFGHIFKLMNOPQRSTUVWXYZ";
    cout<<"Nhap chuoi plaintext: ";getline(cin,P);C=P;
    cout<<"Nhap chuoi khoa: ";getline(cin,K);
    
    //ma hoa
    int j=0;
    for (int i = 0; i < P.size(); i++)
    {
        int so; so=Kt_So(P[i]);
        int k;k=Kt_So(K[j]);
        so=(so+k)%26;
        C[i]=So_Kt(so);
        j++;
        if (j==K.size())
        {
            j=0;
        }
    }
    cout<<"Chuoi ma hoa: "<<C<<endl;
   
    j=0;
    for (int i = 0; i < C.size(); i++)
    {
        int so; so=Kt_So(C[i]);
        int k;k=Kt_So(K[j]);
        so=(so-k+26)%26;
        P[i]=So_Kt(so);
        j++;
        if (j==K.size())
        {
            j=0;
        }
    }
    cout<<"Chuoi ma hoa: "<<P;
}
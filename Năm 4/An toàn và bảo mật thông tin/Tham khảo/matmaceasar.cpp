
//Mat ma ceacar
#include <iostream>  

using namespace std;

int Kt_So(char kt) { return kt-'A'; }

char So_Kt(int so) { return 'A'+so; }

int main()
{
    // string P,C;
    // int k;

    // cout<<"Nhap chuoi: ";getline(cin,P);C=P;
    // cout<<"Nhap khoa k: "; cin>>k;

    // //Ma hoa
    // for (int i = 0; i < P.size(); i++)
    // {
    //     int so;
    //     so=Kt_So(P[i]);
    //     C[i]=So_Kt((so+k)%26);
    // }

    // cout<<"Chuoi ma hoa: "<<C<<endl;
    
    string test = "ZLSFAPBYFQFBRAFBQ";

    for (int i = 1; i < 26; i++)
    {
        for (int j = 0; j < test.size(); j++)
        {
            int so;
            so=Kt_So(test[j]);
            test[j]=So_Kt((so-i+26)%26);
        }
        cout<<"Khoa K = "<<i;
        cout<<"-Chuoi: "<<test<<endl;
    }
    

    
    // cout<<"Chuoi giai ma hoa: "<<P<<endl;
    

    return 0;
}
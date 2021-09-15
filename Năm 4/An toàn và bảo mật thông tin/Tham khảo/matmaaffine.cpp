
//Mat ma affine
#include <iostream>  

using namespace std;

int Kt_So(char kt) { return kt-'A'; }

char So_Kt(int so) { return 'A'+so; }

int main()
{
    int a=0,b;
    // string P,C;
    // cout<<"Nhap chuoi: ";getline(cin,P);C=P;
    
    // while ( a<1 || a>25 || a%2==0 || a==13)
    // {
    //     cout<<"Nhap a: "; cin>>a;
    // }
    
    // cout<<"Nhap b: ";cin>>b;

    // //Ma hoa
    // for (int i = 0; i < P.size(); i++)
    // {
    //     int so;
    //     so=Kt_So(P[i]);
    //     C[i]=So_Kt((a*so+b)%26);
    // }

    // cout<<"Chuoi ma hoa: "<<C<<endl;
    
    // int a1;
    // for(int i=1;i<26;i++) { if ((i*a)%26==1) { a1=i; break; } }

    //Giai ma
    // for (int i = 0; i < C.size(); i++)
    // {
    //     int so;
    //     so=Kt_So(C[i]);
    //     P[i]=So_Kt(a1*(so-b+26)%26);
    // }
    // cout<<"Chuoi giai ma: "<<P<<endl;


    //thám mã
    string test = "GFQUMQHWHWFEJFQHWJOH",P; P = test;
   
    for (int a = 1; a < 26 ; a+=2)
    {
        if (a!=13)
        {
            int a1;
            for(int i=1;i<26;i++) { if ((i*a)%26==1) { a1=i; break; } }
            for (int b = 0; b < 26; b++)
            {
                for (int k = 0; k < test.size(); k++)
                {
                    int so;
                    so=Kt_So(test[k]);
                    P[k]=So_Kt(a1*(so-b+26)%26);
                }
                cout<<"a:"<<a<<" b:"<<b<<" Chuoi: "<<P<<endl;
            }
        }
    }

    return 0;
}
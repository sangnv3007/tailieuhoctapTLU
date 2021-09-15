#include <iostream>
using namespace std;




int main()
{
    string P,C,K;
    string B="ABCDEFGHIFKLMNOPQRSTUVWXYZ";
    cout<<"Nhap plaintext: ";getline(cin,P);C=P;
    cout<<"Nhap chuoi k: ";getline(cin,K);

    //Ma hoa
    for (int i = 0; i < P.size(); i++)
    {
        for (int j = 0; j < 26; j++)
        {
            if (P[i]==B[j]) { C[i]=K[j]; }
        }
    }
    cout<<"Chuoi ma hoa: "<<C<<endl;
    

    //Giai ma
    for (int i = 0; i < C.size(); i++)
    {
        for (int j = 0; j < 26; j++)
        {
            if (C[i]==K[j]) { P[i]=B[j]; } 
        }
    }
    cout<<"Chuoi giai ma: "<<P<<endl;    



    // for (int i = 0; i < P.size(); i++)
    // {
    //     for (int j = 0; j < P.size(); j++)
    //     {
    //         /* code */
    //     }
        
    // }
    
}
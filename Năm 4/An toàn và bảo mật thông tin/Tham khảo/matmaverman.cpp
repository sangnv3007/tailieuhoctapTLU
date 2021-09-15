#include <iostream>
using namespace std;



int main()
{
    string P,C,K; 

    cout<<"Nhap chuoi plaintext: ";getline(cin,P);C=P;
    cout<<"Nhap khoa: ";getline(cin,K);
     
    int j=0;
    //encode
    for (int i = 0; i < P.size(); i++)
    {
        C[i]=P[i]^K[j];

        j++;
        if ((j==K.size()))
        {
            j=0;
        }
        

    }
    
    cout<<"Chuoi ma hoa: "<<C<<endl;

    j=0;
    //decode
    for (int i = 0; i < C.size(); i++)
    {
        P[i]=C[i]^K[j];
        j++;
        if (j==K.size())
        {
            j=0;
        }
        
    }
    
    cout<<"Chuoi giai ma : "<<P<<endl;



}
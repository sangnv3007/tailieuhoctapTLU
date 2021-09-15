#include <iostream>
using namespace std;



int main()
{
    string P,C;
    char A[8][4];

    cout<<"Nhap chuoi plaintext: ";getline(cin,P);


    //encode
    int t=0;
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            A[j][i] = P[t];
            t++;
            if (t==P.size()) t=0; 
        }
    }

    //hien thi ma tran
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 4; j++)  cout<<A[i][j]<<" ";
        cout<<endl;
    }

    for (int i = 1; i < 8; i+=2)
        for (int j = 0; j < 4; j++)
            C+=A[i][j];
    for (int i = 0; i < 8; i+=2)
        for (int j = 0; j < 4; j++)
            C+=A[i][j];

    cout<<"Chuoi ma hoa: "<<C<<endl;
    

    // //decode
    // t=0;P="";
    // for (int i = 0; i < 5; i++)
    // {
    //     for (int j = 0; j < 5; j++)
    //     {
    //         A[j][i] = C[t];
    //         t++;
    //         if (t==C.size()) t=0; 
    //     }
    // }

    // for (int i = 0; i < 5; i++)
    //     for (int j = 0; j < 5; j++)
    //         P+=A[i][j];
    
    // cout<<"Chuoi giai ma: "<<P<<endl;
}
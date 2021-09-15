#include <iostream>
using namespace std;
int main()
{
    string P,C,K,B="ABCDEFGHIKLMNOPQRSTUVWXYZ";
    cout<<"Nhap chuoi khoa: ";getline(cin,K);
    K=K+B;
    //Xoa trung lap
    for (int i = 0; i < K.size(); i++) {
        for (int j = i+1; j < K.size(); j++) {
            if(K[j]==K[i]) {
                K.erase(j,1);
                j--;
            } } }
    cout<<"Chuoi da xoa: "<<K<<endl;
    char A[5][5]; int t=0;
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 5; j++)
        {
            A[i][j]=K[t];
            t++;
        } }
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 5; j++) {  cout<<A[i][j]<<" "; }
        cout<<"\n";
    }
}
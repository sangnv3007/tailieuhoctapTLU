#include <iostream>
using namespace std;

int main(){
    string M;
    char H,n;
    cout<<"Nhap chuoi: ";getline(cin,M);

    for (int i = 0; i < M.size(); i++)
    {
        if (H%2==1) n=128;
        else n=0;
        
        //phep dich phai ket hop phep cong ==> phesp quay phai
        H<<=1;
        H+=n;
        H^=M[i];
    }
    
    cout<<"Ma hash: "<<H;
}
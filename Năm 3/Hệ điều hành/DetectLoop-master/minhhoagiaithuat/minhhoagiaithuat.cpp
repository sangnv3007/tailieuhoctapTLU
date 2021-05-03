// minhhoagiaithuat.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

#include "stdafx.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <conio.h>
using namespace std;
//Khai báo cấu trúc một nút trong danh sách liên kết.
struct node {
	int data; //Dữ liệu chứa trong một nút.
	struct node *next; //Khai báo một con trỏ để liên kết các note với nhau.
};
node* create_newnode(int data); //Khai báo hàm khởi tạo 1 node (khởi tạo 1 danh sách gồm n phần tử).
bool detectLoop(struct node *head); //Khai báo hàm kiểm tra trạng thái vòng kín.
									//Khởi tao con trỏ của danh sách liên kết tại nút đầu tiên
int main()
{
	/* Tạo một danh sách liên kết các nút có giá trị lần lượt là:
	8--> 10--> 12--> 14--> 16
	*/
	struct node *head, *temp;

	head = create_newnode(8);
	head->next = create_newnode(10);
	temp = head->next;
	head->next->next = create_newnode(12);
	head->next->next->next = create_newnode(14);
	head->next->next->next->next = create_newnode(16);
	head->next->next->next->next->next = temp;
	if (detectLoop(head))
	{
		cout << "\n\nPhat hien vong khep kin======= !\n\n";
	}
	else
	{
		cout << "\n\nKhong phat hien vong khep kin == == == == == == == == == == \n\n";
	}
	/* Tạo một danh sách liên kết các nút có giá trị lần lượt là:
	8--> 10--> 12--> 14--> 16-->NULL
	*/
	head = create_newnode(8);
	head->next = create_newnode(10);
	head->next->next = create_newnode(12);
	head->next->next->next = create_newnode(14);
	head->next->next->next->next = create_newnode(16);

	if (detectLoop(head))
	{
		cout << "\n\nPhat hien vong khep kin=======!\n\n";
	}
	else
	{
		cout << "\n\nKhong phat hien vong khep kin == == == == == == == == == == !\n\n";
	}
	system("pause");
}
//Hàm khởi tạo 1 node.
node* create_newnode(int data)
{
	struct node *newnode;
	newnode = new node(); //Cấp phát vùng nhớ cho node.
	newnode->data = data; //Truyền giá trị data cho data.
	newnode->next = NULL; //Khai báo con trỏ đầu tiên nên chưa có liên kết tới node nào nên nó là NULL
	return newnode; //Trả về node vừa khởi tạo.
}
//Hàm kiểm tra trạng thái vòng kín.
bool detectLoop(struct node *head)
{
	struct node *current1, *current2; //Khai báo 2 con trỏ quản lý đầu danh sách liê kết theo 2 luồng đi.
		current1 = head;
	current2 = head;
	//Vòng lặp thực hiện khi các con trỏ đều có giá trị trả về.
	while (current1 != NULL && current2 != NULL && current2->next != NULL)
	{
		current1 = current1->next;
		current2 = current2->next->next; //Trỏ tới vị trí sau ví trị tiếp theo sau current1.
	if (current1 == current2) //Nếu 2 giá trị của con trỏ gặp nhau thì trả về kết quả phát hiện vòng kín.
			{
				return true;
			}
	}
	return false;
}


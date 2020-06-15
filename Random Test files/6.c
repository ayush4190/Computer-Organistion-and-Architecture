#include<stdio.h>
#include<stdlib.h>
struct cir
{
    int data;
    struct cir *next;
};
struct cir *hd=NULL;
struct cir *last=NULL;
void insert(int n)
{
    struct cir *ptr;
    ptr=malloc(sizeof(struct cir));
    ptr->data=n;
    if(hd==NULL)
    {
        hd=ptr;
        last=ptr;
        last->next=hd;
    }
    else
	{
    ptr->next=last->next;
    last->next=ptr;
    last=ptr;
	}
}
void display()
{
    struct cir *temp;
    temp=hd;
    while(temp!=last)
    {
        printf(" \n %d \n ",temp->data);
        temp=temp->next;
    }
}
int main()
{
    insert(10);
    insert(20);
    insert(30);
    insert(40);
    display();
    return 0;
}


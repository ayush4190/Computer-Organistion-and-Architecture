#include <stdio.h>
#include<stdlib.h>
struct node
{
    int data;
    struct node *next;
};
struct node *hd=NULL;
void insert(int n )
{
    struct node *ptr;
    ptr=malloc(sizeof(struct node));
    ptr->data=n;
   ptr->next=hd;
    if(hd==NULL)
    {
        hd=ptr;
    }
    else
    {
        struct node *temp;
        temp=hd;
        while(temp->next !=NULL)
        {
            temp=temp->next;
        }
        temp->next=ptr;
    }
//	ptr->next =hd;
}
/*void beg(int n)
{
    struct node *ptr;
    ptr=malloc(sizeof(struct node));
    ptr->data=n;
    ptr->next=hd;
    hd=ptr;
}


void some(int t ,int n)
{
    struct node *ptr, *temp;
    temp=hd;
    ptr=malloc(sizeof(struct node));
    ptr->data=n;
    int m=t-1;
    while(m)
    {
        temp=temp->next;
	m--;
    }
    ptr->next=temp->next;
    temp->next=ptr;
    
}

void delete(int n)
{
    struct node *temp,*ptr;;
    temp=hd;
    int t=n-2;
    while(t)
    {
        temp=temp->next;
        t--;
    }
	ptr=temp->next;
    printf(" \n the deleted element is = %d \n ",temp->next->data);
    temp->next=temp->next->next;
	free(ptr);
    
}*/


void display()
{
	int t,count =0;
    struct node *temp;
    temp=hd;
	t=hd->data;
    while(temp!=NULL && count <=2 )
    {	if(temp->data == t)
	{
	count ++;
	}
        printf( " \n %d \n  ",temp->data);
        temp=temp->next;
    }
}
int main() 
{
    insert(10);
    insert(20);
	insert(30);
	insert(40);
//	beg(90);
//	some(2,70);
  //  display();
// 	delete(2);
	display();   

	return 0;
}



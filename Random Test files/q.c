#include<stdio.h>
#include<stdlib.h>
struct node
{
	int data;
	struct node *next;
};
struct node *hd=NULL;
struct node *current=NULL;
void create(int n)
{
	struct node *ptr;
	ptr = malloc(sizeof(struct node));
	if(ptr ==NULL)
	return;
	ptr->data=n;
	if(hd ==NULL)
	{
//	hd->next=ptr;
	ptr->next=NULL;
	hd=ptr;
	current =hd;
	}
	else 
	{
	printf("\n hello \n");
	current->next=ptr;
	ptr->next = NULL;
	current = ptr;
	}
}
void deque()
{
//	if(hd == current == NULL)
//	return;
	printf("\n element ot be dequed is %d \n",hd->data);
	struct node *temp;
	temp=hd;
	hd=hd->next;
	free(temp);
	
} 
int main()
{	int s,i;
	while(1)
	{
	printf("\n 1. enque 2. deque 3.exxit \n");
	scanf("%d",&i);
	switch(i)
	{
		case 1: { printf("\n  enter the elemnt \n");
			  scanf("%d",&s);
			  create(s);
			 break;
			 }
		case 2:{
			deque();
			break;
			}
		case 3:{ exit(0);break;}
		default :printf("\n not a valid choice \n");
	}
	}
return 0;
	
}

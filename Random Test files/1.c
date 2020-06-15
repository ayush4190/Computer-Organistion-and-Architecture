#include<stdio.h>
#include<stdlib.h>

struct node{
	int data;
	struct node* next;	
};

void print(struct node* n)
{
	while(n!=NULL)
	{
		printf("%d	%p",n->data,n->next);
		printf("\n");
		n= n->next;
	}
}

int  main()
{
	struct node* first;
	struct node* second;
	struct node* third;
	first= (struct node*)(malloc(sizeof(struct node)));
	second= (struct node*)(malloc(sizeof(struct node)));
	third= (struct node*)(malloc(sizeof(struct node)));
	first->data=1;
	first->next=second;
	second->data=2;
	second->next=third;
	third->data=3;
	third->next=NULL;
	print(first);
}

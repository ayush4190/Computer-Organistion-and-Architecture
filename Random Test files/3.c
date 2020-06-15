#include<stdio.h>
#include<stdlib.h>
struct node
{
    int data;
    struct node *next;
};
struct node *hd=NULL;
void push(struct node **top,int n)
{
    struct node *ptr;
    ptr=malloc(sizeof(struct node));
    ptr->data =n;
    ptr->next=*top;
    *top=ptr;
}
void pop(struct node **top)
{
    struct node *temp;
    temp= *top;
    printf(" \n poping out %d \n",temp->data);
    *top=temp->next;
    free(temp);
}
void display(struct node *top)
{
    while(top !=NULL)
    {
        printf("\n %d \n",top->data);
        top = top->next;
    }
}
int main()
{   int s;
    while(1)
    {
        printf("\n 1.create new node 2. push 3.pop 4.display \n");
        scanf("%d",&s);
        switch(s)
        {
            //case 1:create(&top);
                  //  break;
            case 2:{
		    //push(&hd);
		    int g;
		    scanf("%d",&g);
		    push(&hd,g);
                    break;
			}
            case 3:pop(&hd);
                    break;
            case 4:display(hd);
                    break;
            default:{printf("\n not a valid input \n");
                    exit(0);}
                    
        }
        
    }
    return 0;
}

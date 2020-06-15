#include<stdio.h>
#include<stdlib.h>
struct test
{
    int data;
    struct test *next;
};
struct test *top=NULL;
void create(struct test **t)
{
    int n;
    scanf("%d",&n);
    struct test *ptr,*temp;
temp=*t;
    ptr=malloc(sizeof(struct test));
    if(ptr == NULL)
    {
        return;
    }
    else
    {
        ptr->data=n;
        ptr->next=NULL;
        temp->next=ptr;
        temp=ptr;
    }
}
void push(struct test **t)
{
    struct test *ptr,*temp;
 temp =*t;
    ptr=malloc(sizeof(struct test));
    if(ptr == NULL)
    {
        return;
    }
    else
    {
        int n;
        scanf("%d",&n);
        ptr->data=n;
        ptr->next =temp;
        temp = ptr;
    }
}
void display(struct test *t)
{
    while(t->next !=NULL)
    {
        printf(" \n %d \n",t->data);
        t=t->next;
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
            case 1:create(&top);
                    break;
            case 2:push(&top);
                    break;
         //   case 3:pop(&top);
           //         break;
            case 4:display(top);
                    break;
            default:{printf("\n not a valid input \n");
                    exit(0);}
                    
        }
        
    }
    return 0;
}

#include<ctype.h>
#include<stdio.h>
#include<stdlib.h>
struct stack 
{
    char c;
    struct stack *node;
};
struct stack *top=NULL;
void push(char s)
{
    struct stack *ptr;
    ptr=malloc(sizeof(struct stack));
    ptr->c=s;
    if(top==NULL)
    {
        top=ptr;
    }
    else
    ptr->node=top;
    top=ptr;
}
char pop()
{
    char f;
    f=top->c;
    top=top->node;
    return f;
}
int pri(char g)
{
    if(g == '(')
    return 0;
    if(g == '+'|| g== '-')
    return 1;
    if(g == '*'|| g == '/')
    return 2;
}
int main()
{
    char w[10]="2+3*5";
    int i=0;
    char t,x;
    while(w[i]!='\0')
    {
        if(w[i]=='(')
        push(w[i]);
        else if(isalnum(w[i]))
        printf("%c",w[i]);
        else if(w[i]==')')
        {
            while((x=pop())!='(')
        printf("%c",pop());
        }
        else
        {
            t=pop();
            while(pri(t)>=pri(w[i]))
            {
                printf("%c",t);
                t=pop();
                
            }
            push(t);
        
        }
   i++; 
    }
return 0;
}

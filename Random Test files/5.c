#include<stdlib.h>
#include<stdio.h>
int main()
{
char s[10]={"s@11u$ux"};
int d,i=0;
while(s[i]!='\0')
{
d=s[i];
printf("%d",d);
i++;
}
return 0;
}

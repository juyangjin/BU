#include<stdio.h>

int main(void)
{
	int n1,n2,n3,min;

printf("���� 3���� �Է��Ͻÿ�: ");
scanf("%d%d%d",&n1,&n2,&n3);

if(n1<n2)
	if(n1<n3)
		  min=n1;
	else 
		  min=n3;
else 
	if(n2<n3)
		  min=n2;
	else 
		  min=n3;
printf("���� ���� ���� %d�Դϴ�\n",min);
return 0;
}
#include<stdio.h>

int main(void)
{
	int time,year,result;

    printf("���� �ð��� ���̸� �Է��Ͻÿ�:");
    scanf("%d%d",&time,&year);
	if(year>3)
if (time<=17)
{
			if(13<=year&year<65)
	          printf("����� 34000���Դϴ�.\n");
			else
			  printf("����� 25000���Դϴ�.\n");
}
else 
	 printf("����� 10000���Դϴ�.\n");
	else
		printf("����� �����Դϴ�.\n");
	      
 return 0;	  
}
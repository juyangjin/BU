#include<stdio.h>

int main(void)
{
	int year,result;

	printf("������ �Է��Ͻÿ�=");
	scanf("%d", &year);

	result = ((year % 4==0)&&(year % 100 !=0)) || (year % 400==0);
	printf("result=%d",result);

	return 0;
}
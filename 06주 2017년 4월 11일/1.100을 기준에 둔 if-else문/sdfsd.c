#include<stdio.h>

int main(void)
{
	int number;

	printf("숫자를 입력하시오: ");
	scanf("%d",&number);

	if(number>=100)
		printf("lanrge\n");

	else
		printf("small\n");
	return 0;
}
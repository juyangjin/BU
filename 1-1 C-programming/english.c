#include<stdio.h>

void main()
{
	char ch1,ch2;

	printf("영문자를 입력하시오:\n");
	scanf("%c",&ch1);

	if('A'<=ch1 && 'Z'>=ch1)
	{
		ch2 = ch1+32;
	}
	else if('a'<=ch1 && 'z'>=ch1)
	{
		ch2 = ch1-32;
	}
	else
	{
		printf("영문자가 아닙니다.\n");
	}
	printf("입력:%c,결과:%c\n",ch1,ch2);

}

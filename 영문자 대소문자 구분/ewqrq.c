#include<stdio.h>

void main()
{
	char ch1,ch2;

	printf("�����ڸ� �Է��Ͻÿ�:\n");
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
		printf("�����ڰ� �ƴմϴ�.\n");
	}
	printf("�Է�:%c,���:%c\n",ch1,ch2);

}

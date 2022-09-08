#include<stdio.h>

int main(void)
{
	int i,n,sum;

	i=5;
	sum=0;
	
	while(i<=100)
	{
		sum+=i;
		i=i+5;
	}

    printf("1���� 100���� �� 5�� ����� ���� %d�Դϴ�.",sum);

	return 0;
}

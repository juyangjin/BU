#include<stdio.h>

int main(void)
{
	int j,i;

	for(i=2;i<=9;i++)
	{
		printf("%d��\n",i);
		for(j=1;j<10;j++)
	    printf("%dX%d=%d\n",i,j,i*j);
			
	}
	return 0;
}
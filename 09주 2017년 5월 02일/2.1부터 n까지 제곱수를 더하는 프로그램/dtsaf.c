#include<stdio.h>

int main(void)
{
	int n,i,sum;

	
    printf("n���� �Է��Ͻÿ�:");
	scanf("%d",&n);

	i=1;
    sum=0;

	    while(i<=n)
	    {
	    sum=sum+i*i;
	    i++;
	    }
	printf("1���� n���� ������ ���� %d�Դϴ�.",sum);
    return 0;
}

	    

#include<stdio.h>

int main(void)
{
	int n,i,sum;

	
    printf("n값을 입력하시오:");
	scanf("%d",&n);

	i=1;
    sum=0;

	    while(i<=n)
	    {
	    sum=sum+i*i;
	    i++;
	    }
	printf("1부터 n값의 제곱의 합은 %d입니다.",sum);
    return 0;
}

	    

#include <stdio.h> 

int main(void) 
{
	int p;
	double m;

	printf("평을 입력하세요:");
	scanf("%d",&p);

	m=p*3.3058;

	printf("%lf평방미터입니다.",m);
	return 0;
}
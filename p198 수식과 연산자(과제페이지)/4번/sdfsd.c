#include<stdio.h>

int main(void)
{
	double A,B,C,D;
	int E;

	printf("키를 입력하시오: ");
	scanf("%lf",&A);

	E=A/(2.54*12);
	B=A/(2.54*12);
	C=B-E;
	D=C*12;

	printf("%lfcm는 %lf피트 %lf인치입니다.",A,B,D);
	return 0;
}
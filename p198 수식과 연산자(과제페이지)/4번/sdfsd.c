#include<stdio.h>

int main(void)
{
	double A,B,C,D;
	int E;

	printf("Ű�� �Է��Ͻÿ�: ");
	scanf("%lf",&A);

	E=A/(2.54*12);
	B=A/(2.54*12);
	C=B-E;
	D=C*12;

	printf("%lfcm�� %lf��Ʈ %lf��ġ�Դϴ�.",A,B,D);
	return 0;
}
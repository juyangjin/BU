#include <stdio.h>

int main(void)
{
	float A;
	float B;
	float C;

	printf("삼각형의 밑변:");
	scanf("%f",&A);
	printf("삼각형의 높이:");
	scanf("%f",&B);
	
	C=A*B/2;

	printf("삼각형의 넓이=%f",C);
	return 0;
}

#include <stdio.h>

int main(void)
{
	int x;
    int y;
	int z;
	int sum;
    int sum2;

	printf("�Ǽ��� �Է��Ͻÿ�:");
	scanf("%d", &x);

	printf("�Ǽ��� �Է��Ͻÿ�:");
	scanf("%d", &y);

	printf("�Ǽ��� �Է��Ͻÿ�:");
	scanf("%d", &z);

	sum = x + y + z;
	printf("��ü�� ��:%d",sum);

	sum2= x+y+z/3;
	printf("��հ�:%d",sum2);
	return 0;
}
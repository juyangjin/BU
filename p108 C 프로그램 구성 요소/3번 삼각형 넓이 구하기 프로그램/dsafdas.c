#include<stdio.h>

int main(void)
{
	int height,base;
	float area;

	printf("�ﰢ���� �غ�:");
	scanf("%d",&base);
    
	printf("�ﰢ���� ����:");
	scanf("%d",&height);

	area=0.5*height*base;
	
	printf("�ﰢ���� ����:%f\n",area);
	return 0;
}


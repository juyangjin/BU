#include<stdio.h>

int main(void)
{
	double w,h,d,result;

	printf("������ ����,����,���̸� �ѹ��� �Է�:");
    scanf("%lf%lf%lf",&w,&h,&d);
    
	result=w*h*d;

	printf("������ ���Ǵ� %lf�Դϴ�.\n",result);
	return 0;
}
	
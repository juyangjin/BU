#include<stdio.h>

int main(void)
{

	double light_speed= 300000;
	double distance = 149600000;

	int time;
	int time1;
	int time2;

	time = distance/light_speed;
	time1 = time/60;
	time2 = time%60;

	printf("���� �ӵ��� %fkm/s \n", light_speed);
	printf("�¾�� �������� �Ÿ� %fkm \n", distance);
	printf("���� �ð��� %d��%d��\n",time1,time2);
	return 0;
}
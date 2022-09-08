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

	printf("빛의 속도는 %fkm/s \n", light_speed);
	printf("태양과 지구와의 거리 %fkm \n", distance);
	printf("도달 시간은 %d분%d초\n",time1,time2);
	return 0;
}
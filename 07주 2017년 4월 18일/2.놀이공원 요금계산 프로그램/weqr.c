#include<stdio.h>

int main(void)
{
	int time,year,result;

    printf("현재 시간과 나이를 입력하시오:");
    scanf("%d%d",&time,&year);
	if(year>3)
if (time<=17)
{
			if(13<=year&year<65)
	          printf("요금은 34000원입니다.\n");
			else
			  printf("요금은 25000원입니다.\n");
}
else 
	 printf("요금은 10000원입니다.\n");
	else
		printf("요금이 무료입니다.\n");
	      
 return 0;	  
}
#include<stdio.h>

int main(void)
{
	int height,base;
	float area;

	printf("»ï°¢ÇüÀÇ ¹Øº¯:");
	scanf("%d",&base);
    
	printf("»ï°¢ÇüÀÇ ³ôÀÌ:");
	scanf("%d",&height);

	area=0.5*height*base;
	
	printf("»ï°¢ÇüÀÇ ³ĞÀÌ:%f\n",area);
	return 0;
}


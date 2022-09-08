#include<stdio.h>

int main(void)
{
	int n1,n2,result;
	char i=1,A=1,S=1,M=1,D=1,Q=1;

	printf("*************\nA----Add\nS----Subtract\nM----Multiply\nD----Divide\nQ----Quit\n*************\n");

	while(1)
	{
		printf("연산을 선택하시오:");
        scanf("%c",&i);
		printf("두 수를 공백으로 분리하여 입력하시오:");
	       scanf("%d %d",&n1,&n2);
		  if(i=Q)
		  {
		  break;
		  }
		   
         if(i=A)
		 {
		   result=n1+n2;
		   printf("연산의 결과는 %d입니다.\...\n",result);
		 }
		 else if(i=S)
		    {
		    result=n1-n2;
		    printf("연산의 결과는 %d입니다.\...\n",result);
			}
			else if(i=M)
			  {
		   result=n1*n2;
		    printf("연산의 결과는 %d입니다.\...\n",result);
			  }
		      else if(i=D)
			       {
		           result=n1/n2;
			       printf("연산의 결과는 %d입니다.\...\n",result);
				   }
			       else
	
	return 0;
}
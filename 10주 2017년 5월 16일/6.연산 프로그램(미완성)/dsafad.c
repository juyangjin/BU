#include<stdio.h>

int main(void)
{
	int n1,n2,result;
	char i=1,A=1,S=1,M=1,D=1,Q=1;

	printf("*************\nA----Add\nS----Subtract\nM----Multiply\nD----Divide\nQ----Quit\n*************\n");

	while(1)
	{
		printf("������ �����Ͻÿ�:");
        scanf("%c",&i);
		printf("�� ���� �������� �и��Ͽ� �Է��Ͻÿ�:");
	       scanf("%d %d",&n1,&n2);
		  if(i=Q)
		  {
		  break;
		  }
		   
         if(i=A)
		 {
		   result=n1+n2;
		   printf("������ ����� %d�Դϴ�.\...\n",result);
		 }
		 else if(i=S)
		    {
		    result=n1-n2;
		    printf("������ ����� %d�Դϴ�.\...\n",result);
			}
			else if(i=M)
			  {
		   result=n1*n2;
		    printf("������ ����� %d�Դϴ�.\...\n",result);
			  }
		      else if(i=D)
			       {
		           result=n1/n2;
			       printf("������ ����� %d�Դϴ�.\...\n",result);
				   }
			       else
	
	return 0;
}
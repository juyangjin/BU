#include <stdio.h>
#include <stdlib.h>

typedef struct _Student_list
{
	char major[50];
    int grade;
    int stnumber;
    char name[50];
    char address[80];

}List;

int main()
{
	int num=0;
	int i=0;
	
	List *student = (List*)malloc(sizeof(List)*num);

	printf("인원을 입력하시오:");
    scanf_s("%d",&num);



	 for (i = 0; i < num; i++)
    {
      printf("\n-------------------------------------------\n");
	  getchar();
      printf("학부명:");
	  gets(student[i].major);
	  

      printf("학년:");
      scanf("%d", &student[i].grade);
	  

      printf("학번:");
      scanf_s("%d", &student[i].stnumber);
	
	  getchar();
      printf("이름:");
	  gets(student[i].name);
	  
      printf("주소:");
      gets(student[i].address);
	  
	 }
	 
	 printf("\n연번\t학부명\t\t학년\t학번\t    이름    주소\n");
     
	 printf("\n-------------------------------------------\n");
   
	 for (i = 0;i < num;i++)
   {
                     
      printf(" %d\t", i+1);
      printf("%s\t", student[i].major);
      printf("%d\t", student[i].grade);
      printf("%d    ", student[i].stnumber);
      printf("%s  ", student[i].name);
      printf("%s\t", student[i].address);
      printf("\n");
   }
	 printf("\n-------------------------------------------\n"); 
	 return 0;
}
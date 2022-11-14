/*
 * 프로그램명 : A05.java
 * 팀명 : 4팀
 * PL명 : 진주양
 * 작성자 명단 : 진연석
 * 작성 날짜 : 2018.4.17
 * 출처 : 첫번째 실기 연습 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
		  
 * 문제5. while문을 다양한 자료형을 이용하고, 키보드로 입력받아라.
 public class A05 
{//클래스 이름은 A05이다.
	public static void main(String args[])
	{
		int x=1, y=10, sum = 0;
		//정수형 x=1 y=10 sum =0을 선언한다.
		boolean c = true;
		//논리형 c = true를 선언한다.
		while(x <= y)
			//x<=y떄까지 while 문을 수행한다.
		{	
 			if ( c == false ) break;
			//만약 c가 false 이라면 while 문을 나간다.
			sum = sum + x + y;
			//sum = sum + x + y
			System.out.println("x = " + x);	
			//x =과 x의 값을 연결해 출력한다.
            System.out.println("y = " + y);
			//y =과 y의 값을 연결해 출력한다.
			x++;
			//x의 값을 1증가 시킨다.
			y--;
			//y의 값을 1감소 시킨다.
		}
		System.out.println("sum = " + sum);	
		//sum =과 sum의 값을 연결해 출력한다.
	}
};

 */
import java.util.Scanner; //Scanner 클래스를 포함


public class A05 //클래스 이름은 A05이다.
{
	public static void main(String args[])
	{
		double sum = 0; //변수 sum 초기값 선언
		boolean c= true; //참과 거짓을 표현하는 변수
		Scanner scan = new Scanner(System.in); //문자 입력을 인자로 Scanner 생성

		System.out.print("x의 입력값을 입력하세요:"); //임의의 입력창
		double x = scan.nextDouble(); //x로 입력된 정수를 저장
		System.out.print("y의 입력값을 입력하세요:"); //임의의 입력창
		double y = scan.nextDouble(); //y로 입력된 정수를 저장
		
		while(x <= y)  //x<=y떄까지 while 문을 수행한다.
			
		{	
			sum = sum + x + y; //sum 초기값0, 입력한 x의 값과 y의 값 합산
			System.out.println("x = " + x);	//x의값 출력
			if ( c == false ) break; //if문을 사용해서 c가 false이면 break를 걸어주어 while문을 나온다.
		    System.out.println("y = " + y);
			//y =과 y의 값을 연결해 출력한다.
			x++;
			//x의 값을 1증가 시킨다.
			y--;
			//y의 값을 1감소 시킨다.
		}
		System.out.println("sum = " + sum);	
		//sum =과 sum의 값을 연결해 출력한다.
	}
};
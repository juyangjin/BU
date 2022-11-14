/*
 * 프로그램명 : A05.java
 * 팀명 :4팀
 * PL명 :박현수
 * 작성자 명단 : 박현수
 * 작성 날짜 : 2017.3.29
 * 출처 : 첫번째 실기 과제 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
 * 문제5. class 이름은 A05이다. 아래 프로그램을 while문으로 바꾸기.


public class A05 {
	public static void main(String args[])
	{
		int x, y, sum = 0;
		boolean c = true;
		
		for (x = 1, y = 10; x <= y; x++, y--)
		{	
 			if ( c == false ) break;
			sum = sum + x + y;
			System.out.println("x = " + x);	
                        System.out.println("y = " + y);		
		}
		System.out.println("sum = " + sum);	
	}
}
*/
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
			//x =과 x의 값을 연걸해 출력한다.
            System.out.println("y = " + y);
			//y =과 y의 값을 연걸해 출력한다.
			x++;
			//x의 값을 1증가 시킨다.
			y--;
			//y의 값을 1감소 시킨다.
		}
		System.out.println("sum = " + sum);	
		//sum =과 sum의 값을 연결해 출력한다.
	}
};

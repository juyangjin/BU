/*
 * 프로그램명 : D2.java
 * 팀명 : 4조
 * PL명 : 진연석
 * 작성자 명단 : 김채현
 * 작성 날짜 : 2018.05.22
 * 출처 : 네번째 실기 연습 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
 * 문제3.

	1) 아래의 class가 주어진다.

		class C3 {
			int a;
			String b;

			C3 cc(C3 x, String y)
			{
				C3 z = new C3();
				if (x.a > 5)
				{
				   z.a = 0;
				   z.b = y;
				}
				else
				{
				   z.a = x.a;
				   z.b = x.b;
				}
				return z;
			}
		}
		1) main이 있는 class 이름은 D3이다.
		2) class C3를 이용하여 객체를 생성하라.
		3) 객체의 객체속성변수에 각각 임의의 값들을 저장하라.
		4) 메소드 cc를 실행하여 그 값들을 출력하는 프로그램을 작성하세요.
 
 */
class C3 {
	int a;
	String b;

	C3 cc(C3 x, String y)
	{
		C3 z = new C3();
		if (x.a > 5)
		{
		   z.a = 0;
		   z.b = y;
		}
		else
		{
		   z.a = x.a;
		   z.b = x.b;
		}
		return z;
	}
}
public class D3
// class 이름은 D3
{
	public static void main(String args[])
	{
		C3 x = new C3();
		// 메소드 cc의 x에 들어갈 객체 x를 생성
		x.a = 6;
		// x.a의 값을 6으로 설정
		x.b = "교수님 잘생기셨다.";
		// x.b에 문자열을 저장
		String y = "교수님 사랑합니다.";
		// 메소드 cc의 y에 들어갈 y를 선언한뒤 문자열 저장
		C3 c = new C3();
		C3 d = c.cc(x,y);
		// 객체를 생성하여 x,y를 넣고 메소드 cc를 실행한 뒤 출력하는 객체 생성
	
		System.out.println("a : " + d.a);
		System.out.println("b : " + d.b);
		// 출력값 출력
	}
}
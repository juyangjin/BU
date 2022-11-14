/*
 * 프로그램명 : D2.java
 * 팀명 : 4조
 * PL명 : 진연석
 * 작성자 명단 : 김채현
 * 작성 날짜 : 2018.05.17
 * 출처 : 네번째 실기 연습 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
 * 문제2. 
	1) 하나의 정수와 하나의 문자열, 그리고 하나의 메소드가 있는 class C2를 작성하라.
	2) 메소드의 이름은 e2이고 매개변수가 없다, 정수값이 5보다 크면 저장된 문자열값을, 아니면 "zzz"를 return하는 프로그램이다.
	main이 있는 class 이름은 D2이다.
	class C2를 이용하여 한개의 객체를 생성하라.
	생성된 객체의 객체속성변수에 각각 임의의 값을 저장하라.
	메소드 e2를 실행하고, 그 결과 값을 출력하는 프로그램을 작성하세요.
 */
class C2
// 클래스 C2 생성
{
	int a;
	String b;
	// a와 b를 선언
	void e2()
	// 메소드 e2를 생성
	{
	if (a > 5)
	{
		System.out.println("a의 값 : " + a);
		System.out.println(b);
	}
	else
	{
		System.out.println("a의 값 : " + a);
		System.out.println("zzz");
	}
	// a의 값이 5이상이면 b를, 아니면 zzz를 출력
	}
}
public class D2
// class 이름은 D2
{
	public static void main(String args[])
	{
		C2 objc = new C2();
		// 객체 objc를 생성
		objc.a = 6;
		// objc.a의 값을 6으로 설정
		objc.b = "교수님 잘생기셨다.";
		// objc.b에 문자열을 저장
		objc.e2();
		// 메소드 실행
	}
}
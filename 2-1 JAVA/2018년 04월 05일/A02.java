/*
 * 프로그램명 : A02.java
 * 팀명 :4팀
 * PL명 :박현수
 * 작성자 명단 : 박현수
 * 작성 날짜 : 2017.3.29
 * 출처 : 첫번째 실기 과제 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
 * 문제2. class 이름은 A02이다.
       c = ((a % b) == 1) ? true : false;
       위 프로그램을 완성하라. a, b, c값을 출력하라. 

 */

public class A02
//클래스 명은 A02이다.
{
	public static void main(String args[])
	{
		int a = 3;//정수형 a=3을 선언한다.
		int b = 2;//정수형 b=2를 선언한다.
		boolean c;//논리형 c를 선언한다.

		c = ((a % b) == 1) ? true : false;
		//c는 (a % b) == 1 일때 true 이고, (a % b) == 1이 아니라면 false이다. 

		System.out.println("a="+a+" b="+b+" c="+c);
		//a의 값과 b의 값과 c의 값을 출력한다.
 	}
};
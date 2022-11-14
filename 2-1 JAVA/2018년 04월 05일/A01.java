/*
 * 프로그램명 : A01.java
 * 팀명 : 4팀
 * PL명 : 박현수
 * 작성자 명단 : 김채현
 * 작성 날짜 : 2018.03.29
 * 출처 : 첫번째 실기 과제 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
		  
 * 문제1. 
      class 이름은 A01이고, 두개의 임의의 정수를 나누어서 그 몫 값과 나머지 값을 출력하는 프로그램을 작성하라.

class 이름은 A01이다. 
       두개의 임의의 정수 a,b를 정해준다. 
       두개의 정수 a,b를 나눈 값 n과 나머지 값 m을 저장한다.
	   n과 m을 출력한다.
 */

public class A01
// class 이름은 A01
{
	public static void main(String args[])
	{
		System.out.println("a = 15");
		System.out.println("b = 6");
		int a = 15;
		int b = 6;
		// 정수 a,b 선언 및 값에 임의의 수 저장
		int n=0;
		int m=0;
		// 몫과 나머지 값을 저장할 변수 n,m 선언
		n=a/b;
		m=a%b;
		//n에는 a에 b를 나눈 몫을 저장하고 m에는 나머지 값을 저장
		System.out.println("a/b = "+n);
		System.out.println("a%b = "+m);
		//몫과 나머지를 출력
		}
	}

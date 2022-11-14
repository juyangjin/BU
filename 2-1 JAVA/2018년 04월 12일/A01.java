/*
 * 프로그램명 : A01.java
 * 팀명 : 4팀
 * PL명 : 진주양
 * 작성자 명단 : 김채현
 * 작성 날짜 : 2018.04.12
 * 출처 : 두번째 실기 과제 문제
 * 참조 : 2017-2-Java-화-두번째실기시험
		  
 * 문제1. 
      class 이름은 A01이고, 두개의 임의의 정수를 입력받아 나누어서 그 몫 값과 나머지 값을 출력하는 프로그램을 작성하라.

class 이름은 A01이다. 
       키보드로부터 두개의 임의의 정수를 입력해준다. 
       두개의 정수 a,b를 나눈 값 n과 나머지 값 m을 저장한다.
	   n과 m을 출력한다.
 */

import java.util.Scanner;
// Scanner함수 사용을 위해 라이브러리 클래스 포함
public class A01
// class 이름은 A01
{
	public static void main(String args[])
	{

		Scanner stdIn = new Scanner(System.in);
		//  키보드 입력을 위해서 Scanner 객체인 stdIn객체 생성
		System.out.print("첫번째 정수와 두번째 정수를 공간(space)으로 구분하여 입력 : ");
		int a = stdIn.nextInt();
		// 정수를 입력받아 a 값에 저장
		int b = stdIn.nextInt();
		// 정수를 입력받아 b 값에 저장
		if (b==0)
		// 나누는 b의 값이 0이면 안되기 때문에 0이면 다시 입력을 받도록 if문 사용
		{
			
			System.out.print("두번째 정수를 다시 입력 : ");
			b = stdIn.nextInt();
			
		}

		System.out.println("a = "+a);
		System.out.println("b = "+b);
		// a와 b의 값이 무엇인지 출력
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

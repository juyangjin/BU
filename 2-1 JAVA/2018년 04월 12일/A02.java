/*
 * 프로그램명 : A02.java
 * 팀명 :4팀
 * PL명 :진주양
 * 작성자 명단 : 박현수
 * 작성 날짜 : 2017.4.11
 * 출처 : 두번째 실기 과제 문제
 * 참조 : 2017-2-Java-화-두번째실기시험
 * 문제2. class 이름은 A02이다.
       c = ((a % b) == 1) ? true : false;
       위 프로그램을 완성하라. a, b, c값을 출력하라. 

 */
import java.util.Scanner;
// Scanner함수 사용을 위해 라이브러리 클래스 포함
public class A02
//클래스 명은 A02이다.
{
	public static void main(String args[])
	{
		Scanner stdin = new Scanner(System.in);
		//입력하기위해 Scanner stdin 를 선언한다.  
		System.out.println("정수 두개를 입력하시오.");
		//정수 두개를 입력하시오.를 출력한다.
		int a = stdin.nextInt();
		//키보드로 입력 받은 값을 정수형a에 저장한다.
		int b = stdin.nextInt();
		//키보드로 입력 받은 값을 정수형b에 저장한다.
		boolean c;
		//논리형 c를 선언한다.

		
		c = ((a % b) == 1) ? true : false;
		//c는 (a % b) == 1 일때 true 이고, (a % b) == 1이 아니라면 false이다. 

		System.out.println("a="+a+" b="+b+" c="+c);
		//a의 값과 b의 값과 c의 값을 출력한다.
 	}
};
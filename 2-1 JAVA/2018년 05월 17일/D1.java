/*
 * 프로그램명 : A01.java
 * 팀명 : 4팀
 * PL명 : 진연석
 * 작성자 명단 : 박현수
 * 작성 날짜 : 2018.05.21
 * 출처 : 세번째 실기 연습 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
		 
 *문제1.  

1) 하나의 정수와 하나의 문자열 있는 class C1를 작성하라.

2) main이 있는 class 이름은 D1이고, 

class C1을 이용하여 한개의 객체를 생성하라.
객체의 객체속성변수에 각각 임의의 값들을 저장하고, 출력하는 프로그램을 작성하세요.

 */
import java.util.Scanner;
//Scanner함수 사용을 위해 라이브러리 클래스 포함
class C1 {
	int a;
	String b;
}
//속성만 있는 클래스 Box1에 정수형 a 문자열 b를 선언
public class D1 {
	public static void main(String args[]) {
		
		Scanner stdin = new Scanner(System.in);
		// 입력하기위해 Scanner stdin 를 선언한다. 
		
		C1 mybox1 = new C1();
		//C1 클래스를 이용하여 객체를 생성
		
		System.out.println("학번과 이름을 순서대로 쓰시오");
		//학번과 이름을 순서대로 쓰시오 를 출력
		
		mybox1.a = stdin.nextInt();
		// 정수를 입력받아 mybox1.a 값에 저장
		mybox1.b = stdin.next();
		// 정수를 입력받아 mybox1.b 값에 저장
		System.out.println("학번=" + mybox1.a +" 이름=" + mybox1.b);
		//최종 값을 출력
	}
}
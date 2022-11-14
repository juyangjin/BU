/*
 * 프로그램명 : A01.java
 * 팀명 : 4팀
 * PL명 : 김채현
 * 작성자 명단 : 김채현
 * 작성 날짜 : 2018.05.03
 * 출처 : 세번째 실기 연습 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
		 
 * 문제99. class Box1을 이용하여 두개의 객체를 생성하라.
		  각 객체의 객체속성변수에 각각 임의의 정수값을 저장하라.
		  두객체의 a값을 더하여 출력하고, 두객체의 b값을 더하여 출력하라


 속성만 가지는 class 이름은 Box1이다. 
 Box1에 a,b를 선언하고 main이 있는 class A01을 만든다.
 두개의 객체를 생성하여 각각 Box1를 이용한다.
 각 객체의 객체속성변수에 각각 임의의 정수를 저장하고
 sum1, sum2에 각각 a와 b를 더한 값을 저장한 뒤 출력한다.
 */
class Box1 {
	int a;
	int b;
	//속성만 있는 클래스 Box1에 a,b를 선언
}
public class A01 {
	public static void main(String args[]) {
		Box1 mybox1 = new Box1();
		Box1 mybox2 = new Box1();
		//Box1 클래스를 이용하여 객체 두개를 생성
		
		mybox1.a = 6;
		mybox1.b = 8;
		//mybox1 객체에 객체속성변수 a,b에 각각 임의의 수를 저장
		mybox2.a = 9;
		mybox2.b = 18;
		//mybox2 객체에 객체속성변수 a,b에 각각 임의의 수를 저장
		System.out.println("mybox1_a = " + mybox1.a);
		System.out.println("mybox1_b = " + mybox1.b);
		System.out.println("mybox2_a = " + mybox2.a);
		System.out.println("mybox2_b = " + mybox2.b);
		//저장된 a,b의 값이 무엇인지 출력
		int sum1, sum2;
		//더한 값을 저장할 sum1과 sum2를 선언
		sum1 = mybox1.a + mybox2.a;
		//sum1에 두 객체의 a의 값을 더한 값을 저장
		sum2 = mybox1.b + mybox2.b;
		//sum2에 두 객체의 b의 값을 더한 값을 저장
		System.out.println(" 두 박스의 a의 합은 " + sum1 + "입니다.");
		System.out.println(" 두 박스의 b의 합은  " + sum2 + "입니다.");
		//sum1,sum2의 값을 각각 출력
	}
}
/*
 * 프로그램명 : A02.java
 * 팀명 : 4팀
 * PL명 : 김채현
 * 작성자 명단 : 진주양
 * 작성 날짜 : 2018.05.07
 * 출처 : Box7Test.java
 * 참조 : 201801_세번째레포트
 * 
문제2. 속성과 메소드(객체속성변수를 매개변수로 받는)를 가지는 클래스가 주어졌을 때 프로그램을 완성하는 문제. (예 : Box7Test.java)
main이 있는 class 이름은 A02이다.

class Box2 {
	int a;
	int b;

	int sum(int x, int y)
	{
		int vol = x + y + a + b;
		return vol;
	}
}
이 주어진다.

class Box2를 이용하여 한개의 객체를 생성하라.
생성된 객체의 객체속성변수에 각각 임의의 정수값을 저장하라.
메소드 sum를 실행하여 그 값을 출력하는 프로그램을 작성하세요.

 */

class Box2{
	int a;
	int b;
	// 변수 생성

	int sum(int x, int y) //메소드 sum 생성
	{
		int vol = x + y + a + b; //계산식 설정
		return vol;
	}
}
public class A02 {
	public static void main(String args[]) {
		Box2 mybox1 = new Box2();  

		mybox1.a = 10; //a값 지정
		mybox1.b = 20; //b값 지정
		int vol1 = mybox1.sum(30,40); //int voll에 메소드 sum 지정 
		System.out.println("정수 박스의 부피 : " + vol1); // 메소드 sum에서 계산된 결과값 출력
	}
}

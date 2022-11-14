/* 
* 프로그램명 : A04.java
 * 팀명 : 4팀
 * PL명 : 김채현
 * 작성자 명단 : 박현수
 * 작성 날짜 : 2018.05.08
 * 출처 : 세번째 실기 과제 문제
 * 참조 : JAVA-7th-CHAP07-new

문제4. 속성과 메소드, 생성자를 가지는 클래스가 주어졌을 때 프로그램을 완성하는 문제. (예 : Box7Test.java)
main이 있는 class 이름은 A04이다.

class Box4 {
	int a;
	int b;

	...

	int sum(int x, int y)
	{
		int vol = x + y + a + b;
		return vol;
	}
}
이 주어진다. 두개의 매개변수 가지며, 첫번째 매개변수는 변수 a에,
두번째 매개변수는 변수 b에 저장하는 생성자를 class Box4내에 만들어라.
class Box4를 이용하여 한개의 객체를 생성하라.
메소드 sum를 실행하여 그 값을 출력하는 프로그램을 작성하세요.

*/
class Box4 {
	int a;
	int b;

	public Box4(int apple, int banana){
		a=apple;
		b=banana;
	}
	
	int sum(int x, int y)
	{
		int vol = x + y + a + b;
		return vol;
	}
}
//속성,메소드,생성자를 가지는 class Box4를 생성

public class A04 {
	public static void main(String args[])
	{
		Box4 mybox1 = new Box4(10,20);
		//매개변수를 지정하여 객체 생성

		int vol = mybox1.sum(10,20);
		//mybox1.sum(10,20)의 값을 vol에 저장
		
		System.out.println("정수 박스의 부피는 " + vol);
		//("정수 박스의 부피는"+vol)을 출력
	}
}
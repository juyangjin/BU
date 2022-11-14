/*
 * 프로그램명 : A03.java
 * 팀명 : 4팀
 * PL명 : 김채현
 * 작성자 명단 : 진주양
 * 작성 날짜 : 2018.05.07
 * 출처 : Box7Test.java
 * 참조 : 201801_세번째레포트
 * 
문제3. 속성과 메소드(객체참조변수를 매개변수로 받는)를 가지는 클래스가 주어졌을 때 프로그램을 완성하는 문제. (예 : 7장 TP 21p와 Box7Test.java)
main이 있는 class 이름은 A03이다.

class Box3 {
        int a;
	int b;

	Box3 add(Box3 x, Box3 y)
	{
		Box3 z = new Box3();
		z.a = x.a + y.a;
		z.b = x.b + y.b;
		return z;
	}
}
이 주어진다.

class Box3을 이용하여 두개의 객체를 생성하라.
각 객체의 객체속성변수에 각각 임의의 정수값을 저장하라.
class Box3을 이용하여 세번째 객체를 생성하라.
세번째 객체의 메소드 add를 실행하여 그 값들을 출력하는 프로그램을 작성하세요.
      

 */
class Box3 {
    int a;
	int b;
	// 변수 생성

	Box3 add(Box3 x, Box3 y) //메소드 add 생성
	{
		Box3 z = new Box3(); 
		z.a = x.a + y.a; // 계산식 설정
		z.b = x.b + y.b; // 계산식 설정
		return z;
	}
}

 public class A03 { 
    public static void main(String[]args) { 
       Box3 mybox1 = new Box3();  
       Box3 mybox2 = new Box3(); 

       mybox1.a = 5; // x.a값 지정
       mybox1.b = 6; // x.b값 지정
       mybox2.a = 20; // y.a값 지정
       mybox2.b = 30; // y.b값 지정 
       Box3 mybox3 = mybox1.add(mybox1, mybox2); // mybox3에 메소드 add 지정 
       System.out.println("(" + mybox3.a + ", " + mybox3.b + ")"); // 메소드 add에서 계산된 결과값 출력 
    } 
} 
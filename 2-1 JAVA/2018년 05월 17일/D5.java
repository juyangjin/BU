/*
 * 프로그램명 : D5.java
 * 팀명 : 4조
 * PL명 : 진연석
 * 작성자 명단 : 진연석
 * 작성 날짜 : 2018.05.17
 * 출처 : 네번째 실기 연습 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
 * 문제5. 명령행으로부터 입력을 받아 swap하는 프로그램. 

main이 있는 class이름은 D5이고, 명령행으로부터, 임의의 정수 a와 b를 입력받는다. 

class Box {
	int width;
}
가 주어졌다.

main이 있는 class 이름은 D5이다. 
class Box를 이용하여 두개의 객체를 생성하라.
각 객체의 객체속성변수에 각각 a와 b 값을 저장하라.
swap(. .)을 수행하라.


swap(. .)을 수행한 후의 각 객체의 객체속성변수의 값을 출력하는 프로그램을 작성하세요.

static void swap(Box i, Box j)
	{
		. . .
	}

위의 메소드 swap은 class D5내에 만들어라.
 */

import java.util.Scanner; 
//Scanner함수 사용을 위해 라이브러리 클래스 포함
class Box { 
   int width; 
} //속성만 있는 클래스 Box에 정수형 width를 선언
public class D5 { 
   public static void main(String args[]) { 
      Scanner scan = new Scanner(System.in); // 입력하기위해 Scanner선언
      Box mybox1 = new Box(); //Box 클래스를 이용하여 객체를 생성
      Box mybox2 = new Box(); //Box 클래스를 이용하여 객체를 생성
      System.out.print("첫 번째 정수를 입력해 주세요. : "); //첫 번째 정수를 입력해 주세요를 출력
      mybox1.width = scan.nextInt(); // 정수를 입력받아 mybox1.width값에 저장
      System.out.print("두 번째 정수를 입력해 주세요. : "); //두 번째 정수를 입력해 주세요를 출력
      mybox2.width = scan.nextInt(); // 정수를 입력받아 mybox2.width값에 저장
      System.out.println("입력하신 첫 번째 정수는 " + mybox1.width + " 입니다."); //입력하신 첫 번째 정수는 ?입니다를 출력
      System.out.println("입력하신 두 번째 정수는 " + mybox2.width + " 입니다."); //입력하신 두 번째 정수는 ?입니다를 출력
      swap(mybox1, mybox2); //mybox1과 mybox2를 swap
      System.out.println("S  " + mybox1.width + " 입니다."); //swap한 mybox1.width값 출력
      System.out.println("입력하신 두 번째 정수는 " + mybox2.width + " 입니다."); //입력하신 두 번째 정수는 ?입니다를 출력
      scan.close(); //scan닫기
   } 
   static void swap(Box i, Box j) { //Box i와 j를 swap
      int tmp = i.width; 
      i.width = j.width; 
      j.width = tmp; 
   } 
} 
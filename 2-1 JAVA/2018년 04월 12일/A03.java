/*
 * 프로그램명 : A03.java
 * 팀명 :4팀
 * PL명 :진주양
 * 작성자 명단 :박현수
 * 작성 날짜 : 2018.04.11
 * 출처 : 두번째 실기 과제 문제
 * 참조 : 2017-2-Java-화-두번째실기시험

 *문제3. class 이름은 A03이다.
  문제2에서 주어진 3항 연산자를 if문으로 바꾸기.
 */
import java.util.Scanner;
//Scanner함수 사용을 위해 라이브러리 클래스 포함
class A03{
// class 이름은 A03
   public static void main(String args[])  {
	   
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

	   if( (a%b) == 1){
           c = true;
	   } else {
           c = false;
       }
	   //a%b가 1이면 c = true 1이 아니면 c = false
     System.out.println("a="+a+" b="+b+" c="+c);
	 // "a="+a+" b= "+b+"c="+c 출력 
   }
}
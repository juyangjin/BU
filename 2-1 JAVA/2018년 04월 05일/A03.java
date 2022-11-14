/*
 * 프로그램명 : A03.java
 * 팀명 :4팀
 * PL명 :진연석
 * 작성자 명단 :진연석
 * 작성 날짜 : 2018.03.22
 * 출처 : 첫번째 실기 과제 문제
 * 참조 : 알기쉽게 해설한 java 8th edition

 *문제3. class 이름은 A03이다.
  문제2에서 주어진 3항 연산자를 if문으로 바꾸기.
 */

class A03{
// class 이름은 A03
   public static void main(String args[])  {
	   int a=3;
	   // 정수형 변수 선언
	   int b=2;
	   // 정수형 변수 선언
	   boolean c;
	   String str = null;
	   // null값 초기화
	   if( (a%b) == 1){
           c = true;
	   } else {
           c = false;
       }
	   //a%b가 1이면 true 1이 아니면 false
     System.out.println("a="+a+" b= "+b+"c="+c);
	 // "a="+a+" b= "+b+"c="+c 출력 
   }
}

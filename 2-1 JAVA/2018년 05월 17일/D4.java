/*
 * 프로그램명 : D4.java
 * 팀명 : 4팀
 * PL명 : 김채현
 * 작성자 명단 : 진주양
 * 작성 날짜 : 2018.05.1
 * 출처 : Box7Test.java
 * 참조 : 201801_세번째레포트
 * 
문제4. 

1) 하나의 정수 a와 하나의 문자열 b와 하나의 메소드와 생성자가 있는 class C4를 작성하라.
2) 매개변수가 없고, 정수 a에 임의의 정수값을, 문자열 b에 임의의 문자열값를 저장하는 생성자를 class C4내에 만들어라.
3) 메소드의 이름은 e4이고, 매개변수가 없다. 정수값이  5보다 크면 b값을, 아니면 "zzz"를 return하는 프로그램이다.

main이 있는 class 이름은 D4이다.

class C4를 이용하여 객체를 생성하라.
메소드 e4를 실행하고, 그 결과 값을 출력하는 프로그램을 작성하세요.


 */

class C4
{
static int a;
static String b;
   
      public C4()
     {
      a = 2;
      b = "5이상이다";
     }
   
   //정수가 5이상이면 문자열 b를 출력, 5 이하면 "zzz"를 출력
   public String e4(){
      if(a >= 5){
         
         return b;
      } 
     else{
      return "zzz";
     }
   }
}
public class D4{
   public static void main(String[] args) 
   {
      C4 c4 = new C4();
      String b = c4.e4();
      System.out.println("a값은 "+b); //조건식에 따른 결과값 출력
   }
}
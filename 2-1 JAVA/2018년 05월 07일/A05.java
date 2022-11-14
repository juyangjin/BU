/*
 * 프로그램명 : A05.java
 * 팀명 : 4팀
 * PL명 : 김채현
 * 작성자 명단 : 진연석
 * 작성 날짜 : 2018.05.09
 * 출처 : 첫번째 실기 과제 문제
 * 참조 : 알기쉽게 해설한 java 8th edition
		  
 * 문제5. : 명령행으로부터 입력을 받는 형식의 프로그램. (예 : 3장 SumTest.java) 

class이름은 A05이고, 두개의 명령행 매개변수를 입력으로 받는다.
첫번째 매개변수는 <과일이름>이고, 두번째 매개변수는 <채소이름>이다.
출력은
"내가 좋아하는 과일은 <과일이름>이고, 내가 좋아하는 채소는 <채소이름>입니다"
 */
import java.util.Scanner; //스캐너 사용
public class A05 {  
    public static void main(String args[]) {  
         
       Scanner scan = new Scanner(System.in) ; 
          System.out.print("좋아하는 과일과 채소를 공간(space)를 두고 입력하시오 : ");
          String fruitname = scan.next();//과일이름을 입력
          String vegetablename = scan.next(); //채소이름을 입력
          System.out.println("내가 좋아하는 과일은 "+ fruitname +"이고, 내가 좋아하는 채소는 "+ vegetablename +"입니다");  //결과물 출력
    }
}
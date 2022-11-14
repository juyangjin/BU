/*
 * 프로그램명 : Ex21.java
 * 작성자 : 진주양
 * 학번 : 20173555
 * 전공 : 정보보호전공
 * 작성 날짜 : 2018.03.22
 * 출처 : A99.java
 * 참조 : 첫번째 실기 연습-2018-1-목.txt 

 * 3. CommentProgram.java 를 수정하여, 아래와 같은 출력이 나오게 프로그램하세요. 50점.
   (2장의 CommentProgram.java 를 참조할 것, 프로그램명은 Ex24.java)
   Keyboard로 부터 <이름>과 <학년>을 입력받아서 아래롸 같이 출력하는 프로그램.

안녕하세요. 
저의 이름은 <이름>이고,
저는 <학년>학년입니다.

 */

import java.util.Scanner;
class Ex24
	{
   public static void main(String args[])  { 
	   Scanner stdIn = new Scanner(System.in);
	   System.out.print("이름을 문자열로 입력하시오:");
	   String s = stdIn.next();
	    System.out.println("안녕하세요. 저의 이름은" + s + "입니다.");

	   System.out.print("학년을 정수로 입력하시오:");
	   int i = stdIn.nextInt();
     System.out.println("저는 " + i + "학년 입니다.");
   }
}

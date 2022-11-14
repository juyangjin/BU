/*
 * 프로그램명 : Ex21.java
 * 작성자 : 진주양
 * 학번 : 20173555
 * 전공 : 정보보호전공
 * 작성 날짜 : 2018.03.22
 * 출처 : A99.java
 * 참조 : 첫번째 실기 연습-2018-1-목.txt 

 * 2. 1에서 10까지 곱하는 프로그램.  (프로그램명은 Ex23.java, 25점)
 */

public class Ex23 {
  public static void main(String[] args) {
    int i, sum=1;
    for ( i = 1 ; i <= 10 ; i = i + 1 ) {
      sum = sum * i;
   }
   System.out.println("1부터 10까지의 곱은 " +sum);
  }
}

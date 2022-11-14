/*
 * 프로그램명 : A04.java
 * 팀명 : 4팀
 * PL명 : 진주양
 * 작성자 명단 : 진주양
 * 작성 날짜 : 2018.04.11
 * 출처 : 2018-1-Java-첫번째문제-목
 * 참조 : 2017-2-Java-화-두번째실기시험
 
class 이름은 A04 이다. 
아래 프로그램을 switch문으로 전환하라.

import java.util.*;

public class A04 {
	public static void main(String args[])
	{
		int grade = 98;
		if (grade >= 90)
			System.out.println("A학점 취득");
		else if (grade >= 80)
			System.out.println("B학점 취득");
		else if (grade >= 70)
			System.out.println("C학점 취득");
		else if (grade >= 60)
			System.out.println("D학점 취득");
		else
			System.out.println("학점 취득 실패");
	}
}
*/

import java.util.Scanner;

public class A04 {
	public static void main(String args[])
	{
		Scanner stdIn = new Scanner(System.in); // Scan 객체 생성
		System.out.print("성적을 입력하시오:"); // 성적 입력 안내
		int grade = stdIn.nextInt(); // 성적 입력을 정수로 받는다.

		switch(grade/5) // grade 값을 나누어서 학점구분
		{
			case 20:
				System.out.println("A+학점 취득"); // 100점 이면 "A+학점 취득" 출력
			break;

			case 19:
				System.out.println("A+학점 취득"); // 95점 이상이면 "A+학점 취득" 출력
			break;

			case 18:
				System.out.println("A학점 취득"); // 90점 이상이면 "A학점 취득" 출력
			break;

			case 17:
				System.out.println("B+학점 취득"); // 85점 이상이면 "B+학점 취득" 출력
			break;

		    case 16:
				System.out.println("B학점 취득"); // 80점 이상이면 "B학점 취득" 출력
			break;

		    case 15:
				System.out.println("C+학점 취득"); // 75점 이상이면 "C+학점 취득" 출력
			break;

			case 14:
				System.out.println("C학점 취득"); // 70점 이상이면 "C학점 취득" 출력
			break;

			case 13:
				System.out.println("D+학점 취득"); // 65점 이상이면 "D+학점 취득" 출력
			break;

			case 12:
				System.out.println("D학점 취득"); // 60점 이상이면 "D학점 취득" 출력
			break;

		    default:
				System.out.println("학점 취득 실패"); // 60점 미만이면 "학점 취득 실패" 출력
			break;
		}
	}
}

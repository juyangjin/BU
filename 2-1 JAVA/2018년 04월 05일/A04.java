/*
 * 프로그램명 : A04.java
 * 팀명 : 목요일 4팀
 * PL명 : 박현수
 * 작성자 명단 : 진주양
 * 작성 날짜 : 2018.03.25
 * 출처 : 2018-1-Java-첫번째문제-목
 * 참조 : A99-2
 
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

import java.util.*;

public class A04 {
	public static void main(String args[])
	{
		int grade = 98;

		switch(grade/10)
		{
			case 10:
				System.out.println("A학점 취득");
			break;

			case 9:
				System.out.println("A학점 취득");
			break;

		    case 8:
				System.out.println("B학점 취득");
			break;

		    case 7:
				System.out.println("C학점 취득");
			break;

		    case 6:
				System.out.println("D학점 취득");
			break;

		    default:
				System.out.println("학점 취득 실패");
			break;
		}
	}
}

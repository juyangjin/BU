/*
 * 프로그램명 : A06.java
 * 팀명 : 4팀
 * PL명 : 진주양
 * 작성자 명단 : 김채현
 * 작성 날짜 : 2018.04.17
 * 출처 : 두번째 실기 과제 문제
 * 참조 : 2017-2-Java-화-두번째실기시험
 * 문제06. 
       키보드로부터 한개의 임의의 정수 n을 입력 받는다. 
       그 정수는 배열의 갯수이다. 
       정수형 n개를 저장할 수 있는 1차원 배열을 선언및 생성하고, 
       n보다 큰 임의의 정수 n1을 키보드로부터 입력 받는다.
       n1부터 n1+n-1까지 배열에 값을 저장하라. 저장된 값의 합을 출력하라.
       (단, 배열의 길이는 속성(length)을 사용하라.)


class 이름은 A06이다. 
       정수 n개를 저장할 배열 a를 선언한다.
	   스캐너를 사용하여 배열 a의 갯수인 n을 입력받아 저장한다.
	   또 n보다 큰 임의의 정수 n1를 입력받는다.
	   for문을 사용하여 a[]에 n1부터 n1 + n - 1을 저장한다.
	   배열에 저장된 값을 합할 변수 sum을 선언 한 뒤, 초기화하고
	   for문을 이용하여 sum에 각 배열의 값을 합해준다.
	   sum에 저장된 값을 출력한다.
       (단, 배열의 길이는 속성(length)을 사용하라.)

 */

import java.util.Scanner;
// Scanner함수 사용을 위해 라이브러리 클래스 포함
public class A06
// class 이름은 A06
{
	public static void main(String args[])
	{
		Scanner number = new Scanner(System.in);
		//  키보드 입력을 위해서 Scanner 객체인 number객체 생성
		System.out.print("배열의 갯수를 입력 : ");
		int n = number.nextInt();
		// 정수를 입력받아 n 값에 저장
		int a[] = new int[n];
		// 배열 a를 선언한 뒤, 갯수를 n으로 생성한다.
		
		Scanner number1 = new Scanner(System.in);
		//  키보드 입력을 위해서 Scanner 객체인 number1객체 생성
		System.out.print("배열의 갯수보다 더 큰 정수 입력 : ");
		int n1 = number1.nextInt();
		// 정수를 입력받아 n 값에 저장
		int sum = 0;
		// 배열에 저장된 값을 합할 변수 sum을 선언하고 초기화
		for(int i = 0; i < a.length; i++)
	
		{
			a[i]=i+n1;
			// for문을 이용하여 배열 a를 1씩 증가시키고 n1부터 n1 + n - 1씩 증가시켜 저장한다.
		}

		for(int j = 0; j < a.length; j++)
		{
			
			sum = sum + a[j];
			
			// for문을 이용하여 배열 a에 저장된 값을 합한다. 
		}
		System.out.println("배열에 저장된 값의 합 : " + sum);
		// sum에 저장된 합의 값을 출력한다.
	}
}
##변수선언
select, result1,result2,result3,result4,result5, num1, num2, use = 0, 0, 0, 0, 0, 0, 0, 0, "y"

##메인(main) 코드 부분, use가 y일 경우 반복, 그 외의 값 입력시 종료됨
while (use == "y"):
    select=int(input("====================\n        MENU        \n====================\n1.덧셈 \n2.뺄셈 \n3.곱셈 \n4.나눗셈 \n5.나머지 \n 원하는 메뉴를 선택하시오(1-5)\n"))

    if select == 1:
        num1=int(input("***첫번째 숫자를 입력하세요 :"))
        num2=int(input("***두번째 숫자를 입력하세요 :"))
        result1 = num1 + num2
        print("%d+%d는 %d입니다." %(num1,num2,result1))
        use=input("계속하려면 y를 누르세요:")
        
    elif select == 2:
        num1=int(input("***첫번째 숫자를 입력하세요 :"))
        num2=int(input("***두번째 숫자를 입력하세요 :"))
        result2 = num1 - num2
        print("%d-%d는 %d입니다." %(num1,num2,result2))
        use=input("계속하려면 y를 누르세요:")
        
    elif select == 3:
        num1=int(input("***첫번째 숫자를 입력하세요 :"))
        num2=int(input("***두번째 숫자를 입력하세요 :"))
        result3 = num1 * num2
        print("%dx%d는 %d입니다." %(num1,num2,result3))
        use=input("계속하려면 y를 누르세요:")
        
    elif select == 4:
        num1=int(input("***첫번째 숫자를 입력하세요 :"))
        num2=int(input("***두번째 숫자를 입력하세요 :"))
        result4 = num1 / num2
        print("%d/%d는 %d입니다." %(num1,num2,result4))
        use=input("계속하려면 y를 누르세요:")
        
    elif select == 5:
        num1=int(input("***첫번째 숫자를 입력하세요 :"))
        num2=int(input("***두번째 숫자를 입력하세요 :"))
        result5 = num1 % num2
        print("%d/%d 연산의 나머지는 %d입니다.." %(num1,num2,result5))
        use=input("계속하려면 y를 누르세요:")

    else :
        print("1-5번만 입력가능합니다.")




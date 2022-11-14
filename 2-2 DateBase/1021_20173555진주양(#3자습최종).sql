create database company;

use company;

create table Department(
	DeptNo int not null,
	DeptName char(10),
	Floor int,
	primary key(DeptNo)
	);

	insert into department values(1,'영업',8);
	insert into department values(2,'기획',10);
	insert into department values(3,'개발',9);
	insert into department values(4,'총무',7);

	Select*
	From department;

create table Employee(

	EmpNo int not null,
	EmpName char(10),
	title char(10),
	Salary int,
	Dno int,
	primary key(EmpNo),
	foreign key (Dno) references department(DeptNo)
	);
	
	insert into Employee values(2106,'김창섭','대리',2500000,2);
	insert into Employee values(3426,'박영권','과장',3000000,1);
	insert into Employee values(3011,'이수민','부장',4000000,3);
	insert into Employee values(1003,'조민희','과장',3000000,2);
	insert into Employee values(3427,'최종철','사원',1500000,3);
	insert into Employee values(1365,'김상원','사원',1500000,1);
	insert into Employee values(4377,'이성래','사장',5000000,2);

	Select *
	From Employee;


             
	select title, EmpName,Salary /*1), 이성래씨의 직책과 월급*/
	From Employee
	where EmpName='이성래';

	Select title,EmpName /*2)이씨 성씨를 가진 직원들의 이름,직책*/
	From Employee
	where EmpName LIKE '이%'

	Select title,EmpName /*3)이씨 성씨가 아닌 직원들의 이름,직책*/
	From Employee
	where EmpName not LIKE '이%'

	select Dno,EmpName /*4)2번 부서가 아닌 직원들의 이름과 부서번호*/
	From Employee
	where Dno <> 2; 

	Select title, EmpName /*5) 1,2,3번 부서에 속한 직원들의 직책과 이름*/
	From Employee
	where Dno=1 or Dno= 2 or Dno=3;

	select EmpName,Salary/*6)월급이 250만원 이상 400만원 이하인 직원들의 이름,월급*/
	From Employee
	where Salary Between 2500000 AND 4000000;

	insert into Employee values(5000,'김수진',null,2000000,4); /*7번)신입사원 김수진에 대한 정보입력*/

	Select EmpName /*8)직책명이 없는 사람*/
	From Employee
	where Title is null; 

	Select EmpName, Salary /*9)1번 부서 내림차순 이름, 월급*/
	From Employee
	where Dno=1
	order by  EmpName DESC;

	Select AVG(Salary) As '평균급여'/*10) 모든 직원의 평균급여*/
	From Employee; 

	Select count(EmpNo) As '사원의 수'/*11)회사의 직원 수 검색*/
	From Employee;

	Select count(title) as '과장의 수' /*12)과장인 직원들의 수*/
	From Employee
	where title='과장';

	Select Sum(Salary) /*13)2번 부서의 월급의 총합 */
	From Employee
	where Dno=2;  


	Select Dno, Avg(Salary) /*14)부서번호,부서별 급여평균값*/ 
	From Employee
	Group By Dno; 
	

 	Select Dno, Avg(Salary) /*15)부서번호,부서별 급여평균 중 2500000 이상인 값*/ 
	From Employee
	Group By Dno
	Having Avg(salary)>=2500000;

/*-----------------------------------------------------------------------------------------------------------------*/

	Select EmpName/*직책명이 있는사람*/
	From Employee
	where title <> null;  


	Select count(title) /*신입사원의 null값을 세지 않기 때문에 유일한 7이 나온다.*/
	From Employee;

	Select count(*)
	From Employee;

	
	Select Max(EmpName) /*이름의 마지막 값,max는 숫자,문자 모두사용가능*/
	From Employee;

	Select min(EmpName) /*이름의 첫번째 값,min은 숫자,문자 모두사용가능*/
	From Employee;

	/*그러나 sum,avg 등은 숫자만 사용가능하다.*/

	Select Dno, Sum(Salary) /*부서번호,부서별 급여총액*/
	From Employee
	Group By Dno;

	Select Title, avg(Salary) /*직책명,직책별 급여평균값*/
	From Employee
	Group By Title;

	
	Select EmpName, Salary /*1번 부서 오름차순 이름,월급*/
	From Employee
	where Dno=1
	order by EmpName;

	Select DISTINCT Title /*직책명의 종류*/
	From Employee;

	Select Salary /*급여의 종류*/
	From Employee;

	Select SUM(Salary) AS '급여합계'
	From Employee;

	Select Max(Salary) AS '최대급여'
	From Employee;

	Select Min(Salary) As '최저급여'
	From Employee;

	Select count(Salary) /*급여의 가짓수*/
	From Employee;




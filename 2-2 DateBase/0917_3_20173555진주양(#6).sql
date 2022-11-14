create database company;

use company;

create table Department(
	DeptNo int not null,
	DeptName char(10),
	Floor int,
	primary key(DeptNo)
);

insert into Department Values(1,'영업',8);
insert into Department Values(2,'기획',10);
insert into Department Values(3,'개발',9);
insert into Department Values(4,'총무',7);

select *
From Department;


create table Employee(
	EmpNo int not null,
	EmpName char(10),
	Title char(10),
	Manager int,
	Salary int,
	Dno int,
	primary key(EmpNo),
	foreign key(Dno) references Department(DeptNo),
	foreign key(Manager) references Employee(EmpNo)
	);
	
	insert into Employee Values(4377,'이성래','사장',null,5000000,2)
	insert into Employee Values(1003,'조민희','과장',4377,3000000,2)
	insert into Employee Values(2106,'김창섭','대리',1003,2500000,2)
	insert into Employee Values(3426,'박영권','과장',4377,3000000,1)
	insert into Employee Values(3011,'이수민','부장',4377,4000000,3)
	insert into Employee Values(3427,'최종철','사원',3011,1500000,3)
	insert into Employee Values(1365,'김상원','사원',3426,1500000,1)


	select *
	From Employee;

	/*모든사원들의 직급*/
	select Title
	From Employee;

	/*모든사원들의 상이한 직급 검색*/
	select DISTINCT Title
	From Employee;

	/*2번 부서에 근무하는 사원들에 관한 모든 정보 검색*/
	select *
	From Employee
	Where Dno=2;

	/*이씨 성을 가진 사원들의 이름,직급, 소속부서번호를 검색하라*/
	select EmpName, Title, Dno
	From Employee
	Where EmpName LIKE '이%';

	/*직급이 과장이면서 1번 부서에 근무하는 사원들의 이름과 급여를 검색하라*/
	select EmpName, Salary
	From Employee
	Where Title = '과장' AND Dno = 1;

	/*직급이 과장이면서 1번 부서에 속하지 않은 사원들의 이름과 급여를 검색하라*/
	select EmpName, Salary
	From Employee
	Where Title = '과장' AND Dno<>1;

	/*급여가 3000000원 이상이고 4500000원 이하인 사원들의 이름, 직급, 급여를 검색하라*/
	select EmpName, Title, Salary
	From Employee
	Where Salary between 3000000 And 4500000;

	/*1번부서나 3번 부서에 소속된 사원들에 관한 모든 정보를 검색하라*/
	select *
	From Employee
	where Dno=1 or Dno=3;

	/*직급이 과장인 사원들에 대하여 이름과 현재의 급여, 급여가 10%인상되었을 때의 값을 검색하라*/
	select EmpName,Salary, Salary * 1.1 as NewSalary
	From Employee
	where title = '과장';

	/*2번 부서에 근무하는 사원들의 급여 직급 이름을 검색하여 급여의 오름차순으로 정렬하라*/
	select Salary, Title, EmpName
	From Employee
	where Dno=2
	order by Salary;
	
	/*모든 사원들의 평균 급여와 최대급여를 검색하라*/
	select avg(Salary) As AvgSal, Max(Salary) MaxSal
	From Employee;  

	/*모든 사원들에 대해서 사원들의 속한 부서번호별로 그룹화, 평균급여가 2500000원 이상인 부서에 대해 부서번호 평균급여 최대급여를 검색하라*/
	select Dno, avg(Salary) as avgsal, Max(Salary) as maxsal
	From Employee
	Group By Dno
	Having avg(Salary) >=2500000;


	/*-----------------------------*/

	/*영업부서에근무하는 직원들의 이름*/
	select EmpName
	From Employee, Department 
	Where Employee.Dno = Department.DeptNo and DeptName='영업';

	/*김창섭의 근무 부서는?*/
	select DeptName
	From Employee, Department
	where Employee.Dno = Department.DeptNo and EmpName='김창섭';

	/*과장인 직원들의 이름 월급 근무부서명 검색*/
	select EmpName, Salary, DeptName
	From Employee, Department
	where Employee.Dno = Department.DeptNo and Title='과장';


	/*과장 또는 대리 검색*/
	select *
	From Employee
	where Title='과장' or Title='대리';
	

	/*8층에 근무며 급여가 3000000원 이상인 직원의 이름은?*/
	select EmpName
	From Employee, Department
	where Employee.Dno = Department.DeptNo and Floor=8 and Salary>=3000000;

	/*매니저가 없는 직원의 이름과 직책, 근무부서의 이름은?조인, null은 is로 써야한다. **중요** */
	select EmpName,Title,DeptName
	From Employee, Department 
	where Employee.Dno = Department.DeptNo and Manager is null;

	/*개발부서에 근무하는 직원의 이름은?중첩 */
	select EmpName
	From Employee
	Where Dno= (
				select DeptNo
				From Department
				where DeptName='개발'
				);
	/*영업 또는 개발부서에 근무하는 직원의 이름은?조인*/
	select EmpName
	From Employee, Department
	where Employee.Dno=Department.DeptNo and (DeptName='영업' or DeptName ='개발'); 

	/*영업 또는 개발부서에 근무하는 직원의 이름은?중첩, 하위쿼리가 2개 이상의 답을 갖고있으므로 =이 아닌 in으로 바꾼다.*/
	select EmpName
	From Employee
	where Dno in(
				Select DeptNo
				From Department 
				where DeptName='개발'or DeptName='영업'
				);
       
	     /*------------------------------------*/

	/*박영권과 같은 직책인 직원의 이름은?*/
	select EmpName
	From Employee
	where Title = ( 
					select Title 
					From Employee
					where EmpName='박영권'
					);
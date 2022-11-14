create database company0910;

use company0910;

create table department(

	deptNo int not null,
	deptName char(10),
	Floor int
	primary key(deptNo)
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
	Title char(10),
	Manager int,
	Salary int,
	Dno int,
	primary key(EmpNo),
	foreign key (Manager) references Employee(EmpNo)
	);

	insert into Employee values(4377,'이성래','사장',null,5000000,2);
	insert into Employee values(1003,'조민희','과장',4377,3000000,2);
	insert into Employee values(3426,'박영권','과장',4377,3000000,1);
	insert into Employee values(3011,'이수민','부장',4377,4000000,3);
	insert into Employee values(2106,'김창섭','대리',1003,2500000,2);
	insert into Employee values(3427,'최종철','사원',3011,1500000,3);
	insert into Employee values(1365,'김상원','사원',3426,1500000,1);


	Select *
	From Employee;

	/*1)1번 부서에 근무하는 직원들의 이름 검색*/
	select EmpName
	From Employee
	where Dno=1;

	/*2)영업 부서에 근무하는 직원들의 이름검색*/
	select EmpName
	From Employee,Department
	where Employee.Dno=Department.DeptNo AND DeptName='영업';

	/*3)김창섭이 근무하는 부서명 검색*/
	select DeptName
	From Employee,Department
	where Employee.Dno=Department.DeptNo AND EmpName='김창섭';

	/*4)과장인 직원들의 이름과 월급, 근무부서명 검색*/
	select EmpName,Salary,DeptName
	From Employee,Department
	where Employee.Dno=Department.DeptNo AND Title = '과장';
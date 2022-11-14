create database Mycompany

use Mycompany

create table department(
	DeptNo int not null,
	DeptName char(10),
	Floor int,
	primary key(DeptNo)
);

insert into department values (1,'영업',8);
insert into department values (2,'기획',10);
insert into department values (3,'개발',9);
insert into department values (4,'총무',7);

select *
From department;

create table Employee(
	EmpNo int not null,
	EmpName char(10),
	Title char(10),
	Salary int, 
	Dno int,
	primary key(EmpNo),
	foreign key(Dno) references department(DeptNo)
);

insert into Employee values (2106,'김창섭','대리',2500000,2);
insert into Employee values (3426,'박영권','과장',3000000,1);
insert into Employee values (3011,'이수민','부장',4000000,3);
insert into Employee values (1003,'조민희','과장',3000000,2);
insert into Employee values (3427,'최종철','사원',1500000,3);
insert into Employee values (1365,'김상원','사원',1500000,1);
insert into Employee values (4377,'이상래','사장',5000000,2);

select *
From Employee;

select *
From department
where Floor=8;

select Floor
From department
where DeptName='영업';

select EmpName,Title,Salary
From Employee
where EmpName='김창섭';

select EmpName,Title,Salary
From Employee
where Salary>=2500000;

select EmpName,Title,Salary
From Employee
where Salary>=2500000 AND Salary<=3000000;

select EmpName,Title
From Employee 
where Title='과장' OR Title='부장';

select *
From Employee
where Dno=1 OR Dno=3;

select *
From Employee
where Dno IN(1,3);

select EmpName,Title
From Employee 
where title IN('과장','부장');

select EmpName
From Employee
where Dno=2;

select EmpName
From Employee
where Dno<>2;

select *
From Employee
where EmpName='김창섭';

select *
From Employee
where EmpName LIKE '김%';

select *
From Employee
where EmpName LIKE '김__';

select Title 
From Employee;

select DISTINCT Title 
From Employee;

select EmpName,Salary
From Employee
where Salary Between 2500000 AND 3000000;

select EmpName,Salary
From Employee
where Dno=1;

select EmpName,Salary
From Employee
where Dno=1
Order by Salary Asc;

select EmpName,Salary
From Employee
where Dno=1
Order by Salary Desc;
create database company;

use company;

create table Department(
		DeptNo int not null,
		DeptName char(10),
		Floor int,
		primary key(DeptNo)
);

insert into Department values(1, '영업', 8);
insert into Department values(2, '기획', 10);
insert into Department values(3, '개발', 9);

Select *
From Department;

create table Employee(
		EmpNo int not null,
		EmpName char(10),
		Title char(10),
		Dno int,
		Salary int,
		primary key(EmpNo)
);

insert into Employee values(2106,'김창섭','대리',2,2000000);
insert into Employee values(3426,'박영권','과장',3,2500000);
insert into Employee values(3011,'이수민','부장',1,3000000);
insert into Employee values(1003,'조민희','대리',1,2000000);
insert into Employee values(3427,'최종철','사원',3,1500000);

Select *
From Employee; 
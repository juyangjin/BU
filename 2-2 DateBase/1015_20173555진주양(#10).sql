create database company;

use company;

create table Department(
	DeptNo int not null,
	DeptName char(10),
	Floor int

	primary key(DeptNo)
);

 insert into Department values(1,'영업',8);
 insert into Department values(2,'기획',10);
 insert into Department values(3,'개발',9);
 insert into Department values(4,'총무',7);
 

 create table Employee(
	EmpNo int not null,
	EmpName char(10) unique,
	Title char(10) default'사원',
	Manager int, 
	Salary int check(Salary<6000000),
	Dno int check(Dno IN (1,2,3,4,5,6)) default 1,
	
	primary key(EmpNo),
	foreign key(Manager) references Employee(EmpNo),
	foreign key(Dno) references Department(DeptNo) on Delete Set Default 
	on update Cascade
);

insert into Employee values(4377,'이성래','사장',null,5000000,2);
insert into Employee values(3426,'박영권','과장',4377,3000000,1);
insert into Employee values(3011,'이수민','부장',4377,4000000,3);
insert into Employee values(1003,'조민희','과장',4377,3000000,2);
insert into Employee values(2106,'김창섭','대리',1003,1500000,3);
insert into Employee values(3427,'최종철','사원',3011,1500000,3);
insert into Employee values(1365,'김상원','사원',3426,1500000,2);

select*
From Employee;

/*5-1)새 직원 홍길동 생성,유입물대로 한다면 Salary값이 6000000보다 커지므로 오류가 나니 0하나를 뺀다.*/
insert into Employee values(1000,'홍길동',default,1003,2500000,2);

/*5-2)Employee에 Phon에 애트리뷰트 추가*/
alter table Employee add Phone char(20);

/*5-2-1)이수민 직원의 전화번호수정*/
update Employee 
Set Phone='010-1234-5678'
where EmpName='이수민';

/*5-2-2)홍길동 직원 삭제*/
Delete 
From Employee
Where EmpName='홍길동';

/*5-3)새로운 직원 김창섭 생성*/
insert into Employee values(1111,'김창선',default,1003,1500000,3,'010-2345-6789');

/*5-4)Department에서 2번 부서번호를 6번으로 변경하고 확인>>조건에 Dno 값이 1~6으로 되어있기 때문에 변경불가*/
/*5-5)Department에서 2번 부서번호를 6번으로 변경하고 확인>>DeptNo 수정시 Dno값도 같이 수정되게 설정되어 있기 때문에 Dno도 2번에서 6번으로 모두 변경됨*/
update Department
set DeptNo=6
where DeptNo=2

/*5-6)Department에서 3번 부서정보 삭제,DeptNo값이 삭제되었을때 Dno값은 default값으로 변경되도록 설정되었기 때문에 3번이 모두 default값으로 변경됨*/
Delete 
From Department
where DeptNo=3;

/*5-7)Employee에 Phone 애트리뷰트 제거*/
alter table Employee drop column Phone;

/*5-8)Department를 제거하시오 >>  Department를 Employee가 참조하고 있기 때문에 Employee를 먼저 제거해야 Department의 제거가 가능하다. */
Drop table Employee
Drop table Department
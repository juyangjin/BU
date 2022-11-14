create database 학교;

use 학교;

create table 학과(
		학과번호 char(10),
		학과명 char(30)
		primary key(학과번호)
		);

insert into 학과 values('D1','컴퓨터공학');
insert into 학과 values('D2','전산학');

select *
From 학과;

create table 학생(
		학번 int not null,
		이름 char(10),
		이메일 char(30),
		평점 real not null,
		학과번호 char(10)
		primary key(학번)
		);

insert into 학생 values(11002,'이홍근','lee@naver.com',4,'D1');
insert into 학생 values(24036,'김순미',null,3.2,'D2');
insert into 학생 values(30419,'김순영','kim@gmail.com',2.8,'D1');

select *
From 학생;


create table 과목(
		과목번호 char(10),
		과목이름 char(30),
		primary key(과목번호)
		);

insert into 과목 values('CS310','데이터베이스');
insert into 과목 values('CS313','운영체제');
insert into 과목 values('CS345','자료구조');
insert into 과목 values('CS326','자바');

select *
From 과목;

create table 수강(
		학번 int not null,
		과목번호 char(10),
		학점 char(10),
		primary key(학번,과목번호),
		foreign key(학번) references 학생(학번),
		foreign key(과목번호) references 과목(과목번호)
		);

insert into 수강 values(11002,'CS310','A0');
insert into 수강 values(11002,'CS313','B+');
insert into 수강 values(24036,'CS345','B0');
insert into 수강 values(30419,'CS310','A+');

/*10)가장 높은 평점을 가진 학생의 이름과 평점 검색*/
select 이름, 평점
From 학생
where 평점 = (select max(평점)
					from 학생);

/*11)이메일이 입력되지 않은 학생의 이름은?*/
select 이름
From 학생
where 이메일 is null;

/*12)김씨 성을 가진 학생들의 이름은?*/
select 이름
from 학생
where 이름 LIKE '김%';
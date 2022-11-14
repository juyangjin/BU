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

select*
From 수강;


/*1)평점이 3.0에서 4.0 사이인 학생들의 이름과 평점을 평점의 내림차순으로 검색하시오.*/
select 이름,평점
From 학생
where 평점>=3.0 and 평점<=4.0;

/*2)이홍근 학생의 소속 학과명을 검색하시오.*/
select 이름,학과명
From 학생,학과
where 학생.학과번호=학과.학과번호 and 이름='이홍근';

/*3)등록된 학생은 모두 몇 명인지 구하시오*/
select count(학번) as '등록된 학생의 총 수'
From 학생;

/*4)D1 학과의 소속학생은 모두 몇 명인지 구하시오*/
select count(학번) as 'D1 학생수'
From 학생,학과
where 학생.학과번호=학과.학과번호 and 학과.학과번호='D1';

/*5)컴퓨터공학 학과의 소속학생은 모두 몇 명인지 구하시오.*/
select count(학번) as '컴퓨터공학 학생 수'
From 학생,학과
where 학생.학과번호=학과.학과번호 and 학과.학과명='컴퓨터공학';

/*6)학과별 소속 학생 수를 학과번호별로 구하시오.*/
select 학과.학과번호,count(학번) as '학생 수'
From 학생,학과
where 학생.학과번호=학과.학과번호 
Group by 학과.학과번호;

/*7)학과별 소속 학생 수를 학과명별로 구하시오*/
select 학과명,count(학번) as '학생 수'
From 학생,학과
where 학생.학과번호=학과.학과번호 
Group by 학과명;

/*8)모든 학생들의 평균 평점을 구하시오*/
select avg(평점) as '모든 학생의 평균평점'
From 학생;

/*9)모든 학생들의 평균 평점보다 높은 학생의 이름은?*/
select 이름
From 학생
where 평점>	(
			 select avg(평점)
			 from 학생
			);

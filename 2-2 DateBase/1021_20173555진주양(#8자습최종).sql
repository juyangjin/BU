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

/*10)가장 높은 평점을 가진 학생의 이름과 평점 검색*/
select 이름,평점
From 학생
where 평점 = ( 
			  select max(평점)
			  From 학생
			  );

/*11)이메일이 입력되지 않은 학생의 이름은?*/
select 이름
From 학생
where 이메일 is null;

/*12)김씨 성을 가진 학생들의 이름은?*/
select 이름
From 학생
where 이름 LIKE '김%';

/*13)모든 학생들의 학번, 이름, 소속 학과명, 평점을 평점의 내림차순으로 검색하시오.*/
select 학번, 이름, 학과명, 평점
from 학생, 학과
where 학생.학과번호=학과.학과번호 
order by 평점 desc; 

/*14)평점이 3.0보다 높은 학생의 학번,이름,학과명을 이름의 가나다순으로 보이시오.*/
select 학번,이름,학과명
From 학생,학과
where 학생.학과번호=학과.학과번호 AND 평점 > 3.0
order by 이름;

/*15)이홍근 학생이 수강하는 과목이름을 검색하시오(조인,중첩)*/
/*조인*/
select 과목이름 
from 학생, 수강, 과목
where 수강.학번=학생.학번 AND 수강.과목번호=과목.과목번호 AND 이름='이홍근';
/*중첩*/
select 과목이름
from 과목
where 과목번호 = any (
				  select 과목번호
				  From 수강
				  where 학번 = (
								select 학번
								From 학생
								where 이름='이홍근'
								)
);

/*16)데이터베이스 과목을 수강하는 학생들의 학번과 이름을 검색하시오(조인,중첩)*/
/*조인*/
select 학생.학번,이름
From 학생,수강,과목
where 수강.학번=학생.학번 AND 수강.과목번호=과목.과목번호 AND 과목이름='데이터베이스';
/*중첩*/
select 학번,이름
From 학생
where 학번 = any ( 
				select 학번
				From 수강
				where 과목번호 = (
								  select 과목번호
								  From 과목
								  where 과목이름 = '데이터베이스'
								  )
);

/*17)김순미 학생의 이메일을 smkim@naver.com으로 수정하시오*/
update 학생
set 이메일='smkim@naver.com'
where 이름='김순미';

/*18)자바과목을 삭제하시오*/;
delete 
From 과목
where 과목이름='자바';

/*19)김순영 학생과 같은 학과에 소속된 학생들의 이름을 검색하시오*/
select 이름
From 학생
where 학과번호 = (
				  select 학과번호
				  From 학생
				  where 이름='김순영'
				  );

/*20)김순영 학생보다 높은 평점을 가진 학생들의 학번과 이름, 평점을 검색하시오*/
select 학번,이름,평점
From 학생
where 평점 > (
				select 평점
				From 학생
				where 이름='김순영'
				);
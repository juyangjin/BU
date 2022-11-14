create database 계절별의상판매;

use  계절별의상판매;


create table 회원(
	회원번호 char(20) not null,
	이름 char(20),
	전화번호 char(20),
	이메일 char(100),
	주소 char(100),

	primary key(회원번호)
);

insert into 회원 values('Gong1','공지영','010-0000-7272','gong1@naver.com','서울특별시 서대문구 연세로50');
insert into 회원 values('Lee2','이옥수','010-2525-7777','Lee2@hanmail.net','서울특별시 성북구 안암로 145');
insert into 회원 values('Kim3','김려령','010-6663-2826','kim3@naver.com','경기도 안산시 단원구 예술대학로 171');
insert into 회원 values('Pak4','박경리','010-2938-2840','pak4@daum.net','경상남도 진주시 창렬로 185');

select *
from 회원;

create table 관리자(
	관리자번호 int not null,
	관리자명 char(20),
	관리자이메일 char(20),

	primary key(관리자번호)
);

insert into 관리자 values(1,'봄이','Spring@naver.com');
insert into 관리자 values(2,'여름이','Summer@naver.com');
insert into 관리자 values(3,'가을이','Fall@naver.com');
insert into 관리자 values(4,'겨울이','Winter@naver.com');

select *
from 관리자;

create table 공급자(
	공급자번호 int not null,
	공급자명 char(20),
	연락처 char(20),

	primary key(공급자번호)
);

insert into 공급자 values(20173555,'진주양','010-2362-9214');

select *
from 공급자;

create table 제품(
	제품번호 char(20) not null,
	제품명 char(20),
	가격 int,
	재고 int,
	관리자번호 int not null,
	공급자번호 int not null,
	공급수량 int,
	공급날짜 char(20),

	primary key(제품번호),
	foreign key(관리자번호) references 관리자(관리자번호),
	foreign key(공급자번호) references 공급자(공급자번호)
);

insert into 제품 values('Win1','겨울상의',10000.0,5,4,20173555,2,'2-18');
insert into 제품 values('Sp1','봄 상의',9000,20,1,20173555,2,'2-19');
insert into 제품 values('Fall3','가을치마',8000,30,3,20173555,2,'2-17');
insert into 제품 values('Fall2','가을바지',9000,42,3,20173555,2,'2-19');
insert into 제품 values('Win5','겨울코트',30000,33,4,20173555,2,'2-14');

select *
from 제품;

create table 주문(
	회원번호 char(20) not null,
	제품번호 char(20) not null,
	주문번호 int,
	주문날짜 char(20),
	주문수량 int,

	primary key(회원번호,제품번호),
	foreign key(회원번호) references 회원(회원번호),
	foreign key(제품번호) references 제품(제품번호)
);

insert into 주문 values('Gong1','Win1',201811191,'11-19',1);
insert into 주문 values('Lee2','Fall2',201811192,'11-19',1);
insert into 주문 values('Gong1','Win5',201811201,'11-20',1);
insert into 주문 values('Pak4','Fall2',201811202,'11-20',1);
insert into 주문 values('Lee2','Win5',201811203,'11-20',2);
insert into 주문 values('Pak4','Win1',201811211,'11-21',1);
insert into 주문 values('Kim3','Sp1',201811221,'11-22',1);

select *
from 주문;

create table 배송업체(
	업체번호 char(20) not null,
	업체명 char(20),
	배송전화번호 char(20),

	primary key(업체번호)
);

insert into 배송업체 values('Cj1','대한','1588-1250');
insert into 배송업체 values('Han2','한진','1588-0010');
insert into 배송업체 values('Coupang3','팡맹','1577-7010');
insert into 배송업체 values('CU4','편의','1577-1280');

select *
from 배송업체;

create table 배송(
	제품번호 char(20) not null,
	업체번호 char(20) not null,
	운송장번호 int,
	배송일시 char(20),

	primary key(제품번호,업체번호),
	foreign key(제품번호) references 제품(제품번호),
	foreign key(업체번호) references 배송업체(업체번호)
);

insert into 배송 values('Win1','Cj1',2018111911,'11-20')
insert into 배송 values('Fall2','Coupang3',2018111923,'11-20');
insert into 배송 values('Win5','Cu4 ',2018112014,'11-21');
insert into 배송 values('Fall2','Cj1',2018112021,'11-21');
insert into 배송 values('Win5','Han2',2018112032,'11-21');
insert into 배송 values('Win1','Han2',2018112112,'11-22');
insert into 배송 values('Sp1','Han2',2018112212,'11-23');

select *
from 배송;

create table 평가(
	회원번호 char(20) not null,
	제품번호 char(20) not null,
	평점 int,

	primary key(회원번호,제품번호),
	foreign key(회원번호) references 회원(회원번호),
	foreign key(제품번호) references 제품(제품번호)
);

insert into 평가 values('Gong1','Win1',4)
insert into 평가 values('Lee2','Fall2',3);
insert into 평가 values('Gong1','Win5',5);
insert into 평가 values('Pak4','Fall2',4);
insert into 평가 values('Lee2','Win5',3);
insert into 평가 values('Pak4','Win1',1);
insert into 평가 values('Kim3','Sp1',2);

select *
from 평가;

/*1.공지영 회원의 전화번호를 검색하시오*/
select 전화번호
from 회원
where 이름='공지영';

/*2.2번 관리자의 이메일을 검색하시오*/
select 관리자이메일
from 관리자
where 관리자번호=2;

/*3.겨울 상의를 구매한 회원들의 이름, 전화번호 그리고 이메일을 검색하시오*/
select 이름,전화번호,이메일
from 회원,주문,제품
where 회원.회원번호=주문.회원번호 and 제품.제품번호=주문.제품번호 and 제품명='겨울상의';

/*4.가장 저렴한 제품의 가격을 검색하시오*/
select 제품명, 가격
from 제품
where 가격 = (
			select min(가격)
			from 제품
			);

/*5.제품들의 평균 가격을 구하시오*/
select avg(가격) as 평균가격
from 제품;

/*6.재고가 10개 이하인 제품을 검색하시오*/
select 제품명,재고
from 제품
where 재고 <= 10;

/*7.제품의 가격을 내림차순으로 검색하시오*/
select 제품명, 가격
from 제품
order by 가격 DESC;

/*8.운송장번호 2018112014에 대하여 업체명과 배송전화번호를 구하시오*/
select 업체명, 배송전화번호
from 배송업체,배송
where 배송업체.업체번호=배송.업체번호 and 운송장번호=2018112014;

/*9.가장 높은 평점을 가진 제품을 검색하시오.*/
select 제품명,평점
from 제품,평가
where 제품.제품번호=평가.제품번호 and 평점 = (
											  select max(평점)
											  from 평가
											  );

/*10.박경리 회원이 구매한 제품의 제품명과 가격을 검색하시오*/
select 제품명, 가격
from 제품,주문,회원
where 제품.제품번호=주문.제품번호 and 회원.회원번호=주문.회원번호 and 이름='박경리';

/*11.주문수량이 2개인 제품의 제품명과 재고를 검색하시오*/
select 제품명,재고
from 제품,주문
where 제품.제품번호=주문.제품번호 and 주문수량=2;

/*12.이옥수 회원의 전화번호를 다음과 같이 변경하시오                                          	     
[010-2525-7777 >> 010-2018-7777]*/
update 회원
set 전화번호='010-2018-7777'
where 이름='이옥수';

select *
from 회원;

/*13.제품번호 SP1의 운송장번호와 업체번호를 검색하시오*/
select 제품번호, 운송장번호, 업체번호
from 배송
where 제품번호='Sp1';

/*14.새로운 회원 박완서에 대한 정보를 추가하시오 				                        
[Pak2,박완서,010-2947-2830,Pak2@naver.com, 서울특별시 강남구 남부순환로 2807]*/
insert into 회원 values('Pak2','박완서','010-2947-2830','Pak2@naver.com', '서울특별시 강남구 남부순환로 2807');

select *
from 회원;

/*15.제품에서 가을치마를 삭제하시오*/
delete
from 제품
where 제품명='가을치마';

select *
from 제품;

/*16.제품에 겨울바지를 추가하시오*/
insert into 제품 values('Win2','겨울바지',11000,11,4,20173555,3,'2-20');

select *
from 제품;

/*17.공급수량이 3인 제품의 제품명과 공급날짜를 검색하시오*/
select 제품명,공급날짜
from 제품,공급자
where 제품.공급자번호=공급자.공급자번호 and 공급수량=3;

/*18.평점을 2이하로 평가한 회원의 회원번호와 평점을 검색하시오*/
select 회원번호,평점
from 평가
where 평점 <= 2;

/*19.주소가 서울특별시인 회원을 검색하시오*/
select 이름, 주소
from 회원
where 주소 LIKE '서울특별시%';

/*20.배송업체 한진의 배송전화번호를 검색하시오*/
select 업체명, 배송전화번호
from 배송업체
where 업체명='한진';


create view 겨울옷구매자 
as select 이름
   from 회원,주문
   where 회원.회원번호=주문.회원번호 and 제품번호 LIKE 'Win%';

   select *
   from 겨울옷구매자
   Group by 이름;
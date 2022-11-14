create database 쇼핑몰;

use 쇼핑몰;

create table 고객(
	고객번호 char(10) not null,
	고객명 char(10) not null,
	주소 char(30),
	primary key(고객번호)
);

insert into 고객 values('C100','이희경','서울서초구');
insert into 고객 values('C200','배기영',null);
insert into 고객 values('C300','성주원','서울종로구');

select *
From 고객;

create table 제품(
	제품번호 char(10) not null,
	제품명 char(10) not null,
	단가 int not null,
	primary key(제품번호)
);

insert into 제품 values('p_001','마우스',20000);
insert into 제품 values('p_002','키보드',30000);
insert into 제품 values('p_003','모니터',300000);

select *
From 제품;

create table 주문(
	고객ID char(10) not null,
	제품ID char(10) not null,
	주문수량 int not null,
	primary key(고객ID,제품ID),
	foreign key(고객ID) references 고객(고객번호),
	foreign key(제품ID) references 제품(제품번호)
);

insert into 주문 values('C100','p_001',10);
insert into 주문 values('C100','p_003',6);
insert into 주문 values('C300','p_002',1);
insert into 주문 values('C200','p_001',20);

select *
From 주문;

 /*1.)이희경 고객이 주문한 제품ID와 주문수량을 검색하시오(조인/중첩)*/
select 제품ID, 주문수량
From 고객,주문
where 주문.고객ID=고객.고객번호 and 고객명='이희경'; /*조인*/

select 제품ID, 주문수량
From 주문
where 고객ID= (
			  select 고객번호
			  From 고객
			  where 고객명='이희경'
			  );
		
/*2.)등록된 고객은 모두 몇 명인지 구하시오.*/
select count(고객명)
From 고객;

/*3.)쇼핑몰의 총 주문 수량을 구하시오*/
select sum(주문수량)
From 주문;

/*4.)제품별 주문 총 주문수량을 구하시오,제품ID*/
select 제품ID,count(주문수량)
From 주문
Group by 제품ID;

/*4-2.)제품별 주뭉 총 주문수량을 구하시오,제품명*/
select 제품명,count(주문수량)
From 주문,제품
where 주문.제품ID=제품.제품번호
Group by 제품명;

/*5.)제품의 평균단가를 구하시오.*/
select '제품의 평균단가',AVG(단가)
From 제품;

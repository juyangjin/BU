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
select '등록고객',count(고객명)
From 고객;

/*3.)쇼핑몰의 총 주문 수량을 구하시오*/
select '총 주문수량',sum(주문수량)
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

/*6.)각 주문에 대하여 주문수량이 5~10인 제품명을 구하고 주문수량의 내림차순 검색하시오.*/
select 고객ID,제품명,주문수량
From 제품,주문
where 주문.제품ID=제품.제품번호 and 주문수량 between 5 and 10
order by 주문수량 desc;

/*7.) 서울에 거주하는 고객의 이름을 오름차순으로 검색하시오.*/
select 고객명,주소
From 고객
where 주소 LIKE '서울%';

/*8.)주소가 입력되지 않은 고객의 이름은?*/
select 고객명,주소
From 고객
where 주소 is null;

/*9.)키보드 또는 모니터를 주문한 고객ID는?*/
select 고객ID,제품명
From 주문,제품
where 주문.제품ID=제품.제품번호 and  제품명='키보드' or 제품명='모니터'
group by 제품명,고객ID;

/*10.)키보드 또는 모니터를 주문한 고객명은?*/
select 고객명
From 고객,주문,제품
where 주문.고객ID=고객.고객번호 and 제품.제품번호=주문.제품ID and 제품명='키보드' or 제품명='모니터'
group by 고객명;

/*11.)이희경 고객이 주문한 제품명을 검색하시오(조인/중첩)*/
/*조인*/
select 고객명,제품명
From 고객,주문,제품
where 고객.고객번호=주문.고객ID and 제품.제품번호=주문.제품ID and 고객명='이희경';
/*중첩, 다수 주문시 =을 IN으로 바꾸어 사용할 것*/
select 제품명
From 제품
where 제품번호 IN (
					select 제품ID
					From 주문
					where 고객ID = (
									select 고객번호
									From 고객
									where 고객명='이희경'
									)
);

/*12.)모니터를 주문한 고객의 이름과 주소를 검색하시오.*/
select 고객명,주소,제품명
From 고객,주문,제품
where 주문.고객ID=고객.고객번호 and 제품.제품번호=주문.제품ID and 제품명='모니터';

/*13.)평균단가보다 높은 제품명은?*/
select 제품명
From 제품
where 단가> (
			 select avg(단가)
			 from 제품
			);


/*14.)P_001제품번호를 무선마우스로 수정하시오*/
update 제품
set 제품명='무선마우스'
where 제품번호='p_001'; 

select * /*확인*/
from 제품;

/*15.)배기영 고객에 대한 정보를 삭제하시오*/
delete 
From 고객 
where 고객명='배기영';

select *
From 고객;
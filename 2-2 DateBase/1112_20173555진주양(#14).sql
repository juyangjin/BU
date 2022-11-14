create database 쇼핑몰;

use 쇼핑몰;


create table 고객(
	고객ID char(20) not null,
	고객명 char(20),
	전화번호 int,
	
	primary key(고객ID)
);

insert into 고객 values('A','에이',23456789);
insert into 고객 values('B','비이',34567890);
insert into 고객 values('C','씨씨',45678901);

select *
from 고객;

create table 세일행사(
	행사ID char(20) not null,
	행사명 char(20),
	기간 char(20),

	primary key(행사ID)
);

insert into 세일행사 values('A1','첫번째행사','11월11일');
insert into 세일행사 values('A2','두번째행사','11월12일');
insert into 세일행사 values('A3','세번째행사','11월13일');

select *
from 세일행사;

create table 공급처(
	 공급처번호 int not null,
	 공급처명 char(20),
	 연락처 int,

	 primary key(공급처번호)
);

insert into 공급처 values(1,'일번공급처',11112345);
insert into 공급처 values(2,'이번공급처',22223456);
insert into 공급처 values(3,'삼번공급처',33334567);

select*
from 공급처;

create table 상품(
	상품번호 int not null,
	상품명 char(20) not null,
	단가 int,
	재고량 int,
	행사ID char(20) not null,
	할인률 char(20),
	공급처번호 int not null,

	primary key(상품번호),
	foreign key(행사ID) references 세일행사(행사ID),
	foreign key(공급처번호) references 공급처(공급처번호)
);

insert into 상품 values (111,'일번상품',2000,20,'A2','30%',3);
insert into 상품 values (222,'이번상품',5000,40,'A3','10%',1);
insert into 상품 values (333,'삼번상품',3000,10,'A1','40%',2);

select *
from 상품;

create table 구입(
	고객ID char(20) not null,
	상품번호 int not null,
	구입수량 int,

	primary key(고객ID,상품번호),
	foreign key(고객ID) references 고객(고객ID),
	foreign key(상품번호) references 상품(상품번호)
);

insert into 구입 values ('A',333,2);
insert into 구입 values ('B',111,5);
insert into 구입 values ('C',222,4);

select *
from 구입;
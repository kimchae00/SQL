#날짜 : 2022/08/24
#이름 : 김채영
#내용 : 제4장 SQL 고급

#실습 4-1
create table `Member`(
        `uid`    varchar(10) primary key,
        `name`   varchar(10) not null, 
        `hp`     char(13) unique not null,
        `pos`    varchar(10) not null,
        `dep`    tinyint, 
        `rdate`  datetime not null

);
create table `Department`(
         `depNo`     tinyint primary key,
         `name`      varchar(10) not null,
         `tel`       char(12) not null
);
create table `Sales` (
         `seq`     int primary key auto_increment,
         `uid`     varchar(10) not null,
         `year`    year not null,
         `month`   tinyint not null,
         `sale`    int not null
);

#실습 4-2
insert into `Member` values ('a101', '박혁거세', '010-1234-1001', '부장', 101, '2020-11-19 11:39:48');
insert into `Member` values ('a102', '김유신', '010-1234-1002', '차장', 101, '2020-11-19 11:39:48');
insert into `Member` values ('a103', '김춘추', '010-1234-1003', '사원', 101, '2020-11-19 11:39:48');
insert into `Member` values ('a104', '장보고', '010-1234-1004', '대리', 102, '2020-11-19 11:39:48');
insert into `Member` values ('a105', '강감찬', '010-1234-1005', '과장', 102, '2020-11-19 11:39:48');
insert into `Member` values ('a106', '이성계', '010-1234-1006', '차장', 103, '2020-11-19 11:39:48');
insert into `Member` values ('a107', '정철', '010-1234-1007', '차장', 103, '2020-11-19 11:39:48');
insert into `Member` values ('a108', '이순신', '010-1234-1008', '부장', 104, '2020-11-19 11:39:48');
insert into `Member` values ('a109', '허균', '010-1234-1009', '부장', 104, '2020-11-19 11:39:48');
insert into `Member` values ('a110', '정약용', '010-1234-1010', '사원', 105, '2020-11-19 11:39:48');
insert into `Member` values ('a111', '박지원', '010-1234-1011', '사원', 105, '2020-11-19 11:39:48');

insert into `Sales` values (1, 'a101', 2018, 1, 98100);
insert into `Sales` values (2, 'a102', 2018, 1, 136000);
insert into `Sales` values (3, 'a103', 2018, 1, 80100);
insert into `Sales` values (4, 'a104', 2018, 1, 78000);
insert into `Sales` values (5, 'a105', 2018, 1, 93000);
insert into `Sales` values (6, 'a101', 2018, 2, 23500);
insert into `Sales` values (7, 'a102', 2018, 2, 126000);
insert into `Sales` values (8, 'a103', 2018, 2, 18500);
insert into `Sales` values (9, 'a105', 2018, 2, 19000);
insert into `Sales` values (10, 'a106', 2018, 2, 53000);
insert into `Sales` values (11, 'a101', 2019, 1, 24000);
insert into `Sales` values (12, 'a102', 2019, 1, 109000);
insert into `Sales` values (13, 'a103', 2019, 1, 101000);
insert into `Sales` values (14, 'a104', 2019, 1, 53500);
insert into `Sales` values (15, 'a107', 2019, 1, 24000);
insert into `Sales` values (16, 'a102', 2019, 2, 160000);
insert into `Sales` values (17, 'a103', 2019, 2, 101000);
insert into `Sales` values (18, 'a104', 2019, 2, 43000);
insert into `Sales` values (19, 'a105', 2019, 2, 24000);
insert into `Sales` values (20, 'a106', 2019, 2, 109000);
insert into `Sales` values (21, 'a102', 2020, 1, 201000);
insert into `Sales` values (22, 'a104', 2020, 1, 63000);
insert into `Sales` values (23, 'a105', 2020, 1, 74000);
insert into `Sales` values (24, 'a106', 2020, 1, 122000);
insert into `Sales` values (25, 'a107', 2020, 1, 111000);
insert into `Sales` values (26, 'a102', 2020, 2, 120000);
insert into `Sales` values (27, 'a103', 2020, 2, 93000);
insert into `Sales` values (28, 'a104', 2020, 2, 84000);
insert into `Sales` values (29, 'a105', 2020, 2, 180000);
insert into `Sales` values (30, 'a108', 2020, 2, 76000);

insert into `Department` values (101,'영업1부','051-512-1001');
insert into `Department` values (102,'영업2부','051-512-1002');
insert into `Department` values (103,'영업3부','051-512-1003');
insert into `Department` values (104,'영업4부','051-512-1004');
insert into `Department` values (105,'영업5부','051-512-1005');
insert into `Department` values (106,'영업지원부','051-512-1006');
insert into `Department` values (107,'인사부','051-512-1007');

#실습 4-3
select * from `Member` where `name`='김유신';
select * from `Member` where `pos`='차장' and `dep`=101;
select * from `Member` where `pos`='차장' or `dep`=101;
select * from `Member` where `name` != '김춘추';
select * from `Member` where `name` <> '김춘추';
select * from `Member` where `pos`='사원' or `pos`='대리'; 
select * from `Member` where `pos` in('사원', '대리');
select * from `Member` where `dep` in(101, 102, 103);
select * from `Member` where `name` like '%신';
select * from `Member` where `name` like '김%신';
select * from `Member` where `name` like '김__';
select * from `Member` where `name` like '_성_';
select * from `Member` where `name` like '정_';

select * from `Sales` where `sale` > 50000;
select * from `Sales` where `sale` >= 50000 and `sale` < 100000 and `month` = 1;
select * from `Sales` where `sale`;


#실습 4-4
select * from `Sales` order by `sale`;
select * from `Sales` order by `sale` asc;
select * from `Sales` order by `sale` desc; 
select * from `Member` order by `name`;
select * from `Member` order by `name` desc;
select * from `Member` order by `rdate` asc;
select * from `Sales` where `sale` > 50000 order by `sale` desc;
select * from `sales` where `sale` > 50000 order by `year`, `month`, `sale` desc;

#실습 4-5
select * from `sales` limit 3;
select * from `sales` limit 0, 3;
select * from `sales` limit 1, 2;
select * from `sales` limit 5, 3;
select * from `sales` order by `sale` desc limit 3, 5;
select * from `sales` where `sale` > 50000 order by `sale` desc limit 3;
select * from `sales` where `sale` > 50000 
order by `year` desc, `month`, `sale` desc
limit 5;

#실습 4-6
select sum(`sale`) as `합계` from `sales`;
select avg(`sale`) as `평균` from `sales`;
select max(`sale`) as `최대값` from `sales`;
select min(`sale`) as `최소값` from `sales`;
select count(`sale`) as `갯수` from `sales`;
select count(*) as `갯수` from `sales`;

select substring(`hp`, 10, 4) as `전화번호 끝자리` from `member`;
insert into `member` values ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());

#실습 4-7
select sum(`sale`) as `2018년 1월 매출 총합`  
from `sales` where `year`=2018  and `month`=1;

#실습 4-8
select sum(`sale`) as `총합`,
	   avg(`sale`) as `평균`
from `sales` where `year`=2019 and `month`=2 and `sale`>=50000;

#실습 4-9
select min(`sale`) as `최저`,
       max(`sale`) as `최고`
from `sales` where `year` in(2020);

#실습 4-10
select * from `sales` group by `uid`;
select * from `sales` group by `year`;
select * from `sales` group by `uid`, `year`;
select `uid`, count(`seq`) as `건수` from `sales` group by `uid`;
select `uid`, sum(`sale`) as `합계` from `sales` group by `uid`;
select `uid`, avg(`sale`) as `평균` from `sales`	group by `uid`;

select `uid`, `year`, sum(`sale`) as `합계`
from `sales` group by `uid`, `year`;

select `uid`, `year`, sum(`sale`) as `합계`
from `sales`
group by `uid`, `year`
order by `year` asc, `합계` desc;


select `uid`, `year`, sum(`sale`) as `합계`
from `sales`
where `sale`>=50000
group by `uid`, `year`
order by `합계` desc limit 3;

#실습 4-11
select `uid`, sum(`sale`) as `합계` 
from `sales` group by `uid`
having `합계` >= 200000;

select `uid`, `year`, sum(`sale`) as `합계`
from `sales` where `sale` >= 100000
group by `uid`, `year`
having `합계` >= 200000
order by `합계` desc;

#실습 4-12
create table `Sales2` like `sales`;
insert into `sales2` select * from `sales`;
update `sales2` set `year` = `year` +3;

select * from `sales` union select * from `sales2`;
(select * from `sales`) union (select * from `sales2`);
select `uid`, `year`, `sale` from `sales` 
union select `uid`, `year`, `sale` from `sales2`;

select `uid`, `year`, sum(`sale`) as `합계` from `sales`
group by `uid`, `year` 
union select `uid`, `year`, sum(`sale`) as `합계` from `sales2`
group by `uid`, `year`
order by `year` asc, `합계` desc;

#실습 4-13
select * from `sales` inner join `member` on sales.uid = member.uid;
select * from `member` inner join `department` on member.dep = department.depNo;

select * from `sales` as a 
join `member` as b
on a.uid = b.uid; 

select * from `member` as a
join `department` as b on a.dep = b.depNo;

select * from `sales` as a, 
`member` as b where a.uid = b.uid;

select * from `member` as a,
`department` as b where a.dep = b.depNo;

select `seq`, a.`uid`, `sale`, `name`, `pos`
from `sales` as a
join `member` as b
on a.uid = b.uid;

select `seq`, a.`uid`, `sale`, `name`, `pos`
from `sales` as a
join `member` as b
using(`uid`);

select a.seq, a.`uid`, `sale`, `name`, `pos`
from `sales` as a
join `member` as b
on a.uid = b.uid where `sale` >= 100000;

select a.seq, a.uid, b.name, b.pos, `year`, sum(`sale`) as `합계`
from `sales` as a join `member` as b on a.uid = b.uid
group by a.uid, a.year having `합계` >= 100000
order by a.year asc, `합계` desc; 

select * from `sales` as a
join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depNo;

select a.seq, a.uid, a.sale, b.name, b.pos, c.name 
from `sales` as a join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depNo;

select a.seq, a.uid, a.sale, b.name, b.pos, c.name
from `sales` as a join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depNo
where `sale` > 100000
order by `sale` desc;

#실습 4-14
select * from `sales` as a
left join `member` as b on a.uid = b.uid;

select * from `sales` as a
right join `member` as b on a.uid = b.uid;

select a.seq, a.uid, `sale`, `name`, `pos` 
from `sales` as a 
left join `member` as b using(uid);

select a.seq, a.uid, `sale`, `name`, `pos` 
from `sales` as a
right join `member` as b using(uid);

#실습 4-15
select a.uid, a.name, a.pos, b.name from `member` as a
join `department` as b on a.dep = b.depNo;

#실습 4-16
select sum(`sale`) as `김유신 2019 매출합`
from `sales` as a 
join `member` as b on a.uid = b.uid 
where `name`='김유신' and `year`=2019;

#실습 4-17
select 
b.name, c.name, b.pos,  a.year,  
sum(`sale`) as `매출합` from `sales` as a
join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depNo
where `year`=2019 and `sale`>=50000
group by a.`uid`
having `매출합` >= 100000 
order by `매출합` desc;


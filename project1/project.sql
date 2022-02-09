create table product(proNum varchar2(8) primary key, proName varchar2(40) not null, proPrice number(8) not null, proCnt number(4));

alter table product add proImg varchar2(100);
alter table product modify proname varchar2(60);

insert into PRODUCT values('A001','프라다 리에디션 리나일론 호보백',1160000,8,'D:/mmj/jsp/mproject/WebContent/img/item1.jpg')
insert into PRODUCT values('A002','사피아노 가죽 미니 엔벨로프백',1750000,9,'D:/mmj/jsp/mproject/WebContent/img/item2.jpg')
insert into PRODUCT values('A003','사피아노 가죽 미니 숄더백',1650000,11,'D:/mmj/jsp/mproject/WebContent/img/item3.jpg')
insert into PRODUCT values('A004','소형 가죽 탑 핸들백',2550000,12,'D:/mmj/jsp/mproject/WebContent/img/item4.jpg')
insert into PRODUCT values('A005','메탈릭 가죽 미니백',4750000,7,'D:/mmj/jsp/mproject/WebContent/img/item5.jpg')
insert into PRODUCT values('A006','프라다 다이아그램 가죽 미디엄 숄더백',1050000,5,'D:/mmj/jsp/mproject/WebContent/img/item6.jpg')
insert into PRODUCT values('A007','프라다 리에디션 리나일론 호보백',750000,6,'D:/mmj/jsp/mproject/WebContent/img/item7.jpg')
insert into PRODUCT values('A008','프라다 심볼 사피아노 가죽 백',2000000,8,'D:/mmj/jsp/mproject/WebContent/img/item8.jpg')
insert into PRODUCT values('A009','백',350000,13,'D:/mmj/jsp/mproject/WebContent/img/item9.jpg')

create table notice(idx number(6), n_id varchar2(8) primary key, tit varchar2(100) not null, con varchar2(500) not null, aut varchar2(30),rdate date);
create sequence bb start with 1 increment by 1 maxvalue 999999 cycle nocache;
insert into notice(idx, n_id, tit, con, aut, rdate) values (bb.NEXTVAL, 'A01', '김코탱', '게시글 내용', '김코탱', '2021-11-16');
insert into notice(idx, n_id, tit, con, aut, rdate) values (bb.NEXTVAL, 'A02', '게시글 제목', '게시글 내용', '김코투', '2021-11-16');

alter table notice add visited number(5);

insert into notice(idx, n_id, tit, con, aut, rdate) values (bb.NEXTVAL, 'A03', '게시글 제목', '게시글 내용', '김코삼', sysdate);
insert into notice(idx, n_id, tit, con, aut, rdate) values (bb.NEXTVAL, 'A04', '게시글 제목', '게시글 내용', '김코포', sysdate);

create table member(userid varchar2(10) primary key, passwd varchar2(20) not null, birth number(4), regdate date, name varchar2(20), point number(4), visited number(4), yesno varchar2(3), zipcode number(20), address1 varchar2(100), address2 varchar2(140));
insert into member values('lee','2222','2001',sysdate,'이소룡',100,10,'yes','','','');
insert into member values('admin','1234','2021',sysdate,'관리자',100,1,'yes','','','');
insert into member values('sujinego','sj1235','1994',sysdate,'이수진',100,1,'yes','6035','서울 강남구 가로수길 5','');
insert into member values('mtm159','asdasd123','2000',sysdate,'명코탕',100,1,'yes','1913','서울 노원구 마들로 31','');






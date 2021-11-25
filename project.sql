select * from member
insert into mem (m_id,m_pw,m_name,m_email,m_tel,m_zip,m_addr1,m_addr2,regdate) values('admin','1234','관리자','admin@naver.com','null','null','null','null',sysdate)
alter table mem add name varchar2(20)
select * from product
select * from notice
delete from PRODUCT where pronum = 'A003'
delete from PRODUCT where pronum = 'A004'
delete from PRODUCT where pronum = 'A005'
delete from PRODUCT where pronum = 'A006'
delete from PRODUCT where pronum = 'A007'
delete from PRODUCT where pronum = 'A008'
delete from PRODUCT where pronum = 'A1001'
insert into PRODUCT values('A001','프라다 리에디션 리나일론 호보백',1160000,8,'D:/mmj/jsp/mproject/WebContent/img/item1.jpg')
insert into PRODUCT values('A002','사피아노 가죽 미니 엔벨로프백',1750000,9,'D:/mmj/jsp/mproject/WebContent/img/item2.jpg')
insert into PRODUCT values('A003','사피아노 가죽 미니 숄더백',1650000,11,'D:/mmj/jsp/mproject/WebContent/img/item3.jpg')
insert into PRODUCT values('A004','소형 가죽 탑 핸들백',2550000,12,'D:/mmj/jsp/mproject/WebContent/img/item4.jpg')
insert into PRODUCT values('A005','메탈릭 가죽 미니백',4750000,7,'D:/mmj/jsp/mproject/WebContent/img/item5.jpg')
insert into PRODUCT values('A006','프라다 다이아그램 가죽 미디엄 숄더백',1050000,5,'D:/mmj/jsp/mproject/WebContent/img/item6.jpg')
insert into PRODUCT values('A007','프라다 리에디션 리나일론 호보백',750000,6,'D:/mmj/jsp/mproject/WebContent/img/item7.jpg')
insert into PRODUCT values('A008','프라다 심볼 사피아노 가죽 백',2000000,8,'D:/mmj/jsp/mproject/WebContent/img/item8.jpg')
insert into PRODUCT values('A009','백',350000,13,'D:/mmj/jsp/mproject/WebContent/img/item9.jpg')
alter table product modify proname varchar2(60);
alter table member rename column 
alter table member add zipcode number(20);
alter table member add address1 varchar2(100);
alter table member add address2 varchar2(140);
select * from member
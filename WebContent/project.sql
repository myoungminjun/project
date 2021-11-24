select * from mem
insert into mem (m_id,m_pw,m_name,m_email,m_tel,m_zip,m_addr1,m_addr2,regdate) values('admin','1234','관리자','admin@naver.com','null','null','null','null',sysdate)
alter table mem add name varchar2(20)
select * from product
select * from notice

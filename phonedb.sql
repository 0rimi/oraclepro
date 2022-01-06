/*
--계정생성
create user phone identified by phonedb; 
grant resource, connect to phonedb;
*/


--테이블 삭제
drop table person;

--시퀀스 삭제
drop sequence seq_person_id;

--테이블 생성
create table person(
    person_id	number(5),
    name   	varchar2(30)     NOT NULL,
    hp		varchar2(30),
    company	varchar2(30),
    PRIMARY KEY(person_id)	
);

--시퀀스 생성
CREATE SEQUENCE seq_person_id
INCREMENT BY 1 
START WITH 1 ;

--insert문
insert into person values(seq_person_id.nextval, '최수빈', '010-0304-1205', '02-0304-1205');
insert into person values(seq_person_id.nextval, '최연준', '010-0304-0913', '02-0304-0913');
insert into person values(seq_person_id.nextval, '최범규', '010-0304-0313', '053-0304-0313');
insert into person values(seq_person_id.nextval, '강태현', '010-0304-0205', '02-0304-0205');
insert into person values(seq_person_id.nextval, '휴닝카이', '010-0304-0814', '02-0304-0814');

commit;


--select문
select  person_id,
        name,
        hp,
        company
from person;
  

--update문
update person 
set hp = '010-9999-9999',
    company = '02-9999-9999'
where person_id = 4;


--delete문
delete from person
where person_id = 5;

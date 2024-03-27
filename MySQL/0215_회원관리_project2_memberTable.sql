create table member (
	memberno int auto_increment primary key,
    id varchar(20)  unique,
    pw varchar(50), 
    name varchar(20)
);

insert into member (id, pw, name) values ('admin', 'admin@korea.com', '관리자');
insert into member (id, pw, name) values ('hong1', 'hong1@korea.com', '홍길동');

drop table member;
commit;
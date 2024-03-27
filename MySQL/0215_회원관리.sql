create table member (
    id varchar(20)  primary key,
    email varchar(50), 
    name varchar(20)
);

insert into member values ('admin', 'admin@korea.com', '관리자');
insert into member values ('hong1', 'hong1@korea.com', '홍길동');

drop table member;
commit;
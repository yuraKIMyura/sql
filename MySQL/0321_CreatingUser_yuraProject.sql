create user'yura' @'localhost' identified by 'yura';
create database yuraProject character set=utf8mb4;
grant all privileges on yuraProject.* to 'yura'@'localhost';
create table yuraProject.MEMBER(
ID int auto_increment primary key,
NAME varchar(100),
AGE numeric(3),
EMAIL varchar(300),
MEMO text,
unique (EMAIL)
) engine=InnoDB character set = utf8mb4;



insert into member(name, age, email, memo) values ("홍길동", 33, "hong@korea.com", "");
insert into member(name, age, email, memo) values ("김하나", 25, "kim@korea.com", "김의 메모");
insert into member(name, age, email, memo) values ("김하나", 25, "hana@korea.com", "김의 메모");



drop table yuraProject.Member;

delete from mysql.user where User ='yura';
delete from mysql.db where User ='yura';
flush privileges;
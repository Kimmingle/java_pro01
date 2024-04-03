drop table members;

create table traffic(tno int primary key, 
ttype varchar(20) not null,
no varchar(10),
route varchar(50),
coment varchar(1000));

create table guide(pcode int primary key, 
pname varchar(20) not null,
ptype varchar(50) not null,
paddr varchar(200) not null,
ptel varchar(50) ,
pgps varchar(50),
pcoment varchar(80),
premark varchar(50)
);

create sequence tseq start with 1 increment by 1;

create table notice(no int primary key, 
title varchar(20) not null,
content varchar(50) not null,
resdate varchar(50) not null,
visited varchar(50));

create table qna(no int primary key, 
plevel varchar(20) not null,
pno varchar(50) not null,
title varchar(200) not null,
content varchar(50) ,
resdate varchar(50),
visited varchar(80),
aid varchar(50)
);

create table data(no int primary key, 
title varchar(20) not null,
content varchar(50) not null,
datafile varchar(50) not null,
resdate varchar(50) not null,
visited varchar(50));

create table members(id varchar(50) primary key, 
pw varchar(20) not null,
name varchar(50) not null,
age varchar(50) not null,
email varchar(50),
visited varchar(50)
);

create table qna(no int primary key, 
plevel varchar(20) not null,
pno varchar(50) not null,
title varchar(50) not null,
content varchar(50),
resdate varchar(50),
visited varchar(50),
aid varchar(50),
foreign key (aid) references members(id));


select * from member;
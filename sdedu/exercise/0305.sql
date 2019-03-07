create table 사원(
  사번 integer,
  이름 char(10) not null,
  입사일 date not null,
  호봉 integer,
  휴대폰 char(13),
  primary key(사번),
  constraint 사원_unique_key unique(휴대폰)
);

insert into 사원 values(1101,  '김정아', '1995-03-01', 20, '010-3452-0022');
insert into 사원 values(1102,  '이기원', '1997-01-01', 18, '010-3478-1287');
insert into 사원 values(1103,  '박영종', '2005-09-01', 15, '010-3214-1234');

create table 부서(
  부서번호 integer,
  부서명 char(6) not null,
  부서장 integer,
  사무실 char(4),
  전화번호 char(12),
  primary key(부서번호),
  unique(부서명, 사무실, 전화번호)
);

insert into 부서 values(100,  '기획', 1101,'A402', '02-233-1233');
insert into 부서 values(200,  '비서', 1102,'A501', '02-455-1221');
insert into 부서 values(300,  '총무', 1201,'B311', '041-567-3454');

create table 근무(
  사원번호 integer,
  부서번호 integer,
  직책 char(8),
  primary key(사원번호, 부서번호),
  foreign key (사원번호) references 사원 (사번)
    on delete cascade,
  foreign key (부서번호) references 부서 (부서번호)
    on delete cascade
);

insert into 근무 values(1101, 100,'부장');
  insert into 근무 values(1102, 200,'과장');
    insert into 근무 values(1103, 300,'대리');

create table student(
  id int not null,
  name varchar(255),
  address varchar(255),
  telephone varchar(255),
  email varchar(255),
  studentNo int,
  primary key(id)
);

create table subject(
  id int not null,
  name varchar(255),
  primary key(id)
);

create table score(
  id int not null,
  grade int,
  student_id int,
  subject_id int,
  primary key(id),
  constraint fk_score_student foreign key(student_id) references student(id),
  constraint fk_score_subject foreign key(subject_id) references subject(id)
);

insert into student(name, address, telephone, email, studentNo) values('Sam', 'Seoul', '123-4567', 'a@b.com', 1000);
insert into student(name, address, telephone, email, studentNo) values('Tom', 'Busan', '111-4567', 'b@b.com', 2000);
insert into student(name, address, telephone, email, studentNo) values('Kim', 'Inchon', '222-4567', 'c@b.com', 3000);
insert into student(name, address, telephone, email, studentNo) values('Key', 'Inchon', '252-4567', 'd@b.com', 4000);

insert into subject(name) values('Lang');
insert into subject(name) values('Math');
insert into subject(name) values('Eng');

insert into score(grade, student_id, subject_id) values(100, 1, 1);
insert into score(grade, student_id, subject_id) values(95, 1, 2);
insert into score(grade, student_id, subject_id) values(90, 2, 3);
insert into score(grade, student_id, subject_id) values(90, 2, 1);

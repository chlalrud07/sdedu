create table dept1(
  deptno number(2) constraint pk_dept1 primary key,
  dname varchar2(14),
  loc varchar2(13)
);

create table emp1(
  empno number(4) constraint pk_emp1 primary key,
  ename varchar2(10),
  job varchar2(9),
  mgr number(4),
  hiredate date,
  sal number(7,2),
  comm number(7,2),
  deptno number(2) constraint fk_deptno01 references dept1
);

create table salgrade1(
  grade number,
  losal number,
  hisal number
);

///// mysql

create table dept(
  deptno decimal(2),
  dname varchar(14),
  loc varchar(13),
  constraint pk_dept primary key (deptno)
);

create table emp(
  empno decimal(4),
  ename varchar(10),
  job varchar(9),
  mgr decimal(4),
  hiredate date,
  sal decimal(7,2),
  comm decimal(7,2),
  deptno decimal(2),
  constraint pk_emp primary key(empno),
  constraint fk_deptno foreign key(deptno) references dept(deptno)
);

create table salgrade(
  grade tinyint,
  losal smallint,
  hisal smallint
);

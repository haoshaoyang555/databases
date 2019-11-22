--mysql 查询练习
1.学生表（student）
create table students(
  stu_id varchar(20) primary key,      
  stu_name varchar(20) not null,
  stu_sex varchar(10) not null,
  stu_born date not null,
  stu_class varchar(20) not null
   );
--学号
--姓名
--性别
--出生年月日
--所在班级

2.课程表(course)
create table courses(
   cour_id varchar(20) primary key,
   cour_name varchar(20) not null,
   cour_teacher_id varchar(20) not null,
   foreign key(cour_teacher_id) references teachers(teach_id)
);
--课程号
--课程名称
--教师编号

3.成绩表(Score)
create table scores(
  score_stu_id varchar(20) not null,
  score_cour_id varchar(20) not null,
  score_degree varchar(20) not null,
  foreign key(score_stu_id) references students(stu_id),
  foreign key(score_cour_id) references courses(cour_id),
  primary key(score_stu_id,score_cour_id)
);
--学号
--课程号
--成绩

4.教师表(Teacher)
create table teachers(
 teach_id varchar(20) primary key,
 teach_name varchar(20) not null,
 teach_sex varchar(10) not null,
 teach_born date not null,
 teach_professor varchar(20) not null,
 teach_department varchar(20) not null
);
--教师编号
--教师名字
--教师性别
--出生年月日
--职称
--所在部门

1.查询某表的所有记录

select *from 表名

2.查询某表记录中的某一列

select 列名，列名， from 表名 

3.查询某表中不重复的某一列

select 列名 from 表名 ;--发生重复

select distinct 列名 from 表名;
 distinct 参数排重


4.查询某表中的某列的区间

 select *from 表名 where 列名 between 60 and 100 ;

--用运算符表示
 select *from 表名 where 列名 between >60 and 列名 <80;


5.查询表中某列或者的特定元素关系的记录
 
表示或者关系的查询 in 
select *from 表名 where 列名 in(X,X,X);

6.查询某表中 某列特定元素的记录

or 表示或者关系

select *from 表名 where 列名="xxx" or 列名/其他列名="XXX";

7.以class降序查询某表中的记录

--升序，降序

select * from 表名 order by 某一列名;

默认生序 asc 也是升序
后面添加desc 成为降序

select *from 表名 order by 某一列名 desc;

8.以某一列升序为主，某一列降序查询记录（主要针对于相同数据的情况）

select * from 表名 order by 某一列名 asc,列名 desc；

9.查询某一列的数据-》统计

select count(*) from 表名 where 列名="XXX";

10.查询某表中最值问题;
比如查询某表中最高分的学分和学号
select 学号列，学分列 from 表名 where 分数列名(select max(分数列名) from 表名)

-1.首先找到最高分-》 select max(分数列) from 表名
-2.再找最高分的对应的数据列

排序的做法:
select 列名，列名 from 表名 order by 某一列名 desc limit 0,1;//0,1位置 
--limit 第一个数字表示从哪开始，第二个数字表示从那结束也就是多少条数据
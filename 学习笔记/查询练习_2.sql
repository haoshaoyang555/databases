10.查询每门课平均成绩
avg()---
select avg(成绩列名) from 表名 where 列名=“XXX”；
---在一个sql语句中写
group by 分组
select 列名，avg(列名) from 表名 group by 列名；

12。查询某表中至少有两名学生选修并且以3为开头的课程平均数；

select 列名 from 表名 group by 列名(和之前列名一样);
having count(cno)>=2 and 列名 like '3%';
--like 模糊查询 3% 意思是查找以3开头

13.查询范围的列；

select 列名，列名 from 表名
where 列名 >70 and 列名<100
或者
where 列名 between 70 and 100;

///  多表=查询
14.查询某表中的某一些列

select 列名 ，列名 from 表名；

select 列名，列名，列名 from 表名，表名
where 表名.列名=表名.列名
--会将两个表中有些信息中和

15。查询某一表中的信息列
select 列名，列名，列名 from 表名，表名
where 表名.列名=表名.列名 相等的字段查找

16.三表关联查询
列1-》表1；
列2-〉表2；
列三-》表3；
select 列1，列2，列3 from 表1，表2，表3
where 表1.列=表2.列 and 表3.列=表2.列 //其中列是三个表中共有的字段
//通过相同字段联系起来



17.查询某班学生的平均成绩
select *from student where class="某班";

select 
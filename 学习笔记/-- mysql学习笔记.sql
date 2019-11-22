-- mysql学习笔记
--关系型数据库
数据表简单操作

-- 使用终端操作

1.如何登陆数据库
 终端进入
/usr/local/mysql/bin/mysql -u root -p
 hsy990617
1.mysql退出三种方法：
mysql > exit;
mysql > quit;
mysql > \q;

2.如何查询数据库服务器所有的的数据库？


 mysql>show databases;
3.如何选中某一数据库进行操作？
  首先加入 use 数据库名字
  然后输入语句 select *from 
3。显示数据库中的数据表？
  show tables;
4.如何退出数据库?
 exit;
5.如何在数据库服务器创建数据库？
 create database tex（数据库名字）；
6，如何创建一个数据表？
 CREATE TABLE pet(表的名字）
 (name VARCHAR(20),//字符串类型
  owner VARCHAR(20),
  sex CHAR(1),
  birth DATE,//日期类型
  death DATE);

6-1.如何查看数据表性质？
 describe pet;(数据表名字)
 如何查看表中的记录
select *from pet;
7.如何往数据表中添加数据记录？
执行语句
 INSRET INTO  pet
 VALUES ('xx','xx','xx','x',‘1421-112’,NULL);

---MYSQL常用的数据类型
  数值类型
  日期类型
  字符串类型

数据类型：
  日期选择按照格式
  数值与字符串按照大小

如何删除数据
delete from (表名) where name='加入删除名字';
如何修改数据
update(表名) set name="新名字“ where owner ='';

mysql建表约束
--主键约束（输入约束值不能为空！！）

 它能够唯一确定一张表中的一条记录，也就是我们通过给某个字段添加约束
，就可以使得该字段不中粗且不为空。

  ---联合主键(主键值加起来不重复就行，可以为空)
   create table uesr(
    id int,
    name varchar(20),
    passord varchar(20),
    primary key(id,name)
    );

  ---自增约束
   --添加语句（auto_increment）放在表中某一单元上,


--如果创建表的时候，忘记创建主键约束？
   加入语句 alter table 表名 add primary key(某一单元)；
--外键约束
--如何删除主键
 alter table 表名 drop primary key;
--修改主键
alter table 表名 modify 单元 int primary key;


-唯一约束
-约束修饰的单元的值不能重复
创建后加入语句 alter table user add unique(单元);
创建时添加
  create table uesr(
    id int (unique)也可以,
    name varchar(20)
    unique(name,id,,,)加入多个单元起来不重复就行！！
    ;
如何删除约束
alter table user drop index (单元);
--modify 添加 alter table user modify 单元+数据类型 
 + unique/primary key;

--非空约束
--修饰的单元不能为空 not NULL
create table use(
  id int,
  name varchar(20) not NULL --添加数据时这一项不能为空！
);

--默认约束
--当插入单元值时，如果没有传值!(可以加值），就默认填入给定的值
create table user(
   id int,
   name varchar(20),
   age int default 10
);

--外键约束(两个表之间的关系)
--涉及到两个表：父表，子表
--主表，副表；
  ---班级表
create table classe（
  id int primary key,
  name varchar(20)
    ）;
  ---学生表
create table student(
  id int primary key,
  name varchar(20)
  class_id int,
  foreign key(class_id) references classes(id) 
);
 外键的作用
  主标中的单元如果被副表绑定，副表中不能出现主表中没有的
  并且主表中若被引用，就不能删除，等操作！

  ！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！
《——————————————————————————————————————————————————————————————》



----数据表设计
数据库的设计范式
  1.第一范式
  数据表中的所有字段都是不可分割的原子值
--使用可视化操作
--
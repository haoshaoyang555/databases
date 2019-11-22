--数据库的设计范式
1.
--1.第一范式 
--1.NF
--数据表中的所有字段都是不可分割的原子值？
create table student
	(
     id int primary key,
     name varchar(20),
     address varchar(30)
		);
 --插入语句
insert into student 
values(1,'张三','陕西西安长安区郭社街道XX号');
 	)
--字段值还可以拆分，就不能满足第一范式！
--范式设计的越详细，对有些操作可能更好，但不一定非的满足什么
values(1,'张三','陕西','西安','长安区','郭社街道XX号');
 	)
--设计范式根据实际情况出发！！！！


2.
--2.第二范式
---必须满足第一范式的前提下，第二范式要求，
--每一列都必须完全依赖于主键。
--如果要出现不完全依赖，只可能发生在联合主键的情况下！！！。

---设计一个订单表

create table myordoe
	(
		product_id int,
		customer int,
		product_name varchar(20),
		customer_name varchar(20),
		primary key(product_id,costomer_id)
		);
--问题？
--除主键外以外的其他列，只依赖于与主键的部分字段。
--拆表
3.第三范式
--必须先满足第二范式
--除主键列的的其他列，不能有传递关系。















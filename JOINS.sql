-- create first table

create table product_join (
    product_id number,
    product_name varchar2(30),
    category_id number
);

-- create second table

create table category_join (
    category_id number,
    category_name varchar2(30)
);

-- insert records into product table

insert into product_join values (101, 'laptop', 1);
insert into product_join values (102, 'keyboard', 2);
insert into product_join values (103, 'mobile', 3);
insert into product_join values (104, 'printer', 4);

-- insert records into category table

insert into category_join values (1, 'computer');
insert into category_join values (2, 'accessories');
insert into category_join values (3, 'electronics');
insert into category_join values (5, 'software');

-- display tables

select * from product_join;
select * from category_join;

-- inner join

select product_join.product_id,
       product_join.product_name,
       category_join.category_name
from product_join
inner join category_join
on product_join.category_id = category_join.category_id;

-- left outer join

select product_join.product_id,
       product_join.product_name,
       category_join.category_name
from product_join
left outer join category_join
on product_join.category_id = category_join.category_id;

-- right outer join

select product_join.product_id,
       product_join.product_name,
       category_join.category_name
from product_join
right outer join category_join
on product_join.category_id = category_join.category_id;

-- cross join

select product_join.product_name,
       category_join.category_name
from product_join
cross join category_join;

-- natural join

select product_id,
       product_name,
       category_id,
       category_name
from product_join
natural join category_join;

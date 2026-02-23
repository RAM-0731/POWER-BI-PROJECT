select * from pro1;
set sql_safe_updates=0;
update pro1 set customername="unknown" where customername is null or customername="";
update pro1 set quantity=0 where quantity='';
update pro1 set quantity=abs(quantity);
desc pro1;
select* from pro1;
update pro1 set customername=trim(customername);
update pro1 set paymentmethod='Cod' where paymentmethod="";
use project;
update pro1 set gender = upper(gender);
set sql_safe_updates=0;
update pro1 set status="Returned" where status="pending";
select * from pro1;

update pro1 set customername=concat(upper(left(customername,1)),lower(substring(customername,2)));
update pro1 set salesrep=concat(upper(left(salesrep,1)),lower(substring(salesrep,2)));

update pro1 set orderdate=
case 
when orderdate="january 13 2023" then orderdate="2023-01-13"
when orderdate="05-01-2023" then orderdate="2023-01-05"
end;

select * from pro1;
alter table pro1 add column order_date date after gender;

alter table pro1 drop orderdate;

alter table pro1 drop order_date;

set sql_safe_updates=0;

delete from pro1 where customername is null and orderid is null;
select * from pro1;
update pro1 set order_date=date_add("2021-01-01",interval floor(rand()*1095)day) where order_date is null;

update pro1 set region = upper(region);

update pro1 set category=concat(upper(left(category,1)),lower(substring(category,2)));
update pro1 set paymentmethod=concat(upper(left(paymentmethod,1)),lower(substring(paymentmethod,2)));
update pro1 set region =concat(upper(left(category,1)),lower(substring(region,2)));

update pro1 set region="West" where region="west";
update pro1 set region="North" where region="eorth";
update pro1 set region="East" where region="cast";
update pro1 set region="South" where region="aouth";

select * from pro1;

  


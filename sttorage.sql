


-- select count(*) as empno from actor;


-- select now(),curdate(),curtime(),year(now()),year(curdate());-- 

-- Select now(),Month(now()),monthname(now());

-- select now(),day(now()),dayname(now()),dayofmonth(now()),dayofweek(now()),dayofyear(now());

-- create table person (personId int not null auto_increment
-- ,fname varchar(50) default null
-- ,lname varchar(50) default null
-- ,dob date default null
-- ,primary key(personId));

 -- insert into person(fname,lname,dob)
--  values('Shah','Shaikh','1998-11-03'),
--  ('Shanu','Shai','1997-12-03');

-- select dob AS Birthdays
-- ,curdate() as toady
-- ,timestampdiff(year,dob,curdate()) as age
-- from person;

 
-- delimiter //
-- create function addCommision1(sal decimal(7,2), comm decimal(7,2))
-- returns int
-- DETERMINISTIC
-- begin
-- 	DECLARE RESULT int;
--     SET RESULT=0;
-- 	if (comm is null or comm = 0) and sal<5000 then
-- 		SET RESULT=sal+500;
-- 	elseif comm<500 then
-- 		SET RESULT=sal+200+ifnull(comm,0);
-- 	else
-- 		SET RESULT=sal+ifNull(comm,0);
-- 	end if;
--     
--     return RESULT;
--     
-- end;//
-- delimiter ;

-- select empno,sal,comm,addcommision1(sal,comm) from emp ;
 
 delimiter //
create procedure prc_totalSalary(in sal decimal(7,2),in comm decimal(7,2),out totalsalary decimal(7,2))
begin
	set totalsalary=sal+ifnull(comm,0);

end;// 
delimiter ;

-- drop procedure prc_totalsalary;
call prc_totalSalary(5000,300,@totalsalary); 



 
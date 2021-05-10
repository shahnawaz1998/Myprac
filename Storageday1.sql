-- INSERT INTO EMP VALUES   (7839, 'KING',   'PRESIDENT', NULL,    str_to_date('11/17/1981','%m/%d/%Y') , 5000, NULL, null);   
-- INSERT INTO EMP VALUES   (7566, 'JONES',  'MANAGER',   		7839, str_to_date('04/2/1981'	,'%m/%d/%Y'),  2975, NULL, 20);
-- INSERT INTO EMP VALUES   (7698, 'BLAKE',  'MANAGER',   		7839, str_to_date('05/01/1981'	,'%m/%d/%Y'),  2850, NULL, 30);
-- INSERT INTO EMP VALUES   (7782, 'CLARK',  'MANAGER',   		7839, str_to_date('06/09/1981'	,'%m/%d/%Y'),  2450, NULL, 10);
-- INSERT INTO EMP VALUES   (7999, 'RAHUL_DRAVID', 'MANAGER',  7839, str_to_date('01/01/2011'  ,'%m/%d/%Y'), 4000, NULL, 10);
-- INSERT INTO EMP VALUES   (7788, 'SCOTT',  'ANALYST',   		7566, str_to_date('12/09/1982'  ,'%m/%d/%Y'), 3000, NULL, 20);
-- INSERT INTO EMP VALUES   (7902, 'FORD',   'ANALYST',   		7566, str_to_date('12/03/1981'  ,'%m/%d/%Y'),  3000, NULL, 20);
-- INSERT INTO EMP VALUES   (7499, 'ALLEN',  'SALESMAN',  		7698, str_to_date('02/20/1981'  ,'%m/%d/%Y'), 1600,  300, 30);
-- INSERT INTO EMP VALUES   (7521, 'WARD',   'SALESMAN',  		7698, str_to_date('02/22/1981'  ,'%m/%d/%Y'), 1250,  500, 30);
-- INSERT INTO EMP VALUES   (7654, 'MARTIN', 'SALESMAN',  		7698, str_to_date('09/28/1981'  ,'%m/%d/%Y'), 1250, 1400, 30);
-- INSERT INTO EMP VALUES   (7844, 'TURNER', 'SALESMAN',  		7698, str_to_date('09/08/1981'  ,'%m/%d/%Y'),  1500,    0, 30);
-- INSERT INTO EMP VALUES   (7900, 'JAMES',  'CLERK',			7698, str_to_date('12/03/1981'  ,'%m/%d/%Y'),   950, NULL, 30);
-- INSERT INTO EMP VALUES   (7369, 'SMITH',  'CLERK',			7902, str_to_date('12/17/1980'  ,'%m/%d/%Y'), 800, NULL, 20);
-- INSERT INTO EMP VALUES   (7876, 'ADAMS',  'CLERK',			7788, str_to_date('01/12/2003'  ,'%m/%d/%Y'), 1100, NULL, 20);
-- INSERT INTO EMP VALUES   (7934, 'MILLER', 'CLERK',			7782, str_to_date('01/23/2002'  ,'%m/%d/%Y'), 1300, NULL, 10);
-- INSERT INTO EMP VALUES   (7901, 'RAHUL_DRAVID', 'MANAGER',  7839, str_to_date('01/23/2012'  ,'%m/%d/%Y'), 3000, NULL, 10);

-- select * from emp;
-- SELECT * FROM DEPT;

-- Select *
-- from emp
-- where comm >= 0;

-- select *
-- from emp 
-- where comm IS NOT NULL;


-- LIST ALL EMP WHOSE NAME CONTAINS A
-- select *
-- from emp 
-- where ename LIKE '%A%';


-- LIST ALL EMP WHOSE NAME STARTS WITH S
-- select *
-- from emp
-- where ename LIKE 'S%';


-- LIST ALL EMP WHOSE NAME ENDS WITH R
-- select *
-- from emp
-- where ename LIKE '%R';


-- LIST ALL EMP WHOSE NAME CONTAINS A AS SECOND LETTER
-- select *
-- from emp
-- where ename LIKE '_A%';


-- LIST ALL EMP WHOSE NAME STARTS WITH EITHER M OR S
-- select *
--  from emp
-- where ename LIKE 'S%' or ename LIKE 'M%' ;



-- LIST ALL EMP WHO ARE WORKING AS MANAGER IN EITHER DEPT 10 OR 20 
-- AND ALL CLERK FOR DEPT3 30
-- select *
-- From emp
-- where JOB=MANAGER AND dept=20;


--  LIST ENAME, SAL AND BONUS AS 10% OF SALARY
-- select ename,sal,sal*0.1 As Bonus
-- from emp;

-- 16th question
-- select *
-- from emp
-- order by ename asc;



-- 17th question
-- select *
-- from emp
-- Order By sal desc; 


-- 18th question
-- select *
-- from emp
-- group by deptno order by sal desc;

-- 19th question
-- select *
-- from emp
-- order by sal desc limit 3;


-- 23 question
-- select distinct job 
-- from emp; 

-- 24 question
-- select sum(sal)as Total 
-- from emp;

-- 25 question
-- select sum(sal),deptno
-- from emp
--  group by deptno;
 
 -- 26 question
 -- select count(*),job
--  from emp
--  group by job;
 
 -- 27 question 
--  select empno,ename
--  from emp
--  where Hiredate Like '_____02%';

-- 28 question
--  select ename
--  from emp
--  where year(hiredate)between  '1981' and '1983';

-- 29 question
 select ename,year(now())-year(hiredate) as Noofyear
from emp;

-- 12 question
-- select ename
-- from emp
-- where ename between 'A' and 'M'; 

-- 13 question
select ename
from emp
where ename like '%_%';


 use training21;

 
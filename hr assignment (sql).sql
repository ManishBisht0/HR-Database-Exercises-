create database hr;

use hr;

 SELECT first_name "First Name",  last_name "Last Name" 
	FROM employees;
    
    select distinct department_id
    from employees;
    
    select*from employees 
    order by first_name desc;
    
    select first_name , last_name,salary,salary*.15 pf 
    from employees ;
    
    select employee_id , first_name,last_name 
    from employees 
    order by salary;
    
    select sum(salary)
    from employees;
    
    select min(salary), max(salary)
    from employees;
    
    select avg(salary),count(*)
    from employees;
    
    select count(*)
    from employees;
    
    SELECT COUNT(DISTINCT job_id) 
    FROM employees;
    
    select upper(first_name)
    from employees;
    
    select substring(first_name,1,3)
from employees;

select trim(first_name)
from employees;

select first_name, last_name, length(first_name)+length(last_name) as 'length of name'
from employees;

select*from employees
where first_name regexp'[0-9]';

select first_name,last_name,salary 
from employees
where salary not between  10000 and 15000;

select first_name,last_name,department_id
from employees
where department_id in(30,100)
order by department_id asc;

select first_name,last_name,salary,department_id
from employees
where salary not between  10000 and 15000
and department_id in(30,100);

SELECT first_name, last_name, hire_date 
FROM employees 
WHERE YEAR(hire_date)  LIKE '1987%';


SELECT first_name
FROM employees
WHERE first_name LIKE '%b%'
AND first_name LIKE '%c%';

SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('IT_PROG', 'SH_CLERK')
AND salary NOT IN (4500,10000, 15000);

SELECT last_name
 FROM employees
 WHERE last_name LIKE '______';
 
 
 SELECT last_name
 FROM employees
 WHERE last_name LIKE '__E%';
 
 
SELECT job_id,
 GROUP_CONCAT(employee_id, ' ')  'Employees ID' 
FROM employees
 GROUP BY job_id;
 
 
UPDATE employees 
SET phone_number = REPLACE(phone_number, '124', '999') 
WHERE phone_number LIKE '%124%';

select* from employees;


SELECT * 
FROM employees
WHERE LENGTH(first_name) >= 8;





 UPDATE employees
 SET email = CONCAT(email, '@example.com');

 select email from employees;
 



SELECT RIGHT(phone_number, 4) as 'Ph.No.' 
FROM employees;





SELECT location_id, street_address, 
SUBSTRING_INDEX(REPLACE(REPLACE(REPLACE(street_address,',',' '),')',' '),'(',' '),' ',-1) 
AS 'Last--word-of-street_address' 
FROM locations;





 
SELECT * FROM locations
WHERE LENGTH(street_address) <= (SELECT  MIN(LENGTH(street_address)) 
FROM locations);






SELECT job_title, SUBSTR(job_title,1, INSTR(job_title, ' ')-1)
FROM jobs;






SELECT first_name, last_name
 FROM employees
 WHERE INSTR(last_name,'C') > 2;





SELECT first_name "Name",
LENGTH(first_name) "Length"
FROM employees
WHERE first_name LIKE 'J%'
OR first_name LIKE 'M%'
OR first_name LIKE 'A%'
ORDER BY first_name ;






SELECT first_name,
LPAD(salary, 10, '$') SALARY
FROM employees;






SELECT left(first_name, 8),
REPEAT('$', FLOOR(salary/1000)) 
'SALARY($)', salary
FROM employees
ORDER BY salary DESC;




SELECT employee_id,first_name,last_name,hire_date 
FROM employees 
WHERE POSITION("07" IN DATE_FORMAT(hire_date, '%d %m %Y'))>0;
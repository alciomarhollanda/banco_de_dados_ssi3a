-- 1  Escreva uma consulta para encontrar o nome (first_name, last_name) e o salário dos funcionários
--  que têm um salário mais alto do que o funcionário cujo sobrenome = 'Bull'.

select SALARY from employees where LAST_NAME = 'Bull';

select 
FIRST_NAME, 
LAST_NAME,
SALARY 
from employees 
where SALARY > (select SALARY from employees where LAST_NAME = 'Bull')
order by SALARY desc;

-- 2  Escreva uma consulta para encontrar o nome (first_name, last_name) de todos os 
-- funcionários que trabalham no departamento de TI.

select DEPARTMENT_ID from departments where DEPARTMENT_NAME = 'IT';

select 
FIRST_NAME, 
LAST_NAME, 
SALARY 
from employees
where DEPARTMENT_ID IN (select DEPARTMENT_ID from departments where DEPARTMENT_NAME = 'IT');


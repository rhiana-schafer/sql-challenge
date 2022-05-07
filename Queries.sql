-- 1. all emps: emp_no, last, first, sex, salary
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
from employees JOIN salaries on employees.emp_no = salaries.emp_no; 

-- 2. emps hired in 1986: first, last, hire date
select first_name, last_name, hire_date from employees 
where hire_date >= '01-01-1986' and hire_date < '01-01-1987' ;

-- 3. managers: dept no, dept name, emp_no, last, first
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no 
JOIN departments ON departments.dept_no = dept_manager.dept_no;

-- 4. all emps: emp_no, last, first, dept name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no 
JOIN departments ON departments.dept_no = dept_emp.dept_no;

-- 5. give first, last, and sex for emp w/ first = Hercules & last starts w/ B
SELECT first_name, last_name, sex FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. sales emps: emp no, last, first, dept name 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no 
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

-- 7. sales and development emps: emp no, last, first, dept name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no 
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- 8. count of emp last names in descending order
SELECT count(last_name), last_name from employees group by last_name order by count(last_name) desc;
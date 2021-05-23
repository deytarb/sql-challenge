BEGIN;
SET DATESTYLE TO US;

COPY "Titles"(title_id, title)
FROM 'C:\Users\HB16584\Documents\Rafa\Tarea semana 3\sql\titles.csv'
DELIMITER ','
CSV HEADER;

COPY "Employees"(emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:\Users\HB16584\Documents\Rafa\Tarea semana 3\sql\employees.csv'
DELIMITER ','
CSV HEADER;

COPY "Dept_emp"(emp_no, dept_no)
FROM 'C:\Users\HB16584\Documents\Rafa\Tarea semana 3\sql\dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY "Departments"(dept_no, dept_name)
FROM 'C:\Users\HB16584\Documents\Rafa\Tarea semana 3\sql\Departments.csv'
DELIMITER ','
CSV HEADER;

COPY "Dept_manager"(dept_no, emp_no)
FROM 'C:\Users\HB16584\Documents\Rafa\Tarea semana 3\sql\dept_manager.csv'
DELIMITER ','
CSV HEADER;

COPY "Salaries"(emp_no, salary)
FROM 'C:\Users\HB16584\Documents\Rafa\Tarea semana 3\sql\salaries.csv'
DELIMITER ','
CSV HEADER;

END;
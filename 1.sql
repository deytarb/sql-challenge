SELECT DISTINCT 
	emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.sex,
	sal.salary
FROM
	"Employees" AS emp,
	"Salaries" AS sal
WHERE
	sal.emp_no = emp.emp_no;
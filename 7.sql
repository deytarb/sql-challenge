SELECT DISTINCT
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	dps.dept_name
FROM
	"Employees" as emp,
	"Dept_emp" as dep,
	"Departments" as dps
WHERE
	emp.emp_no = dep.emp_no
	AND
	(
	dps.dept_name = 'Sales'
	OR
	dps.dept_name = 'Development'
	)
;
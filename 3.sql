SELECT DISTINCT
	dpm.dept_no,
	dpt.dept_name,
	emp.emp_no,
	emp.last_name,
	emp.first_name
FROM
	"Dept_manager" AS dpm,
	"Departments" AS dpt,
	"Employees" AS emp
WHERE
	dpt.dept_no = dpm.dept_no
	AND
	emp.emp_no = dpm.emp_no
;
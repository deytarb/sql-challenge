SELECT
	last_name,
	first_name,
	EXTRACT(YEAR FROM hire_date)
FROM
	"Employees"
WHERE
	 hire_date = to_date('1986', 'YYYY');
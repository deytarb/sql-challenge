SELECT
	first_name,
	last_name,
	sex
FROM 
	"Employees"
WHERE
	first_name = 'Hercules'
	AND
	substring(last_name from 1 for 1) = 'B'
;
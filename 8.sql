SELECT
	last_name,
	COUNT(*)
FROM
	"Employees"
GROUP BY(last_name)
ORDER BY COUNT DESC
;
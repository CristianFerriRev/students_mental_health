SELECT stay AS stay, 
	COUNT(inter_dom) AS count_int, 
	CAST(AVG(todep) AS NUMERIC(10,2)) AS average_phq, 
	CAST(AVG(tosc) AS NUMERIC(10,2)) AS average_scs, 
	CAST(AVG(toas) AS NUMERIC(10,2)) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC
LIMIT 9;

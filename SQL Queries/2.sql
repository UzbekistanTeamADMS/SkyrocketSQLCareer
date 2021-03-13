--Can we determine the strongest baseball colleges that raised biggest amount of champions?

SELECT schoolname, count(*) FROM schools 
INNER JOIN collegeplaying on schools.schoolid = collegeplaying.schoolid
GROUP BY schoolname ORDER BY count(*) DESC LIMIT 1;
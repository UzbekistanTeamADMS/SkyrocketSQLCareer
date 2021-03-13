--Which team holds the record of most successful seasons in history?

SELECT teamid, COUNT(teamid) FROM teams WHERE lgwin = 'Y' GROUP BY teamid ORDER BY count(teamid) DESC LIMIT 1;
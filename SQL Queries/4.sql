--Which player holds the most played seasons in history and from which school he was?

SELECT playerid, count(*) FROM appearances GROUP BY playerid ORDER BY count(*) DESC LIMIT 1;

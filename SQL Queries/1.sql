--Can we retrieve all information about the baseball player career?

SELECT distinct namefirst, namelast, birthyear, teamid, debut, finalgame, salary, awardid
FROM master INNER JOIN salaries ON master.playerid = salaries.playerid 
INNER JOIN awardsplayers on master.playerid = awardsplayers.playerid
WHERE master.playerID = 'kingmda01';

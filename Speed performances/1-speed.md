Initial query:

```
SELECT DISTINCT namefirst, namelast, birthyear, teamid, debut, finalgame, salary, awardid
FROM master INNER JOIN salaries ON master.playerid = salaries.playerid 
INNER JOIN awardsplayers ON master.playerid = awardsplayers.playerid
WHERE master.playerID = 'kingmda01';
```

Average speed perfomance:

```
(7.003 + 4.718 + 7.049 + 4.940 + 5.514) / 5 = 5.8448 ms
```

Optimized query:

```
SELECT DISTINCT namefirst, namelast, birthyear, teamid, debut, finalgame, salary, awardid
FROM master a, salaries b, awardsplayers c
WHERE a.playerid = b.playerid AND a.playerid = c.playerid AND a.playerid = 'kingmda01';
```

Optimized query's speed perfomance:
```
3.723 ms
```

Initial query:

```
SELECT nameFirst, nameLast FROM master WHERE playerID = 
(SELECT playerID FROM Salaries WHERE playerID IN
(SELECT playerID FROM Salaries WHERE salary IN
(SELECT max(salary) FROM Salaries)) limit 1);
```

Average speed perfomance:

```
(11.610 + 12.819 + 15.847 + 19.770 + 13.127) / 5 = 14.6346 ms
```

Optimized query:

```
SELECT DISTINCT namefirst, namelast FROM master INNER JOIN salaries
ON master.playerid = salaries.playerid
WHERE salary IN (SELECT max(salary) FROM Salaries);
```

Optimized query's speed perfomance:
```
7.747 ms
```

Initial query:

```
SELECT master.nameFirst, master.nameLast, SUM(appearances.G_batting) FROM master INNER JOIN batting 
ON master.playerid = (SELECT playerID FROM Batting ORDER BY AB DESC LIMIT 1)
INNER JOIN appearances ON master.playerid = appearances.playerid
group by master.playerid;
```

Average speed perfomance:

```
(431.696 + 475.439 + 416.203 + 614.464 + 437.778) / 5 = 475.116 ms
```

Optimized query:

```
SELECT a.nameFirst, a.nameLast, SUM(b.G_batting) FROM master a, Appearances b
WHERE a.playerID = (SELECT playerID FROM Batting ORDER BY AB DESC LIMIT 1) 
AND a.playerID = b.playerID GROUP BY a.playerID;
```

Optimized query's speed perfomance:
```
41.710 ms
```

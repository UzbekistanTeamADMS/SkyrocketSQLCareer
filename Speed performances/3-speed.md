Initial query:

```
SELECT namefirst, namelast, cs FROM master 
INNER JOIN batting ON master.playerid = batting.playerid 
WHERE cs IN (SELECT MAX(cs) FROM batting);
```

Average speed perfomance:

```
(62.053 + 54.316 + 59.505 + 66.960 + 54.770) / 5 = 59.5208 ms
```

Optimized query:

```
SELECT namefirst, namelast, cs FROM master, batting
WHERE master.playerid = batting.playerid 
AND cs IN (SELECT MAX(cs) FROM batting);
```

Optimized query's speed perfomance:
```
41.060 ms
```

Initial query:

```
SELECT DISTINCT halloffame.playerid FROM halloffame INNER JOIN appearances 
ON halloffame.playerid = appearances.playerid INNER JOIN teams ON appearances.teamid = teams.teamid
WHERE teams.lgwin = (SELECT MAX(lgwin) FROM teams);
```

Average speed perfomance:

```
(425.697 + 416.188 + 430.399 + 431.002 + 541.942) / 5 = 449.0456 ms
```

Optimized query:

```
SELECT DISTINCT halloffame.playerID FROM HallOfFame
WHERE halloffame.playerid IN (SELECT playerid FROM appearances 
WHERE teamid IN (SELECT teamid FROM teams WHERE lgWin = (SELECT MAX(LgWin) FROM Teams))); 
```

Optimized query's speed perfomance:
```
58.737 ms
```

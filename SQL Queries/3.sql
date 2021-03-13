--Can we find pitchers that are suffering more from some certain batters from others?   

SELECT namefirst, namelast, cs FROM master 
INNER JOIN batting ON master.playerid = batting.playerid 
WHERE cs IN (SELECT MAX(cs) FROM batting);
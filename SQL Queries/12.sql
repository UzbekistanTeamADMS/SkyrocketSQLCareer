--Can we find the best Catcher In history of baseball, and how many games he played?

select a.nameFirst, a.nameLast, SUM(b.G_batting)
from People a, Appearances b where a.playerID = 
(select playerID from Batting order by AB DESC LIMIT 1) and a.playerID = b.playerID 
GROUP BY a.playerID;
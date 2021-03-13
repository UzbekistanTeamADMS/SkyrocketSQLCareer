--How many players, who played in All-Star matches are currently dead?
select a.playerID from People a, AllStarFull b where a.deathYear < 2021 and b.playerID = a.playerID;
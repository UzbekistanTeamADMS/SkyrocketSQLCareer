--Name the player which have the most votes in Hall Of Fame standings, in comparison to other players, and in which team he played?

select a.nameFirst, a.nameLast, b.name from People a, Teams b, Appearances c
where a.playerID = (select playerID from HallOfFame where votes = (select MAX(votes) from HallOfFame))
and a.playerID = c.playerID and c.teamID = b.teamID LIMIT 1;
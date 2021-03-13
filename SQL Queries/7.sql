--Can we find players that has the closest playing stats as Hall of Fame players, but don't have enough awards to be popular?
SELECT playerID from Appearances where NOT EXISTS (SELECT playerID from HallOfFame) order by G_All desc;
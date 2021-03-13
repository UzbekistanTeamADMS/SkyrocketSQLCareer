--From which country is the biggest amount that were members of Hall of Fame?

SELECT COUNT(*), b.birthCountry FROM HallOfFame a, People b 
WHERE a.playerID=b.playerID Group BY b.birthCountry Order by Count(*) DESC LIMIT 1;
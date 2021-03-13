--Can we determine patterns in gaining "Best manager" awards?
select G, W, L, rank from Managers where playerID in (select playerID from AwardsManagers) order by rank;
--Which player earned the highest salary, and in which team he was?

select nameFirst, nameLast from People where playerID = 
(select playerID from Salaries where playerID in 
(select playerID from Salaries where salary in 
(select max(salary) from Salaries)) limit 1);
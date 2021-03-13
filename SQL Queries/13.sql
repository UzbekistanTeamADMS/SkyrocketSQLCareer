--Which game had the maximum number of home runs?

select lgID from Pitching where HR = (select MAX(HR) from Pitching);
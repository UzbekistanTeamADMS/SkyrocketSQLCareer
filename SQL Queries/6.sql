--Can we determine patterns on field behavior that are in direct ration influences players salary?
select GS, G_batting, G_defense, G_p, G_c, G_1b, G_2b, G_3b, G_ss, G_lf, G_cf, G_cf, G_rf, G_of, G_dh, G_ph, G_pr, salary from Appearances a, Salaries b where a.playerID = b.playerID order by salary;
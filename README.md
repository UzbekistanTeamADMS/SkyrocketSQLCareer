Advanced Database Management Systems project

# SkyrocketSQLCareer

### Goal

SkyrocketSQLCareer is a website where people can prepare for the upcoming tech interviews. Usually Data Analysts, Security specialists, Database managers, Data Scientists that are applying for the top tech companies facing a technical interview where their need to solve SQL puzzles, write complex SQL queries, or explain how relational database work under the hood, relational algebra e.t.c. to prove their competences. We want to help candidates with their interviews by providing a platform which has an everything in one place.

### Scope

We want to provide: 

- SQL puzzles where users can write a query and see if they are right
- Complex and simple SQL query questions for checking users understanding of certain SQL topics
- Documentation about  SQL topics, interview preparation e.t.c
- Platform for creating contests to participate with friends

### Platform - Web

We will use Django as our backend web framework, since we want make everything rapidly and not all of team members familiar with other programming languages and modern javascript frontend frameworks, Django's templating opportunities will help us with creating user interfaces that are connected with backend without extra overheads.

### Stack

- Programming language: Python
- Framework: Django
- Frontend: Templating

Reasons described above.

- Database server: Postgresql
We will use postgresql, cause its better fits client-server communication rather than sqlite and due to familiarity of team members with it.

### Dataset

To satisfy our goals to provide education platform with SQL puzzles, all we need is any database with complex relations between tables and huge amount of data in them. The perfect choice to satisfy our requirements was Lahman’s Baseball dataset ([http://www.seanlahman.com/baseball-archive/statistics/](http://www.seanlahman.com/baseball-archive/statistics/)) which in total contains 24 tables with 80000 rows in each in average.

---

1. Batting Table - contains information about batters. Players, runs, hits, home runs, doubles, triples e.t.c
2. Pitching table - contains information about pitchers. Players, wild pitches, strikeouts, walks, opponents batting averages e.t.c
3. Fielding Table - contains information about each player performance on each field. Games, position, time played, assists e.t.c
4. AllstarFull table - contains information about Allstar games and players.
5. HallOfFame table - contains information about hall of fame players, votes for them, voting method, honor category e.t.c
6. Managers table - contains information about teams managers, leagues, performance, managerial order e.t.c 
7. Teams table - contains information about teams players, franchise, league, division, all possible stats.
8. BattingPost table - contains information about battings posts which contains players info at bats. 
9. PitchingPost table - contains information about pitching posts and players info at pitches.  
10. TeamFranchises table - contains information is team currently active, franchise name e.t.c
11. FieldingOF table - contains information about field itself, how many plays were played on left, right or center field. 
12. ManagersHalf table - contains information about managers performance during the half
13. TeamsHalf table - contains information about team performance during the half
14. Salaries table - contains info about players and managers salaries
15. SeriesPost table - contains info about winning and losing series of teams
16. AwardsManagers table - contains info about awards gained by managers
17. AwardsPlayers table - contains info about awards gained by players
18. AwardsShareManagers table - contains more specific info like number of votes each manager received for gaining award
19. AwardsSharePlayers table - contains more specific info like number of votes each player received for gaining award
20. FieldingPost table - contains info about fielding posts, rounds positions, teams e.t.c
21. Appearances table - contains player stats, like total games played as a Cather, pitcher, centerfield, right fielder e.t.c
22. Schools table - contains info about schools that were founding baseball teams
23. CollegePlaying table - links player and his school foreign keys
24. MASTER table - contains detailed personal info about the players like weight, birth and death date, their final game and retroId e.t.c

### General complex questions that our sample database can answer on:

- Can we retrieve all information about the baseball player career?
- Can we determine the strongest baseball colleges that raised biggest amount of champions?
- Can we find pitchers that are suffering more from some certain batters from others?
- Can we find biggest disappointments in baseball career that ruined their perfect career after college?
- Can we find similar patterns in players performance in different positions on field and their awards?
- Can we determine patterns on field behavior that are in direct ration influences players salary?
- Can we find players that has the closest playing stats as Hall of Fame players, but don't have enough awards to be popular?
- How many players, who played in All-Star matches are currently dead?
- Which players have the biggest win rate that are are members of Hall of Fame?
- Can we determine patterns in gaining "Best manager" awards?
- Which player earned the highest salary, and in which team he was?
- Can we find the best Catcher In history of baseball, and how many games he played?
- Which game had the maximum number of home runs?
- Name the player which have the most votes in Hall Of Fame standings, in comparison to other players, and in which team he played?
- From which country is the biggest amount  that were members of Hall of Fame?

### ER diagram relations decision making progress

We were looking through our CSV data and were searching for primary and foreign keys between tables(playerID, teamID e.t.c). After we found all, we connected everything correspondingly.

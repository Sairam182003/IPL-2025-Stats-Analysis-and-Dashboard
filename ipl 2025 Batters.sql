Create database Ipl;
use Ipl;

#imported Csv Datasets

select*from batters;

desc batters;

select*from bowlers;

desc bowlers;

#Changing Column name

alter table batters 
change `ï»¿"Player Name"` Players varchar(100);

alter table bowlers 
change `Player Name` Players varchar(100);

#Cleaning

UPDATE batters
SET HS = REPLACE(HS, '*', '');

Alter table batters
modify column HS int;

desc batters;

#Players Having More than 30 6s

Select Players, Team 
from batters where 6s > 30;

# Top 5 Players having Higher No.of 4s

Select Players, 4s 
From batters order by 
4s desc Limit 5;

#5 Players having Higher Average

Select Players, `AVG` from batters 
order by `AVG` desc limit 5;

#Top 5 Players having Highest Individual Score

Select Players, Team, HS from batters
 order by HS Desc limit 5;

# top Run Scorers from GT

Select Players, Team, Runs, Matches 
from batters where Team = 'GT' 
order by Runs Desc limit 5;

# top 5 Wicket takers

select `Player Name`,Team, WKT 
from bowlers order by WKT Desc limit 5;

# Bowlers having less economy

select `Player Name`, ECO, Team 
from bowlers order by ECO;

# Fininding top Run Scorer and highest wicket taker from CSK And MI

#CSK

#Runs

Select Players,Team,Runs 
from batters where Team = 'CSK' 
order by Runs Desc;

#Wickets

Select Players,Team,WKT 
from bowlers where Team = 'CSK' 
order by WKT Desc;

#MI

#Runs

Select Players,Team,Runs 
from batters where Team = 'MI' 
order by Runs Desc;

#Wickets

Select Players,Team,WKT 
from bowlers where Team = 'MI' 
order by WKT Desc;

Select*from batters;

Select*from bowlers;
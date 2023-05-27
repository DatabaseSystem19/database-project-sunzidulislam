-- Insert into Stadiums

insert into stadiums values(1, 'San Siro', 80018, 'Milan');
insert into stadiums values(2, 'Camp Nou', 99354, 'Barcelona');
insert into stadiums values(3, 'Westfalenstadion', 81365, 'Dortmund');
insert into stadiums values(4, 'Groupama Stadium', 59186, 'Décines');
insert into stadiums values(5, 'Borisov Arena', 13126, 'Barysaw');
insert into stadiums values(6, 'Veltins-Arena', 61673, 'Gelsenkirchen');
insert into stadiums values(7, 'Stadion im. Henryka Reymana', 32804, 'Kraków');
insert into stadiums values(8, 'Parc des Princes', 48527, 'Paris');
insert into stadiums values(9, 'Allianz Stadium', 41507, 'Munich');
insert into stadiums values(10, 'Johan Cruyff Arena', 54033, 'Amsterdam');
insert into stadiums values(11, 'Stadion Wojska Polskiego', 30800, 'Warsaw');
insert into stadiums values(12, 'Otkritie Arena', 45360, 'Moscow');

-- Insert into Teams

insert into teams values(1, 1, 'AC Milan');
insert into teams values(2, 2, 'FC Barcelona');
insert into teams values(3, 3, 'Borussia Dortmund');
insert into teams values(4, 4, 'Lyon');
insert into teams values(5, 5, 'BATE Borisov');
insert into teams values(6, 6, 'Schalke 04');
insert into teams values(7, 7, 'Wisła Cracow');
insert into teams values(8, 8, 'Paris Saint-Germain');
insert into teams values(9, 9, 'Juventus');

-- Insert into Players

--AC Milan

insert into players values(1, 1, 'Fredrik', 'Goalkeeper', 'Sweden');
insert into players values(2, 1, 'Marcus', 'Defender', 'Scotland');
insert into players values(3, 1, 'Matias', 'Defender', 'Sweden');
insert into players values(4, 1, 'Kalle', 'Defender', 'Finland');
insert into players values(5, 1, 'Rune', 'Defender', 'Iceland');
insert into players values(6, 1, 'Sven', 'Defender', 'Norway');
insert into players values(7, 1, 'Petr', 'Midfielder', 'Russia');
insert into players values(8, 1, 'Lars', 'Midfielder', 'Finland');
insert into players values(9, 1, 'Piter','Midfielder', 'Scotland');
insert into players values(10, 1, 'Max', 'Forward', 'England');
insert into players values(11, 1, 'Oliver', 'Forward', 'England');

-- FC Barcelona

insert into players values(12, 2, 'ter Stegen', 'Goalkeeper', 'Germany');
insert into players values(13, 2, 'Romanos', 'Defender', 'Argentina');
insert into players values(14, 2, 'Roberto', 'Defender', 'Spain');
insert into players values(15, 2, 'Fabio', 'Defender', 'Argentina');
insert into players values(16, 2, 'Piqué', 'Defender', 'Spain');
insert into players values(17, 2, 'Busquets', 'Midfielder', 'Spain');
insert into players values(18, 2, 'Karim', 'Midfielder', 'Lebanon');
insert into players values(19, 2, 'Gavi', 'Midfielder', 'Spain');
insert into players values(20, 2, 'Pedri', 'Midfielder', 'Spain');
insert into players values(21, 2, 'Aubameyang', 'Forward', 'Gabon');
insert into players values(22, 2, 'Messi', 'Forward', 'Argentina');

-- Dortmund

insert into players values(23, 3, 'Jens', 'Goalkeeper', 'Netherlands');
insert into players values(24, 3, 'Xavier', 'Defender', 'Netherlands');
insert into players values(25, 3, 'Mattias', 'Defender', 'Netherlands');
insert into players values(26, 3, 'Eaat', 'Defender', 'Netherlands');
insert into players values(27, 3, 'Olaf', 'Defender', 'England');
insert into players values(28, 3, 'Pascal', 'Defender', 'Australia');
insert into players values(29, 3, 'William', 'Midfielder', 'France');
insert into players values(30, 3, 'Roger', 'Midfielder', 'Germany');
insert into players values(31, 3, 'Oliver', 'Midfielder', 'Germany');
insert into players values(32, 3, 'Hazel', 'Midfielder', 'Germany');
insert into players values(33, 3, 'Michael', 'Forward', 'Germany');

-- Olympique Lyonnais

insert into players values(34, 4, 'Patrick', 'Goalkeeper', 'France');
insert into players values(35, 4, 'Jurgen', 'Defender', 'Belgium');
insert into players values(36, 4, 'Pablo', 'Defender', 'Lichtenstein');
insert into players values(37, 4, 'Otto', 'Defender', 'Australia');
insert into players values(38, 4, 'Marini', 'Midfielder', 'Italy');
insert into players values(39, 4, 'Thomas', 'Midfielder', 'Italy');
insert into players values(40, 4, 'Omar', 'Midfielder', 'Wales');
insert into players values(41, 4, 'Samuel', 'Midfielder', 'Cameroon');
insert into players values(42, 4, 'Javier', 'Midfielder', 'Argentina');
insert into players values(43, 4, 'Carles', 'Forward', 'Spain');
insert into players values(44, 4, 'Santos', 'Forward', 'Brazil');

-- Extra player to delete 

insert into players values(45,4, 'DEMO', 'Forward', 'DEMO');

-- Insert into Matches

-- id_match, id_home, id_away, id_stadium, time, attendance

insert into matches values(1, 1, 2, 1, '10-FEB-2007', 69454);
insert into matches values(2, 3, 4, 3, '15-FEB-2007', 59470);
insert into matches values(3, 2, 4, 2, '18-FEB-2007', 85623);
insert into matches values(4, 3, 1, 3, '11-DEC-2007', 40087);
insert into matches values(5, 4, 1, 4, '17-DEC-2007', 25639);
insert into matches values(6, 2, 3, 2, '29-DEC-2007', 77548);

-- Insert into Results

-- id_match, home_team_goals, away_team_goals

insert into results values(1, 4, 1);
insert into results values(2, 1, 2);
insert into results values(3, 2, 0);
insert into results values(4, 0, 3);
insert into results values(5, 0, 3);
insert into results values(6, 2, 0);

-- Insert into Scores

-- id_score, id_match, id_team, id_player, goals, assists

insert into scores values(1, 1, 1, 7, 0, 1);
insert into scores values(2, 1, 1, 9, 1, 2);
insert into scores values(3, 1, 1, 10, 1, 0);
insert into scores values(4, 1, 1, 11, 2, 1);
insert into scores values(5, 1, 2, 18, 0, 1);
insert into scores values(6, 1, 2, 22, 1, 0);
insert into scores values(7, 2, 3, 31, 0, 1);
insert into scores values(8, 2, 3, 33, 1, 0);
insert into scores values(9, 2, 4, 40, 0, 1);
insert into scores values(10, 2, 4, 41, 0, 1);
insert into scores values(11, 2, 4, 43, 1, 0);
insert into scores values(12, 2, 4, 44, 1, 0);

insert into scores values(13, 3, 2, 18, 0, 1);
insert into scores values(14, 3, 2, 19, 0, 1);
insert into scores values(15, 3, 2, 22, 2, 0);

insert into scores values(16, 4, 1, 6, 0, 1);
insert into scores values(17, 4, 1, 7, 0, 2);
insert into scores values(18, 4, 1, 9, 1, 0);
insert into scores values(19, 4, 1, 10, 1, 0);
insert into scores values(20, 4, 1, 11, 1, 0);

insert into scores values(21, 5, 1, 7, 0, 1);
insert into scores values(22, 5, 1, 8, 0, 1);
insert into scores values(23, 5, 1, 9, 0, 1);
insert into scores values(24, 5, 1, 10, 3, 0);

insert into scores values(25, 6, 2, 19, 0, 1);
insert into scores values(26, 6, 2, 20, 1, 0);
insert into scores values(27, 6, 2, 21, 0, 1);
insert into scores values(28, 6, 2, 22, 1, 0);


select * from Stadiums;
select * from Teams;
select * from Players;
select * from Matches;
select * from Results;
select * from Scores;


--UPDATE syntax is used in case of updating a value which is already in the table

UPDATE matches set attendance=59000 where id_match = 2;
select * from Matches;

DELETE from Players where country='DEMO';

select name from Teams;


select country from players;

select DISTINCT country as C from players;

select * from Matches where attendance between 50000 AND 70000;

select * from Matches where attendance IN (59000, 70000);

select * from Matches where attendance NOT IN (59000, 70000);

select * from Players where country LIKE '%land';

select full_name,city,capacity as STD from Stadiums order by capacity desc;

--Aggregrate functions

select MAX(attendance) from matches;
select MIN(attendance) from matches;

--number of English players

select COUNT(id_player) from players where country='England';

-- Average Capacity of Stadiums

select AVG(capacity) as AVG_CAPACITY from stadiums;

select AVG(NVL(capacity,0)) as AVG_CAPACITY from Stadiums;

select SUM(attendance) as TOTAL_ATTENDACE from Matches;

select COUNT(DISTINCT(country)) from players;

select COUNT(DISTINCT(city)) from Stadiums;

-- Group BY, Having

-- How many players from each country?

select country,COUNT(id_player) as Total_Players
 from Players 
group by country;

-- How many players from each country? by descending order

select country,COUNT(id_player) as Total_Players
from players 
group by country
order by Total_Players desc;

-- Number of Matches where Home team won

select COUNT(id_match) from results where home>away;

-- WHERE keyword cannot be used with aggregate functions.
-- A HAVING condition can refer only to an expression in the SELECT list, 
-- or to an expression involving an aggregate function.

select country,COUNT(id_player) as Total_Players
from players 
group by country
Having COUNT(id_player) > 2
order by Total_Players desc;

-- Select those Teams whose Stadium has capacity less than 50000

select T.name from teams T 
where T.id_stadium 
in(select S.id_stadium from Stadiums S where S.capacity < 50000);

-- UNION
-- All players whose position-> Goalkeeper or country-> ___land

select name,position,country from players
where country like '%land'
union
select name,position,country from players
where position = 'Goalkeeper';

-- UNION ALL with Duplicates
-- All players whose position-> Goalkeeper or country-> ___land

select name,position,country from players
where country like '%land'
union
select name,position,country from players
where position = 'Goalkeeper';

-- INTERSECT
-- All players whose position-> Midfielder and country-> ___land

select name,position,country from players
where country like '%land'
INTERSECT
select name,position,country from players
where position = 'Midfielder';


--JOIN


-- Players who have At least 1 assists in one match

select name, assists
from players
natural join scores
where assists >= 1;

-- All FC Barcelona matches

select h.name AS home, home , away, a.name AS "away"
from matches match
join teams h ON match.id_home = h.id_team
join teams a ON match.id_away = a.id_team
join results using (id_match)
where id_home = 2 OR id_away = 2;

-- Total Goals By each Team

select name,sum(goals) AS TOTAL_GOALS
from teams T
natural join scores
group by name
order by TOTAL_GOALS desc, name;

-- ALL Argentine players and their clubs

select p.name,p.country,t.name
from players p
join teams t
on p.id_team = t.id_team
where country = 'Argentina';

-- Team names with stadium and capacity

select T.name,s.full_name,s.capacity,s.city from
Stadiums s, Teams T
where s.id_stadium = T.id_stadium;

-- *same as previous* USING JOIN

select T.name,s.full_name,s.capacity,s.city from
Stadiums s JOIN Teams T
on s.id_stadium = T.id_stadium;

-- *same as previous* USING,JOIN

select T.name,s.full_name,s.capacity,s.city from
Stadiums s JOIN Teams T
using (id_stadium);

-- *same as previous* Using Natural Join

select T.name,s.full_name,s.capacity,s.city from
Stadiums s Natural JOIN Teams T;

--Cross Joins/ Cartesian Products

select * from stadiums cross join teams;

-- Left Outer join

select T.name,s.full_name,s.capacity,s.city from
Stadiums s LEFT JOIN Teams T
on s.id_stadium = T.id_stadium;

-- Right Outer join

select T.name,s.full_name,s.capacity,s.city from
Stadiums s Right JOIN Teams T
on s.id_stadium = T.id_stadium;

-- FULL Outer join

select T.name,s.full_name,s.capacity,s.city from
Stadiums s FULL OUTER JOIN Teams T
on s.id_stadium = T.id_stadium;




















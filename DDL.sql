-- Drop Sequence
drop table Scores;
drop table Results;
drop table Matches;
drop table Players;
drop table Teams;
drop table Stadiums;


--Table Creation
create table Stadiums
(
    id_stadium integer NOT NULL,
    full_name varchar(32) NOT NULL,
    capacity integer NOT NULL,
    city varchar(32) NOT NULL,
    primary key (id_stadium)
);

create table Teams(
	id_team integer,
	id_stadium integer,
	name varchar(32) NOT NULL,
	primary key (id_team),
	Foreign key (id_stadium) references Stadiums On delete cascade
);

create table Players(
	id_player integer,
	id_team integer NOT NULL,
	name varchar(32),
	position varchar(10) not null check(position = 'Goalkeeper' OR position = 'Defender' OR position = 'Midfielder' OR position = 'Forward'),
	country varchar(32) not null,
	Primary key (id_player),
	Foreign key (id_team) references Teams On delete cascade
);

create table Matches(
	id_match integer,
	id_home integer not null,
	id_away integer not null,
	id_stadium integer not null,
	date_time varchar(32) not null,
	attendance integer not NULL,
	primary key (id_match),
	Foreign key (id_home) references Teams On delete cascade,
	Foreign key (id_away) references Teams On delete cascade,
	Foreign key (id_stadium) references Stadiums On delete cascade
);

create table Results(
	id_match integer primary key references Matches(id_match),
	home integer not NULL check(home >= 0),
	away integer not NULL check(away >= 0)
);

create table Scores(
	id_score integer,
	id_match integer,
	id_team integer,
	id_player integer,
	goals integer not NULL check(goals >= 0),
	assists integer not NULL check(assists >= 0),
	primary key (id_score),
	Foreign key (id_player) references Players On delete cascade,
	Foreign key (id_match) references Matches On delete cascade,
	Foreign key (id_team) references Teams On delete cascade
);


-- ALTER TABLE command allows to add, modify, rename or drop a column

ALTER TABLE Stadiums ADD Test_column varchar(10);
ALTER TABLE Stadiums ADD (T1 integer,T2 integer,T3 integer);
ALTER TABLE Stadiums MODIFY Test_column integer;
ALTER TABLE Stadiums MODIFY (T1 varchar(10),T2 varchar(10), T3 varchar(10));
ALTER TABLE Stadiums RENAME COLUMN Test_column to T0;
ALTER TABLE Stadiums DROP COLUMN T0;
ALTER TABLE Stadiums DROP COLUMN T1;
ALTER TABLE Stadiums DROP COLUMN T2;
ALTER TABLE Stadiums DROP COLUMN T3;




















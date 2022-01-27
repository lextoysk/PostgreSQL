create table if not exists tracks 
(
	Id serial primary key, 
	name text not null unique, 
	track_length integer,
	album_id integer references albums (Id)
);

create table if not exists albums 
(
	id serial primary key, 
	name text not null unique, 
	release_year integer,
	genre varchar(50),
	performer_id integer references performers (Id)
);

create table if not exists performers 
(
	id serial primary key, 
	name text not null unique, 
	alias varchar(40),
);

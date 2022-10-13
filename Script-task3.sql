create table if not exists songers(
			id serial primary key,
			alias varchar(20));
create table if not exists albums(
			id serial primary key,
			name varchar(10),
			year integer);
create table if not exists songs(
			id serial primary key,
			name varchar(10),
			album_id serial,
			duration time);
create table if not exists compilations(
			id serial primary key,
			name varchar(10),
			year integer);
create table if not exists genres(
			id serial primary key,
			name varchar(10));
create table if not exists genres_songers(
			genre_id integer references genres(id),
			songer_id integer references songers(id),
			constraint pk primary key (genre_id,songer_id));
create table if not exists albums_songers(
			album_id integer references albums(id),
			songer_id integer references songers(id),
			constraint pk1 primary key (album_id,songer_id));
create table if not exists compiations_songs(
			song_id integer references songs(id),
			compilation_id integer references compilations(id),
			constraint pk2 primary key (song_id,compilation_id));
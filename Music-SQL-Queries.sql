show databases;
--create database
create database samitha;
use samitha;

-- Music recommendation database system
-- create table
 create table users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password_hash VARCHAR(20),
    registration_date DATE
);

/*creating users table*/
create table users(user_id int primary key, name varchar(20),email varchar(50),password varchar(20), registration_date date);
insert into users (user_id,name,email,password,registration_date) values (1, 'Ananya', 'ananya@example.com', 'Ananya@1', '2024-04-25'),
    (2, 'Aarav', 'aarav@example.com', 'Aarav@2', '2024-04-25'),
    (3, 'Advait', 'advait@example.com', 'Advait@3', '2024-04-25'),
    (4, 'Ayesha', 'ayesha@example.com', 'Ayesha@4', '2024-04-25'),
    (5, 'Dhruv', 'dhruv@example.com', 'Dhruv@5', '2024-04-25'),
    (6, 'Ishaan', 'ishaan@example.com', 'Ishaan@6', '2024-04-25'),
    (7, 'Kavya', 'kavya@example.com', 'Kavya@7', '2024-04-25'),
    (8, 'Neha', 'neha@example.com', 'Neha@8', '2024-04-25'),
    (9, 'Nikhil', 'nikhil@example.com', 'Nikhil@9', '2024-04-25'),
    (10, 'Priya', 'priya@example.com', 'Priya@10', '2024-04-25'),
    (11, 'Rahul', 'rahul@example.com', 'Rahul@11', '2024-04-25'),
    (12, 'Sahil', 'sahil@example.com', 'Sahil@12', '2024-04-25'),
    (13, 'Tanvi', 'tanvi@example.com', 'Tanvi@13', '2024-04-25'),
    (14, 'Yash', 'yash@example.com', 'Yash@14', '2024-04-25'),
    (15, 'Aaradhya', 'aaradhya@example.com', 'Aaradhya@15', '2024-04-25'),
    (16, 'Arjun', 'arjun@example.com', 'Arjun@16', '2024-04-25'),
    (17, 'Avani', 'avani@example.com', 'Avani@17', '2024-04-25'),
    (18, 'Devika', 'devika@example.com', 'Devika@18', '2024-04-25'),
    (19, 'Ishika', 'ishika@example.com', 'Ishika@19', '2024-04-25'),
    (20, 'Kabir', 'kabir@example.com', 'Kabir@20', '2024-04-25'),
    (21, 'Meera', 'meera@example.com', 'Meera@21', '2024-04-25'),
    (22, 'Rishi', 'rishi@example.com', 'Rishi@22', '2024-04-25'),
    (23, 'Ria', 'ria@example.com', 'Ria@23', '2024-04-25'),
    (24, 'Rohan', 'rohan@example.com', 'Rohan@24', '2024-04-25'),
    (25, 'Sanya', 'sanya@example.com', 'Sanya25', '2024-04-25'),
    (26, 'Shiv', 'shiv@example.com', 'Shiv@26', '2024-04-25'),
    (27, 'Tara', 'tara@example.com', 'Tara@27', '2024-04-25'),
    (28, 'Aryan', 'aryan@example.com', 'Aryan@28', '2024-04-25'),
    (29, 'Avni', 'avni@example.com', 'Anvi@29', '2024-04-25'),
    (30, 'Vihaan', 'vihaan@example.com', 'Vihaan@30', '2024-04-25');

--display users table
select* from users;
    
--create artists table
create table artists(artist_id int primary key, artist_name varchar(30), genre varchar(10));
--insert values into artists table
insert into artists(artist_id,artist_name,genre) values (1, 'Arijit Singh', 'Bollywood'),
    (2, 'Shreya Ghoshal', 'Bollywood'),
    (3, 'A.R. Rahman', 'Bollywood'),
    (4, 'Atif Aslam', 'Bollywood'),
    (5, 'Sunidhi Chauhan', 'Bollywood'),
    (6, 'Neha Kakkar', 'Bollywood'),
    (7, 'Sonu Nigam', 'Bollywood'),
    (8, 'Lata Mangeshkar', 'Bollywood'),
    (9, 'Armaan Malik', 'Bollywood'),
    (10, 'Nusrat Fateh Ali Khan', 'Sufi'),
    (11, 'Rahat Fateh Ali Khan', 'Sufi'),
    (12, 'Amit Trivedi', 'Bollywood'),
    (13, 'Mohit Chauhan', 'Bollywood'),
    (14, 'Shaan', 'Bollywood'),
    (15, 'Udit Narayan', 'Bollywood'),
    (16, 'Javed Ali', 'Bollywood'),
    (17, 'K.K.', 'Bollywood'),
    (18, 'Asees Kaur', 'Bollywood'),
    (19, 'Pritam', 'Bollywood'),
    (20, 'Ankit Tiwari', 'Bollywood');
    
    select* from artists;
    
    create table songs(song_id int primary key,song_title varchar(30),duration time, artist_id int, FOREIGN KEY (artist_id) REFERENCES Artists(artist_id));
    insert into songs(song_id,song_title,duration,artist_id) values  (1, 'Tum Hi Ho', '00:04:24', 1),
    (2, 'Channa Mereya', '00:04:49', 1),
    (3, 'Kal Ho Naa Ho', '00:05:21', 2),
    (4, 'Gerua', '00:04:47', 3),
    (5, 'Jeene Laga Hoon', '00:03:52', 4),
    (6, 'Tera Ban Jaunga', '00:03:56', 5),
    (7, 'Dil Diyan Gallan', '00:04:21', 4),
    (8, 'Dilbar', '00:02:45', 6),
    (9, 'Mere Sapno Ki Rani', '00:04:46', 7),
    (10, 'Suraj Hua Maddham', '00:07:05', 3),
    (11, 'Tera Ghata', '00:02:44', 8),
    (12, 'Tujhe Kitna Chahne Lage', '00:04:42', 1),
    (13, 'Tum Se Hi', '00:04:35', 9),
    (14, 'Iktara', '00:04:13', 10),
    (15, 'Afreen Afreen', '00:06:45', 11),
    (16, 'Pehli Nazar Mein', '00:05:27', 12),
    (17, 'Zara Zara', '00:05:30', 13),
    (18, 'Bol Do Na Zara', '00:04:53', 14),
    (19, 'Janam Janam', '00:03:59', 15),
    (20, 'Tum Mile', '00:05:33', 16);
     select * from songs;
     
create table albums(album_id int primary key,album_title varchar(100),release_date date, artist_id int,foreign key(artist_id) references artists(artist_id));
insert into albums(album_id,album_title,release_date,artist_id) values (1, 'Aashiqui 2', '2013-04-25', 1),
    (2, 'Ae Dil Hai Mushkil', '2016-10-28', 2),
    (3, 'Kal Ho Naa Ho', '2003-11-27', 3),
    (4, 'Dilwale', '2015-12-18', 3),
    (5, 'Ram-Leela', '2013-11-15', 4),
    (6, 'Kabir Singh', '2019-06-21', 5),
    (7, 'Tiger Zinda Hai', '2017-12-22', 4),
    (8, 'Satyameva Jayate', '2018-08-15', 6),
    (9, 'Aradhana', '1969-09-27', 7),
    (10, 'Kabhi Khushi Kabhie Gham', '2001-12-14', 3),
    (11, 'Lost Stories', '2012-04-30', 8),
    (12, 'Bajrangi Bhaijaan', '2015-07-17', 4),
    (13, 'Rockstar', '2011-11-11', 9),
    (14, 'Wake Up Sid', '2009-10-02', 10),
    (15, 'Raees', '2017-01-25', 11),
    (16, 'Rehnaa Hai Terre Dil Mein', '2001-10-19', 12),
    (17, 'Jab We Met', '2007-10-26', 13),
    (18, 'Azhar', '2016-05-13', 14),
    (19, 'Phir Hera Pheri', '2006-06-09', 15),
    (20, 'Yeh Jawaani Hai Deewani', '2013-05-31', 16);
    
select*from albums;

create table user_playlists(playlist_id int primary key,user_id int, playlist_name varchar(100),creation_date date, foreign key (user_id) references users(user_id));
insert into user_playlists(playlist_id,user_id,playlist_name,creation_date) values (1, 1, 'Favorites', '2024-04-25'),
    (2, 2, 'Chill Playlist', '2024-04-25'),
    (3, 3, 'Road Trip Mix', '2024-04-25'),
    (4, 4, 'Morning Vibes', '2024-04-25'),
    (5, 5, 'Workout Jams', '2024-04-25'),
    (6, 6, 'Relaxation Station', '2024-04-25'),
    (7, 7, 'Study Beats', '2024-04-25'),
    (8, 8, 'Party Playlist', '2024-04-25'),
    (9, 9, 'Throwback Hits', '2024-04-25'),
    (10, 10, 'Rainy Day Melodies', '2024-04-25'),
    (11, 11, 'Romantic Ballads', '2024-04-25'),
    (12, 12, 'Feel-Good Tunes', '2024-04-25'),
    (13, 13, 'Travel Playlist', '2024-04-25'),
    (14, 14, 'Emotional Rollercoaster', '2024-04-25'),
    (15, 15, 'Groovy Funk', '2024-04-25'),
    (16, 16, 'Indie Vibes', '2024-04-25'),
    (17, 17, 'Summer Anthems', '2024-04-25'),
    (18, 18, 'Late Night Jazz', '2024-04-25'),
    (19, 19, 'Soulful Rhythms', '2024-04-25'),
    (20, 20, 'EDM Extravaganza', '2024-04-25');

select*from user_playlists;

create table recommendations(recommendation_id int primary key,user_id int,song_id int,recommendation_date date,foreign key(user_id) references users(user_id),foreign key(song_id) references songs(song_id));
insert into recommendations(recommendation_id,user_id,song_id,recommendation_date) values  (1, 1, 1, '2024-04-25'),
    (2, 1, 2, '2024-04-25'),
    (3, 2, 3, '2024-04-25'),
    (4, 2, 4, '2024-04-25'),
    (5, 3, 5, '2024-04-25'),
    (6, 3, 6, '2024-04-25'),
    (7, 4, 7, '2024-04-25'),
    (8, 4, 8, '2024-04-25'),
    (9, 5, 9, '2024-04-25'),
    (10, 5, 10, '2024-04-25'),
    (11, 6, 11, '2024-04-25'),
    (12, 6, 12, '2024-04-25'),
    (13, 7, 13, '2024-04-25'),
    (14, 7, 14, '2024-04-25'),
    (15, 8, 15, '2024-04-25'),
    (16, 8, 16, '2024-04-25'),
    (17, 9, 17, '2024-04-25'),
    (18, 9, 18, '2024-04-25'),
    (19, 10, 19, '2024-04-25'),
    (20, 10, 20, '2024-04-25');

select*from recommendations;

--Sub queries questions

/*1.Find the username of the user who registered First*/
select user_id,name,registration_date from users where registration_date= (select min(registration_date) from users);

/*2.Retrieve the title of the album with the highest rated song*/
SELECT * FROM albums WHERE album_id = ( SELECT album_id FROM songs WHERE song_id = (SELECT song_id FROM Recommendations
GROUP BY song_id ORDER BY COUNT(*)DESC LIMIT 1));

/*3.Retreive the names of users who have not recieved any recommendations*/
select*from recommendations;
select *from users;
select user_id,name from users where user_id not in(select user_id from recommendations);

/* 4.Find all users who have created playlists*/
select*from user_playlists;
select user_id,name from users where user_id in (select user_id from user_playlists);

/* 5.Find all Songs released by artists who belongs to a specific genre*/
select * from  artists where genre not in (select genre from artists where genre="Bollywood");

/*6.Find the names of users who have not creates any playlists*/
select user_id,name from users where user_id not in(select user_id from user_playlists);



/*JOINS*/

/*1.List all songs with their corresponding artists*/
select artists.artist_id,songs.song_title from songs inner join artists on artists.artist_id=songs.artist_id;

/*2.Retrieve all songs including those without an associated album*/
select songs.song_id,songs.song_title, albums.artist_id from songs left join albums on albums.album_id = songs.song_id;

/*3. Show all recommendations made to users, including recommendations where the associated user has been deleted.*/
select *from recommendations right join users on users.user_id =  recommendations.user_id;

/*4.Retrieve all songs and their corresponding artists' names, including songs without an associated artist and artists without any songs*/
select songs.song_id,Songs.song_title, Artists.artist_name from songs left join artists on artists.artist_id=songs.artist_id union select songs.song_id,Songs.song_title, Artists.artist_name
FROM Songs Right JOIN Artists ON Songs.artist_id = Artists.artist_id;

/* 5.Generate a list of all possible combinations of songs and artists, regardless of whether they are related or not.*/
select songs.song_title,artists.artist_name from songs cross join artists on artists.artist_id=songs.artist_id;

-- 1.Retrieve all artists whose names start with a certain letter or letters
SELECT * FROM artists WHERE artist_name LIKE 'A%';

-- 2.Find all songs with titles containing a specific word or phrase
SELECT * FROM Songs WHERE song_title LIKE 'T%';



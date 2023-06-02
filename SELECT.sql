-- SELECT-запрос, выводит название и год выхода альбомов, вышедших в 2018 году; 
SELECT album_name, album_year FROM album
WHERE album_year = 2018;

-- SELECT-запрос, выводит название и продолжительность самого длительного трека; 
SELECT track_name, track_duration FROM track
ORDER BY track_duration DESC
LIMIT 1;

-- SELECT-запрос, название треков, продолжительность которых не менее 3,5 минуты;
SELECT track_name, track_duration FROM track
WHERE track_duration >= 210;

-- SELECT-запрос, названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT compilation_name, compilation_year FROM compilation
WHERE compilation_year BETWEEN 2018 AND 2020;

-- SELECT-запрос, исполнители, чье имя состоит из 1 слова;
SELECT singer_name FROM singer
WHERE singer_name NOT LIKE '% %';

-- SELECT-запрос, название треков, которые содержат слово "мой"/"my";
SELECT track_name FROM track
 WHERE track_name LIKE '%Мой%'
 or track_name LIKE '%мой%'
 or track_name LIKE '%My%'
 or track_name ILIKE '%my%';
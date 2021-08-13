SELECT * FROM invoice_line
WHERE unit_price > .99;

SELECT c.first_name "First",c.last_name "Last",i.invoice_date "Date", i.total
FROM customer c
JOIN invoice i
ON c.customer_id = i.customer_id;

SELECT c.first_name "First", c.last_name "Last", e.first_name "Rep-first",e.last_name "Rep-Last"
FROM employee e
JOIN customer c
ON c.support_rep_id = e.employee_id;

SELECT a.name "ARTIST", al.title "ALBUM"
FROM artist a
JOIN album al
ON a.artist_id = al.artist_id;

SELECT pt.track_id "ID", p.name "Playlist"
FROM playlist_track pt
JOIN track t
ON pt.track_id = t.track_id
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

SELECT t.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE playlist_id = 13;

SELECT t.name "Track name", p.name
FROM track t
JOIN playlist_track pt 
ON t.track_id = pt.track_id
JOIN playlist p 
ON pt.playlist_id = p.playlist_id;

SELECT t.name "Track name", a.title "Title"
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';
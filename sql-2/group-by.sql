SELECT COUNT (*), g.name FROM genre g
JOIN track t ON g.genre_id = t.genre_id
GROUP BY g.name;

SELECT COUNT(*), g.name FROM genre g
JOIN track t ON g.genre_id = t.genre_id
WHERE g.name = 'Rock' OR g.name = 'Pop'
GROUP BY g.name;

SELECT COUNT (*), a.name FROM artist a
JOIN album al ON al.artist_id = a.artist_id
GROUP BY a.name;
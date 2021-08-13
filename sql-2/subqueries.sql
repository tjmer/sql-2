SELECT * FROM invoice
WHERE invoice_id IN(
	SELECT invoice_id FROM invoice_line
  WHERE unit_price > .99
);

SELECT pt.track_id FROM playlist_track pt
WHERE playlist_id IN(
  SELECT playlist_id FROM playlist p
  WHERE p.name = 'Music'
);

SELECT t.name FROM track t
WHERE track_id IN (
  SELECT track_id FROM playlist_track pt
  WHERE pt.playlist_id = 5
);

SELECT t.track_id FROM track t
WHERE genre_id IN(
  SELECT genre_id FROM genre g
  WHERE g.name = 'Comedy'
);

SELECT t.track_id FROM track t
WHERE album_id IN(
  SELECT album_id FROM album a
  WHERE a.title = 'Fireball'
);

SELECT t.track_id FROM track t
WHERE album_id IN(
  SELECT album_id FROM album
  WHERE artist_id IN(
    SELECT artist_id FROM artist a
    WHERE a.name = 'Queen')
);
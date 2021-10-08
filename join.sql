SELECT *
FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE invoice_line.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i 
JOIN customer c ON c.customer_id = i.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id;

SELECT a.name, al.title
FROM artist a
JOIN album al ON al.artist_id = a.artist_id;

SELECT p.name, pl.playlist_track_id
FROM playlist p
JOIN playlist_track pl ON pl.playlist_id = p.playlist_id
WHERE p.name = 'Music';

SELECT t.name
FROM track t
JOIN playlist_track pl ON pl.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pl.playlist_id;

SELECT t.name, p.name
FROM track t
JOIN playlist_track pl ON pl.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pl.playlist_id;

SELECT t.name, a.title
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';
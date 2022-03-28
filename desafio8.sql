-- Desafio 8
SELECT artists.artist AS artista,
albums.album AS album
FROM artists
JOIN albums ON artists.artist_id = albums.artist_id
WHERE artists.artist = "Walter Phoenix"
ORDER BY album ASC;
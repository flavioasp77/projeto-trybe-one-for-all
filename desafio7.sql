-- Desafio 7
SELECT artists.artist AS artista,
albums.album AS album,
count(followers.user_id) AS seguidores
FROM artists
JOIN albums ON albums.artist_id = artists.artist_id
JOIN followers ON followers.artist_id = artists.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;
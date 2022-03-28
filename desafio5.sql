-- Desafio 5
SELECT songs.song AS cancao,
	count(historic.song_id) AS reproducoes
FROM songs
JOIN historic ON historic.song_id = songs.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC 
LIMIT 2;
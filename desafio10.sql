-- Desafio 10
SELECT songs.song AS nome,
	count(*) AS reproducoes
FROM historic
JOIN songs on historic.song_id = songs.song_id
JOIN users ON historic.user_id = users.user_id
WHERE users.plan_id IN(1, 4)
GROUP BY nome
ORDER BY nome ASC;
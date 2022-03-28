-- Desafio 3
SELECT users.user AS usuario,
	count(historic.user_id) AS qtde_musicas_ouvidas,
	round(sum(songs.duration) / 60, 2) AS total_minutos
	FROM users
		JOIN historic ON users.user_id = historic.user_id
		JOIN songs ON historic.song_id = songs.song_id
	GROUP BY users.user ORDER BY users.user ASC;
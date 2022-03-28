-- Desafio 4
SELECT users.user AS usuario,
	IF(MAX(YEAR(historic.playback_date)) = "2021", "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM users
JOIN historic ON users.user_id = historic.user_id
GROUP BY users.user ORDER BY users.user ASC;
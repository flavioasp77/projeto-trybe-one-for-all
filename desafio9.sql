-- Desafio 9
SELECT count(historic.user_id) AS quantidade_musicas_no_historico
FROM historic
JOIN users ON historic.user_id = users.user_id
WHERE users.user = "Bill";
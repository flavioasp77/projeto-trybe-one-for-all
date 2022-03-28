-- Desafio 2
SELECT 
  (SELECT count(*) FROM songs) as cancoes,
  (SELECT count(*) FROM artists) as artistas,
  (SELECT count(*) FROM albums) as albuns;
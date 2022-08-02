SELECT SpotifyClone.usuarios.usuario AS usuario,
COUNT(SpotifyClone.cancoes.cancao) AS qtde_musicas_ouvidas,
CAST(SUM((SpotifyClone.cancoes.duracao_segundos) / 60) AS DECIMAL(5,2))
AS total_minutos
FROM SpotifyClone.historico_reproducoes
INNER JOIN SpotifyClone.usuarios 
ON usuario_id_historico_reproducao=SpotifyClone.usuarios.usuario_id
INNER JOIN  SpotifyClone.cancoes
ON cancao_id_historico_reproducao=SpotifyClone.cancoes.cancao_id
GROUP BY SpotifyClone.usuarios.usuario;
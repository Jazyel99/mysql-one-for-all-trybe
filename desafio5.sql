SELECT SpotifyClone.cancoes.cancao AS cancao,
COUNT(SpotifyClone.cancoes.cancao) AS reproducoes
FROM SpotifyClone.historico_reproducoes 
INNER JOIN SpotifyClone.usuarios 
ON usuario_id_historico_reproducao=SpotifyClone.usuarios.usuario_id
INNER JOIN  SpotifyClone.cancoes
ON cancao_id_historico_reproducao=SpotifyClone.cancoes.cancao_id
GROUP BY SpotifyClone.cancoes.cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
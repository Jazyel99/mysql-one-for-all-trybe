SELECT SpotifyClone.cancoes.cancao AS nome,
COUNT(cancao_id_historico_reproducao) AS reproducoes
FROM SpotifyClone.historico_reproducoes
INNER JOIN SpotifyClone.cancoes
ON cancao_id_historico_reproducao=SpotifyClone.cancoes.cancao_id
INNER JOIN SpotifyClone.usuarios
ON usuario_id_historico_reproducao=SpotifyClone.usuarios.usuario_id
WHERE SpotifyClone.usuarios.plano_id=1 OR SpotifyClone.usuarios.plano_id=4
GROUP BY nome
ORDER BY reproducoes DESC, nome ASC;
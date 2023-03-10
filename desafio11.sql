SELECT cancao AS nome_musica,
(
	CASE
	  WHEN cancao LIKE '%Streets' THEN REPLACE(cancao, 'Streets', 'Code Review')
      WHEN cancao LIKE '%Her Own' THEN REPLACE(cancao, 'Her Own', 'Trybe')
      WHEN cancao LIKE '%Inner Fire' THEN REPLACE(cancao, 'Inner Fire', 'Project')
      WHEN cancao LIKE '%Silly' THEN REPLACE(cancao, 'Silly', 'Nice')	
      WHEN cancao LIKE '%Circus' THEN REPLACE(cancao, 'Circus', 'Pull Request')	
      ELSE cancao
	END
) AS novo_nome
FROM SpotifyClone.cancoes
WHERE cancao LIKE '%Streets' OR cancao LIKE '%Her Own' OR Cancao LIKE '%Inner Fire'
OR cancao LIKE '%Silly' OR cancao LIKE '%Circus'
ORDER BY nome_musica ASC;
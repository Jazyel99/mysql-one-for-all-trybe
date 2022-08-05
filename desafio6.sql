SELECT CAST(MIN(valor) AS DECIMAL(5,2)) AS faturamento_minimo,
CAST(MAX(valor) AS DECIMAL(5,2)) AS faturamento_maximo,
CAST(AVG(valor) AS DECIMAL(5,2)) AS faturamento_medio,
CAST(SUM(valor) AS DECIMAL(5,2)) AS faturamento_total
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.planos
ON SpotifyClone.usuarios.plano_id=SpotifyClone.planos.plano_id;
SELECT COUNT(cancao) AS cancoes,
COUNT(DISTINCT(artista_id_cancoes)) AS artistas,
COUNT(DISTINCT(album_id_cancoes)) AS albuns
from SpotifyClone.cancoes;
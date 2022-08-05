SELECT SpotifyClone.artistas.artista as artista, SpotifyClone.albuns.album as album,
COUNT(artista_seguido_artista_id) as seguidores
FROM SpotifyClone.artistas_seguidos
INNER JOIN SpotifyClone.artistas
ON artista_seguido_artista_id=SpotifyClone.artistas.artista_id
INNER JOIN SpotifyClone.albuns
ON artista_seguido_artista_id=SpotifyClone.albuns.album_artista_id
GROUP BY SpotifyClone.artistas.artista, SpotifyClone.albuns.album
ORDER BY seguidores desc, artista asc, album asc;
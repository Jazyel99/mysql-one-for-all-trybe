SELECT SpotifyClone.artistas.artista, album FROM SpotifyClone.albuns
INNER JOIN SpotifyClone.artistas
ON album_artista_id=SpotifyClone.artistas.artista_id
WHERE SpotifyClone.artistas.artista='Walter Phoenix';
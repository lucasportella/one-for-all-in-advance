CREATE VIEW perfil_artistas AS
    SELECT 
        art.artist AS 'artista',
        alb.album AS 'album',
        COUNT(fol.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.artists AS art
            INNER JOIN
        SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
            INNER JOIN
        SpotifyClone.following AS fol ON fol.artist_id = art.artist_id
    GROUP BY alb.album , art.artist
    ORDER BY COUNT(fol.artist_id) DESC , art.artist , alb.album;

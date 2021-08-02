CREATE VIEW top_3_artistas AS
    SELECT 
        art.artist AS 'artista',
        COUNT(fol.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.following AS fol
            INNER JOIN
        SpotifyClone.artists AS art ON art.artist_id = fol.artist_id
    GROUP BY fol.artist_id
    ORDER BY COUNT(fol.artist_id) DESC
    LIMIT 3;
    
CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.song AS 'cancao', COUNT(h.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.historic AS h
            INNER JOIN
        SpotifyClone.songs AS s ON s.song_id = h.song_id
    GROUP BY h.song_id
    ORDER BY COUNT(h.song_id) DESC , s.song
    LIMIT 2;

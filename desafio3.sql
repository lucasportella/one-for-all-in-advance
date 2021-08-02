CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.`user` AS 'usuario', s.song AS 'nome'
    FROM
        SpotifyClone.historic AS h
            INNER JOIN
        SpotifyClone.songs AS s ON s.song_id = h.song_id
            INNER JOIN
        SpotifyClone.users AS u ON u.user_id = h.user_id
    ORDER BY u.`user` , s.song;

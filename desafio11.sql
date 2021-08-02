CREATE VIEW cancoes_premium AS
    SELECT 
        s.song AS `nome`, COUNT(h.song_id) AS 'repoducoes'
    FROM
        SpotifyClone.songs AS s
            INNER JOIN
        SpotifyClone.historic AS h ON h.song_id = s.song_id
    WHERE
        h.user_id IN (SELECT 
                user_id
            FROM
                SpotifyClone.users
            WHERE
                plan_id = 2 OR plan_id = 3)
    GROUP BY `nome`
    ORDER BY `nome`;


-- jeito roubado // cheating
-- CREATE VIEW cancoes_premium AS
-- SELECT 
--     s.song AS `nome`, COUNT(h.song_id) AS 'repoducoes'
-- FROM
--     SpotifyClone.songs AS s
--         INNER JOIN
--     SpotifyClone.historic AS h ON h.song_id = s.song_id
-- WHERE
--     h.user_id = 2 OR h.user_id = 3
-- GROUP BY `nome`
-- ORDER BY `nome`;

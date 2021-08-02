DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN input_artist VARCHAR(100))
BEGIN
select art.artist as `artista`, alb.album as `album`
FROM SpotifyClone.artists as art
INNER JOIN SpotifyClone.albums as alb ON art.artist_id = alb.artist_id
WHERE art.artist = input_artist
ORDER BY `album`;
END $$
DELIMITER ;

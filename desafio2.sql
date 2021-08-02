CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(canc.song_id) AS 'cancoes',
COUNT(DISTINCT art.artist_id) AS 'artistas',
COUNT(DISTINCT alb.album_id) AS 'albuns'
FROM SpotifyClone.songs as canc
INNER JOIN SpotifyClone.albums as alb ON canc.album_id = alb.album_id
INNER JOIN SpotifyClone.artists as art ON alb.artist_id = art.artist_id;

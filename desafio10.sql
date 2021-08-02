DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id_input INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE user_music_hist INT;
SELECT 
    COUNT(user_id)
FROM
    historic
WHERE
    user_id = user_id_input INTO user_music_hist;
RETURN user_music_hist;
END $$
DELIMITER ;

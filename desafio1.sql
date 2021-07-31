DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan VARCHAR(30) NOT NULL,
    plan_value DECIMAL(4,2) NOT NULL
)

CREATE TABLE users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user VARCHAR(60) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
)

CREATE TABLE artists(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist VARCHAR(60) NOT NULL,
)

CREATE TABLE albums(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(60) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)

CREATE TABLE songs(
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song VARCHAR(60) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
)

CREATE TABLE following(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id)
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)

CREATE TABLE historic(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (user_id, song_id)
    FOREIGN KEY (user_id) REFERENCES users(user_id)
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
)
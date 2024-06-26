CREATE TABLE IF NOT EXISTS `SpotifyClone`.`user_fav_musics` (
    `user_id` INT NOT NULL,
    `music_id` INT,
    FOREIGN KEY (`user_id`) REFERENCES `SpotifyClone`.`user` (`user_id`),
    FOREIGN KEY (`music_id`) REFERENCES `SpotifyClone`.`musics` (`music_id`),
    UNIQUE (`user_id`, `music_id`)
) ENGINE = InnoDB;

INSERT INTO `SpotifyClone`.`user_fav_musics` (user_id, music_id)
VALUES
    ('1', '3'),
    ('1', '6'),
    ('1', '10'),
    ('2', '4'),
    ('3', '1'),
    ('3', '3'),
    ('4', '7'),
    ('4', '4'),
    ('5', '2'),
    ('5', '10'),
    ('8', '4'),
    ('9', '7'),
    ('10', '3');
-- Задача 2.
-- Написать скрипт, добавляющий в созданную БД vk 2-3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей) (CREATE TABLE)

-- таблица фотоальбомов
DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255),
    `user_id` BIGINT UNSIGNED NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- таблица фотографий
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL,
	`album_id` BIGINT unsigned,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id),
    FOREIGN KEY (media_id) REFERENCES media(id)
);


-- Задача 3.
-- Заполнить 2 таблицы БД vk данными (до 10 записей в каждой таблице).
use vk;

-- запросы во все таблицы, вида:

INSERT INTO `users` VALUES ('1','Elfrieda','Torphy','dylan89@example.com','353722'),
('2','Issac','Hansen','rico75@example.net','127'),
('3','Dejuan','Kuhic','karianne57@example.org','714'),
('4','Vicente','Schroeder','talia.mohr@example.org','1'),
('5','Lauretta','Ebert','franecki.aidan@example.com','665734'),
('6','Duane','Daugherty','antonietta53@example.com','0'),
('7','Mckenzie','Kihn','weber.alexandrine@example.net','0'),
('8','Trudie','Boyer','gklocko@example.net','1'),
('9','Kareem','Lind','deondre64@example.com','1'),
('10','Krista','O\'Conner','stanton.adonis@example.org','262832');
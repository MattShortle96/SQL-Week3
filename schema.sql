DROP DATABASE IF EXISTS social_media_DB;

CREATE DATABASE social_media_DB;

USE social_media_DB;

drop table if exists users;
drop table if exists posts;
drop table if exists comments;


CREATE TABLE users(
	user_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    pass VARCHAR(32) NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE posts(
	post_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    post_title VARCHAR(50) NOT NULL,
    post_content TEXT(400),
    post_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments(
	comment_id INT NOT NULL AUTO_INCREMENT,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    comment_content TEXT(200),
    comment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (comment_id, post_id, user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);



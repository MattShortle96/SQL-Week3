USE social_media_db;

INSERT INTO users(username, first_name, last_name, email, pass)
VALUES('MattShortle96', 'Matthew', 'Shortle', 'shortle@email.com', 'password');
INSERT INTO users(username, first_name, last_name, email, pass)
VALUES('TB12', 'Tom', 'Brady', 'tbGOAT@gmail.com', '6rings');
INSERT INTO users(username, first_name, last_name, email, pass)
VALUES('LBJ', 'Lebron', 'James', 'lebronbetterthanjordan@email.com', '4rings');

INSERT INTO posts(user_id, post_title, post_content)
VALUES(1, 'First', 'This is my first post.');
INSERT INTO posts(user_id, post_title, post_content)
VALUES(3, 'Why Lebron is better than Jordan', 'Jordan carried by Pippen lol');

INSERT INTO comments(post_id, user_id, comment_content)
VALUES(1, 2, 'Hi Matthew!');
INSERT INTO comments(post_id, user_id, comment_content)
VALUES(1, 3, 'Congrats on your first post!');
INSERT INTO comments(post_id, user_id, comment_content)
VALUES(2, 1, 'I disagree. Michael Jordan won 6 rings over Lebrons 4.');

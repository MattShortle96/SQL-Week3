USE social_media_db;

SELECT * FROM users;

SELECT u.username, p.post_title, p.post_content, p.post_date
FROM posts p
INNER JOIN users u ON u.user_id = p.user_id;

SELECT c.comment_id, p.post_title, p.post_content, c.comment_content, u.user_id 
FROM comments c
INNER JOIN posts p ON p.post_id = c.post_id
INNER JOIN users u ON u.user_id = c.user_id;


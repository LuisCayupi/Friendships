SELECT users.first_name, users.last_name, user2.first_name, user2.last_name FROM users
LEFT JOIN friendships ON user_id = users.id
JOIN users as user2 ON friend_id = user2.id;

SELECT users.first_name, users.last_name FROM users
LEFT JOIN friendships ON user_id = users.id
JOIN users as user2 ON friend_id = user2.id
WHERE user2.first_name='Kermit';

SELECT user2.first_name ,user2.last_name ,COUNT(user2.id) AS quantity FROM users 
LEFT JOIN friendships ON user_id=users.id 
JOIN users as user2 ON friend_id = user2.id
GROUP BY user2.id ORDER BY quantity ASC ;

SELECT user2.first_name ,user2.last_name ,COUNT(user2.id) AS quantity FROM users 
LEFT JOIN friendships ON user_id=users.id 
JOIN users as user2 ON friend_id = user2.id


INSERT INTO friends.users (id, first_name, last_name, created_at, updated_at)
VALUES (6, 'Luis', 'Cayupi', NOW(), NOW());

INSERT INTO friends.friendships (id, user_id, friend_id, created_at, updated_at)
VALUES (7, 6 , 4, NOW(), NOW()),(8, 6 , 2, NOW(), NOW()),(7, 6 , 5, NOW(), NOW());


SELECT Eli_friends.first_name, Eli_friends.last_name FROM users
JOIN friendships ON user_id = users.id
JOIN users as Eli_friends ON friend_id = Eli_friends.id
WHERE users.first_name = 'Eli' ORDER BY first_name DESC;

DELETE FROM friendships 
WHERE friendships.user_id = 2;

SELECT  user.first_name, user.last_name FROM users
LEFT JOIN friendships ON user_id = users.id
JOIN users as user ON friend_id = user.id;
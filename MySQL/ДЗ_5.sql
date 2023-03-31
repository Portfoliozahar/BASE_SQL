#1
SELECT 
	COUNT(*) AS cnt,
	u.id
FROM users AS u
JOIN friend_requests AS fr ON (
	u.id = fr.target_user_id OR u.id = fr.initiator_user_id 
)
WHERE fr.status = 'approved'
GROUP BY u.id
ORDER BY cnt DESC;


CREATE OR REPLACE VIEW friends_amount AS 
SELECT 
	COUNT(*) AS cnt,
	u.id
FROM users AS u
JOIN friend_requests AS fr ON (
	u.id = fr.target_user_id OR u.id = fr.initiator_user_id 
)
WHERE fr.status = 'approved'
GROUP BY u.id
ORDER BY cnt DESC;


#2

select * FROM likes;

SELECT id, user_id, media_id,created_at FROM likes;

#3

DROP VIEW likes;




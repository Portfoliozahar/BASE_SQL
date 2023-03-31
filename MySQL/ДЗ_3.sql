USE vk;
#1 

SELECT DISTINCT firstname
FROM users
ORDER BY firstname;


#2
SELECT *
FROM profiles 
WHERE 
     TIMESTAMPDIFF(YEAR, birthday, NOW()) > 35
     AND gender = 'm'
     
     
  #3
SELECT 
	COUNT(*),
	status
FROM friend_requests 
GROUP BY status



#4
SELECT 
	COUNT(*) AS cnt
FROM friend_requests 
GROUP BY initiator_user_id 
ORDER BY cnt DESC
LIMIT 1;

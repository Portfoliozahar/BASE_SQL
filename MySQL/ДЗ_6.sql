use vk;


#1 

set user_id = 1;

select * from users order by phone desc
where id = user_id;

delete from messages 
where from_user_id  = user_id or to_user_id = user_id;

delete from media  
where user_id = user_id;

delete from profiles 
where user_id = user_id;


delete from users 
where id = user_id;

set result = user_id;







#2
DELIMITER $$
CREATE PROCEDURE delete_user(IN user_id INT, OUT result INT)
BEGIN
    set result = 0;
   
    START TRANSACTION;
    


   select * from users order by phone desc
   where id = user_id;

   delete from messages 
   where from_user_id  = user_id or to_user_id = user_id;

   delete from media  
   where user_id = user_id;

   delete from profiles 
   where user_id = user_id;


   delete from users 
   where id = user_id;

   set result = user_id;
    
    COMMIT;
END$$
DELIMITER ;



CALL delete_user(10, @result);
SELECT @result;




#3
DELIMITER $$
CREATE TRIGGER new_community_trigger
AFTER INSERT ON communities
FOR EACH ROW
BEGIN
    IF CHAR_LENGTH(NEW.name) >= 5 THEN
        INSERT INTO communities (community_id, community_name)
        VALUES (NEW.id, NEW.name);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ошибка! Название должно содержать более 5 символов.';
    END IF;
END$$
DELIMITER ;
--TABLE SCRIPT -

CREATE TABLE USERS(
 user_id int,
 action varchar(20),
 action_date date)
 ;
INSERT INTO USERS VALUES
 (1, 'Start', '2020-02-12'),
 (1, 'Cancel', '2020-02-13'),
 (2, 'Start', '2020-02-11'),
 (2, 'Publish', '2020-02-14'),
 (3, 'Start', '2020-02-15'),
 (3, 'Cancel', '2020-02-15'),
 (4, 'Start', '2020-02-18'),
 (1, 'Publish', '2020-02-19');

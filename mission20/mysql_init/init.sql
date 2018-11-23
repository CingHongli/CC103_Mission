create database example;
use example;
ALTER DATABASE example CHARACTER SET utf8 COLLATE utf8_unicode_ci;

create table cc103_users (
	userid INTEGER(255),
	username VARCHAR(255)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#新增read-only user
#格式:create user '使用者'@'來源' IDENTIFIED BY '密碼';
#來源為%表任意地方
create user 'read_only_user'@'%' IDENTIFIED BY 'iii';


#僅給予read-only user查詢權限
#格式:GRANT 權限 ON 資料庫.表格 TO '使用者'@'來源' IDENTIFIED BY '密碼';
GRANT SELECT ON example.cc103_users TO 'read_only_user'@'%' IDENTIFIED BY 'iii';

#新增full-control user
create user 'full_control_user'@'%' IDENTIFIED BY 'iii';

#給予full-control user全部權限
GRANT ALL ON example.cc103_users TO 'full_control_user'@'%' IDENTIFIED BY 'iii';

#新增初始資料
INSERT INTO cc103_users (userid, username) VALUES (1, 'user1');
INSERT INTO cc103_users (userid, username) VALUES (2, 'user2');
INSERT INTO cc103_users (userid, username) VALUES (3, 'user3');
INSERT INTO cc103_users (userid, username) VALUES (4, 'user4');
INSERT INTO cc103_users (userid, username) VALUES (5, 'user5');






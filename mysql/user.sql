CREATE USER 'user1'@'localhost' IDENTIFIED BY 'pass1';
CREATE USER 'user1'@'%' IDENTIFIED BY 'pass1';
GRANT ALL ON *.* TO 'user1'@'localhost';
GRANT ALL ON *.* TO 'user1'@'%';
FLUSH PRIVILEGES;

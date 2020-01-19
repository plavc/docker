CREATE DATABASE `test.real_esatates` CHARACTER SET UTF8 COLLATE utf8_bin;
CREATE DATABASE `test.insurances` character set UTF8 collate utf8_bin;
CREATE DATABASE `test.authorization` character set UTF8 collate utf8_bin;

CREATE USER `test` IDENTIFIED BY 'pass';

USE `test.real_esatates`
GRANT ALL ON `test.real_esatates` TO `test`;

USE `test.insurances`
GRANT ALL ON `test.insurances` TO `test`;

USE `test.authorization`
GRANT ALL ON `test.authorization` TO `test`;
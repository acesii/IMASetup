create database ima default charset utf8 default collate utf8_bin;

grant all on ima.* to 'ima'@'localhost' identified by 'ima';
grant all on ima.* to 'ima'@'localhost.localdomain' identified by 'ima';
grant all on ima.* to 'ima'@'%' identified by 'ima';

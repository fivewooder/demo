DROP TABLE IF EXISTS `paper`;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user`(
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sys_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE (`sys_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户注册';


CREATE TABLE `paper` (
`paper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'paperID',
`user_id` bigint(20) NOT NULL,
`name` varchar(100) NOT NULL COMMENT 'paper名称',
`number` int(11) NOT NULL COMMENT 'paper数量',
`detail` varchar(200) NOT NULL COMMENT 'paper描述',
PRIMARY KEY (`paper_id`),
FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='paper表';

insert into user(name, sys_name, password) values ('杨林彬','uestcbean','Uestc2014');
insert into user(name, sys_name, password) values ('章逸佳','YijiaZhang','19960805');

insert into paper(user_id, name, number, detail) values (1, '哈利波特与火焰杯', 1, 'JK罗琳');
insert into paper(user_id, name, number, detail) values (1, '哈利波特与半血亲王子', 1, 'JK罗琳');
insert into paper(user_id, name, number, detail) values (2, 'JAVA实战', 1, '杨林彬');
insert into paper(user_id, name, number, detail) values (2, 'JAVA入门', 2, '杨林彬');
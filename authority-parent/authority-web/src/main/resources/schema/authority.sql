/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.26 : Database - spring
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `spring`;

/*Table structure for table `sys_app_user` */

DROP TABLE IF EXISTS `sys_app_user`;

CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_app_user` */

insert  into `sys_app_user`(`USER_ID`,`USERNAME`,`PASSWORD`,`NAME`,`RIGHTS`,`ROLE_ID`,`LAST_LOGIN`,`IP`,`STATUS`,`BZ`,`PHONE`,`SFID`,`START_TIME`,`END_TIME`,`YEARS`,`NUMBER`,`EMAIL`) values ('04762c0b28b643939455c7800c2e2412','dsfsd','f1290186a5d0b1ceab27f4e77c0c5d68','w','','55896f5ce3c0494fa6850775a4e29ff6','','','1','','18766666666','','','',0,'sdfsd','187624666@qq.com');

/*Table structure for table `sys_dictionaries` */

DROP TABLE IF EXISTS `sys_dictionaries`;

CREATE TABLE `sys_dictionaries` (
  `ZD_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BIANMA` varchar(100) DEFAULT NULL,
  `ORDY_BY` int(10) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `JB` int(10) DEFAULT NULL,
  `P_BM` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ZD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dictionaries` */

insert  into `sys_dictionaries`(`ZD_ID`,`NAME`,`BIANMA`,`ORDY_BY`,`PARENT_ID`,`JB`,`P_BM`) values ('212a6765fddc4430941469e1ec8c8e6c','人事部','001',1,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_001'),('3cec73a7cc8a4cb79e3f6ccc7fc8858c','行政部','002',2,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_002'),('48724375640341deb5ef01ac51a89c34','北京','dq001',1,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_dq001'),('5a1547632cca449db378fbb9a042b336','研发部','004',4,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_004'),('7f9cd74e60a140b0aea5095faa95cda3','财务部','003',3,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_003'),('b861bd1c3aba4934acdb5054dd0d0c6e','科技不','kj',7,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_kj'),('c067fdaf51a141aeaa56ed26b70de863','部门','BM',1,'0',1,'BM'),('cdba0b5ef20e4fc0a5231fa3e9ae246a','地区','DQ',2,'0',1,'DQ'),('f184bff5081d452489271a1bd57599ed','上海','SH',2,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_SH'),('f30bf95e216d4ebb8169ff0c86330b8f','客服部','006',6,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_006');

/*Table structure for table `sys_gl_qx` */

DROP TABLE IF EXISTS `sys_gl_qx`;

CREATE TABLE `sys_gl_qx` (
  `GL_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `FX_QX` int(10) DEFAULT NULL,
  `FW_QX` int(10) DEFAULT NULL,
  `QX1` int(10) DEFAULT NULL,
  `QX2` int(10) DEFAULT NULL,
  `QX3` int(10) DEFAULT NULL,
  `QX4` int(10) DEFAULT NULL,
  PRIMARY KEY (`GL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_gl_qx` */

insert  into `sys_gl_qx`(`GL_ID`,`ROLE_ID`,`FX_QX`,`FW_QX`,`QX1`,`QX2`,`QX3`,`QX4`) values ('1','2',1,1,1,1,1,1),('2','1',1,1,1,1,1,1),('318df4c13a434293b389afe41866a04c','4',0,0,0,0,0,0),('55896f5ce3c0494fa6850775a4e29ff6','7',0,0,1,0,0,0),('68f23fc0caee475bae8d52244dea8444','7',0,0,1,1,0,0),('7dfd8d1f7b6245d283217b7e63eec9b2','1',1,1,1,0,0,0),('ac66961adaa2426da4470c72ffeec117','1',1,0,1,1,0,0),('b0c77c29dfa140dc9b14a29c056f824f','7',1,0,1,1,0,0),('e74f713314154c35bd7fc98897859fe3','6',1,1,1,1,0,0),('f944a9df72634249bbcb8cb73b0c9b86','7',1,1,1,1,0,0);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`MENU_ID`,`MENU_NAME`,`MENU_URL`,`PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`) values (1,'系统管理','#','0','1','icon-desktop','1'),(2,'组织管理','role.do','1','2',NULL,'1'),(4,'会员管理','happuser/listUsers.do','1','4',NULL,'1'),(5,'系统用户','user/listUsers.do','1','3',NULL,'1'),(6,'信息管理','#','0','2','icon-list-alt','2'),(7,'图片管理','pictures/list.do','6','1',NULL,'2'),(8,'性能监控','druid/index.html','1','5',NULL,'1');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`ROLE_ID`,`ROLE_NAME`,`RIGHTS`,`PARENT_ID`,`ADD_QX`,`DEL_QX`,`EDIT_QX`,`CHA_QX`,`QX_ID`) values ('1','系统管理员','502','0','1','1','1','1','1'),('2','超级管理员','502','1','246','50','50','38','2'),('318df4c13a434293b389afe41866a04c','组长','118','4','0','0','0','0','318df4c13a434293b389afe41866a04c'),('4','用户组','118','0','0','0','0','0',NULL),('55896f5ce3c0494fa6850775a4e29ff6','特级会员','498','7','0','0','0','0','55896f5ce3c0494fa6850775a4e29ff6'),('6','客户组','18','0','1','1','1','1',NULL),('68f23fc0caee475bae8d52244dea8444','中级会员','498','7','0','0','0','0','68f23fc0caee475bae8d52244dea8444'),('7','会员组','498','0','0','0','0','1',NULL),('7dfd8d1f7b6245d283217b7e63eec9b2','管理员B','502','1','246','0','0','0','7dfd8d1f7b6245d283217b7e63eec9b2'),('ac66961adaa2426da4470c72ffeec117','管理员A','502','1','54','54','0','246','ac66961adaa2426da4470c72ffeec117'),('b0c77c29dfa140dc9b14a29c056f824f','高级会员','498','7','0','0','0','0','b0c77c29dfa140dc9b14a29c056f824f'),('e74f713314154c35bd7fc98897859fe3','黄金客户','18','6','1','1','1','1','e74f713314154c35bd7fc98897859fe3'),('f944a9df72634249bbcb8cb73b0c9b86','初级会员','498','7','1','1','1','1','f944a9df72634249bbcb8cb73b0c9b86');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL COMMENT '用户id',
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '用户名',
  `PASSWORD` varchar(255) DEFAULT NULL COMMENT '密码',
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL COMMENT '上一次登录',
  `IP` varchar(100) DEFAULT NULL COMMENT 'IP地址',
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL COMMENT '主题皮肤',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '邮件',
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`USER_ID`,`USERNAME`,`PASSWORD`,`NAME`,`RIGHTS`,`ROLE_ID`,`LAST_LOGIN`,`IP`,`STATUS`,`BZ`,`SKIN`,`EMAIL`,`NUMBER`,`PHONE`) values ('0b3f2ab1896b47c097a81d322697446a','zhangsan','8a9dd9e37df4134bacaf77c760ce7237a6cc8577','张三','','2','2015-01-02 12:04:51','127.0.0.1','0','小张','default','wwwwq@qq.com','1101','18736888888'),('1','admin','dd94709528bb1c83d08f3088d4043f4742891f4f','系统管理员','1133671055321055258374707980945218933803269864762743594642571294','1','2015-09-19 18:35:51','0:0:0:0:0:0:0:1','0','最高统治者','default','admin@main.com','001','18781188896'),('292770c7ea224e7899cce95305b8b60b','zhaoliu','8a9dd9e37df4134bacaf77c760ce7237a6cc8577','赵六','','e74f713314154c35bd7fc98897859fe3','2015-09-19 18:44:54','0:0:0:0:0:0:0:1','0','赵六黄金会员','default','827935210@163.com','4231','13525793134'),('425dfd66e34b491bba4dd6d8d84157f5','zhangjiu','202cb962ac59075b964b07152d234b70','张久','','2','','','0','小张','default','zhangsssan@www.com','22201','13561476888'),('76b96fcd65024324b6a25f834d45fce0','wqeqwe','f1290186a5d0b1ceab27f4e77c0c5d68','weqweqw','','318df4c13a434293b389afe41866a04c','','','0','','default','asdsdf@qq.com','qweqwe','18762566666'),('b185d95437a74cee8fcbc7c5247d8ec2','lisi','41009ccf47f70965bed820412e63e3c46a455ba3','李四','','318df4c13a434293b389afe41866a04c','2015-09-19 18:32:53','0:0:0:0:0:0:0:1','0','lisi','default','827935210@qq.com','2313','13566237133');

/*Table structure for table `sys_user_qx` */

DROP TABLE IF EXISTS `sys_user_qx`;

CREATE TABLE `sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_qx` */

insert  into `sys_user_qx`(`U_ID`,`C1`,`C2`,`C3`,`C4`,`Q1`,`Q2`,`Q3`,`Q4`) values ('1',1,0,0,0,0,0,0,0),('2',1,1,1,1,1,1,1,1),('318df4c13a434293b389afe41866a04c',0,0,0,0,0,0,0,0),('55896f5ce3c0494fa6850775a4e29ff6',0,0,0,0,0,0,0,0),('68f23fc0caee475bae8d52244dea8444',0,0,0,0,0,0,0,0),('7dfd8d1f7b6245d283217b7e63eec9b2',0,0,0,0,0,0,0,0),('ac66961adaa2426da4470c72ffeec117',0,0,0,0,0,0,0,0),('b0c77c29dfa140dc9b14a29c056f824f',0,0,0,0,0,0,0,0),('e74f713314154c35bd7fc98897859fe3',0,0,0,0,0,0,0,0),('f944a9df72634249bbcb8cb73b0c9b86',0,0,0,0,0,0,0,0);

/*Table structure for table `tb_pictures` */

DROP TABLE IF EXISTS `tb_pictures`;

CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_pictures` */

insert  into `tb_pictures`(`PICTURES_ID`,`TITLE`,`NAME`,`PATH`,`CREATETIME`,`MASTER_ID`,`BZ`) values ('3ea45264d8d44571bd194797e8e90b14','图片','86e865f2fe2d45d29c818dc595a7b779.png','20150331/86e865f2fe2d45d29c818dc595a7b779.png','2015-03-31 03:41:34','1','图片管理处上传'),('a8da4a6649fe4d4ca500b9575e662aff','图片','fa26c5ca2c814f6e87b372da0c39a8e5.png','20150331/fa26c5ca2c814f6e87b372da0c39a8e5.png','2015-03-31 03:41:34','1','图片管理处上传');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

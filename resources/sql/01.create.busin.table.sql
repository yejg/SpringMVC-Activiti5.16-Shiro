-- 业务表

-- ----------------------------
-- Table structure for t_supervise_receive
-- ----------------------------
DROP TABLE IF EXISTS `t_supervise_receive`;
CREATE TABLE `t_supervise_receive` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` date DEFAULT NULL,
  `FEEDBACK_CYCLE` varchar(10) DEFAULT NULL,
  `FEEDBACK_LIMIT` varchar(10) DEFAULT NULL,
  `HANDLE_DATE` date DEFAULT NULL,
  `NUMBER` varchar(50) DEFAULT NULL,
  `STATUS` varchar(5) DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for t_expense_account
-- ----------------------------
DROP TABLE IF EXISTS `t_expense_account`;
CREATE TABLE `t_expense_account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` datetime DEFAULT NULL,
  `MONEY` decimal(19,2) DEFAULT NULL,
  `PROC_INST_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `APPLY_DATE` date DEFAULT NULL,
  `OCCUR_DATE` date DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_expense_account
-- ----------------------------

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `GROUP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_group_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_group_resource`;
CREATE TABLE `t_group_resource` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_resource
-- ----------------------------
DROP TABLE IF EXISTS `t_resource`;
CREATE TABLE `t_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_ids` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `available` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids` (`parent_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_salary
-- ----------------------------
DROP TABLE IF EXISTS `t_salary`;
CREATE TABLE `t_salary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BASE_MONEY` decimal(19,2) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_salary_adjust
-- ----------------------------
DROP TABLE IF EXISTS `t_salary_adjust`;
CREATE TABLE `t_salary_adjust` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ADJUST_MONEY` decimal(19,2) DEFAULT NULL,
  `APPLY_DATE` date DEFAULT NULL,
  `DSCP` varchar(255) DEFAULT NULL,
  `PROC_INST_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_salary_adjust
-- ----------------------------


-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `USER_PWD` varchar(255) DEFAULT NULL,
  `REG_DATE` date DEFAULT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `LOCKED` int(11) DEFAULT NULL,
  `USER_SALT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  KEY `FK_n76p61r4jd9duyf1c2njxx041` (`GROUP_ID`),
  CONSTRAINT `FK_n76p61r4jd9duyf1c2njxx041` FOREIGN KEY (`GROUP_ID`) REFERENCES `t_group` (`GROUP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_user_task
-- ----------------------------
DROP TABLE IF EXISTS `t_user_task`;
CREATE TABLE `t_user_task` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROC_DEF_KEY` varchar(255) DEFAULT NULL,
  `PROC_DEF_NAME` varchar(255) DEFAULT NULL,
  `TASK_DEF_KEY` varchar(255) DEFAULT NULL,
  `TASK_NAME` varchar(255) DEFAULT NULL,
  `TASK_TYPE` varchar(255) DEFAULT NULL,
  `CANDIDATE_NAME` varchar(255) DEFAULT NULL,
  `CANDIDATE_IDS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for t_vacation
-- ----------------------------
DROP TABLE IF EXISTS `t_vacation`;
CREATE TABLE `t_vacation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLY_DATE` date DEFAULT NULL,
  `BEGIN_DATE` date DEFAULT NULL,
  `WORK_DAYS` int(11) DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `PROC_INST_ID` varchar(255) DEFAULT NULL,
  `REASON` varchar(255) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `VAC_TYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

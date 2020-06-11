--业务数据
INSERT INTO `t_group` VALUES ('1', '老板组', 'boss');
INSERT INTO `t_group` VALUES ('2', '总监组', 'director');
INSERT INTO `t_group` VALUES ('3', '员工组', 'employee');
INSERT INTO `t_group` VALUES ('4', '财务组', 'finance');
INSERT INTO `t_group` VALUES ('5', '人事组', 'hr');
INSERT INTO `t_group` VALUES ('6', '经理组', 'manager');
INSERT INTO `t_group` VALUES ('7', '超级管理员', 'admin');


INSERT INTO `t_user` VALUES ('4', '老板', '16a995df59c545d7b5a1bb6c467335af', '2015-02-07', '1', '0', 'df619f4b54b71c4eb3ab46a3e77bb0df');
INSERT INTO `t_user` VALUES ('5', '财务', '5663fe5a302c2cf4c09da32e71c576d2', '2015-02-07', '4', '0', '2db9ce54137dea81dcee95d43256c487');
INSERT INTO `t_user` VALUES ('6', '张三', '5c1ccd5c0311bf59b3d01a8143eac7a6', null, '3', '0', '06b3e93953b1c416db97aa95626b3919');
INSERT INTO `t_user` VALUES ('13', '李四', 'cde49e4e9e04c67929164327cd406af7', '2015-01-12', '3', '0', 'fc0885339b523c7fe9fadaf05cbe5269');
INSERT INTO `t_user` VALUES ('14', 'admin', 'c4d6f647513261f13111505facb02fa5', '2015-01-19', '7', '0', '0a8135fc704ad1271973423804320195');
INSERT INTO `t_user` VALUES ('15', '经理', '72b0d9b72bd552983083bebc4b9f9ef4', '2015-02-07', '6', '0', 'b94b50d150fee37de6e9c389edb30397');
INSERT INTO `t_user` VALUES ('16', '总监', '0067847e904e1295a23015cad660382c', '2015-02-07', '2', '0', '52e5a800953f810af2a3c1367c207e74');
INSERT INTO `t_user` VALUES ('17', '人事', '377ba153f45e6d9ca243a62a8a055a97', '2015-02-07', '5', '0', 'ebabc4618cedbe831f848fef43038082');
INSERT INTO `t_user` VALUES ('18', '经理2', '0273e7ce534e5e24e572c8b3b2e613a5', '2015-04-27', '6', '0', '899865f3edff41b3c1b420fd3e354426');
INSERT INTO `t_user` VALUES ('19', '总监2', '06c8ce0fbf0693d20a873366c2062322', '2015-04-27', '2', '0', 'b0abe376c5429e0c07c65d6ea16a4142');


INSERT INTO `t_resource` VALUES ('1', '资源', 'menu', '#', '0', '0/', '#', '1');
INSERT INTO `t_resource` VALUES ('11', '申请查看', 'menu', 'processAction/process/toListApply', '1', '0/1/', 'user:process:runningVacation', '1');
INSERT INTO `t_resource` VALUES ('12', '查看请假申请', 'button', null, '11', '0/1/11/', 'user:vacation:list', '1');
INSERT INTO `t_resource` VALUES ('13', '请假详情', 'button', null, '11', '0/1/11/', '*:vacation:details', '1');
INSERT INTO `t_resource` VALUES ('14', '查看薪资调整申请', 'button', null, '11', '0/1/11/', 'user:salary:list', '1');
INSERT INTO `t_resource` VALUES ('15', '薪资调整详情', 'button', null, '11', '0/1/11/', 'user:salary:details', '1');
INSERT INTO `t_resource` VALUES ('16', '查看报销申请', 'button', null, '11', '0/1/11/', 'user:expense:list', '1');
INSERT INTO `t_resource` VALUES ('17', '报销详情', 'button', null, '11', '0/1/11/', 'user:expense:details', '1');
INSERT INTO `t_resource` VALUES ('21', '我的任务', 'menu', 'processAction/userTaskList', '1', '0/1/', 'user:*', '1');
INSERT INTO `t_resource` VALUES ('22', '待办的任务', 'button', null, '21', '0/1/21/', 'user:task:todoTask', '1');
INSERT INTO `t_resource` VALUES ('23', '受理的任务', 'button', null, '21', '0/1/21/', 'user:task:doTask', '1');
INSERT INTO `t_resource` VALUES ('24', '签收', 'button', '', '21', '0/1/21/', 'user:task:claim', '1');
INSERT INTO `t_resource` VALUES ('25', '办理请假申请', 'button', '', '21', '0/1/21/', 'user:vacation:toApproval', '1');
INSERT INTO `t_resource` VALUES ('26', '办理薪资调整', 'button', '', '21', '0/1/21/', 'user:salary:toApproval', '1');
INSERT INTO `t_resource` VALUES ('27', '办理报销申请', 'button', '', '21', '0/1/21/', 'user:expense:toApproval', '1');
INSERT INTO `t_resource` VALUES ('28', '完成申请', 'button', null, '21', '0/1/21/', 'user:*:complate', '1');
INSERT INTO `t_resource` VALUES ('29', '调整申请', 'button', null, '21', '0/1/21/', 'user:*:modify', '1');
INSERT INTO `t_resource` VALUES ('31', '请假', 'menu', 'vacationAction/toAdd', '1', '0/1/', 'user:vacation:*', '1');
INSERT INTO `t_resource` VALUES ('32', '添加请假申请', 'button', null, '31', '0/1/31/', '*:vacation:doAdd', '1');
INSERT INTO `t_resource` VALUES ('41', '报销', 'menu', 'expenseAction/toAdd', '1', '0/1/', 'user:expense:*', '1');
INSERT INTO `t_resource` VALUES ('42', '添加报销申请', 'button', null, '41', '0/1/41/', 'user:expense:doAdd', '1');
INSERT INTO `t_resource` VALUES ('51', '薪资调整', 'menu', 'salaryAction/toAdd', '1', '0/1/', 'user:salary:*', '1');
INSERT INTO `t_resource` VALUES ('52', '添加薪资调整', 'button', null, '51', '0/1/51/', 'user:salary:doAdd', '1');
INSERT INTO `t_resource` VALUES ('61', '用户组管理', 'menu', 'groupAction/permissionAssignment', '1', '0/1/', 'admin:*', '1');
INSERT INTO `t_resource` VALUES ('62', 'to添加用户组', 'button', null, '61', '0/1/61', 'admin:group:toAdd', '1');
INSERT INTO `t_resource` VALUES ('63', '添加用户组', 'button', null, '61', '0/1/61/', 'admin:group:doAdd', '1');
INSERT INTO `t_resource` VALUES ('64', 'to修改用户组', 'button', null, '61', '0/1/61/', 'admin:group:toUpdate', '1');
INSERT INTO `t_resource` VALUES ('65', '修改用户组', 'button', null, '61', '0/1/61/', 'admin:group:doUpdate', '1');
INSERT INTO `t_resource` VALUES ('71', '用户管理', 'menu', 'userAction/userDatagrid', '1', '0/1/', 'admin:*', '1');
INSERT INTO `t_resource` VALUES ('72', 'to添加用户', 'button', null, '71', '0/1/71/', 'admin:user:toAdd', '1');
INSERT INTO `t_resource` VALUES ('73', '添加用户', 'button', null, '71', '0/1/71/', 'admin:user:doAdd', '1');
INSERT INTO `t_resource` VALUES ('74', 'to修改用户', 'button', null, '71', '0/1/71/', 'admin:user:toUpdate', '1');
INSERT INTO `t_resource` VALUES ('75', '修改用户', 'button', null, '71', '0/1/71/', 'admin:user:doUpdate', '1');
INSERT INTO `t_resource` VALUES ('81', '流程定义管理', 'menu', 'processAction/process/toListProcessInstance', '1', '0/1/', 'admin:process:*', '1');
INSERT INTO `t_resource` VALUES ('91', '流程实例管理', 'menu', 'processAction/process/toListProcessManager', '1', '0/1/', 'admin:process:*', '1');
INSERT INTO `t_resource` VALUES ('92', '挂起流程', 'button', null, '91', '0/1/91/', 'admin:process:suspend', '1');
INSERT INTO `t_resource` VALUES ('93', '激活流程', 'buton', null, '91', '0/1/91/', 'admin:process:active', '1');
INSERT INTO `t_resource` VALUES ('100', '在线用户', 'menu', 'userAction/toListOnlineUser', '1', '0/1/', 'admin:*', '1');
INSERT INTO `t_resource` VALUES ('101', '踢出用户', 'button', null, '100', '0/1/100/', 'admin:session:forceLogout', '1');
INSERT INTO `t_resource` VALUES ('102', '流程设计模型', 'menu', 'modelAction/toListModel', '1', '0/1/', 'admin:process:*', '1');
INSERT INTO `t_resource` VALUES ('103', '流程跟踪', 'button', null, '81', '0/1/81/', 'user:process:trace', '1');
INSERT INTO `t_resource` VALUES ('104', '已结束的流程', 'button', null, '81', '0/1/81/', 'user:process:finished', '1');
INSERT INTO `t_resource` VALUES ('105', '请假申请查看', 'button', null, '81', '0/1/81/', 'user:process:runningVacation', '1');
INSERT INTO `t_resource` VALUES ('106', '报销申请查看', 'button', null, '81', '0/1/81/', 'user:process:runningExpense', '1');
INSERT INTO `t_resource` VALUES ('107', '薪资申请查看', 'button', null, '81', '0/1/81/', 'user:process:runningSalary', '1');
INSERT INTO `t_resource` VALUES ('108', '同步用户', 'button', null, '71', '0/1/71/', 'admin:user:syncUser', '1');
INSERT INTO `t_resource` VALUES ('109', '审批设定', 'menu', 'permissionAction/toListBpmn', '1', '0/1/', 'admin:*', '1');
INSERT INTO `t_resource` VALUES ('110', '初始化', 'button', null, '109', '0/1/109/', 'admin:permission:init', '1');
INSERT INTO `t_resource` VALUES ('111', '资源管理', 'menu', 'resourceAction/toList', '1', '0/1/', 'admin:*', '1');
INSERT INTO `t_resource` VALUES ('113', '督察接收(例)', 'menu', 'superviserReveive//toSuperviseReceive', '1', '0/1/', 'admin:*', '0');


INSERT INTO `t_group_resource` VALUES ('3', '1', '13');
INSERT INTO `t_group_resource` VALUES ('4', '1', '14');
INSERT INTO `t_group_resource` VALUES ('5', '1', '15');
INSERT INTO `t_group_resource` VALUES ('6', '1', '16');
INSERT INTO `t_group_resource` VALUES ('7', '1', '17');
INSERT INTO `t_group_resource` VALUES ('9', '1', '22');
INSERT INTO `t_group_resource` VALUES ('10', '1', '23');
INSERT INTO `t_group_resource` VALUES ('11', '1', '24');
INSERT INTO `t_group_resource` VALUES ('12', '1', '25');
INSERT INTO `t_group_resource` VALUES ('13', '1', '26');
INSERT INTO `t_group_resource` VALUES ('14', '1', '27');
INSERT INTO `t_group_resource` VALUES ('15', '1', '28');
INSERT INTO `t_group_resource` VALUES ('16', '1', '29');
INSERT INTO `t_group_resource` VALUES ('71', '4', '11');
INSERT INTO `t_group_resource` VALUES ('72', '4', '12');
INSERT INTO `t_group_resource` VALUES ('73', '4', '13');
INSERT INTO `t_group_resource` VALUES ('74', '4', '14');
INSERT INTO `t_group_resource` VALUES ('75', '4', '15');
INSERT INTO `t_group_resource` VALUES ('76', '4', '16');
INSERT INTO `t_group_resource` VALUES ('77', '4', '17');
INSERT INTO `t_group_resource` VALUES ('78', '4', '21');
INSERT INTO `t_group_resource` VALUES ('79', '4', '22');
INSERT INTO `t_group_resource` VALUES ('80', '4', '23');
INSERT INTO `t_group_resource` VALUES ('81', '4', '24');
INSERT INTO `t_group_resource` VALUES ('82', '4', '25');
INSERT INTO `t_group_resource` VALUES ('83', '4', '26');
INSERT INTO `t_group_resource` VALUES ('84', '4', '27');
INSERT INTO `t_group_resource` VALUES ('85', '4', '28');
INSERT INTO `t_group_resource` VALUES ('86', '4', '29');
INSERT INTO `t_group_resource` VALUES ('87', '4', '31');
INSERT INTO `t_group_resource` VALUES ('88', '4', '32');
INSERT INTO `t_group_resource` VALUES ('89', '4', '41');
INSERT INTO `t_group_resource` VALUES ('90', '4', '42');
INSERT INTO `t_group_resource` VALUES ('91', '4', '51');
INSERT INTO `t_group_resource` VALUES ('92', '4', '52');
INSERT INTO `t_group_resource` VALUES ('93', '5', '11');
INSERT INTO `t_group_resource` VALUES ('94', '5', '12');
INSERT INTO `t_group_resource` VALUES ('95', '5', '13');
INSERT INTO `t_group_resource` VALUES ('96', '5', '14');
INSERT INTO `t_group_resource` VALUES ('97', '5', '15');
INSERT INTO `t_group_resource` VALUES ('98', '5', '16');
INSERT INTO `t_group_resource` VALUES ('99', '5', '17');
INSERT INTO `t_group_resource` VALUES ('100', '5', '21');
INSERT INTO `t_group_resource` VALUES ('101', '5', '22');
INSERT INTO `t_group_resource` VALUES ('102', '5', '23');
INSERT INTO `t_group_resource` VALUES ('103', '5', '24');
INSERT INTO `t_group_resource` VALUES ('104', '5', '25');
INSERT INTO `t_group_resource` VALUES ('105', '5', '26');
INSERT INTO `t_group_resource` VALUES ('106', '5', '27');
INSERT INTO `t_group_resource` VALUES ('107', '5', '28');
INSERT INTO `t_group_resource` VALUES ('108', '5', '29');
INSERT INTO `t_group_resource` VALUES ('109', '5', '31');
INSERT INTO `t_group_resource` VALUES ('110', '5', '32');
INSERT INTO `t_group_resource` VALUES ('111', '5', '41');
INSERT INTO `t_group_resource` VALUES ('112', '5', '42');
INSERT INTO `t_group_resource` VALUES ('113', '5', '51');
INSERT INTO `t_group_resource` VALUES ('114', '5', '52');
INSERT INTO `t_group_resource` VALUES ('115', '6', '11');
INSERT INTO `t_group_resource` VALUES ('116', '6', '12');
INSERT INTO `t_group_resource` VALUES ('117', '6', '13');
INSERT INTO `t_group_resource` VALUES ('118', '6', '14');
INSERT INTO `t_group_resource` VALUES ('119', '6', '15');
INSERT INTO `t_group_resource` VALUES ('120', '6', '16');
INSERT INTO `t_group_resource` VALUES ('121', '6', '17');
INSERT INTO `t_group_resource` VALUES ('122', '6', '21');
INSERT INTO `t_group_resource` VALUES ('123', '6', '22');
INSERT INTO `t_group_resource` VALUES ('124', '6', '23');
INSERT INTO `t_group_resource` VALUES ('125', '6', '24');
INSERT INTO `t_group_resource` VALUES ('126', '6', '25');
INSERT INTO `t_group_resource` VALUES ('127', '6', '26');
INSERT INTO `t_group_resource` VALUES ('128', '6', '27');
INSERT INTO `t_group_resource` VALUES ('129', '6', '28');
INSERT INTO `t_group_resource` VALUES ('130', '6', '29');
INSERT INTO `t_group_resource` VALUES ('131', '6', '31');
INSERT INTO `t_group_resource` VALUES ('132', '6', '32');
INSERT INTO `t_group_resource` VALUES ('133', '6', '41');
INSERT INTO `t_group_resource` VALUES ('134', '6', '42');
INSERT INTO `t_group_resource` VALUES ('135', '6', '51');
INSERT INTO `t_group_resource` VALUES ('136', '6', '52');
INSERT INTO `t_group_resource` VALUES ('137', '7', '61');
INSERT INTO `t_group_resource` VALUES ('138', '7', '62');
INSERT INTO `t_group_resource` VALUES ('139', '7', '63');
INSERT INTO `t_group_resource` VALUES ('140', '7', '64');
INSERT INTO `t_group_resource` VALUES ('141', '7', '65');
INSERT INTO `t_group_resource` VALUES ('142', '7', '71');
INSERT INTO `t_group_resource` VALUES ('143', '7', '72');
INSERT INTO `t_group_resource` VALUES ('144', '7', '73');
INSERT INTO `t_group_resource` VALUES ('145', '7', '74');
INSERT INTO `t_group_resource` VALUES ('146', '7', '75');
INSERT INTO `t_group_resource` VALUES ('147', '7', '81');
INSERT INTO `t_group_resource` VALUES ('148', '7', '91');
INSERT INTO `t_group_resource` VALUES ('149', '7', '92');
INSERT INTO `t_group_resource` VALUES ('150', '7', '93');
INSERT INTO `t_group_resource` VALUES ('151', '7', '100');
INSERT INTO `t_group_resource` VALUES ('152', '7', '101');
INSERT INTO `t_group_resource` VALUES ('153', '1', '103');
INSERT INTO `t_group_resource` VALUES ('154', '1', '104');
INSERT INTO `t_group_resource` VALUES ('155', '1', '105');
INSERT INTO `t_group_resource` VALUES ('156', '1', '106');
INSERT INTO `t_group_resource` VALUES ('157', '1', '107');
INSERT INTO `t_group_resource` VALUES ('168', '4', '103');
INSERT INTO `t_group_resource` VALUES ('169', '4', '104');
INSERT INTO `t_group_resource` VALUES ('170', '4', '105');
INSERT INTO `t_group_resource` VALUES ('171', '4', '106');
INSERT INTO `t_group_resource` VALUES ('172', '4', '107');
INSERT INTO `t_group_resource` VALUES ('173', '5', '103');
INSERT INTO `t_group_resource` VALUES ('174', '5', '104');
INSERT INTO `t_group_resource` VALUES ('175', '5', '105');
INSERT INTO `t_group_resource` VALUES ('176', '5', '106');
INSERT INTO `t_group_resource` VALUES ('177', '5', '107');
INSERT INTO `t_group_resource` VALUES ('178', '6', '103');
INSERT INTO `t_group_resource` VALUES ('179', '6', '104');
INSERT INTO `t_group_resource` VALUES ('180', '6', '105');
INSERT INTO `t_group_resource` VALUES ('181', '6', '106');
INSERT INTO `t_group_resource` VALUES ('182', '6', '107');
INSERT INTO `t_group_resource` VALUES ('183', '7', '103');
INSERT INTO `t_group_resource` VALUES ('184', '7', '102');
INSERT INTO `t_group_resource` VALUES ('185', '7', '108');
INSERT INTO `t_group_resource` VALUES ('186', '7', '109');
INSERT INTO `t_group_resource` VALUES ('187', '1', '12');
INSERT INTO `t_group_resource` VALUES ('188', '1', '21');
INSERT INTO `t_group_resource` VALUES ('190', '7', '110');
INSERT INTO `t_group_resource` VALUES ('191', '7', '111');
INSERT INTO `t_group_resource` VALUES ('222', '2', '11');
INSERT INTO `t_group_resource` VALUES ('223', '2', '12');
INSERT INTO `t_group_resource` VALUES ('224', '2', '13');
INSERT INTO `t_group_resource` VALUES ('225', '2', '14');
INSERT INTO `t_group_resource` VALUES ('226', '2', '15');
INSERT INTO `t_group_resource` VALUES ('227', '2', '16');
INSERT INTO `t_group_resource` VALUES ('228', '2', '17');
INSERT INTO `t_group_resource` VALUES ('229', '2', '21');
INSERT INTO `t_group_resource` VALUES ('230', '2', '22');
INSERT INTO `t_group_resource` VALUES ('231', '2', '23');
INSERT INTO `t_group_resource` VALUES ('232', '2', '24');
INSERT INTO `t_group_resource` VALUES ('233', '2', '25');
INSERT INTO `t_group_resource` VALUES ('234', '2', '26');
INSERT INTO `t_group_resource` VALUES ('235', '2', '27');
INSERT INTO `t_group_resource` VALUES ('236', '2', '28');
INSERT INTO `t_group_resource` VALUES ('237', '2', '29');
INSERT INTO `t_group_resource` VALUES ('238', '2', '31');
INSERT INTO `t_group_resource` VALUES ('239', '2', '32');
INSERT INTO `t_group_resource` VALUES ('240', '2', '41');
INSERT INTO `t_group_resource` VALUES ('241', '2', '42');
INSERT INTO `t_group_resource` VALUES ('242', '2', '51');
INSERT INTO `t_group_resource` VALUES ('243', '2', '52');
INSERT INTO `t_group_resource` VALUES ('244', '2', '103');
INSERT INTO `t_group_resource` VALUES ('245', '2', '104');
INSERT INTO `t_group_resource` VALUES ('246', '2', '105');
INSERT INTO `t_group_resource` VALUES ('247', '2', '106');
INSERT INTO `t_group_resource` VALUES ('248', '2', '107');
INSERT INTO `t_group_resource` VALUES ('249', '3', '11');
INSERT INTO `t_group_resource` VALUES ('250', '3', '12');
INSERT INTO `t_group_resource` VALUES ('251', '3', '13');
INSERT INTO `t_group_resource` VALUES ('252', '3', '14');
INSERT INTO `t_group_resource` VALUES ('253', '3', '15');
INSERT INTO `t_group_resource` VALUES ('254', '3', '16');
INSERT INTO `t_group_resource` VALUES ('255', '3', '17');
INSERT INTO `t_group_resource` VALUES ('256', '3', '21');
INSERT INTO `t_group_resource` VALUES ('257', '3', '22');
INSERT INTO `t_group_resource` VALUES ('258', '3', '23');
INSERT INTO `t_group_resource` VALUES ('259', '3', '24');
INSERT INTO `t_group_resource` VALUES ('260', '3', '25');
INSERT INTO `t_group_resource` VALUES ('261', '3', '26');
INSERT INTO `t_group_resource` VALUES ('262', '3', '27');
INSERT INTO `t_group_resource` VALUES ('263', '3', '28');
INSERT INTO `t_group_resource` VALUES ('264', '3', '29');
INSERT INTO `t_group_resource` VALUES ('265', '3', '31');
INSERT INTO `t_group_resource` VALUES ('266', '3', '32');
INSERT INTO `t_group_resource` VALUES ('267', '3', '41');
INSERT INTO `t_group_resource` VALUES ('268', '3', '42');
INSERT INTO `t_group_resource` VALUES ('269', '3', '51');
INSERT INTO `t_group_resource` VALUES ('270', '3', '52');
INSERT INTO `t_group_resource` VALUES ('271', '3', '103');
INSERT INTO `t_group_resource` VALUES ('272', '3', '104');
INSERT INTO `t_group_resource` VALUES ('273', '3', '105');
INSERT INTO `t_group_resource` VALUES ('274', '3', '106');
INSERT INTO `t_group_resource` VALUES ('275', '3', '107');
INSERT INTO `t_group_resource` VALUES ('276', '3', '113');
INSERT INTO `t_group_resource` VALUES ('277', '3', '1');
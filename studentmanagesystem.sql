/*
 Navicat Premium Data Transfer

 Source Server         : mysql_localhost
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : studentmanagesystem

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 13/02/2021 00:22:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `available` bit(1) DEFAULT b'1',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `order_num` int(0) NOT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int(0) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `parent_id` bigint(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK3fekum3ead5klp7y4lckn5ohi`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 272 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (1, b'1', '顶级栏目', 100, '/', 0, NULL, 0);
INSERT INTO `sys_resource` VALUES (2, b'1', '权限配置', 8, '/', 0, 'dddd', 1);
INSERT INTO `sys_resource` VALUES (3, b'1', '角色管理', 102, '/role', 0, '/role', 2);
INSERT INTO `sys_resource` VALUES (4, b'1', '权限管理', 103, '/resource', 0, '/resource', 2);
INSERT INTO `sys_resource` VALUES (5, b'1', '用户管理', 101, '/user', 0, '/user', 2);
INSERT INTO `sys_resource` VALUES (6, b'1', '编辑', 100, '/role/editor-role', 1, '/role/editor-role', 3);
INSERT INTO `sys_resource` VALUES (7, b'1', '添加权限节点', 100, '/resource/add-permission', 1, '/resource/add-permission', 4);
INSERT INTO `sys_resource` VALUES (8, b'1', '添加管理员', 100, '/user/add-user', 1, '/user/add-user', 5);
INSERT INTO `sys_resource` VALUES (9, b'1', '添加角色', 100, '/role/add-role', 1, '/role/add-role', 3);
INSERT INTO `sys_resource` VALUES (10, b'1', '删除角色', 100, '/role/delete', 1, '/role/delete', 3);
INSERT INTO `sys_resource` VALUES (11, b'1', '删除用户', 100, '/user/delete-user', 1, '/user/delete-user', 5);
INSERT INTO `sys_resource` VALUES (12, b'1', '删除权限', 100, '/resource/delete', 1, '/resource/delete', 4);
INSERT INTO `sys_resource` VALUES (13, b'1', '启用', 100, '/user/available-user', 1, '/user/available-user', 3);
INSERT INTO `sys_resource` VALUES (14, b'1', '修改管理员密码', 100, '/user/modify-password', 1, '/user/modify-password', 5);
INSERT INTO `sys_resource` VALUES (16, b'1', '权限编辑', 100, '/resource/editor-permission', 1, '/resource/editor-permission', 4);
INSERT INTO `sys_resource` VALUES (150, b'1', '编辑管理员信息', 100, '/user/edit-user', 1, '/user/edit-user', 5);
INSERT INTO `sys_resource` VALUES (261, b'1', '22', 1, '22', 0, '22', 1);
INSERT INTO `sys_resource` VALUES (264, b'1', '333', 1, '33', 1, '33', 1);
INSERT INTO `sys_resource` VALUES (266, b'1', '计划事项', 10, '/planItem', 0, '/planItem', 2);
INSERT INTO `sys_resource` VALUES (271, b'1', '日历', 1, '/calendar', 0, '/calendar', 2);
INSERT INTO `sys_resource` VALUES (272, b'1', '图表页', 1, '/analysis', 0, '/analysis', 2);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `available` bit(1) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, b'1', '管理员', '管理员');
INSERT INTO `sys_role` VALUES (2, b'1', '基础权限', '基础权限');
INSERT INTO `sys_role` VALUES (3, b'1', '教师角色', '教师角色');
INSERT INTO `sys_role` VALUES (4, b'1', '学生角色', '学生角色');

-- ----------------------------
-- Table structure for sys_role_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resources`;
CREATE TABLE `sys_role_resources`  (
  `sys_role_id` bigint(0) NOT NULL,
  `resources_id` bigint(0) NOT NULL,
  INDEX `FKog6jj4v6yh9e1ilxk2mwuk75a`(`resources_id`) USING BTREE,
  INDEX `FKsqkqfd2hpr5cc2kbrtgoced2w`(`sys_role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_resources
-- ----------------------------
INSERT INTO `sys_role_resources` VALUES (1, 2);
INSERT INTO `sys_role_resources` VALUES (1, 1);
INSERT INTO `sys_role_resources` VALUES (1, 271);
INSERT INTO `sys_role_resources` VALUES (1, 272);
INSERT INTO `sys_role_resources` VALUES (1, 266);
INSERT INTO `sys_role_resources` VALUES (1, 5);
INSERT INTO `sys_role_resources` VALUES (1, 8);
INSERT INTO `sys_role_resources` VALUES (1, 11);
INSERT INTO `sys_role_resources` VALUES (1, 14);
INSERT INTO `sys_role_resources` VALUES (1, 150);
INSERT INTO `sys_role_resources` VALUES (1, 3);
INSERT INTO `sys_role_resources` VALUES (1, 6);
INSERT INTO `sys_role_resources` VALUES (1, 9);
INSERT INTO `sys_role_resources` VALUES (1, 10);
INSERT INTO `sys_role_resources` VALUES (1, 13);
INSERT INTO `sys_role_resources` VALUES (1, 4);
INSERT INTO `sys_role_resources` VALUES (1, 7);
INSERT INTO `sys_role_resources` VALUES (1, 12);
INSERT INTO `sys_role_resources` VALUES (1, 16);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `createtime` datetime(0) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `updatetime` datetime(0) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex_type` int(0) DEFAULT NULL COMMENT '性别(0.男,1.女)',
  `first` tinyint(0) DEFAULT 1 COMMENT '是否第一次进入系统',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '2017-07-11 17:42:18', '$2a$10$SIU57gfkh/TsIVYALXBNAeDnQzkm652FT9cg4h8wtEfC306uliyYa', '2021-02-02 02:11:37', 'admin', b'1', '1191134106@qq.com', '15030103078', 1, 0);

-- ----------------------------
-- Table structure for sys_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE `sys_user_roles`  (
  `sys_user_id` bigint(0) NOT NULL,
  `roles_id` bigint(0) NOT NULL,
  INDEX `FKdpvc6d7xqpqr43dfuk1s27cqh`(`roles_id`) USING BTREE,
  INDEX `FKd0ut7sloes191bygyf7a3pk52`(`sys_user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES (1, 1);

-- ----------------------------
-- Table structure for t_career
-- ----------------------------
DROP TABLE IF EXISTS `t_career`;
CREATE TABLE `t_career`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `studentNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `timePoint` datetime(0) DEFAULT NULL COMMENT '记录时间点',
  `eventTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '事件标题',
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '事件内容',
  `eventType` int(0) DEFAULT NULL COMMENT '事件类别0 系统事件,1 奖励事件 2 惩罚事件,迟到 早退 10 学生自行添加\r\n0 系统事件,1 奖励事件 2 惩罚事件,迟到 早退 10 学生自行添加\r\n',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '备注',
  `createtime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(0) DEFAULT NULL COMMENT '状态',
  `deleteFlag` tinyint(0) DEFAULT NULL COMMENT '是否删除',
  `creatorld` bigint(0) DEFAULT NULL COMMENT '创建者id \r\n\r\n',
  `create_Time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_class_course
-- ----------------------------
DROP TABLE IF EXISTS `t_class_course`;
CREATE TABLE `t_class_course`  (
  `id` bigint(0) NOT NULL,
  `classNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级号',
  `teacherNos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '老师号',
  `courseNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程号',
  `usualWeight` double DEFAULT NULL COMMENT '平时成绩权重',
  `testWeight` double DEFAULT NULL COMMENT '考试成绩权重',
  `classHoursLeft` int(0) DEFAULT NULL COMMENT '剩余学时',
  `status` int(0) DEFAULT NULL COMMENT '0 :开课 1:结课',
  `deleteFlag` int(0) DEFAULT 0 COMMENT '删除状态 0:未删除 1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_class_course_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_class_course_rule`;
CREATE TABLE `t_class_course_rule`  (
  `id` bigint(0) NOT NULL,
  `classCourseId` bigint(0) NOT NULL COMMENT '班级课程表id',
  `startTime` datetime(0) DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime(0) DEFAULT NULL COMMENT '结束时间',
  `sectionNum` int(0) DEFAULT NULL COMMENT '节次数',
  `weekNum` int(0) DEFAULT NULL COMMENT '周次',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态',
  `deleteFlag` tinyint(0) DEFAULT NULL COMMENT '是否删除',
  `creatorId` bigint(0) DEFAULT NULL COMMENT '创建者id',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `classNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '班级号',
  `teachersNos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '教师号,多个教师用#分割',
  `courseNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '课程号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_class_name
-- ----------------------------
DROP TABLE IF EXISTS `t_class_name`;
CREATE TABLE `t_class_name`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `classNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '班级编号',
  `className` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '班级名',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '正常新班级/补课班级',
  `headTeacherId` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '班主任编号',
  `headTeacherName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '班主任姓名',
  `isGraduation` tinyint(1) DEFAULT NULL COMMENT '是否毕业  0未毕业 1毕业',
  `stageId` bigint(0) DEFAULT NULL COMMENT '阶段id',
  `studentNumber` int(0) DEFAULT NULL COMMENT '班级人数',
  `qqGroupNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'qq群号',
  `qqGroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'qq群二维码',
  `wechatGroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '微信群二维码',
  `deleteFlag` tinyint(1) DEFAULT NULL COMMENT '是否删除 1删除 0未删除',
  `creatorId` bigint(0) DEFAULT NULL COMMENT '创建者id',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `creater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建者名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `studentNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `publicFlag` tinyint(0) NOT NULL COMMENT '默认 私有0',
  `careerFlag` tinyint(0) NOT NULL COMMENT '默认 同步1',
  `classCourseActualld` bigint(0) NOT NULL DEFAULT -1 COMMENT '可为空 默认-1',
  `topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '-1' COMMENT '话题 默认-1',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `deleteFlag` tinyint(0) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '123', '1', 0, 0, -1, '-1', '2021-02-01 15:09:17', 1);

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `courseNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程编号',
  `courseName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '课程名称',
  `credit` int(0) DEFAULT NULL COMMENT '学分',
  `classHours` int(0) DEFAULT NULL COMMENT '学时',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '课程介绍',
  `coursePurpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '开课目的',
  `status` tinyint(0) DEFAULT NULL COMMENT '状态',
  `deleteFlag` tinyint(0) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` bigint(0) NOT NULL COMMENT '公告编号',
  `publisherld` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '发布人编号',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '作者',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `type` int(0) DEFAULT NULL COMMENT '公告种类',
  `isTop` tinyblob COMMENT '是否置顶',
  `isHot` tinyblob COMMENT '是否轮播播放',
  `contentTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '公告标题',
  `contentText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_plan_item
-- ----------------------------
DROP TABLE IF EXISTS `t_plan_item`;
CREATE TABLE `t_plan_item`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `userNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '计划做的事',
  `startTime` datetime(0) DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime(0) DEFAULT NULL COMMENT '结束时间',
  `priority` int(0) DEFAULT 0 COMMENT '0 既不重要也不紧急的   1 重要单不紧急 2 :紧急但不重要 3 重要且紧急的',
  `status` tinyint(1) DEFAULT NULL COMMENT '1完成  0未完成',
  `itemTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '事项标题',
  `itemType` int(0) DEFAULT NULL COMMENT '事项类别 0系统 1自己添加的 2其他人添加的',
  `parentId` bigint(0) DEFAULT NULL COMMENT '父项Id',
  `deleteFlag` tinyint(0) DEFAULT NULL COMMENT '是否删除',
  `creatorId` bigint(0) DEFAULT NULL COMMENT '创建者Id',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_plan_item
-- ----------------------------
INSERT INTO `t_plan_item` VALUES (1, '20171001071', 'rich', '2021-02-10 10:18:54', '2021-02-10 10:18:56', 0, 0, '计划事项', 1, 124, 0, 1, '2021-02-10 11:27:25');
INSERT INTO `t_plan_item` VALUES (79, '20171001071', 'power', '2021-02-10 10:19:04', '2021-02-10 10:19:05', 1, 0, '计划事项', 0, 0, 0, 1, '2021-02-10 10:19:06');
INSERT INTO `t_plan_item` VALUES (123, '20171001071', 'love', '2021-02-10 01:54:42', '2021-02-10 01:54:44', 2, 0, '计划事项', 1, 0, 0, 1, '2021-02-10 10:22:52');
INSERT INTO `t_plan_item` VALUES (124, '20171001071', 'health', '2021-02-10 10:20:59', '2021-02-10 10:21:00', 3, 0, '计划事项', 0, 0, 0, 1, '2021-02-10 10:21:02');
INSERT INTO `t_plan_item` VALUES (203, '123', '123', '2021-02-18 15:50:57', '2021-02-25 00:00:00', 0, 1, '计划事项', 0, 0, 0, 1, '2021-02-10 15:53:43');
INSERT INTO `t_plan_item` VALUES (204, '12312312', '3123123', '2021-02-10 15:56:38', '2021-02-10 15:56:50', 0, 0, '计划事项', 0, 0, 0, 1, '2021-02-10 15:56:53');

-- ----------------------------
-- Table structure for t_questionnaire
-- ----------------------------
DROP TABLE IF EXISTS `t_questionnaire`;
CREATE TABLE `t_questionnaire`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '问卷序号',
  `questionarieId` bigint(0) DEFAULT NULL COMMENT '问卷ID',
  `questionarieTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问卷题目',
  `startTime` datetime(0) DEFAULT NULL COMMENT '问卷开始时间',
  `endTime` datetime(0) DEFAULT NULL COMMENT '问卷截止时间',
  `creatorId` bigint(0) DEFAULT NULL COMMENT '问卷发布人ID',
  `createTime` datetime(0) DEFAULT NULL COMMENT '问卷创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问卷表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_questionnaire_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_questionnaire_answer`;
CREATE TABLE `t_questionnaire_answer`  (
  `id` int(0) NOT NULL,
  `userId` bigint(0) DEFAULT NULL COMMENT '用户编号',
  `questionnaireId` bigint(0) DEFAULT NULL COMMENT '问卷编号',
  `questionId` bigint(0) DEFAULT NULL COMMENT '问题编号',
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '答案内容',
  `operateTime` decimal(10, 0) DEFAULT NULL COMMENT '问卷填写所耗时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_questionnaire_option
-- ----------------------------
DROP TABLE IF EXISTS `t_questionnaire_option`;
CREATE TABLE `t_questionnaire_option`  (
  `id` int(0) NOT NULL,
  `optionId` bigint(0) DEFAULT NULL COMMENT '选项编号',
  `questionId` bigint(0) DEFAULT NULL COMMENT '问题编号',
  `questionnaireId` bigint(0) DEFAULT NULL COMMENT '问卷编号',
  `optionContent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '选项的内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '选项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_questionnaire_question
-- ----------------------------
DROP TABLE IF EXISTS `t_questionnaire_question`;
CREATE TABLE `t_questionnaire_question`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '问题序号',
  `questionId` bigint(0) DEFAULT NULL COMMENT '问题ID',
  `questionTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问题题目',
  `questionType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '问题类型',
  `questionaireId` bigint(0) DEFAULT NULL COMMENT '问卷ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '问题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_report
-- ----------------------------
DROP TABLE IF EXISTS `t_report`;
CREATE TABLE `t_report`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `studentNo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '学号',
  `classCourseActualled` bigint(0) DEFAULT NULL COMMENT '实际上课Id',
  `reportTime` datetime(0) DEFAULT NULL COMMENT '打卡时间',
  `studentReportTime` datetime(0) DEFAULT NULL COMMENT '实际打卡时间',
  `reportStatus` int(0) DEFAULT NULL COMMENT '打卡状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_stage
-- ----------------------------
DROP TABLE IF EXISTS `t_stage`;
CREATE TABLE `t_stage`  (
  `id` int(0) NOT NULL,
  `stageId` int(0) DEFAULT NULL COMMENT '阶段id',
  `stageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '阶段名字',
  `status` int(0) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '阶段表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '学生表主键',
  `studentNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学号',
  `studentName` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学生姓名',
  `classNo` bigint(0) DEFAULT NULL COMMENT '班级编号',
  `sex` int(0) NOT NULL COMMENT '男/女/保密',
  `phoneNumber` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号',
  `stageId` int(0) NOT NULL COMMENT '所处阶段',
  `status` int(0) NOT NULL COMMENT '学生状态',
  `recommendCode` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '推荐人的推荐码',
  `selfrecommendCode` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '自己的推荐码',
  `lateTimes` int(0) DEFAULT NULL COMMENT '迟到次数',
  `truancyTimes` int(0) DEFAULT NULL COMMENT '缺勤次数',
  `workplace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '工作去向',
  `personalSignature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_student_grade`;
CREATE TABLE `t_student_grade`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `studentNo` bigint(0) DEFAULT NULL COMMENT '学生id',
  `courseNo` bigint(0) DEFAULT NULL COMMENT '课程号',
  `score` bigint(0) DEFAULT NULL COMMENT '分数',
  `scorelevel` int(0) DEFAULT NULL COMMENT '1差2及格3良4优秀5满分',
  `appraise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '评语',
  `usualGrades` double(255, 2) DEFAULT NULL COMMENT '平时成绩',
  `usualWeight` double(255, 2) DEFAULT NULL COMMENT '平时成绩权重',
  `testGrades` double(255, 2) DEFAULT NULL COMMENT '考试成绩',
  `testWeight` double(255, 2) DEFAULT NULL COMMENT '考试成绩权重',
  `grade` double(255, 2) DEFAULT NULL COMMENT '总成绩',
  `isHang` tinyint(0) DEFAULT NULL COMMENT '是否挂科',
  `classNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '班级号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_student_teaching
-- ----------------------------
DROP TABLE IF EXISTS `t_student_teaching`;
CREATE TABLE `t_student_teaching`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `studentNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '学生id',
  `teachingId` int(0) DEFAULT NULL COMMENT '评教id',
  `teachingModelId` int(0) DEFAULT NULL COMMENT '评教模板项id',
  `teachingFraction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '评教分值',
  `teachingContent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '评教文字内容',
  `teachingTime` datetime(0) DEFAULT NULL COMMENT '评教时间',
  `whetherRead` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '是否已阅',
  `teachingType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '评教模板项类别',
  `subjectId` int(0) DEFAULT NULL COMMENT '科目id',
  `teacherId` int(0) DEFAULT NULL COMMENT '教师id',
  `classId` int(0) DEFAULT NULL COMMENT '班级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '年份+0000+n',
  `teacherNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '教师编号',
  `teacherName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '老师名',
  `headFlag` tinyint(0) DEFAULT NULL COMMENT '是否是班主任  true 是 false 否',
  `sex` tinyint(0) DEFAULT NULL COMMENT '性别true男false女',
  `teacherTypeID` int(0) DEFAULT NULL COMMENT '0教师',
  `honor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '例:年度最佳教师×1',
  `status` int(0) DEFAULT 0 COMMENT '0:在职 1:离职 2:休假',
  `deleteFlag` int(0) DEFAULT 0 COMMENT '删除标识 0未删除 1删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_teacher_type
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher_type`;
CREATE TABLE `t_teacher_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '年份+0000+n',
  `teacherTypeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '教师类别名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_teaching
-- ----------------------------
DROP TABLE IF EXISTS `t_teaching`;
CREATE TABLE `t_teaching`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `classId` int(0) DEFAULT NULL COMMENT '班级id',
  `subjectId` int(0) DEFAULT NULL COMMENT '科目id',
  `teacherId` int(0) DEFAULT NULL COMMENT '教师id',
  `modelId` int(0) DEFAULT NULL COMMENT '模块id',
  `teacherTotalScore` double DEFAULT NULL COMMENT '教师总评分',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态',
  `teachingStartTime` datetime(0) DEFAULT NULL COMMENT '评教开始时间',
  `teachingEndTime` datetime(0) DEFAULT NULL COMMENT '评教结束时间',
  `creatorId` bigint(0) DEFAULT NULL COMMENT '创建者id',
  `creator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_teaching_model
-- ----------------------------
DROP TABLE IF EXISTS `t_teaching_model`;
CREATE TABLE `t_teaching_model`  (
  `id` int(0) NOT NULL,
  `modelName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模板名',
  `state` tinyint(0) DEFAULT NULL COMMENT '是否评教',
  `creatorId` bigint(0) DEFAULT NULL COMMENT '创建者id',
  `creater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '创建人',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `reviser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '修改人',
  `reviseTime` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `usegeCount` int(0) DEFAULT NULL COMMENT '使用次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_teaching_model_item
-- ----------------------------
DROP TABLE IF EXISTS `t_teaching_model_item`;
CREATE TABLE `t_teaching_model_item`  (
  `id` int(0) NOT NULL,
  `modelItemName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模板项名称',
  `modelItemType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模板项类别',
  `status` tinyint(0) DEFAULT NULL COMMENT '状态',
  `creatorId` bigint(0) DEFAULT NULL COMMENT '创建者id',
  `creater` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '创建人',
  `createTime` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `reviser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '修改人',
  `reviseTime` datetime(0) DEFAULT NULL COMMENT '修改时间',
  `usageCount` int(0) DEFAULT NULL COMMENT '使用次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_teaching_model_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_teaching_model_relation`;
CREATE TABLE `t_teaching_model_relation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `modelId` int(0) NOT NULL COMMENT '模块id',
  `modelOptionId` int(0) NOT NULL COMMENT '模块项id',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态',
  `weight` double NOT NULL COMMENT '权重',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user_bind
-- ----------------------------
DROP TABLE IF EXISTS `t_user_bind`;
CREATE TABLE `t_user_bind`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '学生或者教师账户',
  `sysUserId` bigint(0) DEFAULT NULL COMMENT 'sys_user表中的id',
  `type` int(0) DEFAULT NULL COMMENT '1 : 学生 2 教师',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

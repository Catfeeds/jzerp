/*
Navicat MySQL Data Transfer

Source Server         : 服务器
Source Server Version : 50641
Source Host           : 192.168.3.230:3306
Source Database       : jzerp

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2018-10-19 17:56:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jz_admin_action
-- ----------------------------
DROP TABLE IF EXISTS `jz_admin_action`;
CREATE TABLE `jz_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text COMMENT '行为规则',
  `log` text COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_admin_action
-- ----------------------------
INSERT INTO `jz_admin_action` VALUES ('14', 'inform_add', '添加通知', '通知添加', '', 'xxx用户添加了一条通知[details]', '1', '1534907134', '1534907134');
INSERT INTO `jz_admin_action` VALUES ('15', 'inform_add', '添加通知', '通知添加', '', 'xxx用户添加了一条通知[details]', '1', '1534907183', '1534907183');
INSERT INTO `jz_admin_action` VALUES ('17', 'inform_edit', '通知修改', '通知修改', '', '测试xxx', '1', '1534907433', '1534907433');
INSERT INTO `jz_admin_action` VALUES ('27', 'inform_searh', '查找通知', '查找通知', '', 'xxx查看了通知 [details]', '1', '1534908698', '1534908698');
INSERT INTO `jz_admin_action` VALUES ('28', 'inform_search', '查找通知1', '查找通知1', '', 'xxx查看了通知 [details]', '1', '1534909339', '1534909339');
INSERT INTO `jz_admin_action` VALUES ('29', 'inform_search', '查找通知', '查找通知', '', 'xxx查看了通知 [details]', '1', '1534909376', '1534909376');
INSERT INTO `jz_admin_action` VALUES ('30', 'action_add', '添加行为', '添加行为', '', 'UID 添加了一条行为  [details] ', '1', '1534922350', '1534922350');
INSERT INTO `jz_admin_action` VALUES ('39', 'infrom', '1', '1', '', '[UID]', '1', '1534924226', '1534924226');
INSERT INTO `jz_admin_action` VALUES ('40', 'infrom_aaaaaaa', '1', '1', '1', '1', '1', '1534924251', '1534924251');
INSERT INTO `jz_admin_action` VALUES ('41', 'inform_add', 'php', '乌拉拉', '', '', '1', '1534924296', '1534924296');
INSERT INTO `jz_admin_action` VALUES ('56', 'indent_add', '测试', '测试', '', '[UID]  添加了一条行为', '1', '1534926950', '1534926950');
INSERT INTO `jz_admin_action` VALUES ('62', '', '', '', '', '', '1', '1535100014', '1535100014');
INSERT INTO `jz_admin_action` VALUES ('63', '', '', '', '', '', '1', '1535100067', '1535100067');
INSERT INTO `jz_admin_action` VALUES ('64', '', '', '', '', '', '1', '1535100091', '1535100091');
INSERT INTO `jz_admin_action` VALUES ('65', 'add_add', '测试', '1', '1', '1', '1', '1535101090', '1535101090');
INSERT INTO `jz_admin_action` VALUES ('66', 'addmin_add', '测试', '1', '1', '1', '1', '1535101187', '1535101187');
INSERT INTO `jz_admin_action` VALUES ('67', 'add_ada', '1', '1', '1', '1', '1', '1535101338', '1535101338');
INSERT INTO `jz_admin_action` VALUES ('68', 'ad_aa', '1', '1', '1', '1', '1', '1535101400', '1535101400');
INSERT INTO `jz_admin_action` VALUES ('69', 'add_aaa', '1', '1', '1', '1', '1', '1535101434', '1535101434');
INSERT INTO `jz_admin_action` VALUES ('70', 'add_add', '1', '1', '1', '1', '1', '1535101455', '1535101455');
INSERT INTO `jz_admin_action` VALUES ('71', 'add_add', '1', '1', '1', '1', '1', '1535101495', '1535101495');
INSERT INTO `jz_admin_action` VALUES ('72', 'add', 'a', 'a', '1', '1', '1', '1535101557', '1535101557');
INSERT INTO `jz_admin_action` VALUES ('73', 'add_111', '2', '3', '4', '5', '1', '1535101615', '1535101615');
INSERT INTO `jz_admin_action` VALUES ('74', 'add_mint', '1', '1', '1', '1', '1', '1535101650', '1535101650');
INSERT INTO `jz_admin_action` VALUES ('75', 'add_add', '1', '1', '1', '1', '1', '1535101750', '1535101750');
INSERT INTO `jz_admin_action` VALUES ('76', 'add_add', '1', '11', '11', '111', '1', '1535101870', '1535101870');
INSERT INTO `jz_admin_action` VALUES ('77', 'add_add', '1', '1', '1', '1', '1', '1535101968', '1535101968');
INSERT INTO `jz_admin_action` VALUES ('78', 'add_add_index', '1', '1', '1', '1', '1', '1535103329', '1535103329');
INSERT INTO `jz_admin_action` VALUES ('79', 'add_add', '1', '1', '1', '1', '1', '1535103435', '1535103435');
INSERT INTO `jz_admin_action` VALUES ('80', 'add_add', '1', '1', '1', '1', '1', '1535103453', '1535103453');
INSERT INTO `jz_admin_action` VALUES ('82', 'add_add', '1', '1', '1', '1', '1', '1535103584', '1535103584');
INSERT INTO `jz_admin_action` VALUES ('84', 'action_add', '1', '1', '1', '1', '1', '1535106199', '1535106199');
INSERT INTO `jz_admin_action` VALUES ('85', 'supplier_add', '添加供应商', '添加供应商', '1', '用户添加了一条供应商档案 [details]', '1', '1535345368', '1535345368');
INSERT INTO `jz_admin_action` VALUES ('86', 'supplier_edit', '修改供应商资料', '修改供应商资料', '1', '修改了供应商资料', '1', '1535360919', '1535360919');
INSERT INTO `jz_admin_action` VALUES ('87', '', '', '', null, null, '1', '1535954565', '1535954565');
INSERT INTO `jz_admin_action` VALUES ('88', 'construction_quantity_add', '添加质量检查', '添加质量检查', '1', '[details]', '1', '1536028668', '1536028668');
INSERT INTO `jz_admin_action` VALUES ('90', 'makeplan_add', '技术交底', '技术交底', '1111', '[details]', '1', '1536823643', '1536823643');
INSERT INTO `jz_admin_action` VALUES ('91', 'add_user', '添加用户', '添加用户', '添加用户', '[details]', '1', '1536829310', '1536829310');
INSERT INTO `jz_admin_action` VALUES ('92', 'purchase_add', '添加物资招标计划', '添加物资招标计划', '添加物资招标计划', '[details]', '1', '1536829510', '1536829510');
INSERT INTO `jz_admin_action` VALUES ('93', 'purchase_contract_add', '添加物资采购合同', '添加物资采购合同', '添加物资采购合同', '[details]', '1', '1536830269', '1536830269');
INSERT INTO `jz_admin_action` VALUES ('94', 'add_delete', '删除用户', '删除用户', '删除用户', '[details]', '1', '1536830985', '1536830985');
INSERT INTO `jz_admin_action` VALUES ('95', 'edit_user', '修改用户', '修改用户', '修改用户', '[details]', '1', '1536831601', '1536831601');
INSERT INTO `jz_admin_action` VALUES ('96', 'delete_organization', '删除部门', '删除部门', '删除部门', 'Details', '1', '1536832306', '1536832306');
INSERT INTO `jz_admin_action` VALUES ('97', 'edit_organization', '修改部门', '修改部门', '修改部门', 'Details', '1', '1536832379', '1536832379');
INSERT INTO `jz_admin_action` VALUES ('98', 'add_organization', '添加部门', '添加部门', '添加部门', 'Details', '1', '1536832402', '1536832402');
INSERT INTO `jz_admin_action` VALUES ('99', 'labor_plan_add', '添加劳务计划', '添加劳务计划', '添加劳务计划', '[details]', '1', '1536887607', '1536887607');
INSERT INTO `jz_admin_action` VALUES ('100', 'labor_contract_add', '添加劳务合同', '添加劳务合同', '添加劳务合同', '[details]', '1', '1536887830', '1536887830');
INSERT INTO `jz_admin_action` VALUES ('101', 'lease_plan_add', '添加租赁计划', '添加租赁计划', '添加租赁计划', '[details]', '1', '1536888338', '1536888338');
INSERT INTO `jz_admin_action` VALUES ('102', 'lease_contract_add', '添加租赁合同', '添加租赁合同', '添加租赁合同', '[details]', '1', '1536888579', '1536888579');
INSERT INTO `jz_admin_action` VALUES ('103', 'sub_plan_add', '添加分包计划', '添加分包计划', '添加分包计划', '[details]', '1', '1536889045', '1536889045');
INSERT INTO `jz_admin_action` VALUES ('104', 'sub_contract_add', '添加分包合同', '添加分包合同', '添加分包合同', '[details]', '1', '1536889089', '1536889089');
INSERT INTO `jz_admin_action` VALUES ('105', 'project_list', '项目立项', '项目立项', '项目改动', ' [details]', '1', '1537170521', '1537170521');
INSERT INTO `jz_admin_action` VALUES ('106', 'house_add', '新增修改仓库', '新增修改仓库', '21212', '[details]', '1', '1537258170', '1537258170');
INSERT INTO `jz_admin_action` VALUES ('107', 'material_create_add', '材料新增', '材料新增', '材料新增', '[details]', '1', '1537342361', '1537342361');
INSERT INTO `jz_admin_action` VALUES ('108', 'material_create_edit', '材料修改', '材料修改', '材料修改', '[details]', '1', '1537342575', '1537342575');
INSERT INTO `jz_admin_action` VALUES ('109', 'inandout_addin', '新增修改入库', '新增修改入库', '新增修改入库', '[details]', '1', '1537411033', '1537411033');
INSERT INTO `jz_admin_action` VALUES ('110', 'house_delete', '删除仓库', '删除仓库', '删除仓库', '[details]', '1', '1537411494', '1537411494');
INSERT INTO `jz_admin_action` VALUES ('111', 'training_plan', '培训', '培训', '培训', '[details]', '1', '1539326991', '1539326991');
INSERT INTO `jz_admin_action` VALUES ('112', 'contractlabor', '合同管理', '合同管理', '合同管理', '[details]', '1', '1539582266', '1539582266');
INSERT INTO `jz_admin_action` VALUES ('113', 'leave_list', '请休假', '请休假', '请休假', '[details]', '1', '1539672727', '1539672727');
INSERT INTO `jz_admin_action` VALUES ('114', 'notice_add', '公告', '公告', '公告', '[details]', '1', '1539831425', '1539831425');

-- ----------------------------
-- Table structure for jz_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `jz_admin_config`;
CREATE TABLE `jz_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of jz_admin_config
-- ----------------------------
INSERT INTO `jz_admin_config` VALUES ('2', 'web_site_title', '站点标题', 'base', 'text', '金耀科技建筑ERP', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240646', '1535076802', '2', '1');
INSERT INTO `jz_admin_config` VALUES ('10', 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库\r\nsms:短信\r\n', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241716', '1538208116', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('11', 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nimage:单张图片\r\ntags:标签\r\nnumber:数字', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241835', '1535077046', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('12', 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475241897', '1477663520', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('13', 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z,jpg,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475241975', '1477649489', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('14', 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475242015', '1477663529', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('15', 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475242056', '1477649506', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('18', 'develop_mode', '开发模式', 'develop', 'radio', '0', '0:关闭\r\n1:开启', '', '', '', '', '', '', '2', '', '', '', '', '1476864205', '1476864231', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('19', 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', '2', '', '', '', '', '1476866355', '1476866355', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('39', 'asset_version', '资源版本号', 'develop', 'text', '20180327', '', '可通过修改版号强制用户更新静态文件', '', '', '', '', '', '0', '', '', '', '', '1522143239', '1522143239', '100', '1');
INSERT INTO `jz_admin_config` VALUES ('50', 'database_backup_path', '数据库备份路径', 'database', 'text', '../data/', '', '', '', '', '', '', '', '2', '', '', '', '', '1535619697', '1535620411', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('51', 'database_backup_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '', '', '', '', '', '', '2', '', '', '', '', '1535619830', '1535620416', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('52', 'database_backup_iszip', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:关闭\n1:启用', '', '', '', '', '', '', '2', '', '', '', '', '1535619950', '1535621223', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('53', 'database_backup_level', '数据库备份压缩级别', 'database', 'radio', '9', '1:普通\n4:一般\n9:最高', '', '', '', '', '', '', '2', '', '', '', '', '1535620907', '1535621252', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('54', 'captcha_signin', '登录验证码', 'base', 'switch', '0', '', '用户登录验证码的开关', '', '', '', '', '', '2', '', '', '', '', '1536564703', '1536564703', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('55', 'default_password', '用户默认密码', 'base', 'text', 'admin', '', '这是创建用户的默认密码', '', '', '', '', '', '2', '', '', '', '', '1537492206', '1537492206', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('56', 'accessKeyId', 'accessKeyId', 'sms', 'text', 'LTAIFqC8PiaG13mS', '请输入accessKeyId', '', '', '', '', '', '', '2', '', '', '', '', '1538208222', '1538208494', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('57', 'accessKeySecret', 'accessKeySecret', 'sms', 'text', '6Xy8K6eD6k4UvQAEqaxyrU9ifqS4Uc', '请输入accessKeySecret', '', '', '', '', '', '', '2', '', '', '', '', '1538208305', '1538208547', '0', '1');
INSERT INTO `jz_admin_config` VALUES ('58', 'singName', 'singName', 'sms', 'text', '二三奇七', '请输入singName', '', '', '', '', '', '', '2', '', '', '', '', '1538208373', '1538208373', '0', '1');

-- ----------------------------
-- Table structure for jz_admin_files
-- ----------------------------
DROP TABLE IF EXISTS `jz_admin_files`;
CREATE TABLE `jz_admin_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(100) NOT NULL COMMENT '文件路径',
  `user_id` int(11) NOT NULL COMMENT '上传者id',
  `size` int(11) NOT NULL COMMENT '大小',
  `ext` varchar(50) NOT NULL COMMENT '后缀',
  `desc` varchar(255) NOT NULL COMMENT '简述',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_admin_files
-- ----------------------------
INSERT INTO `jz_admin_files` VALUES ('1', '1[1].jpg', '\\uploads\\other\\20180816\\7d30547f19dae180800f701fa145f28b.jpg', '1', '5028', 'jpg', '', '1534412517', '1534412517', null);
INSERT INTO `jz_admin_files` VALUES ('2', '1[1].jpg', '\\uploads\\other\\20180816\\646a865e75c8ce7381a4e53a0a43d643.jpg', '1', '5028', 'jpg', '', '1534412588', '1534412588', null);
INSERT INTO `jz_admin_files` VALUES ('3', '94x58-2[1].jpg', '\\uploads\\other\\20180816\\def642201b651c0b83b1f78de0af1ec9.jpg', '1', '6137', 'jpg', '', '1534412588', '1534412588', null);
INSERT INTO `jz_admin_files` VALUES ('4', '1[1].jpg', '\\uploads\\other\\20180817\\7965a816d3417ea9297f8435eac838ca.jpg', '1', '5028', 'jpg', '', '1534470748', '1534470748', null);
INSERT INTO `jz_admin_files` VALUES ('5', '1[1].jpg', '\\uploads\\other\\20180817\\20b21be63b06dc92b5aa6937f4d7555b.jpg', '1', '5028', 'jpg', '', '1534470947', '1534470947', null);
INSERT INTO `jz_admin_files` VALUES ('6', '1[1].jpg', '\\uploads\\other\\20180817\\5d1c77bc29da4dedb82fa01dea9b301e.jpg', '1', '5028', 'jpg', '', '1534471492', '1534471492', null);
INSERT INTO `jz_admin_files` VALUES ('7', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\d76d432a68c98e7a637ab16c7dd01120.jpg', '1', '6137', 'jpg', '', '1534471501', '1534471501', null);
INSERT INTO `jz_admin_files` VALUES ('8', '330x159[1].gif', '\\uploads\\other\\20180817\\33cda2be775c568f45313f032e1adcff.gif', '1', '1763759', 'gif', '', '1534471504', '1534471504', null);
INSERT INTO `jz_admin_files` VALUES ('9', '1[1].jpg', '\\uploads\\other\\20180817\\bb7371987b1f1fddd781f89110c92de2.jpg', '1', '5028', 'jpg', '', '1534472283', '1534472283', null);
INSERT INTO `jz_admin_files` VALUES ('10', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\8c5757425ba822bd7b6b898e89241ea5.jpg', '1', '6137', 'jpg', '', '1534472312', '1534472312', null);
INSERT INTO `jz_admin_files` VALUES ('11', '1[1].jpg', '\\uploads\\other\\20180817\\10cbfba244e1f1ff44712536f494e304.jpg', '1', '5028', 'jpg', '', '1534472716', '1534472716', null);
INSERT INTO `jz_admin_files` VALUES ('12', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\39c4716504717d5e266b5ec59d1581e2.jpg', '1', '6137', 'jpg', '', '1534472716', '1534472716', null);
INSERT INTO `jz_admin_files` VALUES ('13', '330x159[1].gif', '\\uploads\\other\\20180817\\39c4716504717d5e266b5ec59d1581e2.gif', '1', '1763759', 'gif', '', '1534472716', '1534472716', null);
INSERT INTO `jz_admin_files` VALUES ('14', '1[1].jpg', '\\uploads\\other\\20180817\\a57c58770f287d9f01d1f68b40dc0a95.jpg', '1', '5028', 'jpg', '', '1534472737', '1534472737', null);
INSERT INTO `jz_admin_files` VALUES ('15', '1[1].jpg', '\\uploads\\other\\20180817\\73effa27328aa6b6972b4709abad5163.jpg', '1', '5028', 'jpg', '', '1534472846', '1534472846', null);
INSERT INTO `jz_admin_files` VALUES ('16', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\2456bbcfd3a22b48352de7cfd6e185ca.jpg', '1', '6137', 'jpg', '', '1534472846', '1534472846', null);
INSERT INTO `jz_admin_files` VALUES ('17', '330x159[1].gif', '\\uploads\\other\\20180817\\2456bbcfd3a22b48352de7cfd6e185ca.gif', '1', '1763759', 'gif', '', '1534472846', '1534472846', null);
INSERT INTO `jz_admin_files` VALUES ('18', '1[1].jpg', '\\uploads\\other\\20180817\\d3d111e0847132e93f2b4c8072b0cf47.jpg', '1', '5028', 'jpg', '', '1534472930', '1534472930', null);
INSERT INTO `jz_admin_files` VALUES ('19', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\287c3fa5828d18eb0f2904889fa0c0e3.jpg', '1', '6137', 'jpg', '', '1534472930', '1534472930', null);
INSERT INTO `jz_admin_files` VALUES ('20', '330x159[1].gif', '\\uploads\\other\\20180817\\287c3fa5828d18eb0f2904889fa0c0e3.gif', '1', '1763759', 'gif', '', '1534472930', '1534472930', null);
INSERT INTO `jz_admin_files` VALUES ('21', '1[1].jpg', '\\uploads\\other\\20180817\\c9715352eceec4974418999cb692574e.jpg', '1', '5028', 'jpg', '', '1534472956', '1534472956', null);
INSERT INTO `jz_admin_files` VALUES ('22', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\138d2d63ec99da71997c14ab789f763e.jpg', '1', '6137', 'jpg', '', '1534472956', '1534472956', null);
INSERT INTO `jz_admin_files` VALUES ('23', '330x159[1].gif', '\\uploads\\other\\20180817\\138d2d63ec99da71997c14ab789f763e.gif', '1', '1763759', 'gif', '', '1534472957', '1534472957', null);
INSERT INTO `jz_admin_files` VALUES ('24', '1[1].jpg', '\\uploads\\other\\20180817\\8464b40618fa36c5480ef6e622223fb7.jpg', '1', '5028', 'jpg', '', '1534473013', '1534473013', null);
INSERT INTO `jz_admin_files` VALUES ('25', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\10223b102707f269df1d3300868e5a42.jpg', '1', '6137', 'jpg', '', '1534473013', '1534473013', null);
INSERT INTO `jz_admin_files` VALUES ('26', '330x159[1].gif', '\\uploads\\other\\20180817\\10223b102707f269df1d3300868e5a42.gif', '1', '1763759', 'gif', '', '1534473013', '1534473013', null);
INSERT INTO `jz_admin_files` VALUES ('27', '1[1].jpg', '\\uploads\\other\\20180817\\a6af074cbf08d693b33655a4556f162a.jpg', '1', '5028', 'jpg', '', '1534473077', '1534473077', null);
INSERT INTO `jz_admin_files` VALUES ('28', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\a6af074cbf08d693b33655a4556f162a.jpg', '1', '6137', 'jpg', '', '1534473077', '1534473077', null);
INSERT INTO `jz_admin_files` VALUES ('29', '330x159[1].gif', '\\uploads\\other\\20180817\\cc99ae1676ccb235313b1ff1b1c3a262.gif', '1', '1763759', 'gif', '', '1534473077', '1534473077', null);
INSERT INTO `jz_admin_files` VALUES ('30', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\7f042685565613be4b6e791a9da7b8b1.jpg', '1', '6137', 'jpg', '', '1534473097', '1534473097', null);
INSERT INTO `jz_admin_files` VALUES ('31', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\9bed492a716077b7814784cdcd1d89ab.jpg', '1', '6137', 'jpg', '', '1534473148', '1534473148', null);
INSERT INTO `jz_admin_files` VALUES ('32', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\abd9f0bf8a3501f608222824c3848a79.jpg', '1', '6137', 'jpg', '', '1534473164', '1534473164', null);
INSERT INTO `jz_admin_files` VALUES ('33', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\03a8688bedd25b103e143d8d68c90c5f.jpg', '1', '6137', 'jpg', '', '1534473185', '1534473185', null);
INSERT INTO `jz_admin_files` VALUES ('34', '1[1].jpg', '\\uploads\\other\\20180817\\93e048d59a691a962b2de63d0c6788a9.jpg', '1', '5028', 'jpg', '', '1534473191', '1534473191', null);
INSERT INTO `jz_admin_files` VALUES ('35', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\bcf3022d6534b3ea5e7715912c2b409a.jpg', '1', '6137', 'jpg', '', '1534473191', '1534473191', null);
INSERT INTO `jz_admin_files` VALUES ('36', '330x159[1].gif', '\\uploads\\other\\20180817\\bcf3022d6534b3ea5e7715912c2b409a.gif', '1', '1763759', 'gif', '', '1534473191', '1534473191', null);
INSERT INTO `jz_admin_files` VALUES ('37', '1[1].jpg', '\\uploads\\other\\20180817\\8051aa65ccb3e7bef2eb6c5551872928.jpg', '1', '5028', 'jpg', '', '1534473654', '1534473654', null);
INSERT INTO `jz_admin_files` VALUES ('38', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\c95155cf2c9a3ca6cdde5c2b33e6e033.jpg', '1', '6137', 'jpg', '', '1534473654', '1534473654', null);
INSERT INTO `jz_admin_files` VALUES ('39', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\f53c4e59ffc49ddf05fcf0fc3b8dbd26.jpg', '1', '6137', 'jpg', '', '1534474057', '1534474057', null);
INSERT INTO `jz_admin_files` VALUES ('40', '94x58-2[1].jpg', '\\uploads\\other\\20180817\\9c55cb1ed5785e933f5570c25047e370.jpg', '1', '6137', 'jpg', '', '1534474803', '1534474803', null);
INSERT INTO `jz_admin_files` VALUES ('41', '1[1].jpg', '\\uploads\\other\\20180817\\9fd9eeae0a7cdde4f1228522ea1af31d.jpg', '1', '5028', 'jpg', '', '1534474807', '1534474807', null);
INSERT INTO `jz_admin_files` VALUES ('42', '1[1].jpg', '\\uploads\\balance\\20180817\\7e12c50b9fb65446798c32b0634a5921.jpg', '1', '5028', 'jpg', '', '1534475994', '1534475994', null);
INSERT INTO `jz_admin_files` VALUES ('43', '94x58-2[1].jpg', '\\uploads\\balance\\20180817\\1db12febb81d08ef9d7fd03ba0d8f6c4.jpg', '1', '6137', 'jpg', '', '1534477158', '1534477158', null);
INSERT INTO `jz_admin_files` VALUES ('44', '330x159[1].gif', '\\uploads\\balance\\20180817\\e4fa26ec9f2d51270248fae554adc4ec.gif', '1', '1763759', 'gif', '', '1534477161', '1534477161', null);
INSERT INTO `jz_admin_files` VALUES ('45', '94x58-2[1].jpg', '\\uploads\\balance\\20180817\\2df612bf52698ed5cac40f99a4ee67de.jpg', '1', '6137', 'jpg', '', '1534477186', '1534477186', null);
INSERT INTO `jz_admin_files` VALUES ('46', '95[1].mp3', '\\uploads\\balance\\20180817\\d1b70935435611302c638de7760a5fda.mp3', '1', '20897', 'mp3', '', '1534477195', '1534477195', null);
INSERT INTO `jz_admin_files` VALUES ('47', '94x58-2[1].jpg', '\\uploads\\balance\\20180817\\408382d23a9a3ac817497f1da4552e59.jpg', '1', '6137', 'jpg', '', '1534477213', '1534477213', null);
INSERT INTO `jz_admin_files` VALUES ('48', '9kill[1].mp3', '\\uploads\\balance\\20180817\\b96e727468d47aff82d59d3f888bc7e1.mp3', '1', '10152', 'mp3', '', '1534490714', '1534490714', null);
INSERT INTO `jz_admin_files` VALUES ('49', '1[1].jpg', '\\uploads\\balance\\20180817\\2907693a94d43dce2ad900f80adfac19.jpg', '1', '5028', 'jpg', '', '1534494623', '1534494623', null);
INSERT INTO `jz_admin_files` VALUES ('50', '1[1].jpg', '\\uploads\\balance\\20180817\\8332d7b15b5b45f68d125b8b10200216.jpg', '1', '5028', 'jpg', '', '1534494727', '1534494727', null);
INSERT INTO `jz_admin_files` VALUES ('51', '94x58-2[1].jpg', '\\uploads\\balance\\20180817\\56d3a8af35bebd4373ebc77eb2405f65.jpg', '1', '6137', 'jpg', '', '1534495065', '1534495065', null);
INSERT INTO `jz_admin_files` VALUES ('52', '1[1].jpg', '\\uploads\\balance\\20180817\\1d4612379d4b8e896c0bd8211b3e3cf1.jpg', '1', '5028', 'jpg', '', '1534495120', '1534495120', null);
INSERT INTO `jz_admin_files` VALUES ('53', '94x58-2[1].jpg', '\\uploads\\balance\\20180817\\1d4612379d4b8e896c0bd8211b3e3cf1.jpg', '1', '6137', 'jpg', '', '1534495120', '1534495120', null);
INSERT INTO `jz_admin_files` VALUES ('54', '58d34035e2757995[1].png', '\\uploads\\balance\\20180817\\2f64924d23683b1b7a8f6fdad8f3728a.png', '1', '36611', 'png', '', '1534495739', '1534495739', null);
INSERT INTO `jz_admin_files` VALUES ('55', '94x58-2[1].jpg', '\\uploads\\balance\\20180817\\89952b7151ae4c22178748106a9a473a.jpg', '1', '6137', 'jpg', '', '1534495834', '1534495834', null);
INSERT INTO `jz_admin_files` VALUES ('56', '5995686f4415a581[1].png', '\\uploads\\other\\20180820\\f69478512f1058df6925112b7b5249d0.png', '1', '16617', 'png', '', '1534728172', '1534728172', null);
INSERT INTO `jz_admin_files` VALUES ('57', '1[1].jpg', '\\uploads\\balance\\20180822\\a8353a02d73f7b877e1fc548ffd14194.jpg', '1', '5028', 'jpg', '', '1534901329', '1534901329', null);
INSERT INTO `jz_admin_files` VALUES ('58', '58d3631514435840[1].png', '\\uploads\\balance\\20180822\\23a77347f7e3415bdb5c90e9c472a865.png', '1', '69358', 'png', '', '1534901333', '1534901333', null);
INSERT INTO `jz_admin_files` VALUES ('59', '94x58-2[1].jpg', '\\uploads\\balance\\20180822\\ecdea48f858c4479c46dced5a964f049.jpg', '1', '6137', 'jpg', '', '1534901473', '1534901473', null);
INSERT INTO `jz_admin_files` VALUES ('60', '330x159[1].gif', '\\uploads\\balance\\20180822\\ecdea48f858c4479c46dced5a964f049.gif', '1', '1763759', 'gif', '', '1534901473', '1534901473', null);
INSERT INTO `jz_admin_files` VALUES ('61', '1[1].jpg', '\\uploads\\balance\\20180822\\69b85aa7730e1a8448c5f2aec0d40429.jpg', '1', '5028', 'jpg', '', '1534913887', '1534913887', null);
INSERT INTO `jz_admin_files` VALUES ('62', '94x58-2[1].jpg', '\\uploads\\balance\\20180822\\053a348fdaea3559622db588a89e6e3c.jpg', '1', '6137', 'jpg', '', '1534926876', '1534926876', null);
INSERT INTO `jz_admin_files` VALUES ('63', '1[1].jpg', '\\uploads\\balance\\20180823\\cc7de1ba0a8edd4a9590de17e2d2b6e5.jpg', '1', '5028', 'jpg', '', '1535008838', '1535008838', null);
INSERT INTO `jz_admin_files` VALUES ('64', '系统配置.txt', '\\uploads\\balance\\20180824\\267fc8d805a7ac7c6f3270ea15b000e2.txt', '1', '729', 'txt', '', '1535080094', '1535080094', null);
INSERT INTO `jz_admin_files` VALUES ('65', 'logo.png', '\\uploads\\system\\20180824\\96fd7a008b03de0f82fa30a06e75708a.png', '1', '22524', 'png', '', '1535081319', '1535081319', null);
INSERT INTO `jz_admin_files` VALUES ('66', 'logo.png', '\\uploads\\system\\20180824\\2c3b1fd6d230cdbe79c08152c32f744e.png', '1', '22524', 'png', '', '1535081540', '1535081540', null);
INSERT INTO `jz_admin_files` VALUES ('67', 'logo.png', '\\uploads\\system\\20180824\\467b55a4b87baccfd749e554f5ab8a20.png', '1', '22524', 'png', '', '1535081574', '1535081574', null);
INSERT INTO `jz_admin_files` VALUES ('68', 'logo.png', '\\uploads\\system\\20180824\\ca3801d6d29971d799bf2591d3b18987.png', '1', '22524', 'png', '', '1535081647', '1535081647', null);
INSERT INTO `jz_admin_files` VALUES ('69', 'logo.png', '\\uploads\\system\\20180824\\193ddb83aa25c160704e7886e5690c8f.png', '1', '22524', 'png', '', '1535081685', '1535081685', null);
INSERT INTO `jz_admin_files` VALUES ('70', 'logo.png', '\\uploads\\system\\20180824\\b17ac28505335d1114fc36ebf9c0a2c0.png', '1', '22524', 'png', '', '1535081715', '1535081715', null);
INSERT INTO `jz_admin_files` VALUES ('71', 'logo.png', '\\uploads\\system\\20180824\\7174243a4aa9bf3d767bb1b00c8d3218.png', '1', '22524', 'png', '', '1535081832', '1535081832', null);
INSERT INTO `jz_admin_files` VALUES ('72', 'logo.png', '\\uploads\\system\\20180824\\0c52a270218a41604ea599fa98c33b51.png', '1', '22524', 'png', '', '1535081871', '1535081871', null);
INSERT INTO `jz_admin_files` VALUES ('73', 'logo.png', '\\uploads\\system\\20180824\\61c1526ca25bff61830a7f2f41e81b5b.png', '1', '22524', 'png', '', '1535081889', '1535081889', null);
INSERT INTO `jz_admin_files` VALUES ('74', 'logo.png', '\\uploads\\system\\20180824\\dfa3e8f0f0999d11a952f95831ebeb4a.png', '1', '22524', 'png', '', '1535081908', '1535081908', null);
INSERT INTO `jz_admin_files` VALUES ('75', 'logo.png', '\\uploads\\system\\20180824\\a9d4cb4d05a8d710ac0222152d463ee7.png', '1', '22524', 'png', '', '1535081961', '1535081961', null);
INSERT INTO `jz_admin_files` VALUES ('76', 'logo.png', '\\uploads\\system\\20180824\\487046e997c77c9dc3ad1b0dc4e446b9.png', '1', '22524', 'png', '', '1535082010', '1535082010', null);
INSERT INTO `jz_admin_files` VALUES ('77', 'logo.png', '\\uploads\\system\\20180824\\ff4c8cae700844df87fa9f011e529bd8.png', '1', '22524', 'png', '', '1535082034', '1535082034', null);
INSERT INTO `jz_admin_files` VALUES ('78', '94x58-2[1].jpg', '\\uploads\\balance\\20180824\\8e6b01dc61b8defa405b39b5fbfdb78b.jpg', '1', '6137', 'jpg', '', '1535082229', '1535082229', null);
INSERT INTO `jz_admin_files` VALUES ('79', 'logo.png', '\\uploads\\system\\20180824\\4414b13d3da81685d52fbee3b610cfd3.png', '1', '22524', 'png', '', '1535082390', '1535082390', null);
INSERT INTO `jz_admin_files` VALUES ('80', 'logo.png', '\\uploads\\system\\20180824\\3c48edf8df6d7e3012322ff7c4cbd70e.png', '1', '22524', 'png', '', '1535082475', '1535082475', null);
INSERT INTO `jz_admin_files` VALUES ('81', 'logo.png', '\\uploads\\system\\20180824\\ca04a977b460539f65db8dd69f8696ac.png', '1', '22524', 'png', '', '1535082756', '1535082756', null);
INSERT INTO `jz_admin_files` VALUES ('82', 'logo.png', '\\uploads\\system\\20180824\\5504e3338a6f23d60cb9b4401b8d0156.png', '1', '22524', 'png', '', '1535082817', '1535082817', null);
INSERT INTO `jz_admin_files` VALUES ('83', 'logo.png', '\\uploads\\system\\20180824\\b69835eaab02c0b975c892babd5cfdf6.png', '1', '22524', 'png', '', '1535082900', '1535082900', null);
INSERT INTO `jz_admin_files` VALUES ('84', 'logo.png', '\\uploads\\system\\20180824\\2d5e081340f439e0f937e72f83c06db7.png', '1', '22524', 'png', '', '1535082985', '1535082985', null);
INSERT INTO `jz_admin_files` VALUES ('85', 'logo.png', '\\uploads\\system\\20180824\\51e0e464939f503efa052b4b68e4db5d.png', '1', '22524', 'png', '', '1535089488', '1535089488', null);
INSERT INTO `jz_admin_files` VALUES ('86', 'logo.png', '\\uploads\\system\\20180824\\2b03b6bbb8c0949ddaf86f3790a87425.png', '1', '22524', 'png', '', '1535089563', '1535089563', null);
INSERT INTO `jz_admin_files` VALUES ('87', 'logo.png', '\\uploads\\system\\20180824\\6b6427d679893d88d9764980d12faa87.png', '1', '22524', 'png', '', '1535089703', '1535089703', null);
INSERT INTO `jz_admin_files` VALUES ('88', 'logo.png', '\\uploads\\system\\20180824\\45f0944a480c43e856008b47466881d6.png', '1', '22524', 'png', '', '1535089756', '1535089756', null);
INSERT INTO `jz_admin_files` VALUES ('89', 'logo.png', '\\uploads\\system\\20180824\\bac2b1f16480c475c331f4da97932875.png', '1', '22524', 'png', '', '1535104018', '1535104018', null);
INSERT INTO `jz_admin_files` VALUES ('90', 'logo.png', '\\uploads\\system\\20180824\\36bf0d3026be1f7e984b9bc05873fee3.png', '1', '22524', 'png', '', '1535104331', '1535104331', null);
INSERT INTO `jz_admin_files` VALUES ('91', 'logo.png', '\\uploads\\system\\20180824\\1df9d1045037e38d3838251e72ac16b2.png', '1', '22524', 'png', '', '1535104394', '1535104394', null);
INSERT INTO `jz_admin_files` VALUES ('92', 'logo.png', '\\uploads\\system\\20180824\\b80d2550ee0cbc8d00e95b2d25431def.png', '1', '22524', 'png', '', '1535104478', '1535104478', null);
INSERT INTO `jz_admin_files` VALUES ('93', 'logo.png', '\\uploads\\system\\20180824\\878722f5d45648bbfe5dea368cbe7c25.png', '1', '22524', 'png', '', '1535104611', '1535104611', null);
INSERT INTO `jz_admin_files` VALUES ('94', 'logo.png', '\\uploads\\system\\20180827\\ca4abd08441ae846fffda7d85c553046.png', '1', '22524', 'png', '', '1535332679', '1535332679', null);
INSERT INTO `jz_admin_files` VALUES ('95', '94x58-2[1].jpg', '\\uploads\\balance\\20180828\\992b008ef31dbe7c1f4e857a28013228.jpg', '1', '6137', 'jpg', '', '1535436697', '1535436697', null);
INSERT INTO `jz_admin_files` VALUES ('96', '下载.jpg', '\\uploads\\system\\20180829\\78141531319eabeb521bc95de62db07d.jpg', '1', '4313', 'jpg', '', '1535511777', '1535511777', null);
INSERT INTO `jz_admin_files` VALUES ('97', 'logo.png', '\\uploads\\system\\20180829\\1c67ec6ef844beda77d8afae481bcf71.png', '1', '22524', 'png', '', '1535513738', '1535513738', null);
INSERT INTO `jz_admin_files` VALUES ('98', 'logo.png', '\\uploads\\system\\20180829\\ab83f9e679bbdc1aae773a24f15e96b0.png', '1', '22524', 'png', '', '1535513789', '1535513789', null);
INSERT INTO `jz_admin_files` VALUES ('99', 'logo.png', '\\uploads\\system\\20180829\\e827ce3360084e5968d918cf93fe201b.png', '1', '22524', 'png', '', '1535514010', '1535514010', null);
INSERT INTO `jz_admin_files` VALUES ('100', 'getImage.jpg', '\\uploads\\system\\20180829\\d65223b9e18ed620c7e386f05ae4dfe0.jpg', '1', '59613', 'jpg', '', '1535533536', '1535533536', null);
INSERT INTO `jz_admin_files` VALUES ('101', 'jianglaoshi.png', '\\uploads\\system\\20180829\\c7127347927ee70d99d9a3a0ede3a42d.png', '1', '92946', 'png', '', '1535533561', '1535533561', null);
INSERT INTO `jz_admin_files` VALUES ('102', '微信截图_20170912091826.png', '\\uploads\\system\\20180830\\54f92af0af6270edcc05a0cc205065be.png', '1', '371278', 'png', '', '1535620779', '1535620779', null);
INSERT INTO `jz_admin_files` VALUES ('103', '94x58-2[1].jpg', '\\uploads\\balance\\20180831\\bd54b6420949f07cf55bbfc1d44dacfa.jpg', '1', '6137', 'jpg', '', '1535694060', '1535694060', null);
INSERT INTO `jz_admin_files` VALUES ('104', 'Layui.php', '\\uploads\\balance\\20180831\\301764b4aa27c7095d02cc0d4270d68c.php', '1', '4973', 'php', '', '1535698164', '1535698164', null);
INSERT INTO `jz_admin_files` VALUES ('105', 'add.png', '\\uploads\\balance\\20180831\\d3b5bbaa4d16eb8c7f2b8130fbddc087.png', '1', '1449', 'png', '', '1535698207', '1535698207', null);
INSERT INTO `jz_admin_files` VALUES ('106', '微信截图_20170912091826.png', '\\uploads\\system\\20180903\\9c7eccd7c7d564b132c84b1c99403979.png', '1', '371278', 'png', '', '1535943990', '1535943990', null);
INSERT INTO `jz_admin_files` VALUES ('107', 'h_online.png', '\\uploads\\balance\\20180903\\cfe311c2a73ef15ec460d5714b408ca8.png', '1', '1167', 'png', '', '1535945747', '1535945747', null);
INSERT INTO `jz_admin_files` VALUES ('108', 'h_officialdom.png', '\\uploads\\balance\\20180903\\36e6aea089e870e66289719fd7fc6795.png', '1', '3920', 'png', '', '1535946905', '1535946905', null);
INSERT INTO `jz_admin_files` VALUES ('109', 'h_online.png', '\\uploads\\balance\\20180903\\a2a07b73bdfceb66de9f058d4754ffd0.png', '1', '1167', 'png', '', '1535946909', '1535946909', null);
INSERT INTO `jz_admin_files` VALUES ('110', 'h_paper.png', '\\uploads\\balance\\20180903\\c220ab94dc49e6b5f1d7eaa65463e08f.png', '1', '1230', 'png', '', '1535946912', '1535946912', null);
INSERT INTO `jz_admin_files` VALUES ('111', 'h_online.png', '\\uploads\\balance\\20180903\\fc2d205b2db83e10596f4f4dc58c3536.png', '1', '1167', 'png', '', '1535946923', '1535946923', null);
INSERT INTO `jz_admin_files` VALUES ('112', 'h_officialdom.png', '\\uploads\\balance\\20180903\\7949c7920a03174a7176bdc18cefcbc2.png', '1', '3920', 'png', '', '1535952975', '1535952975', null);
INSERT INTO `jz_admin_files` VALUES ('113', 'h_officialdom.png', '\\uploads\\balance\\20180903\\3bed6d1c824a23e4b07816725d3c9d77.png', '1', '3920', 'png', '', '1535953206', '1535953206', null);
INSERT INTO `jz_admin_files` VALUES ('114', 'h_officialdom.png', '\\uploads\\balance\\20180903\\bd6e90ad5ed98c9468e3ebca3822ec0a.png', '1', '3920', 'png', '', '1535953332', '1535953332', null);
INSERT INTO `jz_admin_files` VALUES ('115', 'h_officialdom.png', '\\uploads\\balance\\20180903\\e94e829fba42195c56970cc536730002.png', '1', '3920', 'png', '', '1535953387', '1535953387', null);
INSERT INTO `jz_admin_files` VALUES ('116', 'mmexport1535941191916.jpg', '\\uploads\\balance\\20180904\\b6457ab6ae3cb6d0e3fcb5ce9de63d16.jpg', '1', '4647', 'jpg', '', '1536033285', '1536033285', null);
INSERT INTO `jz_admin_files` VALUES ('117', ')~ZK5O$7Y$P{[ET[E%MH%R3.png', '\\uploads\\balance\\20180905\\a07cab8e77f56c6c873f09be89305112.png', '1', '321984', 'png', '', '1536126827', '1536126827', null);
INSERT INTO `jz_admin_files` VALUES ('118', '加班申请单.txt', '\\uploads\\balance\\20180906\\9da59729e4d27bfa093b9534f8f369ef.txt', '1', '9163', 'txt', '', '1536218135', '1536218135', null);
INSERT INTO `jz_admin_files` VALUES ('119', 'TW70U5RZ~EW}1{4QX$V`]WN.bmp', '\\uploads\\balance\\20180906\\f0a1173c2785ea6bc7a487df4c343db2.bmp', '1', '15289', 'bmp', '', '1536220805', '1536220805', null);
INSERT INTO `jz_admin_files` VALUES ('120', '55.png', '\\uploads\\balance\\20180906\\9c3ae72f9d836aacaa1b24ee5cee6f45.png', '1', '321984', 'png', '', '1536220823', '1536220823', null);
INSERT INTO `jz_admin_files` VALUES ('121', 'TW70U5RZ~EW}1{4QX$V`]WN.bmp', '\\uploads\\balance\\20180906\\2ffec509f7613b8a4156acc07fc389ec.bmp', '1', '15289', 'bmp', '', '1536221538', '1536221538', null);
INSERT INTO `jz_admin_files` VALUES ('122', '55.png', '\\uploads\\balance\\20180906\\e3908d1038d51600538e7fd114818037.png', '1', '321984', 'png', '', '1536221541', '1536221541', null);
INSERT INTO `jz_admin_files` VALUES ('123', 'TW70U5RZ~EW}1{4QX$V`]WN.bmp', '\\uploads\\balance\\20180906\\41b99e9cbc938ab1241ad4a832db666f.bmp', '1', '15289', 'bmp', '', '1536221817', '1536221817', null);
INSERT INTO `jz_admin_files` VALUES ('124', '55.png', '\\uploads\\balance\\20180906\\09a96811cbfd4d3fb450600f33e3d1c9.png', '1', '321984', 'png', '', '1536221824', '1536221824', null);
INSERT INTO `jz_admin_files` VALUES ('125', '微信图片_20180906160503.png', '\\uploads\\balance\\20180907\\b7e592ab1b68f1c09be488b50de93c83.png', '1', '24217', 'png', '', '1536285822', '1536285822', null);
INSERT INTO `jz_admin_files` VALUES ('126', '加班申请单.txt', '\\uploads\\balance\\20180907\\a1ba28263a92c7badabf339ce67e8aa7.txt', '1', '9163', 'txt', '', '1536285838', '1536285838', null);
INSERT INTO `jz_admin_files` VALUES ('127', 'AdobeXMPFiles.dll', '\\uploads\\balance\\20180907\\06198cc170aa3e1d4e5e59af31e9b1ee.dll', '1', '1012616', 'dll', '', '1536304388', '1536304388', null);
INSERT INTO `jz_admin_files` VALUES ('128', 'AdobeXMP.dll', '\\uploads\\balance\\20180907\\ab841ec28829370f853c8723c88ad501.dll', '1', '447368', 'dll', '', '1536304392', '1536304392', null);
INSERT INTO `jz_admin_files` VALUES ('129', 'ACE.dll', '\\uploads\\balance\\20180907\\63f54949d73f46d0714fae2846da7cb2.dll', '1', '1884552', 'dll', '', '1536309174', '1536309174', null);
INSERT INTO `jz_admin_files` VALUES ('130', '加班申请单.txt', '\\uploads\\balance\\20180907\\3c9fdac163eeee4466eb2067bb595b78.txt', '1', '9181', 'txt', '', '1536310785', '1536310785', null);
INSERT INTO `jz_admin_files` VALUES ('131', '新建文本文档.txt', '\\uploads\\balance\\20180907\\ac6ea3c3d326f26c0a10b7148897d0a6.txt', '1', '833', 'txt', '', '1536310796', '1536310796', null);
INSERT INTO `jz_admin_files` VALUES ('132', '新建文本文档.txt', '\\uploads\\balance\\20180907\\08e987c20b8285024ad2e461493a6370.txt', '1', '833', 'txt', '', '1536311679', '1536311679', null);
INSERT INTO `jz_admin_files` VALUES ('133', 'ERP.txt', '\\uploads\\balance\\20180907\\ee924129549e4fd57d661963658d930c.txt', '1', '940', 'txt', '', '1536311684', '1536311684', null);
INSERT INTO `jz_admin_files` VALUES ('134', 'ERP.txt', '\\uploads\\balance\\20180907\\2ec753f03e70465b56235226c42bca6c.txt', '1', '940', 'txt', '', '1536311821', '1536311821', null);
INSERT INTO `jz_admin_files` VALUES ('135', '加班申请单.txt', '\\uploads\\balance\\20180907\\5622bdf7dafeef74782ce162832b61b3.txt', '1', '9181', 'txt', '', '1536312002', '1536312002', null);
INSERT INTO `jz_admin_files` VALUES ('136', '智慧在线教考信息管理系统.docx', '\\uploads\\balance\\20180907\\0354e618f2fbb959742e31ebf9c90b1a.docx', '1', '16205', 'docx', '', '1536312045', '1536312045', null);
INSERT INTO `jz_admin_files` VALUES ('137', 'ERP.txt', '\\uploads\\balance\\20180907\\cbe498f8ae52907653ac8ffd227fca9c.txt', '1', '976', 'txt', '', '1536313377', '1536313377', null);
INSERT INTO `jz_admin_files` VALUES ('138', 'ERP.txt', '\\uploads\\balance\\20180907\\481e8b046ca1a4692a27e922e82f66ce.txt', '1', '976', 'txt', '', '1536313434', '1536313434', null);
INSERT INTO `jz_admin_files` VALUES ('139', 'ERP.txt', '\\uploads\\balance\\20180907\\9a41830fb0c71f2b871b5ecbfabba123.txt', '1', '976', 'txt', '', '1536313899', '1536313899', null);
INSERT INTO `jz_admin_files` VALUES ('140', 'ERP.txt', '\\uploads\\balance\\20180907\\29f1c1100761263a18a2607696be3913.txt', '1', '976', 'txt', '', '1536313903', '1536313903', null);
INSERT INTO `jz_admin_files` VALUES ('141', '加班申请单.txt', '\\uploads\\balance\\20180907\\80941071bd99a22990e5abdfdc8f6f2c.txt', '1', '9181', 'txt', '', '1536313924', '1536313924', null);
INSERT INTO `jz_admin_files` VALUES ('142', 'ERP.txt', '\\uploads\\balance\\20180907\\242a3144d8ab15c08ca35d67ae0fca67.txt', '1', '976', 'txt', '', '1536314090', '1536314090', null);
INSERT INTO `jz_admin_files` VALUES ('143', 'ERP.txt', '\\uploads\\balance\\20180907\\d7bd19711566f184637607d45beb51dc.txt', '1', '976', 'txt', '', '1536314118', '1536314118', null);
INSERT INTO `jz_admin_files` VALUES ('144', 'ERP.txt', '\\uploads\\balance\\20180907\\9d7ce4e0559260eecb30356f796117b4.txt', '1', '976', 'txt', '', '1536314122', '1536314122', null);
INSERT INTO `jz_admin_files` VALUES ('145', '加班申请单.txt', '\\uploads\\balance\\20180907\\ccee2fbb42b908bd31b293b6cc55d0f0.txt', '1', '9181', 'txt', '', '1536314139', '1536314139', null);
INSERT INTO `jz_admin_files` VALUES ('146', '加班申请单.txt', '\\uploads\\balance\\20180907\\5c7bb2d94673e2e35b987ce8faab5763.txt', '1', '9181', 'txt', '', '1536314172', '1536314172', null);
INSERT INTO `jz_admin_files` VALUES ('147', 'ERP.txt', '\\uploads\\balance\\20180907\\45d03a28f1f73ab0a20628ee965745a8.txt', '1', '976', 'txt', '', '1536314175', '1536314175', null);
INSERT INTO `jz_admin_files` VALUES ('148', 'ERP.txt', '\\uploads\\balance\\20180907\\e04c1d8c89ce6a519c6d40195becfd62.txt', '1', '976', 'txt', '', '1536314184', '1536314184', null);
INSERT INTO `jz_admin_files` VALUES ('149', 'ERP.txt', '\\uploads\\balance\\20180907\\0a0e619866ca62590e228ecc984c40cd.txt', '1', '976', 'txt', '', '1536314188', '1536314188', null);
INSERT INTO `jz_admin_files` VALUES ('150', 'ERP.txt', '\\uploads\\balance\\20180907\\60d66ccc213c54c873efb6ab55402a2b.txt', '1', '976', 'txt', '', '1536314198', '1536314198', null);
INSERT INTO `jz_admin_files` VALUES ('151', 'ERP.txt', '\\uploads\\balance\\20180907\\b6e4191cbb8295bfe0b91cd38d72f3ea.txt', '1', '976', 'txt', '', '1536314206', '1536314206', null);
INSERT INTO `jz_admin_files` VALUES ('152', '加班申请单.txt', '\\uploads\\balance\\20180907\\a593e75a677bc2882cfdc9127d561a0e.txt', '1', '9181', 'txt', '', '1536314214', '1536314214', null);
INSERT INTO `jz_admin_files` VALUES ('153', '加班申请单.txt', '\\uploads\\balance\\20180907\\04f2d5dd0e9b4f6042d891b6b6bc1efb.txt', '1', '9181', 'txt', '', '1536314218', '1536314218', null);
INSERT INTO `jz_admin_files` VALUES ('154', '加班申请单.txt', '\\uploads\\balance\\20180907\\8936fc94f0f0a3cd0994336e35d0fb03.txt', '1', '9181', 'txt', '', '1536314222', '1536314222', null);
INSERT INTO `jz_admin_files` VALUES ('155', '加班申请单.txt', '\\uploads\\balance\\20180907\\2346cb9fc6ecfcce124b731c488603c0.txt', '1', '9181', 'txt', '', '1536314233', '1536314233', null);
INSERT INTO `jz_admin_files` VALUES ('156', '加班申请单.txt', '\\uploads\\balance\\20180907\\64b2bfe2e7b049538218515768c6a4f7.txt', '1', '9181', 'txt', '', '1536314243', '1536314243', null);
INSERT INTO `jz_admin_files` VALUES ('157', '加班申请单.txt', '\\uploads\\balance\\20180907\\0ccc5d6006a4a1389ae7fbb40b1d32eb.txt', '1', '9181', 'txt', '', '1536314249', '1536314249', null);
INSERT INTO `jz_admin_files` VALUES ('158', 'ERP.txt', '\\uploads\\balance\\20180907\\d51041a2c1952bb29467602bd319c840.txt', '1', '976', 'txt', '', '1536314291', '1536314291', null);
INSERT INTO `jz_admin_files` VALUES ('159', '加班申请单.txt', '\\uploads\\balance\\20180907\\7473ee88d27e2b447ab48c20034230ef.txt', '1', '9181', 'txt', '', '1536314344', '1536314344', null);
INSERT INTO `jz_admin_files` VALUES ('160', '加班申请单.txt', '\\uploads\\balance\\20180907\\291e09ea3fca3971fac155fdccfc8355.txt', '1', '9181', 'txt', '', '1536316534', '1536316534', null);
INSERT INTO `jz_admin_files` VALUES ('169', '@肥波.PNG', '\\uploads\\personnel\\20180908\\4381d5b0a5045cf7aecc9d5557496eb9.PNG', '1', '88757', 'PNG', '', '1536410397', '1536410397', null);
INSERT INTO `jz_admin_files` VALUES ('170', '@肥波.PNG', '\\uploads\\personnel\\20180908\\b56216a96b2a9e590ba2b422602d8947.PNG', '1', '88757', 'PNG', '', '1536410509', '1536410509', null);
INSERT INTO `jz_admin_files` VALUES ('171', '@肥波.PNG', '\\uploads\\personnel\\20180908\\2120aae7427df6e68238dc0470e028f6.PNG', '1', '88757', 'PNG', '', '1536410579', '1536410579', null);
INSERT INTO `jz_admin_files` VALUES ('172', '@肥波.PNG', '\\uploads\\balance\\20180908\\6795ca8f3f642b3bcd9b5370d409acad.PNG', '1', '88757', 'PNG', '', '1536411043', '1536411043', null);
INSERT INTO `jz_admin_files` VALUES ('173', 'WIN_20170605_21_04_43_Pro.jpg', '\\uploads\\balance\\20180908\\470c226a89eec68bcc975ad743cce56b.jpg', '1', '175540', 'jpg', '', '1536411927', '1536411927', null);
INSERT INTO `jz_admin_files` VALUES ('174', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\balance\\20180908\\734606024ea96c3bb23b346e553484f0.jpg', '1', '91188', 'jpg', '', '1536411937', '1536411937', null);
INSERT INTO `jz_admin_files` VALUES ('175', 'WIN_20170510_10_06_53_Pro.jpg', '\\uploads\\personnel\\20180908\\be449e6783275664d6090d716ff7f525.jpg', '1', '114371', 'jpg', '', '1536412004', '1536412004', null);
INSERT INTO `jz_admin_files` VALUES ('176', 'WIN_20170517_16_48_21_Pro.jpg', '\\uploads\\personnel\\20180908\\11f680f8b180035f60e32be1d9e42ed8.jpg', '1', '105446', 'jpg', '', '1536412004', '1536412004', null);
INSERT INTO `jz_admin_files` VALUES ('177', 'WIN_20170829_10_30_41_Pro.jpg', '\\uploads\\personnel\\20180908\\2e33ad49f85ffe934d0a99eb8bef40ad.jpg', '1', '164759', 'jpg', '', '1536417816', '1536417816', null);
INSERT INTO `jz_admin_files` VALUES ('178', 'WIN_20170829_10_30_41_Pro.jpg', '\\uploads\\personnel\\20180908\\8db0bcb14e024c8c68884df8ded945ad.jpg', '1', '164759', 'jpg', '', '1536417840', '1536417840', null);
INSERT INTO `jz_admin_files` VALUES ('179', 'WIN_20170829_10_29_48_Pro.jpg', '\\uploads\\personnel\\20180909\\b6231df560de9253425a9b9c8d30e540.jpg', '1', '157940', 'jpg', '', '1536452990', '1536452990', null);
INSERT INTO `jz_admin_files` VALUES ('180', 'WIN_20170829_10_30_36_Pro.jpg', '\\uploads\\personnel\\20180909\\f433670a94c2b44c600220e5cbe05505.jpg', '1', '163174', 'jpg', '', '1536452990', '1536452990', null);
INSERT INTO `jz_admin_files` VALUES ('181', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\dab47d618b55f6593baa54cc044db4fd.jpg', '1', '91188', 'jpg', '', '1536453075', '1536453075', null);
INSERT INTO `jz_admin_files` VALUES ('182', 'WIN_20170517_16_48_21_Pro.jpg', '\\uploads\\personnel\\20180909\\cae2b0131022d03dd271d3c5217362b9.jpg', '1', '105446', 'jpg', '', '1536453077', '1536453077', null);
INSERT INTO `jz_admin_files` VALUES ('183', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\e875df4ee78319d937d6db4c285479e0.jpg', '1', '91188', 'jpg', '', '1536453182', '1536453182', null);
INSERT INTO `jz_admin_files` VALUES ('184', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\0eb29ac6b7516e3dfca6a09a6123eaa7.jpg', '1', '171021', 'jpg', '', '1536453182', '1536453182', null);
INSERT INTO `jz_admin_files` VALUES ('185', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\23303f813a4d0c3d29ce327be6ed0858.jpg', '1', '91188', 'jpg', '', '1536453223', '1536453223', null);
INSERT INTO `jz_admin_files` VALUES ('186', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\d6826a8a4a0cba2b86ae872890cf1bb3.jpg', '1', '171021', 'jpg', '', '1536453223', '1536453223', null);
INSERT INTO `jz_admin_files` VALUES ('187', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\34963c46b706bc8d2827fdf9a390a69f.jpg', '1', '91188', 'jpg', '', '1536453243', '1536453243', null);
INSERT INTO `jz_admin_files` VALUES ('188', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\15f397f98338f048d881f313f2d965af.jpg', '1', '171021', 'jpg', '', '1536453243', '1536453243', null);
INSERT INTO `jz_admin_files` VALUES ('189', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\6b685f708988293e15a30fc24857c62f.jpg', '1', '91188', 'jpg', '', '1536453276', '1536453276', null);
INSERT INTO `jz_admin_files` VALUES ('190', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\5618f7958c8244636caac10e3042a8ac.jpg', '1', '171021', 'jpg', '', '1536453276', '1536453276', null);
INSERT INTO `jz_admin_files` VALUES ('191', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\9fe66bac113a2b385d93ab94805d83c8.jpg', '1', '91188', 'jpg', '', '1536453325', '1536453325', null);
INSERT INTO `jz_admin_files` VALUES ('192', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\50e47ff9a139b9c0c6617e5fa70087af.jpg', '1', '171021', 'jpg', '', '1536453325', '1536453325', null);
INSERT INTO `jz_admin_files` VALUES ('193', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\b3ef034a80d2ba0b43efc2ae0a5ed6f5.jpg', '1', '91188', 'jpg', '', '1536453422', '1536453422', null);
INSERT INTO `jz_admin_files` VALUES ('194', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\2be3e5f6da07a164d76a30b73f83b220.jpg', '1', '171021', 'jpg', '', '1536453422', '1536453422', null);
INSERT INTO `jz_admin_files` VALUES ('195', 'WIN_20170510_10_06_53_Pro.jpg', '\\uploads\\personnel\\20180909\\adde5cdc2772e798556ae21d56d1faa1.jpg', '1', '114371', 'jpg', '', '1536453588', '1536453588', null);
INSERT INTO `jz_admin_files` VALUES ('196', 'WIN_20170517_16_48_21_Pro.jpg', '\\uploads\\personnel\\20180909\\2882a22ca39eb721c08c7b206e6e6afb.jpg', '1', '105446', 'jpg', '', '1536453588', '1536453588', null);
INSERT INTO `jz_admin_files` VALUES ('197', 'WIN_20170510_10_06_53_Pro.jpg', '\\uploads\\personnel\\20180909\\6ff6e55b7b5a684fbe6f610bd80fe402.jpg', '1', '114371', 'jpg', '', '1536453715', '1536453715', null);
INSERT INTO `jz_admin_files` VALUES ('198', 'WIN_20170517_16_48_21_Pro.jpg', '\\uploads\\personnel\\20180909\\c73d8b07c3e2deec65e64ab5ab5d58be.jpg', '1', '105446', 'jpg', '', '1536453715', '1536453715', null);
INSERT INTO `jz_admin_files` VALUES ('199', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\1a89ee7ad19bc6d383376bd155ff116a.jpg', '1', '91188', 'jpg', '', '1536454052', '1536454052', null);
INSERT INTO `jz_admin_files` VALUES ('200', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\45c2a39494c3412ac5dd2d759eaa4d7a.jpg', '1', '171021', 'jpg', '', '1536454086', '1536454086', null);
INSERT INTO `jz_admin_files` VALUES ('201', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\3a72bdf449c8befd4a6877da5e1b3030.jpg', '1', '91188', 'jpg', '', '1536454139', '1536454139', null);
INSERT INTO `jz_admin_files` VALUES ('202', 'WIN_20170510_10_06_53_Pro.jpg', '\\uploads\\personnel\\20180909\\8386baa87ed6d5d4fa89df585e8fd40b.jpg', '1', '114371', 'jpg', '', '1536458800', '1536458800', null);
INSERT INTO `jz_admin_files` VALUES ('203', 'WIN_20170517_16_48_21_Pro.jpg', '\\uploads\\personnel\\20180909\\5d2bd77a1d177d71803980d725662f69.jpg', '1', '105446', 'jpg', '', '1536458800', '1536458800', null);
INSERT INTO `jz_admin_files` VALUES ('204', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\226bae7c6046cba7912f30a32d4a39f4.jpg', '1', '91188', 'jpg', '', '1536458861', '1536458861', null);
INSERT INTO `jz_admin_files` VALUES ('205', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\5e10683cf91ac2402566b72bd9ff5554.jpg', '1', '171021', 'jpg', '', '1536458861', '1536458861', null);
INSERT INTO `jz_admin_files` VALUES ('206', 'WIN_20170602_10_58_47_Pro.jpg', '\\uploads\\personnel\\20180909\\209327bd881a5b22f60c83fa55696cce.jpg', '1', '110087', 'jpg', '', '1536459119', '1536459119', null);
INSERT INTO `jz_admin_files` VALUES ('207', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\898854f7cf1fcf2e4b056261c34f41eb.jpg', '1', '91188', 'jpg', '', '1536459303', '1536459303', null);
INSERT INTO `jz_admin_files` VALUES ('208', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\4e72c42d1f73b4055c2d0f5005a7c32b.jpg', '1', '171021', 'jpg', '', '1536459303', '1536459303', null);
INSERT INTO `jz_admin_files` VALUES ('209', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\bc78f72def3a218d232bd008a353c7f8.jpg', '1', '91188', 'jpg', '', '1536459470', '1536459470', null);
INSERT INTO `jz_admin_files` VALUES ('210', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\bc8ace2bb8f94f2b25dfbc4a0cbe90a6.jpg', '1', '171021', 'jpg', '', '1536459470', '1536459470', null);
INSERT INTO `jz_admin_files` VALUES ('211', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\75fd731245fe0210e78b479889ceb270.jpg', '1', '91188', 'jpg', '', '1536459553', '1536459553', null);
INSERT INTO `jz_admin_files` VALUES ('212', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\3b47dd2c37eb18223759e1ca3902a962.jpg', '1', '171021', 'jpg', '', '1536459553', '1536459553', null);
INSERT INTO `jz_admin_files` VALUES ('213', 'WIN_20170510_10_06_53_Pro.jpg', '\\uploads\\personnel\\20180909\\ac109a465dff28e188ba80c8353855ba.jpg', '1', '114371', 'jpg', '', '1536459733', '1536459733', null);
INSERT INTO `jz_admin_files` VALUES ('214', 'WIN_20170517_16_48_21_Pro.jpg', '\\uploads\\personnel\\20180909\\74ec143a8ee9a3774384a6ef85bcf34e.jpg', '1', '105446', 'jpg', '', '1536459733', '1536459733', null);
INSERT INTO `jz_admin_files` VALUES ('215', 'WIN_20170517_16_48_21_Pro.jpg', '\\uploads\\personnel\\20180909\\fa9791170fca65dc452bbf85b9759893.jpg', '1', '105446', 'jpg', '', '1536459787', '1536459787', null);
INSERT INTO `jz_admin_files` VALUES ('216', 'WIN_20170602_10_58_47_Pro.jpg', '\\uploads\\personnel\\20180909\\bfd83f43b6d16cebfd59864f42241465.jpg', '1', '110087', 'jpg', '', '1536459787', '1536459787', null);
INSERT INTO `jz_admin_files` VALUES ('217', 'WIN_20170524_15_49_56_Pro.jpg', '\\uploads\\personnel\\20180909\\2d1a6a51593583e0b0e24b7d9af45305.jpg', '1', '91188', 'jpg', '', '1536465248', '1536465248', null);
INSERT INTO `jz_admin_files` VALUES ('218', 'WIN_20170525_20_11_40_Pro.jpg', '\\uploads\\personnel\\20180909\\cc7e1350896918c8d34683d80bc5cbdb.jpg', '1', '171021', 'jpg', '', '1536465248', '1536465248', null);
INSERT INTO `jz_admin_files` VALUES ('219', 'WIN_20170829_10_29_48_Pro.jpg', '\\uploads\\personnel\\20180909\\d8e0a5bd9dc0b13e763a897275a7760a.jpg', '1', '157940', 'jpg', '', '1536465858', '1536465858', null);
INSERT INTO `jz_admin_files` VALUES ('220', 'WIN_20170829_10_30_36_Pro.jpg', '\\uploads\\personnel\\20180909\\a9be8fe13f05210fcf4cac64cbd1d2d5.jpg', '1', '163174', 'jpg', '', '1536465858', '1536465858', null);
INSERT INTO `jz_admin_files` VALUES ('221', 'WIN_20170829_10_30_41_Pro.jpg', '\\uploads\\personnel\\20180909\\24a71e7699f054e9fd83c68bd419c45a.jpg', '1', '164759', 'jpg', '', '1536467383', '1536467383', null);
INSERT INTO `jz_admin_files` VALUES ('222', '下载安装说明.txt', '\\uploads\\personnel\\20180910\\3bfb76d506b2457e416eaf95a073abbb.txt', '1', '6225', 'txt', '', '1536542261', '1536542261', null);
INSERT INTO `jz_admin_files` VALUES ('223', 'ERP.txt', '\\uploads\\balance\\20180910\\1ea0ba5dcbef9bcd739556268ac169b6.txt', '1', '976', 'txt', '', '1536542416', '1536542416', null);
INSERT INTO `jz_admin_files` VALUES ('224', 'ERP.txt', '\\uploads\\balance\\20180910\\10b0143518aa6fdff8baabc3d71f4cf7.txt', '1', '976', 'txt', '', '1536542439', '1536542439', null);
INSERT INTO `jz_admin_files` VALUES ('225', 'ERP.txt', '\\uploads\\balance\\20180910\\98efc06d159f0da33bd033331396e093.txt', '1', '976', 'txt', '', '1536542510', '1536542510', null);
INSERT INTO `jz_admin_files` VALUES ('226', '加班申请单.txt', '\\uploads\\balance\\20180910\\7fb3f79ce2716e616b26510e4e547075.txt', '1', '9181', 'txt', '', '1536542513', '1536542513', null);
INSERT INTO `jz_admin_files` VALUES ('227', '加班申请单.txt', '\\uploads\\balance\\20180910\\afb28f734ba43191445f21741e06df24.txt', '1', '9181', 'txt', '', '1536542535', '1536542535', null);
INSERT INTO `jz_admin_files` VALUES ('228', '新建文本文档.txt', '\\uploads\\balance\\20180910\\b8d1cf31d5ca46eda163fffa34621fbc.txt', '1', '833', 'txt', '', '1536542544', '1536542544', null);
INSERT INTO `jz_admin_files` VALUES ('229', '加班申请单.txt', '\\uploads\\balance\\20180910\\4ec7a1caf379d578c86c8f1addac7a49.txt', '1', '9181', 'txt', '', '1536542548', '1536542548', null);
INSERT INTO `jz_admin_files` VALUES ('230', 'ERP.txt', '\\uploads\\balance\\20180910\\ad56fd3be1c0b72145b821c4b1af834a.txt', '1', '976', 'txt', '', '1536542835', '1536542835', null);
INSERT INTO `jz_admin_files` VALUES ('231', 'ERP.txt', '\\uploads\\balance\\20180910\\a2e88c1a054d747b1749768239a0f565.txt', '1', '976', 'txt', '', '1536543125', '1536543125', null);
INSERT INTO `jz_admin_files` VALUES ('232', 'ERP.txt', '\\uploads\\balance\\20180910\\1910e5e1d8079dbdc6411bc66b936a9e.txt', '1', '976', 'txt', '', '1536543192', '1536543192', null);
INSERT INTO `jz_admin_files` VALUES ('233', 'ERP.txt', '\\uploads\\balance\\20180910\\4584c483965770e865f297472e764e5d.txt', '1', '976', 'txt', '', '1536543245', '1536543245', null);
INSERT INTO `jz_admin_files` VALUES ('234', 'ERP.txt', '\\uploads\\balance\\20180910\\65ca8572c8494cb1650e890afd28f902.txt', '1', '976', 'txt', '', '1536543295', '1536543295', null);
INSERT INTO `jz_admin_files` VALUES ('235', 'ERP.txt', '\\uploads\\balance\\20180910\\78e393c8230f26dceeab3bc1f37cdaf3.txt', '1', '976', 'txt', '', '1536543325', '1536543325', null);
INSERT INTO `jz_admin_files` VALUES ('236', 'ERP.txt', '\\uploads\\balance\\20180910\\f64279766641495fa69fdd72eb80c4df.txt', '1', '976', 'txt', '', '1536543502', '1536543502', null);
INSERT INTO `jz_admin_files` VALUES ('237', 'ERP.txt', '\\uploads\\balance\\20180910\\e81faece5f6f9c5f5adea6beb822ba23.txt', '1', '976', 'txt', '', '1536543523', '1536543523', null);
INSERT INTO `jz_admin_files` VALUES ('238', 'ERP.txt', '\\uploads\\balance\\20180910\\d93fd179e2a57f67f51242fd3d9c3968.txt', '1', '976', 'txt', '', '1536543552', '1536543552', null);
INSERT INTO `jz_admin_files` VALUES ('239', 'ERP.txt', '\\uploads\\balance\\20180910\\b1a03a9166b9931f121143e10e6f8237.txt', '1', '976', 'txt', '', '1536543604', '1536543604', null);
INSERT INTO `jz_admin_files` VALUES ('240', 'ERP.txt', '\\uploads\\balance\\20180910\\25cb1ba9854f085dea1b82b1c6465d81.txt', '1', '976', 'txt', '', '1536543653', '1536543653', null);
INSERT INTO `jz_admin_files` VALUES ('241', 'ERP.txt', '\\uploads\\balance\\20180910\\2b798bd42524099ab0624bdeb78f835b.txt', '1', '976', 'txt', '', '1536544080', '1536544080', null);
INSERT INTO `jz_admin_files` VALUES ('242', 'ERP.txt', '\\uploads\\balance\\20180910\\3625d223c548ace01ee5b5dc804ad253.txt', '1', '976', 'txt', '', '1536544100', '1536544100', null);
INSERT INTO `jz_admin_files` VALUES ('243', '加班申请单.txt', '\\uploads\\balance\\20180910\\263592d3afe8cc6957ccb820bf53ecce.txt', '1', '9181', 'txt', '', '1536544102', '1536544102', null);
INSERT INTO `jz_admin_files` VALUES ('244', '新建文本文档.txt', '\\uploads\\balance\\20180910\\365f6ec6f6c2de797e596674666b7ade.txt', '1', '833', 'txt', '', '1536544112', '1536544112', null);
INSERT INTO `jz_admin_files` VALUES ('245', 'ERP.txt', '\\uploads\\balance\\20180910\\9dcc1ced7f8da19b498e9289252a197c.txt', '1', '976', 'txt', '', '1536544119', '1536544119', null);
INSERT INTO `jz_admin_files` VALUES ('246', '加班申请单.txt', '\\uploads\\balance\\20180910\\ea7f152a231b9d50e9c67bc6e85f5320.txt', '1', '9181', 'txt', '', '1536544121', '1536544121', null);
INSERT INTO `jz_admin_files` VALUES ('247', '加班申请单.txt', '\\uploads\\balance\\20180910\\0c66164bd0d61147b3ec9e585211f3b2.txt', '1', '9181', 'txt', '', '1536544128', '1536544128', null);
INSERT INTO `jz_admin_files` VALUES ('248', '加班申请单.txt', '\\uploads\\balance\\20180910\\96dff44bd9f0182297212f8801063c5c.txt', '1', '9181', 'txt', '', '1536544157', '1536544157', null);
INSERT INTO `jz_admin_files` VALUES ('249', '加班申请单.txt', '\\uploads\\balance\\20180910\\7aed01d9f5ca764940313584f41944b8.txt', '1', '9181', 'txt', '', '1536544186', '1536544186', null);
INSERT INTO `jz_admin_files` VALUES ('250', 'ERP.txt', '\\uploads\\balance\\20180910\\0bdbc14dda30d22c252f5896af7ebbbc.txt', '1', '976', 'txt', '', '1536544205', '1536544205', null);
INSERT INTO `jz_admin_files` VALUES ('251', '加班申请单.txt', '\\uploads\\balance\\20180910\\c5d7398a145ac564c26898377462b55c.txt', '1', '9181', 'txt', '', '1536544211', '1536544211', null);
INSERT INTO `jz_admin_files` VALUES ('252', '加班申请单.txt', '\\uploads\\balance\\20180910\\b0460ad9cf7929134f0d188b6ab1e55d.txt', '1', '9181', 'txt', '', '1536544223', '1536544223', null);
INSERT INTO `jz_admin_files` VALUES ('253', 'ERP.txt', '\\uploads\\balance\\20180910\\5e77967c74c4d306638923a6e5a5d6a8.txt', '1', '976', 'txt', '', '1536544269', '1536544269', null);
INSERT INTO `jz_admin_files` VALUES ('254', '加班申请单.txt', '\\uploads\\balance\\20180910\\52befe15e9190a0eb2d4d4ff31e7a3d7.txt', '1', '9181', 'txt', '', '1536544277', '1536544277', null);
INSERT INTO `jz_admin_files` VALUES ('255', 'ERP.txt', '\\uploads\\balance\\20180910\\dae65ad7d10e43923693aebc6dd45ce2.txt', '1', '976', 'txt', '', '1536544409', '1536544409', null);
INSERT INTO `jz_admin_files` VALUES ('256', 'ERP.txt', '\\uploads\\balance\\20180910\\25f8f7e2664e54300207c3c0168fbd3d.txt', '1', '976', 'txt', '', '1536544510', '1536544510', null);
INSERT INTO `jz_admin_files` VALUES ('257', 'ERP.txt', '\\uploads\\balance\\20180910\\7837f87a4313aa5a20cc88e702e4b90d.txt', '1', '976', 'txt', '', '1536544513', '1536544513', null);
INSERT INTO `jz_admin_files` VALUES ('258', '11250406567.png', '/public/uploads\\personnel\\2018/09-12\\11250406567.png', '1', '0', 'png', '0', '1536722704', '1536722704', null);
INSERT INTO `jz_admin_files` VALUES ('259', '11255825255.png', '/public/uploads\\personnel\\2018/09-12\\11255825255.png', '1', '0', 'png', '0', '1536722758', '1536722758', null);
INSERT INTO `jz_admin_files` VALUES ('260', '11271626376.png', '/public/uploads\\personnel\\2018/09-12\\11271626376.png', '1', '0', 'png', '0', '1536722836', '1536722836', null);
INSERT INTO `jz_admin_files` VALUES ('261', '11303914329.png', '/public/uploads\\personnel\\20180912\\11303914329.png', '1', '0', 'png', '0', '1536723039', '1536723039', null);
INSERT INTO `jz_admin_files` VALUES ('262', '11340780384.png', '/public/uploads\\personnel\\20180912\\11340780384.png', '1', '0', 'png', '0', '1536723247', '1536723247', null);
INSERT INTO `jz_admin_files` VALUES ('263', '11350506814.png', '/public/uploads\\personnel\\20180912\\11350506814.png', '1', '0', 'png', '0', '1536723305', '1536723305', null);
INSERT INTO `jz_admin_files` VALUES ('264', '11371725437.png', 'public/uploads\\personnel\\20180912\\11371725437.png', '1', '0', 'png', '0', '1536723437', '1536723437', null);
INSERT INTO `jz_admin_files` VALUES ('265', '11382142367.png', 'uploads\\personnel\\20180912\\11382142367.png', '1', '0', 'png', '0', '1536723501', '1536723501', null);
INSERT INTO `jz_admin_files` VALUES ('266', '11391001125.png', '/uploads\\personnel\\20180912\\11391001125.png', '1', '0', 'png', '0', '1536723550', '1536723550', null);
INSERT INTO `jz_admin_files` VALUES ('267', '11402174915.png', 'uploads\\personnel\\20180912\\11402174915.png', '1', '0', 'png', '0', '1536723621', '1536723621', null);
INSERT INTO `jz_admin_files` VALUES ('268', '11404134876.png', 'uploads\\personnel\\20180912\\11404134876.png', '1', '0', 'png', '0', '1536723641', '1536723641', null);
INSERT INTO `jz_admin_files` VALUES ('269', '11411625839.png', '/uploads\\personnel\\20180912\\11411625839.png', '1', '0', 'png', '0', '1536723676', '1536723676', null);
INSERT INTO `jz_admin_files` VALUES ('270', '11413597743.png', 'uploads\\personnel\\20180912\\11413597743.png', '1', '0', 'png', '0', '1536723695', '1536723695', null);
INSERT INTO `jz_admin_files` VALUES ('271', '捕获2.PNG', 'uploads\\personnel\\20180912\\11475464116.png', '1', '0', 'png', '0', '1536724074', '1536724074', null);
INSERT INTO `jz_admin_files` VALUES ('272', '捕获.PNG', 'uploads\\personnel\\20180912\\11512545749.png', '1', '0', 'png', '0', '1536724285', '1536724285', null);
INSERT INTO `jz_admin_files` VALUES ('273', '捕获2.PNG', 'uploads\\personnel\\20180912\\11515164240.png', '1', '0', 'png', '0', '1536724311', '1536724311', null);
INSERT INTO `jz_admin_files` VALUES ('274', '捕获2.PNG', 'uploads\\personnel\\20180912\\11523910091.png', '1', '0', 'png', '0', '1536724359', '1536724359', null);
INSERT INTO `jz_admin_files` VALUES ('275', '捕获.PNG', 'uploads\\personnel\\20180912\\12001244877.png', '1', '0', 'png', '0', '1536724812', '1536724812', null);
INSERT INTO `jz_admin_files` VALUES ('276', '捕获.PNG', 'uploads\\personnel\\20180912\\12004462647.png', '1', '0', 'png', '0', '1536724844', '1536724844', null);
INSERT INTO `jz_admin_files` VALUES ('277', '捕获.PNG', 'uploads\\personnel\\20180912\\12010058142.png', '1', '0', 'png', '0', '1536724860', '1536724860', null);
INSERT INTO `jz_admin_files` VALUES ('278', '捕获.PNG', 'uploads\\personnel\\20180912\\12031707738.png', '1', '0', 'png', '0', '1536724997', '1536724997', null);
INSERT INTO `jz_admin_files` VALUES ('279', '捕获.PNG', 'uploads\\personnel\\20180912\\12052323921.png', '1', '0', 'png', '0', '1536725123', '1536725123', null);
INSERT INTO `jz_admin_files` VALUES ('280', '捕获.PNG', 'uploads\\personnel\\20180912\\13343613662.png', '1', '0', 'png', '0', '1536730476', '1536730476', null);
INSERT INTO `jz_admin_files` VALUES ('281', '捕获.PNG', 'uploads\\personnel\\20180912\\13575670187.png', '1', '0', 'png', '0', '1536731876', '1536731876', null);
INSERT INTO `jz_admin_files` VALUES ('282', '捕获.PNG', 'uploads\\personnel\\20180912\\13583209000.png', '1', '0', 'png', '0', '1536731912', '1536731912', null);
INSERT INTO `jz_admin_files` VALUES ('283', 'test.PNG', 'uploads\\personnel\\20180912\\14081290124.png', '1', '0', 'png', '0', '1536732492', '1536732492', null);
INSERT INTO `jz_admin_files` VALUES ('284', 'timg.jpg', 'uploads\\personnel\\20180912\\14231365981.jpeg', '1', '0', 'jpeg', '0', '1536733393', '1536733393', null);
INSERT INTO `jz_admin_files` VALUES ('285', '例.jpg', 'uploads\\personnel\\20180912\\14365755608.jpeg', '1', '0', 'jpeg', '0', '1536734217', '1536734217', null);
INSERT INTO `jz_admin_files` VALUES ('286', '例2.jpg', '\\uploads\\personnel\\20180912\\be1410f66af657442994dd0a5190fb32.jpg', '1', '34666', 'jpg', '', '1536737957', '1536737957', null);
INSERT INTO `jz_admin_files` VALUES ('287', '例2.jpg', 'uploads\\personnel\\20180912\\16171581196.jpeg', '1', '0', 'jpeg', '0', '1536740235', '1536740235', null);
INSERT INTO `jz_admin_files` VALUES ('288', '下载.jpg', 'uploads\\personnel\\20180912\\16345325466.jpeg', '1', '0', 'jpeg', '0', '1536741293', '1536741293', null);
INSERT INTO `jz_admin_files` VALUES ('289', '微信截图_20170912091826.png', '\\uploads\\balance\\20180913\\09a20d8babc2fb2688f702e0806eef0e.png', '1', '371278', 'png', '', '1536803414', '1536803414', null);
INSERT INTO `jz_admin_files` VALUES ('290', '微信截图_20170912091826.png', '\\uploads\\balance\\20180913\\d9642a256773dcac5bff8ca385a655dd.png', '1', '371278', 'png', '', '1536803472', '1536803472', null);
INSERT INTO `jz_admin_files` VALUES ('291', 'logo.jpg', '\\uploads\\balance\\20180913\\ba7375167c3f6e3ff093050e197d52c4.jpg', '1', '40987', 'jpg', '', '1536803532', '1536803532', null);
INSERT INTO `jz_admin_files` VALUES ('292', 'C(`@N)KLE1]P6`2OW}_RU`K.png', '\\uploads\\balance\\20180913\\6bc074cb498c5c5a3a0c741b03dc0255.png', '1', '102030', 'png', '', '1536810086', '1536810086', null);
INSERT INTO `jz_admin_files` VALUES ('293', 'C(`@N)KLE1]P6`2OW}_RU`K.png', '\\uploads\\balance\\20180913\\cd8d9c7ca054590649be8df11e478625.png', '1', '102030', 'png', '', '1536810107', '1536810107', null);
INSERT INTO `jz_admin_files` VALUES ('294', 'h_enterprise.png', '\\uploads\\balance\\20180913\\096f3c60582b3bfc82bce01e05428fd8.png', '1', '489', 'png', '', '1536810573', '1536810573', null);
INSERT INTO `jz_admin_files` VALUES ('295', 'C(`@N)KLE1]P6`2OW}_RU`K.png', '\\uploads\\balance\\20180913\\fd404f30d6032dce0d41169edb62f4da.png', '1', '102030', 'png', '', '1536823611', '1536823611', null);
INSERT INTO `jz_admin_files` VALUES ('296', 'h_officialdom.png', '\\uploads\\balance\\20180913\\8434137a236aeb1eca97ffb8f942b14e.png', '1', '3920', 'png', '', '1536823621', '1536823621', null);
INSERT INTO `jz_admin_files` VALUES ('297', 'h_officialdom.png', '\\uploads\\balance\\20180913\\3d96a5724c365ecb4aab367fd0a36175.png', '1', '3920', 'png', '', '1536823631', '1536823631', null);
INSERT INTO `jz_admin_files` VALUES ('298', 'h_officialdom.png', '\\uploads\\balance\\20180913\\dbe1f1358202dbf6241853a380039c69.png', '1', '3920', 'png', '', '1536824229', '1536824229', null);
INSERT INTO `jz_admin_files` VALUES ('299', 'h_officialdom.png', '\\uploads\\balance\\20180913\\e17d9302d6465765aa5e6713881d0394.png', '1', '3920', 'png', '', '1536824339', '1536824339', null);
INSERT INTO `jz_admin_files` VALUES ('300', 'h_officialdom.png', '\\uploads\\balance\\20180913\\24a4c1ed0dd5955e5cd32afde6af6bb5.png', '1', '3920', 'png', '', '1536824344', '1536824344', null);
INSERT INTO `jz_admin_files` VALUES ('301', 'h_officialdom.png', '\\uploads\\balance\\20180913\\e8bef7918b06abf5e0e1ef62ed57c220.png', '1', '3920', 'png', '', '1536825190', '1536825190', null);
INSERT INTO `jz_admin_files` VALUES ('302', 'h_officialdom.png', '\\uploads\\balance\\20180913\\50986d1e8e8cd9b7a706b422cd790f83.png', '1', '3920', 'png', '', '1536825220', '1536825220', null);
INSERT INTO `jz_admin_files` VALUES ('303', 'C(`@N)KLE1]P6`2OW}_RU`K.png', '\\uploads\\balance\\20180913\\693fe84a4b559f7ac10c600074ae39ab.png', '1', '102030', 'png', '', '1536825223', '1536825223', null);
INSERT INTO `jz_admin_files` VALUES ('304', 'h_officialdom.png', '\\uploads\\balance\\20180913\\a6e343ef4039d9e7cf864a70a819da45.png', '1', '3920', 'png', '', '1536825409', '1536825409', null);
INSERT INTO `jz_admin_files` VALUES ('305', 'h_online.png', '\\uploads\\balance\\20180913\\9c92459cf0dafcb7630a52ae50d9e0cd.png', '1', '1167', 'png', '', '1536825413', '1536825413', null);
INSERT INTO `jz_admin_files` VALUES ('306', 'h_officialdom.png', '\\uploads\\balance\\20180913\\8ff3acc2ede27522b8734f712a3f489d.png', '1', '3920', 'png', '', '1536825533', '1536825533', null);
INSERT INTO `jz_admin_files` VALUES ('307', 'h_officialdom.png', '\\uploads\\balance\\20180913\\7a9f9dc3eefdbe3d4f5898041255bce2.png', '1', '3920', 'png', '', '1536825695', '1536825695', null);
INSERT INTO `jz_admin_files` VALUES ('308', 'h_officialdom.png', '\\uploads\\balance\\20180913\\13ea126ed0d3aa51f585bda25d960e12.png', '1', '3920', 'png', '', '1536826637', '1536826637', null);
INSERT INTO `jz_admin_files` VALUES ('309', 'h_officialdom.png', '\\uploads\\balance\\20180913\\27ef2e910c1d542125e3fff4de221f6e.png', '1', '3920', 'png', '', '1536826669', '1536826669', null);
INSERT INTO `jz_admin_files` VALUES ('310', 'h_officialdom.png', '\\uploads\\balance\\20180913\\bc375595ef3978448a4f48090a05b2d4.png', '1', '3920', 'png', '', '1536826957', '1536826957', null);
INSERT INTO `jz_admin_files` VALUES ('311', 'h_Live.png', '\\uploads\\balance\\20180913\\7e06e8ac8a8fa238f0395b521a61e99a.png', '1', '600', 'png', '', '1536827968', '1536827968', null);
INSERT INTO `jz_admin_files` VALUES ('312', 'h_botjian.png', '\\uploads\\balance\\20180913\\b6c42d24abe6a33d5cbf2aa74f1e6147.png', '1', '1174', 'png', '', '1536828180', '1536828180', null);
INSERT INTO `jz_admin_files` VALUES ('313', 'h_officialdom.png', '\\uploads\\balance\\20180913\\468c7c5422f71968271df9b2df1aa9d9.png', '1', '3920', 'png', '', '1536828189', '1536828189', null);
INSERT INTO `jz_admin_files` VALUES ('314', 'h_online2.png', '\\uploads\\balance\\20180913\\8dc0a1fb42219d988c86bd1c294a0af4.png', '1', '1351', 'png', '', '1536828191', '1536828191', null);
INSERT INTO `jz_admin_files` VALUES ('315', 'h_officialdom.png', '\\uploads\\balance\\20180913\\6d1bd0fd9e957a586dc52f5aee5182a8.png', '1', '3920', 'png', '', '1536828373', '1536828373', null);
INSERT INTO `jz_admin_files` VALUES ('316', 'h_online2.png', '\\uploads\\balance\\20180913\\c129e1f53867e15e2693da1830b5d492.png', '1', '1351', 'png', '', '1536828376', '1536828376', null);
INSERT INTO `jz_admin_files` VALUES ('317', 'h_officialdom.png', '\\uploads\\balance\\20180913\\110f2cf6ace875613ce43fa413d6b12a.png', '1', '3920', 'png', '', '1536828400', '1536828400', null);
INSERT INTO `jz_admin_files` VALUES ('318', 'h_officialdom.png', '\\uploads\\balance\\20180913\\d953f612198589d20db33e2fa3131ef5.png', '1', '3920', 'png', '', '1536828417', '1536828417', null);
INSERT INTO `jz_admin_files` VALUES ('319', 'h_officialdom.png', '\\uploads\\balance\\20180913\\b5ccef8f5819ab59f24068c0dfc136b9.png', '1', '3920', 'png', '', '1536828467', '1536828467', null);
INSERT INTO `jz_admin_files` VALUES ('320', 'h_online.png', '\\uploads\\balance\\20180913\\192b16ed5c165d76e9ca22cadf00e48f.png', '1', '1167', 'png', '', '1536828470', '1536828470', null);
INSERT INTO `jz_admin_files` VALUES ('321', 'h_officialdom.png', '\\uploads\\balance\\20180913\\4a93a51198b48c671c1e59e2456977c9.png', '1', '3920', 'png', '', '1536829871', '1536829871', null);
INSERT INTO `jz_admin_files` VALUES ('322', 'h_officialdom.png', '\\uploads\\balance\\20180913\\69660516949f894213d48f3ccaec0cb4.png', '1', '3920', 'png', '', '1536830052', '1536830052', null);
INSERT INTO `jz_admin_files` VALUES ('323', 'h_officialdom.png', '\\uploads\\balance\\20180913\\f4a3fcc70316681c740498737c505c7b.png', '1', '3920', 'png', '', '1536830268', '1536830268', null);
INSERT INTO `jz_admin_files` VALUES ('324', 'h_officialdom.png', '\\uploads\\balance\\20180913\\5cc0315a83f92131ffe2ca042005cd12.png', '1', '3920', 'png', '', '1536830293', '1536830293', null);
INSERT INTO `jz_admin_files` VALUES ('325', 'h_officialdom.png', '\\uploads\\balance\\20180913\\6f963af997d2270a7495a8b7b284ac21.png', '1', '3920', 'png', '', '1536830659', '1536830659', null);
INSERT INTO `jz_admin_files` VALUES ('326', 'h_officialdom.png', '\\uploads\\balance\\20180913\\4c514d625cf78cb9efa4863fa7c28d44.png', '1', '3920', 'png', '', '1536830666', '1536830666', null);
INSERT INTO `jz_admin_files` VALUES ('327', 'h_online.png', '\\uploads\\balance\\20180913\\94944339feb7cc91b1514a55c4e186b5.png', '1', '1167', 'png', '', '1536830669', '1536830669', null);
INSERT INTO `jz_admin_files` VALUES ('328', 'h_paper2.png', '\\uploads\\balance\\20180913\\a1eb7472dac56e6deeb14c55208bba92.png', '1', '1476', 'png', '', '1536830676', '1536830676', null);
INSERT INTO `jz_admin_files` VALUES ('329', 'h_officialdom.png', '\\uploads\\balance\\20180913\\da96ca47c0694cadd368ee044b559180.png', '1', '3920', 'png', '', '1536830773', '1536830773', null);
INSERT INTO `jz_admin_files` VALUES ('330', 'h_officialdom.png', '\\uploads\\balance\\20180913\\e5f6533539aaac39b4adc1053510549f.png', '1', '3920', 'png', '', '1536830776', '1536830776', null);
INSERT INTO `jz_admin_files` VALUES ('331', 'h_online2.png', '\\uploads\\balance\\20180913\\a9cadff8c2d4e2b5de99fcdfc9751b86.png', '1', '1351', 'png', '', '1536830778', '1536830778', null);
INSERT INTO `jz_admin_files` VALUES ('332', 'h_officialdom.png', '\\uploads\\balance\\20180913\\e1470925b72a22ad4a7041cfe21b887c.png', '1', '3920', 'png', '', '1536830790', '1536830790', null);
INSERT INTO `jz_admin_files` VALUES ('333', 'h_officialdom.png', '\\uploads\\balance\\20180913\\3f65a2a3bc4bfc754c0878e7b2cb0f82.png', '1', '3920', 'png', '', '1536830792', '1536830792', null);
INSERT INTO `jz_admin_files` VALUES ('334', 'h_officialdom.png', '\\uploads\\balance\\20180913\\5a1cca2a0ee6689d0c3f1fe4966e4f8b.png', '1', '3920', 'png', '', '1536830806', '1536830806', null);
INSERT INTO `jz_admin_files` VALUES ('335', 'h_officialdom.png', '\\uploads\\balance\\20180913\\1c1b97edb9916e1ec220748e73b5bf65.png', '1', '3920', 'png', '', '1536830825', '1536830825', null);
INSERT INTO `jz_admin_files` VALUES ('336', 'h_officialdom.png', '\\uploads\\balance\\20180913\\fbab9f5c4f0920385f921e5c37e94ce4.png', '1', '3920', 'png', '', '1536830925', '1536830925', null);
INSERT INTO `jz_admin_files` VALUES ('337', 'h_online.png', '\\uploads\\balance\\20180913\\675cc34006b2e1882e4bae9232576549.png', '1', '1167', 'png', '', '1536830928', '1536830928', null);
INSERT INTO `jz_admin_files` VALUES ('338', 'h_paper.png', '\\uploads\\balance\\20180913\\8c6c0a524a7ecc24daf02b254494724c.png', '1', '1230', 'png', '', '1536830930', '1536830930', null);
INSERT INTO `jz_admin_files` VALUES ('339', 'h_online.png', '\\uploads\\balance\\20180913\\dc836d235daf49eb5fd53c297be8b2e8.png', '1', '1167', 'png', '', '1536831138', '1536831138', null);
INSERT INTO `jz_admin_files` VALUES ('340', 'h_paper.png', '\\uploads\\balance\\20180913\\b07be56361f72262f9ed673ad8b79e8d.png', '1', '1230', 'png', '', '1536831141', '1536831141', null);
INSERT INTO `jz_admin_files` VALUES ('341', 'h_officialdom.png', '\\uploads\\balance\\20180913\\3db31a460b6e0fb272a15ac30e799052.png', '1', '3920', 'png', '', '1536831395', '1536831395', null);
INSERT INTO `jz_admin_files` VALUES ('342', 'h_officialdom.png', '\\uploads\\balance\\20180913\\d3f897ec72ad23bce8e685a183f12c61.png', '1', '3920', 'png', '', '1536831444', '1536831444', null);
INSERT INTO `jz_admin_files` VALUES ('343', 'h_officialdom.png', '\\uploads\\balance\\20180913\\2e12c727653766ef783172ff09cd1428.png', '1', '3920', 'png', '', '1536831467', '1536831467', null);
INSERT INTO `jz_admin_files` VALUES ('344', 'h_officialdom.png', '\\uploads\\balance\\20180913\\f74ffaf8be8a8a690592b4bcd044a673.png', '1', '3920', 'png', '', '1536831546', '1536831546', null);
INSERT INTO `jz_admin_files` VALUES ('345', 'h_officialdom.png', '\\uploads\\balance\\20180913\\7d6d48abdb0d374e0ceb3c73c77ff613.png', '1', '3920', 'png', '', '1536831748', '1536831748', null);
INSERT INTO `jz_admin_files` VALUES ('346', 'h_officialdom.png', '\\uploads\\balance\\20180913\\97a89600f2afb9945d7d289ccbadedb2.png', '1', '3920', 'png', '', '1536831753', '1536831753', null);
INSERT INTO `jz_admin_files` VALUES ('347', 'h_officialdom.png', '\\uploads\\balance\\20180913\\90e29a70fbbf3a4ea94409f567d4a864.png', '1', '3920', 'png', '', '1536831771', '1536831771', null);
INSERT INTO `jz_admin_files` VALUES ('348', 'h_officialdom.png', '\\uploads\\balance\\20180913\\668d5b9fae1efd5efdee4dde31c272df.png', '1', '3920', 'png', '', '1536831883', '1536831883', null);
INSERT INTO `jz_admin_files` VALUES ('349', 'h_officialdom.png', '\\uploads\\balance\\20180913\\4399617c70e126edb226b90fe5f55684.png', '1', '3920', 'png', '', '1536831899', '1536831899', null);
INSERT INTO `jz_admin_files` VALUES ('350', 'h_online.png', '\\uploads\\balance\\20180913\\36b949374c18bb01fbbfe94ff6f47540.png', '1', '1167', 'png', '', '1536831919', '1536831919', null);
INSERT INTO `jz_admin_files` VALUES ('351', 'h_officialdom.png', '\\uploads\\balance\\20180913\\bedaa2d48b629b7d1297b3e29ee13d91.png', '1', '3920', 'png', '', '1536832117', '1536832117', null);
INSERT INTO `jz_admin_files` VALUES ('352', 'h_officialdom.png', '\\uploads\\balance\\20180913\\0d23f0805ce91971696d61a9684aba80.png', '1', '3920', 'png', '', '1536832181', '1536832181', null);
INSERT INTO `jz_admin_files` VALUES ('353', 'h_officialdom.png', '\\uploads\\balance\\20180913\\3c1473102d1a3389f0dbec22dbff5e50.png', '1', '3920', 'png', '', '1536832201', '1536832201', null);
INSERT INTO `jz_admin_files` VALUES ('354', 'h_officialdom.png', '\\uploads\\balance\\20180913\\1f042b91bdc880fbcc632c182d2db0de.png', '1', '3920', 'png', '', '1536832226', '1536832226', null);
INSERT INTO `jz_admin_files` VALUES ('355', 'h_officialdom.png', '\\uploads\\balance\\20180913\\fcffa8012983ab7a8aa15e7a4e3e6e56.png', '1', '3920', 'png', '', '1536832317', '1536832317', null);
INSERT INTO `jz_admin_files` VALUES ('356', 'h_officialdom.png', '\\uploads\\balance\\20180913\\c9684070257375132edfaeba0e24e66b.png', '1', '3920', 'png', '', '1536832387', '1536832387', null);
INSERT INTO `jz_admin_files` VALUES ('357', 'h_memberimg.jpg', '\\uploads\\balance\\20180913\\00439e39634a24681c8c3c1734cd5b55.jpg', '1', '200390', 'jpg', '', '1536832438', '1536832438', null);
INSERT INTO `jz_admin_files` VALUES ('358', 'h_officialdom.png', '\\uploads\\balance\\20180913\\b484a9948f9943ae7c4d7bae9a90b4b8.png', '1', '3920', 'png', '', '1536832495', '1536832495', null);
INSERT INTO `jz_admin_files` VALUES ('359', 'h_officialdom.png', '\\uploads\\balance\\20180913\\c4e4f3e7357706ccc1312152f6778f77.png', '1', '3920', 'png', '', '1536832511', '1536832511', null);
INSERT INTO `jz_admin_files` VALUES ('360', 'h_left.png', '\\uploads\\balance\\20180913\\467201b344aa94a078ed1b4a81d880d6.png', '1', '223', 'png', '', '1536832516', '1536832516', null);
INSERT INTO `jz_admin_files` VALUES ('361', 'h_officialdom.png', '\\uploads\\balance\\20180914\\08c2499cab349f244e5a8848deca465d.png', '1', '3920', 'png', '', '1536887694', '1536887694', null);
INSERT INTO `jz_admin_files` VALUES ('362', 'h_officialdom.png', '\\uploads\\balance\\20180914\\0250dcc7fffc8a8b5e64c9755eff5373.png', '1', '3920', 'png', '', '1536887700', '1536887700', null);
INSERT INTO `jz_admin_files` VALUES ('363', 'h_officialdom.png', '\\uploads\\balance\\20180914\\361da6dc0d670cdd14cb912f721b4c81.png', '1', '3920', 'png', '', '1536887732', '1536887732', null);
INSERT INTO `jz_admin_files` VALUES ('364', 'h_officialdom.png', '\\uploads\\balance\\20180914\\8520aeda7b7ea9d92ab32bfd16d7ef43.png', '1', '3920', 'png', '', '1536887767', '1536887767', null);
INSERT INTO `jz_admin_files` VALUES ('365', 'h_officialdom.png', '\\uploads\\balance\\20180914\\f866bb761645c53db2298e97bac1a1c7.png', '1', '3920', 'png', '', '1536887972', '1536887972', null);
INSERT INTO `jz_admin_files` VALUES ('366', 'h_officialdom.png', '\\uploads\\balance\\20180914\\392973260e154588e0c85956b5b70e8a.png', '1', '3920', 'png', '', '1536887978', '1536887978', null);
INSERT INTO `jz_admin_files` VALUES ('367', 'h_officialdom.png', '\\uploads\\balance\\20180914\\70c0f4b5148675df3d4c10ec72324a86.png', '1', '3920', 'png', '', '1536888094', '1536888094', null);
INSERT INTO `jz_admin_files` VALUES ('368', 'h_officialdom.png', '\\uploads\\balance\\20180914\\b12fb582ac50f823c3b8107dfa4283b9.png', '1', '3920', 'png', '', '1536888266', '1536888266', null);
INSERT INTO `jz_admin_files` VALUES ('369', 'h_officialdom.png', '\\uploads\\balance\\20180914\\81b6981978a2ffec9639bf5f6469e6a3.png', '1', '3920', 'png', '', '1536888497', '1536888497', null);
INSERT INTO `jz_admin_files` VALUES ('370', 'h_officialdom.png', '\\uploads\\balance\\20180914\\4830114ea45a8c7b28cdfe5aa88f9226.png', '1', '3920', 'png', '', '1536889343', '1536889343', null);
INSERT INTO `jz_admin_files` VALUES ('371', 'h_officialdom.png', '\\uploads\\balance\\20180914\\054a09a81076e5e899cf5fc36105d1ab.png', '1', '3920', 'png', '', '1536889358', '1536889358', null);
INSERT INTO `jz_admin_files` VALUES ('372', 'h_officialdom.png', '\\uploads\\balance\\20180914\\dd4435690894caef5936513fe7749539.png', '1', '3920', 'png', '', '1536889439', '1536889439', null);
INSERT INTO `jz_admin_files` VALUES ('373', 'h_officialdom.png', '\\uploads\\balance\\20180914\\5dcbe11cc93dcdabc917ef90015764b0.png', '1', '3920', 'png', '', '1536889561', '1536889561', null);
INSERT INTO `jz_admin_files` VALUES ('374', 'h_officialdom.png', '\\uploads\\balance\\20180914\\e1b7dd1640a4f054e785604eb94f53a5.png', '1', '3920', 'png', '', '1536889652', '1536889652', null);
INSERT INTO `jz_admin_files` VALUES ('375', 'h_officialdom.png', '\\uploads\\balance\\20180914\\e5d2214691ee2d1363afdf0d6f0dc94e.png', '1', '3920', 'png', '', '1536889669', '1536889669', null);
INSERT INTO `jz_admin_files` VALUES ('376', '18955473360505253.png', '\\uploads\\balance\\20180914\\5e07270776a2da711ba9548f8f059d97.png', '1', '231289', 'png', '', '1536889761', '1536889761', null);
INSERT INTO `jz_admin_files` VALUES ('377', '111111.png', '\\uploads\\balance\\20180914\\41ffb2d38f3bccee8a993d35bb0e1e60.png', '1', '32211', 'png', '', '1536889766', '1536889766', null);
INSERT INTO `jz_admin_files` VALUES ('378', 'h_officialdom.png', '\\uploads\\balance\\20180914\\eca9471275d920b84e1e03b523652f58.png', '1', '3920', 'png', '', '1536890477', '1536890477', null);
INSERT INTO `jz_admin_files` VALUES ('379', 'h_officialdom.png', '\\uploads\\balance\\20180914\\3ce8e67f6caa46ea06fadc9701d6c70e.png', '1', '3920', 'png', '', '1536890496', '1536890496', null);
INSERT INTO `jz_admin_files` VALUES ('380', 'h_officialdom.png', '\\uploads\\balance\\20180914\\5933f152d78e6caad6e9b32e666c7183.png', '1', '3920', 'png', '', '1536890524', '1536890524', null);
INSERT INTO `jz_admin_files` VALUES ('381', 'h_officialdom.png', '\\uploads\\balance\\20180914\\d297b052482443418c0d9c67be06fa1c.png', '1', '3920', 'png', '', '1536890554', '1536890554', null);
INSERT INTO `jz_admin_files` VALUES ('382', 'h_officialdom.png', '\\uploads\\balance\\20180914\\b55674b523a9536dba2ac8fe2a8502f4.png', '1', '3920', 'png', '', '1536890575', '1536890575', null);
INSERT INTO `jz_admin_files` VALUES ('383', 'h_officialdom.png', '\\uploads\\balance\\20180914\\9d7bed6e3a10f9f518ae68db5615b256.png', '1', '3920', 'png', '', '1536890636', '1536890636', null);
INSERT INTO `jz_admin_files` VALUES ('384', 'h_officialdom.png', '\\uploads\\balance\\20180914\\84471355431ee389dc8b7a3c8d16afc9.png', '1', '3920', 'png', '', '1536890855', '1536890855', null);
INSERT INTO `jz_admin_files` VALUES ('385', 'h_officialdom.png', '\\uploads\\balance\\20180914\\c1a8093c8eb9b0bacad767c285ca589c.png', '1', '3920', 'png', '', '1536890864', '1536890864', null);
INSERT INTO `jz_admin_files` VALUES ('386', 'h_officialdom.png', '\\uploads\\balance\\20180914\\a4c28a7fd945fec17c707b296dedadb5.png', '1', '3920', 'png', '', '1536890879', '1536890879', null);
INSERT INTO `jz_admin_files` VALUES ('387', 'h_officialdom.png', '\\uploads\\balance\\20180914\\7ddd68d8a03e0cfca1287690b52e2294.png', '1', '3920', 'png', '', '1536890915', '1536890915', null);
INSERT INTO `jz_admin_files` VALUES ('388', 'h_officialdom.png', '\\uploads\\balance\\20180914\\504483a805b8dfae693d91d97986f7cd.png', '1', '3920', 'png', '', '1536891003', '1536891003', null);
INSERT INTO `jz_admin_files` VALUES ('389', 'h_officialdom.png', '\\uploads\\balance\\20180914\\1b7f3bf4d3f48b7618ace4b6a2bfbaf0.png', '1', '3920', 'png', '', '1536891069', '1536891069', null);
INSERT INTO `jz_admin_files` VALUES ('390', 'h_officialdom.png', '\\uploads\\balance\\20180914\\cce153d0af498fc3dbab4f8ba5ad9e7c.png', '1', '3920', 'png', '', '1536891075', '1536891075', null);
INSERT INTO `jz_admin_files` VALUES ('391', 'h_officialdom.png', '\\uploads\\balance\\20180914\\da56658213ecf117f708539d366fd781.png', '1', '3920', 'png', '', '1536891123', '1536891123', null);
INSERT INTO `jz_admin_files` VALUES ('392', 'h_officialdom.png', '\\uploads\\balance\\20180914\\a3b35f1587e3f471e1d263fcba5fc5ce.png', '1', '3920', 'png', '', '1536891317', '1536891317', null);
INSERT INTO `jz_admin_files` VALUES ('393', 'h_officialdom.png', '\\uploads\\balance\\20180914\\e75accfa989c381bac881d47290b0faa.png', '1', '3920', 'png', '', '1536891345', '1536891345', null);
INSERT INTO `jz_admin_files` VALUES ('394', 'h_officialdom.png', '\\uploads\\balance\\20180914\\031ce4fe953c53341aac35e128a3d1d7.png', '1', '3920', 'png', '', '1536891380', '1536891380', null);
INSERT INTO `jz_admin_files` VALUES ('395', 'h_officialdom.png', '\\uploads\\balance\\20180914\\b87ab9fc2c0e63c9d1cb1e24b8d0cf6d.png', '1', '3920', 'png', '', '1536891396', '1536891396', null);
INSERT INTO `jz_admin_files` VALUES ('396', 'h_officialdom.png', '\\uploads\\balance\\20180914\\bdbd3f22111102bf9edc5eb472c6add5.png', '1', '3920', 'png', '', '1536891428', '1536891428', null);
INSERT INTO `jz_admin_files` VALUES ('397', 'h_officialdom.png', '\\uploads\\balance\\20180914\\d94d456ba6b653fc77455e64b4126fb3.png', '1', '3920', 'png', '', '1536891440', '1536891440', null);
INSERT INTO `jz_admin_files` VALUES ('398', 'h_officialdom.png', '\\uploads\\balance\\20180914\\537ad33e3fe61fe107ae13e55f9defbc.png', '1', '3920', 'png', '', '1536891492', '1536891492', null);
INSERT INTO `jz_admin_files` VALUES ('399', 'h_officialdom.png', '\\uploads\\balance\\20180914\\a09c419925baf450a410e4cdd8888488.png', '1', '3920', 'png', '', '1536891524', '1536891524', null);
INSERT INTO `jz_admin_files` VALUES ('400', 'h_officialdom.png', '\\uploads\\balance\\20180914\\e3618fd89f7da99c6bdb80211633f8d4.png', '1', '3920', 'png', '', '1536891532', '1536891532', null);
INSERT INTO `jz_admin_files` VALUES ('401', 'h_officialdom.png', '\\uploads\\balance\\20180914\\cfd392472f07b294c27de161e1d8cc18.png', '1', '3920', 'png', '', '1536891585', '1536891585', null);
INSERT INTO `jz_admin_files` VALUES ('402', 'h_officialdom.png', '\\uploads\\balance\\20180914\\e1033637f0301d0e8506747a1b294178.png', '1', '3920', 'png', '', '1536891597', '1536891597', null);
INSERT INTO `jz_admin_files` VALUES ('403', 'h_officialdom.png', '\\uploads\\balance\\20180914\\a1eefe7a621aa97123e269714c2bda10.png', '1', '3920', 'png', '', '1536891709', '1536891709', null);
INSERT INTO `jz_admin_files` VALUES ('404', 'h_officialdom.png', '\\uploads\\balance\\20180914\\bb85f7f9fa1f4438bfaa5a1459e1c5b0.png', '1', '3920', 'png', '', '1536891739', '1536891739', null);
INSERT INTO `jz_admin_files` VALUES ('405', 'h_officialdom.png', '\\uploads\\balance\\20180914\\6fbae0ff7bf9699defcd0515f1c95d1a.png', '1', '3920', 'png', '', '1536891768', '1536891768', null);
INSERT INTO `jz_admin_files` VALUES ('406', 'h_officialdom.png', '\\uploads\\balance\\20180914\\c8b9d0c54c9ea3210fce66729a40f89e.png', '1', '3920', 'png', '', '1536891822', '1536891822', null);
INSERT INTO `jz_admin_files` VALUES ('407', 'h_officialdom.png', '\\uploads\\balance\\20180914\\f656402fcb1f86bfc3c9a99e9c1e3362.png', '1', '3920', 'png', '', '1536891833', '1536891833', null);
INSERT INTO `jz_admin_files` VALUES ('408', '微信截图_20170912091826.png', '\\uploads\\balance\\20180914\\2bb8939cdf1a11f623c4071cd53f1d0e.png', '1', '371278', 'png', '', '1536891662', '1536891662', null);
INSERT INTO `jz_admin_files` VALUES ('409', '18955473360505253.png', '\\uploads\\balance\\20180914\\baeef03917428ae199302ff9b76e7330.png', '1', '231289', 'png', '', '1536891667', '1536891667', null);
INSERT INTO `jz_admin_files` VALUES ('410', 'h_officialdom.png', '\\uploads\\balance\\20180914\\259c72e50db7676994bf1381c483db96.png', '1', '3920', 'png', '', '1536891865', '1536891865', null);
INSERT INTO `jz_admin_files` VALUES ('411', 'h_officialdom.png', '\\uploads\\balance\\20180914\\c6e1d51188d6fb7c678be03b95e16621.png', '1', '3920', 'png', '', '1536891871', '1536891871', null);
INSERT INTO `jz_admin_files` VALUES ('412', 'h_officialdom.png', '\\uploads\\balance\\20180914\\b6bd47236a1ab4ed13adc39898fe5a47.png', '1', '3920', 'png', '', '1536891899', '1536891899', null);
INSERT INTO `jz_admin_files` VALUES ('413', 'h_officialdom.png', '\\uploads\\balance\\20180914\\b02e34ea0323ca4c1c99f14efae641ed.png', '1', '3920', 'png', '', '1536891974', '1536891974', null);
INSERT INTO `jz_admin_files` VALUES ('414', 'h_officialdom.png', '\\uploads\\balance\\20180914\\27720e62554e42d4be059cc129e2df20.png', '1', '3920', 'png', '', '1536891983', '1536891983', null);
INSERT INTO `jz_admin_files` VALUES ('415', 'h_officialdom.png', '\\uploads\\balance\\20180914\\572102b0ddb6959227d76b4bb8199ba9.png', '1', '3920', 'png', '', '1536892015', '1536892015', null);
INSERT INTO `jz_admin_files` VALUES ('416', 'h_officialdom.png', '\\uploads\\balance\\20180914\\c56a521216ba06ebf429f0b83f9fde83.png', '1', '3920', 'png', '', '1536892020', '1536892020', null);
INSERT INTO `jz_admin_files` VALUES ('417', 'h_online.png', '\\uploads\\balance\\20180914\\b067b4829926303d47ad62ad24c393b9.png', '1', '1167', 'png', '', '1536892023', '1536892023', null);
INSERT INTO `jz_admin_files` VALUES ('418', 'h_officialdom.png', '\\uploads\\balance\\20180914\\3e8c6b27033cead0a939c2df974766b4.png', '1', '3920', 'png', '', '1536892041', '1536892041', null);
INSERT INTO `jz_admin_files` VALUES ('419', 'h_officialdom.png', '\\uploads\\balance\\20180914\\054f25de909d645b5c0286b9b95f30c3.png', '1', '3920', 'png', '', '1536892058', '1536892058', null);
INSERT INTO `jz_admin_files` VALUES ('420', 'h_Live.png', '\\uploads\\balance\\20180914\\15ac151f0a11d6db4a127d3388cee9fe.png', '1', '600', 'png', '', '1536892061', '1536892061', null);
INSERT INTO `jz_admin_files` VALUES ('421', 'h_Livestream2.png', '\\uploads\\balance\\20180914\\03bb3d93aa9efeb3d90c1c3c76ca3d47.png', '1', '513', 'png', '', '1536892063', '1536892063', null);
INSERT INTO `jz_admin_files` VALUES ('422', 'h_officialdom.png', '\\uploads\\balance\\20180914\\a739bb24853413e046e775fd3f609ba7.png', '1', '3920', 'png', '', '1536892085', '1536892085', null);
INSERT INTO `jz_admin_files` VALUES ('423', 'h_officialdom.png', '\\uploads\\balance\\20180914\\f844b0547674f7a21909154eb9d82e43.png', '1', '3920', 'png', '', '1536892098', '1536892098', null);
INSERT INTO `jz_admin_files` VALUES ('424', 'h_online2.png', '\\uploads\\balance\\20180914\\9ace81d851d2f0cdbee4a41594326709.png', '1', '1351', 'png', '', '1536892102', '1536892102', null);
INSERT INTO `jz_admin_files` VALUES ('425', 'h_officialdom.png', '\\uploads\\balance\\20180914\\0c7eee6cdaf1903ec1b5b01b92c4fecc.png', '1', '3920', 'png', '', '1536892136', '1536892136', null);
INSERT INTO `jz_admin_files` VALUES ('426', 'h_paper.png', '\\uploads\\balance\\20180914\\94b75942807a1fe0c0ce26374163a73d.png', '1', '1230', 'png', '', '1536892150', '1536892150', null);
INSERT INTO `jz_admin_files` VALUES ('427', 'h_officialdom.png', '\\uploads\\balance\\20180914\\370748410d6d9e6d797de993e5ab12ef.png', '1', '3920', 'png', '', '1536892153', '1536892153', null);
INSERT INTO `jz_admin_files` VALUES ('428', 'h_Livestream2.png', '\\uploads\\balance\\20180914\\18f87abfb3e435385d622afcbf6d8e64.png', '1', '513', 'png', '', '1536892156', '1536892156', null);
INSERT INTO `jz_admin_files` VALUES ('429', 'h_officialdom.png', '\\uploads\\balance\\20180914\\b842f703727cf8f1efdc3255b7ad8b96.png', '1', '3920', 'png', '', '1536892276', '1536892276', null);
INSERT INTO `jz_admin_files` VALUES ('430', 'h_online.png', '\\uploads\\balance\\20180914\\fafd0d96181ec3957e0f120669dde243.png', '1', '1167', 'png', '', '1536892281', '1536892281', null);
INSERT INTO `jz_admin_files` VALUES ('431', 'h_officialdom.png', '\\uploads\\balance\\20180914\\3557e2616c8e0001c5836cdcecad7352.png', '1', '3920', 'png', '', '1536892321', '1536892321', null);
INSERT INTO `jz_admin_files` VALUES ('432', 'h_online.png', '\\uploads\\balance\\20180914\\d85b10b136d24c88379e2698aab33da3.png', '1', '1167', 'png', '', '1536892326', '1536892326', null);
INSERT INTO `jz_admin_files` VALUES ('433', 'h_officialdom.png', '\\uploads\\balance\\20180914\\4895b135ccc65a9f74001d6df12db96f.png', '1', '3920', 'png', '', '1536892331', '1536892331', null);
INSERT INTO `jz_admin_files` VALUES ('434', 'h_paper2.png', '\\uploads\\balance\\20180914\\f6916daed26d0ca5122289daed5e2a3a.png', '1', '1476', 'png', '', '1536892336', '1536892336', null);
INSERT INTO `jz_admin_files` VALUES ('435', 'test.PNG', '\\uploads\\balance\\20180914\\c9f5a65d12631108f4c449186c69cb08.PNG', '1', '13773', 'PNG', '', '1536895574', '1536895574', null);
INSERT INTO `jz_admin_files` VALUES ('436', '捕获.PNG', '\\uploads\\balance\\20180914\\633762a21428e3a4d3ab1e3eaad7b61b.PNG', '1', '19927', 'PNG', '', '1536895587', '1536895587', null);
INSERT INTO `jz_admin_files` VALUES ('437', 'test.PNG', '\\uploads\\balance\\20180914\\5591279fe3c72abf12c9079a13d62ec1.PNG', '1', '13773', 'PNG', '', '1536896078', '1536896078', null);
INSERT INTO `jz_admin_files` VALUES ('438', '捕获.PNG', '\\uploads\\balance\\20180914\\6f647454c84093b6f206035f434eb379.PNG', '1', '19927', 'PNG', '', '1536896078', '1536896078', null);
INSERT INTO `jz_admin_files` VALUES ('439', 'logo.jpg', '\\uploads\\balance\\20180914\\f6abecefa5c5808427a01e93dc4784fb.jpg', '1', '40987', 'jpg', '', '1536910779', '1536910779', null);
INSERT INTO `jz_admin_files` VALUES ('440', '微信截图_20170912091826.png', '\\uploads\\balance\\20180914\\c308531e19051dca77e4fe642afeae40.png', '1', '371278', 'png', '', '1536910779', '1536910779', null);
INSERT INTO `jz_admin_files` VALUES ('441', '111111.png', '\\uploads\\balance\\20180914\\7fcab6b0ec9ed39a582fac7740f5e409.png', '1', '32211', 'png', '', '1536911457', '1536911457', null);
INSERT INTO `jz_admin_files` VALUES ('442', '微信截图_20170912091826.png', '\\uploads\\balance\\20180914\\991e5cf6184c152b42ec89510ee63e86.png', '1', '371278', 'png', '', '1536911457', '1536911457', null);
INSERT INTO `jz_admin_files` VALUES ('443', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180914\\2c24ba75145a99cf176ec2b7d35c9288.docx', '1', '12583', 'docx', '', '1536911578', '1536911578', null);
INSERT INTO `jz_admin_files` VALUES ('444', 'logo.png', '\\uploads\\balance\\20180914\\4645bb98c57c27e6aaeba894038807be.png', '1', '22524', 'png', '', '1536911597', '1536911597', null);
INSERT INTO `jz_admin_files` VALUES ('445', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180914\\76da4f46aa92d4884375354b7badf0bb.docx', '1', '12583', 'docx', '', '1536911607', '1536911607', null);
INSERT INTO `jz_admin_files` VALUES ('446', 'test.PNG', '\\uploads\\balance\\20180914\\0ba85a835b795ed0e5894cb7223c507d.PNG', '1', '13773', 'PNG', '', '1536913660', '1536913660', null);
INSERT INTO `jz_admin_files` VALUES ('447', '捕获.PNG', '\\uploads\\balance\\20180914\\b65247dd4e625bbb48198992be804881.PNG', '1', '19927', 'PNG', '', '1536913660', '1536913660', null);
INSERT INTO `jz_admin_files` VALUES ('448', 'h_officialdom.png', '\\uploads\\balance\\20180917\\2234b2449b433eae995cb89d2408719a.png', '1', '3920', 'png', '', '1537146379', '1537146379', null);
INSERT INTO `jz_admin_files` VALUES ('449', 'h_online.png', '\\uploads\\balance\\20180917\\8db79cc2ba9373af8cf38ab677126e1e.png', '1', '1167', 'png', '', '1537146390', '1537146390', null);
INSERT INTO `jz_admin_files` VALUES ('450', 'h_officialdom.png', '\\uploads\\balance\\20180917\\57a79ff4e90baae083877431933127e9.png', '1', '3920', 'png', '', '1537146396', '1537146396', null);
INSERT INTO `jz_admin_files` VALUES ('451', 'h_memberimg.jpg', '\\uploads\\balance\\20180917\\70a980abf6167c05a0a728a20e523c04.jpg', '1', '200390', 'jpg', '', '1537146399', '1537146399', null);
INSERT INTO `jz_admin_files` VALUES ('452', 'ERP系统字段.docx', '\\uploads\\balance\\20180917\\916ce5bd59f88baba3421daedbf82555.docx', '1', '1352006', 'docx', '', '1537170984', '1537170984', null);
INSERT INTO `jz_admin_files` VALUES ('453', '江西钢构行业名单.xlsx', '\\uploads\\balance\\20180917\\df272d456b281d359192cf6034424d1e.xlsx', '1', '307620', 'xlsx', '', '1537171327', '1537171327', null);
INSERT INTO `jz_admin_files` VALUES ('454', '流程.docx', '\\uploads\\balance\\20180917\\29c2e8e7d1df2bea780280098e50bf60.docx', '1', '230558', 'docx', '', '1537171585', '1537171585', null);
INSERT INTO `jz_admin_files` VALUES ('455', '系统配置.txt', '\\uploads\\balance\\20180917\\5ed450b284c8eca7fc0ed0bdcbb4ff1e.txt', '1', '709', 'txt', '', '1537171969', '1537171969', null);
INSERT INTO `jz_admin_files` VALUES ('456', 'h_officialdom.png', '\\uploads\\balance\\20180917\\1bfc57dce109fb2cfc3881848f4a3d47.png', '1', '3920', 'png', '', '1537173730', '1537173730', null);
INSERT INTO `jz_admin_files` VALUES ('457', 'h_officialdom.png', '\\uploads\\balance\\20180917\\0de5b668c10841518a8188b5d92ca28e.png', '1', '3920', 'png', '', '1537173881', '1537173881', null);
INSERT INTO `jz_admin_files` VALUES ('458', 'h_online.png', '\\uploads\\balance\\20180917\\eca1f6ba43efdfea9a0a8aff0f35558d.png', '1', '1167', 'png', '', '1537173891', '1537173891', null);
INSERT INTO `jz_admin_files` VALUES ('459', 'h_officialdom.png', '\\uploads\\balance\\20180917\\068e2eec06e2699ac1c29b61c74c8ae6.png', '1', '3920', 'png', '', '1537174018', '1537174018', null);
INSERT INTO `jz_admin_files` VALUES ('460', 'h_online.png', '\\uploads\\balance\\20180917\\c250736e7de7d89b1674ede56ab98452.png', '1', '1167', 'png', '', '1537174024', '1537174024', null);
INSERT INTO `jz_admin_files` VALUES ('461', 'h_officialdom.png', '\\uploads\\balance\\20180917\\952aad787d6f90bcd1ee5fd51e97043f.png', '1', '3920', 'png', '', '1537174202', '1537174202', null);
INSERT INTO `jz_admin_files` VALUES ('462', 'h_officialdom.png', '\\uploads\\balance\\20180917\\cb88a6ac327e35cd76b8578757d91ad7.png', '1', '3920', 'png', '', '1537174268', '1537174268', null);
INSERT INTO `jz_admin_files` VALUES ('463', 'h_online.png', '\\uploads\\balance\\20180917\\a3127322e4026548684b8dba0f0c1078.png', '1', '1167', 'png', '', '1537174273', '1537174273', null);
INSERT INTO `jz_admin_files` VALUES ('464', 'h_officialdom.png', '\\uploads\\balance\\20180917\\8e9af3094f61852c647a0d91a728344b.png', '1', '3920', 'png', '', '1537174311', '1537174311', null);
INSERT INTO `jz_admin_files` VALUES ('465', 'h_officialdom.png', '\\uploads\\balance\\20180917\\5491c7d27a7a4d782c6185d738499cdf.png', '1', '3920', 'png', '', '1537174338', '1537174338', null);
INSERT INTO `jz_admin_files` VALUES ('466', 'h_officialdom.png', '\\uploads\\balance\\20180917\\d057540d409b81858d16bd504709845c.png', '1', '3920', 'png', '', '1537174458', '1537174458', null);
INSERT INTO `jz_admin_files` VALUES ('467', 'h_online.png', '\\uploads\\balance\\20180917\\374d09853f22b64c4a7dbdac5de7e36b.png', '1', '1167', 'png', '', '1537174502', '1537174502', null);
INSERT INTO `jz_admin_files` VALUES ('468', 'h_officialdom.png', '\\uploads\\balance\\20180917\\8760a4e6c8fe943123f97f6e275b6643.png', '1', '3920', 'png', '', '1537174951', '1537174951', null);
INSERT INTO `jz_admin_files` VALUES ('469', 'h_online.png', '\\uploads\\balance\\20180917\\e7fa1e234b2d88787872b4239872b84d.png', '1', '1167', 'png', '', '1537174962', '1537174962', null);
INSERT INTO `jz_admin_files` VALUES ('470', 'h_officialdom.png', '\\uploads\\balance\\20180917\\31fe2b2d3fea7d9c09270c1c5cf89fcb.png', '1', '3920', 'png', '', '1537175075', '1537175075', null);
INSERT INTO `jz_admin_files` VALUES ('471', 'h_online2.png', '\\uploads\\balance\\20180917\\4bc6a7d58132ad155f8c983f45cd07d7.png', '1', '1351', 'png', '', '1537175086', '1537175086', null);
INSERT INTO `jz_admin_files` VALUES ('472', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180918\\9a4a8ad3cac36246b6b5e81d1610015f.docx', '1', '12583', 'docx', '', '1537232484', '1537232484', null);
INSERT INTO `jz_admin_files` VALUES ('473', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180918\\a91209159e53822092a5b12c5ad07281.docx', '1', '12583', 'docx', '', '1537233033', '1537233033', null);
INSERT INTO `jz_admin_files` VALUES ('474', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180918\\b0f2545eafcd1e8f113c98255a5b6f28.docx', '1', '12583', 'docx', '', '1537233243', '1537233243', null);
INSERT INTO `jz_admin_files` VALUES ('475', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180918\\553ffbd73c6b554a23f95c7671d6675d.docx', '1', '12583', 'docx', '', '1537236174', '1537236174', null);
INSERT INTO `jz_admin_files` VALUES ('476', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180918\\0bb87c5dc4621742046147735acdaa0a.docx', '1', '12583', 'docx', '', '1537236733', '1537236733', null);
INSERT INTO `jz_admin_files` VALUES ('477', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180918\\bd612e8e7808e49a01d0431767d9e1e8.docx', '1', '12583', 'docx', '', '1537238954', '1537238954', null);
INSERT INTO `jz_admin_files` VALUES ('478', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180918\\01c6c6647a077604c20f20f059c540a4.docx', '1', '12583', 'docx', '', '1537239127', '1537239127', null);
INSERT INTO `jz_admin_files` VALUES ('479', '捕获.PNG', '\\uploads\\balance\\20180918\\e75106c8addb054b1757659e9523af79.PNG', '1', '19927', 'PNG', '', '1537249766', '1537249766', null);
INSERT INTO `jz_admin_files` VALUES ('480', '捕获.PNG', '\\uploads\\balance\\20180918\\3e34198c26d53d00a52c5db7c1c5cf66.PNG', '1', '19927', 'PNG', '', '1537249934', '1537249934', null);
INSERT INTO `jz_admin_files` VALUES ('481', '捕获.PNG', '\\uploads\\balance\\20180918\\452772df1482849c439dfb6a037deea9.PNG', '1', '19927', 'PNG', '', '1537251894', '1537251894', null);
INSERT INTO `jz_admin_files` VALUES ('482', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180919\\10f4f7eb9f6193f30ca69341e6609ef7.docx', '1', '12583', 'docx', '', '1537322917', '1537322917', null);
INSERT INTO `jz_admin_files` VALUES ('484', '捕获.PNG', '\\uploads\\balance\\20180920\\9ba57828e8ef5a8d54bcfa7cafbbabe3.PNG', '1', '19927', 'PNG', '', '1537412375', '1537412375', null);
INSERT INTO `jz_admin_files` VALUES ('485', 'test.PNG', '\\uploads\\balance\\20180920\\3219e2ee37c890249572bee2e9792705.PNG', '1', '13773', 'PNG', '', '1537413264', '1537413264', null);
INSERT INTO `jz_admin_files` VALUES ('486', '捕获.PNG', '\\uploads\\balance\\20180920\\c3c101ce6b2b063ea06f66806aaf2c99.PNG', '1', '19927', 'PNG', '', '1537413268', '1537413268', null);
INSERT INTO `jz_admin_files` VALUES ('487', 'test.PNG', '\\uploads\\balance\\20180920\\9dfdb9158d3612caca183f292f09d405.PNG', '1', '13773', 'PNG', '', '1537414708', '1537414708', null);
INSERT INTO `jz_admin_files` VALUES ('488', 'h_officialdom.png', '\\uploads\\balance\\20180920\\bd41bce9208ff807f982130bf4518985.png', '1', '3920', 'png', '', '1537421300', '1537421300', null);
INSERT INTO `jz_admin_files` VALUES ('489', 'h_online.png', '\\uploads\\balance\\20180920\\96d97dc6974b7906bbe78db20fb380ca.png', '1', '1167', 'png', '', '1537421425', '1537421425', null);
INSERT INTO `jz_admin_files` VALUES ('490', 'h_online2.png', '\\uploads\\balance\\20180920\\a58f97016934fbece1077bdfe24f6772.png', '1', '1351', 'png', '', '1537421430', '1537421430', null);
INSERT INTO `jz_admin_files` VALUES ('491', 'h_officialdom.png', '\\uploads\\balance\\20180920\\99c51f03651022e7d1939b86b3ca6751.png', '1', '3920', 'png', '', '1537421456', '1537421456', null);
INSERT INTO `jz_admin_files` VALUES ('492', 'h_officialdom.png', '\\uploads\\balance\\20180920\\516b0c419b671e05ce2ee3b9fdbd5374.png', '1', '3920', 'png', '', '1537421744', '1537421744', null);
INSERT INTO `jz_admin_files` VALUES ('493', 'h_officialdom.png', '\\uploads\\balance\\20180920\\e7e4640df50158ec2e0a73e39a37dc56.png', '1', '3920', 'png', '', '1537423249', '1537423249', null);
INSERT INTO `jz_admin_files` VALUES ('494', 'test.PNG', '\\uploads\\balance\\20180920\\3addfed87dc550a490410b18f859f165.PNG', '1', '13773', 'PNG', '', '1537423327', '1537423327', null);
INSERT INTO `jz_admin_files` VALUES ('495', '捕获.PNG', '\\uploads\\balance\\20180920\\08ad2bb638d855fb0e27379a80485344.PNG', '1', '19927', 'PNG', '', '1537423327', '1537423327', null);
INSERT INTO `jz_admin_files` VALUES ('496', 'test.PNG', '\\uploads\\balance\\20180920\\a800d0145590310006aacb9c03f5394e.PNG', '1', '13773', 'PNG', '', '1537423408', '1537423408', null);
INSERT INTO `jz_admin_files` VALUES ('497', '捕获.PNG', '\\uploads\\balance\\20180920\\a699ee9280dd3ba3ae44d5098e59dfee.PNG', '1', '19927', 'PNG', '', '1537423408', '1537423408', null);
INSERT INTO `jz_admin_files` VALUES ('498', 'h_officialdom.png', '\\uploads\\balance\\20180920\\2c6ba1088fc94f9540c596ed46136423.png', '1', '3920', 'png', '', '1537423407', '1537423407', null);
INSERT INTO `jz_admin_files` VALUES ('499', 'h_online.png', '\\uploads\\balance\\20180920\\6ae32342710c0d97739e08b95caffd6a.png', '1', '1167', 'png', '', '1537423410', '1537423410', null);
INSERT INTO `jz_admin_files` VALUES ('500', 'h_officialdom.png', '\\uploads\\balance\\20180920\\b8e4460666d33aacffcc893ed8899cc0.png', '1', '3920', 'png', '', '1537423479', '1537423479', null);
INSERT INTO `jz_admin_files` VALUES ('501', 'h_officialdom.png', '\\uploads\\balance\\20180920\\897c1c67ef3e891033ad60db218726d0.png', '1', '3920', 'png', '', '1537423535', '1537423535', null);
INSERT INTO `jz_admin_files` VALUES ('502', 'h_online.png', '\\uploads\\balance\\20180920\\7ed8941856eb219ec94d7fa0bb20f01a.png', '1', '1167', 'png', '', '1537423541', '1537423541', null);
INSERT INTO `jz_admin_files` VALUES ('503', 'h_officialdom.png', '\\uploads\\balance\\20180920\\dc98c01f142a326b1b9dc4c1c42292a7.png', '1', '3920', 'png', '', '1537423664', '1537423664', null);
INSERT INTO `jz_admin_files` VALUES ('504', 'h_online.png', '\\uploads\\balance\\20180920\\a2ab94d4441ed1f9cacbb42909e393e3.png', '1', '1167', 'png', '', '1537423946', '1537423946', null);
INSERT INTO `jz_admin_files` VALUES ('505', 'test.PNG', '\\uploads\\balance\\20180920\\f06b1b86b95ed0a3894604f48b123172.PNG', '1', '13773', 'PNG', '', '1537424137', '1537424137', null);
INSERT INTO `jz_admin_files` VALUES ('506', '捕获.PNG', '\\uploads\\balance\\20180920\\a724b9a4bc55295de877b935ad71f915.PNG', '1', '19927', 'PNG', '', '1537424137', '1537424137', null);
INSERT INTO `jz_admin_files` VALUES ('507', 'test.PNG', '\\uploads\\balance\\20180920\\b707b0458494ca2c907ac9dc91adb39c.PNG', '1', '13773', 'PNG', '', '1537424169', '1537424169', null);
INSERT INTO `jz_admin_files` VALUES ('508', '捕获.PNG', '\\uploads\\balance\\20180920\\48742a006f52ed35f0e7a2630ae9968b.PNG', '1', '19927', 'PNG', '', '1537424169', '1537424169', null);
INSERT INTO `jz_admin_files` VALUES ('509', 'OverwolfLauncher.exe', '\\uploads\\balance\\20180921\\f14a80f2a76afa448e7f14d3df7b694b.exe', '46', '1501000', 'exe', '', '1537498525', '1537498525', null);
INSERT INTO `jz_admin_files` VALUES ('510', 'guid.dat', '\\uploads\\balance\\20180921\\969c69e20d6e0ac2ccfb8267289b6979.dat', '46', '17', 'dat', '', '1537498644', '1537498644', null);
INSERT INTO `jz_admin_files` VALUES ('511', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\4f1c8b1387538d5d7e0e00edf54ccc7b.jpg', '46', '3573', 'jpg', '', '1537498653', '1537498653', null);
INSERT INTO `jz_admin_files` VALUES ('512', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\0d2f20adc480281102debc3af1a30283.jpg', '46', '3573', 'jpg', '', '1537498656', '1537498656', null);
INSERT INTO `jz_admin_files` VALUES ('513', 'test.PNG', '\\uploads\\balance\\20180921\\696ca565d8d732acf0b8d9f6ad49ca43.PNG', '47', '13773', 'PNG', '', '1537498738', '1537498738', null);
INSERT INTO `jz_admin_files` VALUES ('514', '捕获.PNG', '\\uploads\\balance\\20180921\\919adda92f9a4c621c74611a4fcc54cd.PNG', '47', '19927', 'PNG', '', '1537498738', '1537498738', null);
INSERT INTO `jz_admin_files` VALUES ('515', 'test.PNG', '\\uploads\\balance\\20180921\\5a91ef7a4fc92182251a64e92c88b4dc.PNG', '47', '13773', 'PNG', '', '1537500889', '1537500889', null);
INSERT INTO `jz_admin_files` VALUES ('516', '捕获.PNG', '\\uploads\\balance\\20180921\\f40e0180f38b0342bcf388dcf69c1a56.PNG', '47', '19927', 'PNG', '', '1537500889', '1537500889', null);
INSERT INTO `jz_admin_files` VALUES ('517', 'test.PNG', '\\uploads\\balance\\20180921\\32f84fd195576c5fc61516a542efd7b3.PNG', '47', '13773', 'PNG', '', '1537501390', '1537501390', null);
INSERT INTO `jz_admin_files` VALUES ('518', '捕获.PNG', '\\uploads\\balance\\20180921\\72378dca0a3bfcbd3fc430b0b3630731.PNG', '47', '19927', 'PNG', '', '1537501390', '1537501390', null);
INSERT INTO `jz_admin_files` VALUES ('519', 'test.PNG', '\\uploads\\balance\\20180921\\ad466f34ccb90caa82be7dd662108e55.PNG', '47', '13773', 'PNG', '', '1537501712', '1537501712', null);
INSERT INTO `jz_admin_files` VALUES ('520', '捕获.PNG', '\\uploads\\balance\\20180921\\57bcf61836db74886983e5eaf68cbf69.PNG', '47', '19927', 'PNG', '', '1537501712', '1537501712', null);
INSERT INTO `jz_admin_files` VALUES ('521', 'test.PNG', '\\uploads\\balance\\20180921\\59f6f3b0f9dada5d61c2debfae6926f3.PNG', '47', '13773', 'PNG', '', '1537502307', '1537502307', null);
INSERT INTO `jz_admin_files` VALUES ('522', '捕获.PNG', '\\uploads\\balance\\20180921\\ddbdff467be212bf55c86dbd38411301.PNG', '47', '19927', 'PNG', '', '1537502307', '1537502307', null);
INSERT INTO `jz_admin_files` VALUES ('523', 'test.PNG', '\\uploads\\balance\\20180921\\2e4427e6e06431a4ec469820936df6a8.PNG', '47', '13773', 'PNG', '', '1537502357', '1537502357', null);
INSERT INTO `jz_admin_files` VALUES ('524', '捕获.PNG', '\\uploads\\balance\\20180921\\f6a3c80ec8d892e48fc908e5bf9083de.PNG', '47', '19927', 'PNG', '', '1537502357', '1537502357', null);
INSERT INTO `jz_admin_files` VALUES ('525', 'test.PNG', '\\uploads\\balance\\20180921\\5dbb6de58f615dd4393faccb135015ef.PNG', '47', '13773', 'PNG', '', '1537507932', '1537507932', null);
INSERT INTO `jz_admin_files` VALUES ('526', '捕获.PNG', '\\uploads\\balance\\20180921\\e50c274cf4db81a36b55c347ec256c12.PNG', '47', '19927', 'PNG', '', '1537507932', '1537507932', null);
INSERT INTO `jz_admin_files` VALUES ('527', 'test.PNG', '\\uploads\\balance\\20180921\\9216725763b41a5cbd334d5e561e47cf.PNG', '47', '13773', 'PNG', '', '1537508045', '1537508045', null);
INSERT INTO `jz_admin_files` VALUES ('528', '捕获.PNG', '\\uploads\\balance\\20180921\\460106196e888b8ef401aef5a73cd6b0.PNG', '47', '19927', 'PNG', '', '1537508045', '1537508045', null);
INSERT INTO `jz_admin_files` VALUES ('529', '捕获.PNG', '\\uploads\\balance\\20180921\\2cba75c28590de2c01da4db57fad935b.PNG', '47', '19927', 'PNG', '', '1537508144', '1537508144', null);
INSERT INTO `jz_admin_files` VALUES ('530', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\c3130f6c4c361e51ed3facb2d92d3233.jpg', '46', '3573', 'jpg', '', '1537510631', '1537510631', null);
INSERT INTO `jz_admin_files` VALUES ('531', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\a8b0ed60ea51a9a1e30b1a678a4cc365.jpg', '46', '3573', 'jpg', '', '1537510635', '1537510635', null);
INSERT INTO `jz_admin_files` VALUES ('532', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\df346663bd0695edb9d6cf7dea4ac5f9.jpg', '46', '3573', 'jpg', '', '1537513297', '1537513297', null);
INSERT INTO `jz_admin_files` VALUES ('533', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\35ef0aece729f51a36f826df3efbc0f3.jpg', '46', '3573', 'jpg', '', '1537513300', '1537513300', null);
INSERT INTO `jz_admin_files` VALUES ('534', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\c9e9305360c18130d4f967c5c4caf454.jpg', '46', '3573', 'jpg', '', '1537513619', '1537513619', null);
INSERT INTO `jz_admin_files` VALUES ('535', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\69d21cd62a8453494d2bb11bb7e60d5f.jpg', '46', '3573', 'jpg', '', '1537513621', '1537513621', null);
INSERT INTO `jz_admin_files` VALUES ('536', '$RMYD9Q4.jpg', '\\uploads\\balance\\20180921\\8b46b6275f6375cf2d35865c7c12bb76.jpg', '46', '3573', 'jpg', '', '1537513627', '1537513627', null);
INSERT INTO `jz_admin_files` VALUES ('537', 'test.PNG', '\\uploads\\balance\\20180921\\ef282c9fe5325d4c4f063be1bffa7e06.PNG', '47', '13773', 'PNG', '', '1537513658', '1537513658', null);
INSERT INTO `jz_admin_files` VALUES ('538', '捕获.PNG', '\\uploads\\balance\\20180921\\6a4b01a864417db0d07f7fc56090f1db.PNG', '47', '19927', 'PNG', '', '1537513658', '1537513658', null);
INSERT INTO `jz_admin_files` VALUES ('539', 'test.PNG', '\\uploads\\balance\\20180921\\e7a1c94d63336dd51aeee18b9eaae6db.PNG', '47', '13773', 'PNG', '', '1537514032', '1537514032', null);
INSERT INTO `jz_admin_files` VALUES ('540', '捕获.PNG', '\\uploads\\balance\\20180921\\5b29dea008fd1dd05441cf507ade7546.PNG', '47', '19927', 'PNG', '', '1537514032', '1537514032', null);
INSERT INTO `jz_admin_files` VALUES ('541', 'test.PNG', '\\uploads\\balance\\20180921\\07f4083c110603c26fa693d64cbfd54c.PNG', '47', '13773', 'PNG', '', '1537514269', '1537514269', null);
INSERT INTO `jz_admin_files` VALUES ('542', '捕获.PNG', '\\uploads\\balance\\20180921\\0132a109529ed882764f10e7a1f479a4.PNG', '47', '19927', 'PNG', '', '1537514269', '1537514269', null);
INSERT INTO `jz_admin_files` VALUES ('543', '捕获.PNG', '\\uploads\\balance\\20180921\\fdbc66e654968e025c556cabb1c24d72.PNG', '47', '19927', 'PNG', '', '1537514323', '1537514323', null);
INSERT INTO `jz_admin_files` VALUES ('544', 'test.PNG', '\\uploads\\balance\\20180921\\a1f33c33c5f56ba40e21b3d49397f4d0.PNG', '47', '13773', 'PNG', '', '1537514860', '1537514860', null);
INSERT INTO `jz_admin_files` VALUES ('545', '捕获.PNG', '\\uploads\\balance\\20180921\\dca1621ab5ee0211bc8db10e249e94c6.PNG', '47', '19927', 'PNG', '', '1537514860', '1537514860', null);
INSERT INTO `jz_admin_files` VALUES ('546', '新建 DOCX 文档.docx', '\\uploads\\balance\\20180925\\b76b074ceb4fc115d89658f6ad619cd9.docx', '48', '12583', 'docx', '', '1537856305', '1537856305', null);
INSERT INTO `jz_admin_files` VALUES ('547', 'test.PNG', '\\uploads\\personnel\\20180926\\2af071b3648b7b0df10af06fb5634f06.PNG', '47', '13773', 'PNG', '', '1537948984', '1537948984', null);
INSERT INTO `jz_admin_files` VALUES ('548', '捕获.PNG', '\\uploads\\personnel\\20180926\\54766594eea79ddb825810c57f651ad2.PNG', '47', '19927', 'PNG', '', '1537948984', '1537948984', null);
INSERT INTO `jz_admin_files` VALUES ('549', 'YoudaoOcr.exe[1].7z', '\\uploads\\balance\\20181008\\9cb8f9659455700a8d31a44d87416688.7z', '51', '1276645', '7z', '', '1538986174', '1538986174', null);
INSERT INTO `jz_admin_files` VALUES ('550', 'YoudaoDictHelper.exe[1].7z', '\\uploads\\balance\\20181008\\8a5b57caf5652b818e20cbce9f30eaa5.7z', '51', '1018944', '7z', '', '1538986203', '1538986203', null);
INSERT INTO `jz_admin_files` VALUES ('551', 'YoudaoOcr.exe[1].7z', '\\uploads\\balance\\20181008\\682d415ab6a1899840f2ce43515aacdb.7z', '51', '1276645', '7z', '', '1538986219', '1538986219', null);
INSERT INTO `jz_admin_files` VALUES ('552', 'YoudaoOcr.exe[1].7z', '\\uploads\\balance\\20181008\\b75593f4e8761e1cd55f25a31d2e0425.7z', '51', '1276645', '7z', '', '1538986321', '1538986321', null);
INSERT INTO `jz_admin_files` VALUES ('553', 'h_officialdom.png', '\\uploads\\balance\\20181015\\43848ac775f3b5438d876cac75c11c0f.png', '45', '3920', 'png', '', '1539591697', '1539591697', null);
INSERT INTO `jz_admin_files` VALUES ('554', '新建文本文档.txt', '\\uploads\\balance\\20181015\\288326686ae0d021beff9fe2c9bb0348.txt', '45', '1015', 'txt', '', '1539591724', '1539591724', null);
INSERT INTO `jz_admin_files` VALUES ('555', '9MM}`_EZGLB%7OKY$05$X@0.png', '\\uploads\\balance\\20181015\\8a4bc9e86b66f873affdf05e40e5ea52.png', '46', '39071', 'png', '', '1539592740', '1539592740', null);
INSERT INTO `jz_admin_files` VALUES ('556', '1539309785.jpg', '\\uploads\\balance\\20181015\\115a17a6861b7facf1f41ab2a65c9f7b.jpg', '46', '386568', 'jpg', '', '1539592744', '1539592744', null);
INSERT INTO `jz_admin_files` VALUES ('557', '1539309785.jpg', '\\uploads\\balance\\20181015\\85fe39db4609db652bd1c5079d272af4.jpg', '46', '386568', 'jpg', '', '1539594342', '1539594342', null);
INSERT INTO `jz_admin_files` VALUES ('558', '1539322976(1).jpg', '\\uploads\\balance\\20181015\\819bd47ed8fc3dda5f17827b416ce778.jpg', '46', '24278', 'jpg', '', '1539594346', '1539594346', null);
INSERT INTO `jz_admin_files` VALUES ('559', '9MM}`_EZGLB%7OKY$05$X@0.png', '\\uploads\\balance\\20181015\\7d8218ebf1f3d16a084e8986fd297730.png', '46', '39071', 'png', '', '1539594630', '1539594630', null);
INSERT INTO `jz_admin_files` VALUES ('560', ']WSI9IROX19_WRPK_J@K[{M.png', '\\uploads\\balance\\20181015\\daa2022209252988420a875283e3b11d.png', '46', '39742', 'png', '', '1539594635', '1539594635', null);
INSERT INTO `jz_admin_files` VALUES ('561', '1539309785.jpg', '\\uploads\\balance\\20181018\\818d220488dbe5ae4ab0f2947ddcf001.jpg', '46', '386568', 'jpg', '', '1539827481', '1539827481', null);
INSERT INTO `jz_admin_files` VALUES ('562', '1539309785.jpg', '\\uploads\\balance\\20181018\\66498a4f95e489c7d7f62dd268a8db69.jpg', '46', '386568', 'jpg', '', '1539829109', '1539829109', null);
INSERT INTO `jz_admin_files` VALUES ('563', '1539309785.jpg', '\\uploads\\balance\\20181018\\df7fc05822ee2daee28f7a6d11e260a8.jpg', '46', '386568', 'jpg', '', '1539829113', '1539829113', null);
INSERT INTO `jz_admin_files` VALUES ('564', 'erp功能图.png', '\\uploads\\system\\20181018\\f8e6a77b4c0ca614ba05a79da5d3a190.png', '1', '44162', 'png', '', '1539829223', '1539829223', null);
INSERT INTO `jz_admin_files` VALUES ('565', '1539323986(1).jpg', '\\uploads\\balance\\20181018\\8b82971910b526bbbeb689cf842169b9.jpg', '46', '23758', 'jpg', '', '1539829496', '1539829496', null);
INSERT INTO `jz_admin_files` VALUES ('566', '$]LSYH%AM{CG[_`(XYC@X19.png', '\\uploads\\balance\\20181019\\25cb310f79051902c918ea1b77c0f6d1.png', '46', '13106', 'png', '', '1539928245', '1539928245', null);
INSERT INTO `jz_admin_files` VALUES ('567', '9MM}`_EZGLB%7OKY$05$X@0.png', '\\uploads\\balance\\20181019\\6a624156778f4291484f08d8834c5c0e.png', '46', '39071', 'png', '', '1539928875', '1539928875', null);
INSERT INTO `jz_admin_files` VALUES ('568', '1539313223(1).jpg', '\\uploads\\balance\\20181019\\8b473444068f3af8fe8b61a9614787a8.jpg', '46', '43437', 'jpg', '', '1539928879', '1539928879', null);
INSERT INTO `jz_admin_files` VALUES ('569', 'ERP.txt', '\\uploads\\balance\\20181019\\13587836907466d191e49b539681dc99.txt', '45', '1010', 'txt', '', '1539930455', '1539930455', null);
INSERT INTO `jz_admin_files` VALUES ('570', '加班申请单.txt', '\\uploads\\balance\\20181019\\f45c37f28c65892220fadaf2f25a965c.txt', '45', '9844', 'txt', '', '1539930458', '1539930458', null);
INSERT INTO `jz_admin_files` VALUES ('571', '加班申请单.txt', '\\uploads\\balance\\20181019\\883cd3d59e8344205fd013c3014dfe40.txt', '45', '9844', 'txt', '', '1539930652', '1539930652', null);
INSERT INTO `jz_admin_files` VALUES ('572', 'ERP.txt', '\\uploads\\balance\\20181019\\568ba0107f676846a60815eca0664188.txt', '45', '1010', 'txt', '', '1539930699', '1539930699', null);
INSERT INTO `jz_admin_files` VALUES ('573', '加班申请单.txt', '\\uploads\\balance\\20181019\\b8e907dd64b9a08c345bcdcdf8a034ea.txt', '45', '9844', 'txt', '', '1539930769', '1539930769', null);
INSERT INTO `jz_admin_files` VALUES ('574', '新建文本文档.txt', '\\uploads\\balance\\20181019\\b9e68db3646cfef5095b5283b70de14e.txt', '45', '1015', 'txt', '', '1539934068', '1539934068', null);
INSERT INTO `jz_admin_files` VALUES ('575', '1539313223(1).jpg', '\\uploads\\balance\\20181019\\40a976dcd7a79ee9478307d895a0e4cf.jpg', '46', '43437', 'jpg', '', '1539935916', '1539935916', null);
INSERT INTO `jz_admin_files` VALUES ('576', '1539323195(1).jpg', '\\uploads\\balance\\20181019\\c8e5e51313e5b08050c4c1fa424f0841.jpg', '46', '22506', 'jpg', '', '1539936786', '1539936786', null);

-- ----------------------------
-- Table structure for jz_admin_framework
-- ----------------------------
DROP TABLE IF EXISTS `jz_admin_framework`;
CREATE TABLE `jz_admin_framework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '上级id',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `type` varchar(255) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_admin_framework
-- ----------------------------

-- ----------------------------
-- Table structure for jz_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `jz_admin_log`;
CREATE TABLE `jz_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `action_ip_ix` (`action_ip`) USING BTREE,
  KEY `action_id_ix` (`action_id`) USING BTREE,
  KEY `user_id_ix` (`user_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=759 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='行为日志表';

-- ----------------------------
-- Records of jz_admin_log
-- ----------------------------
INSERT INTO `jz_admin_log` VALUES ('397', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1534930266');
INSERT INTO `jz_admin_log` VALUES ('396', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1534926950');
INSERT INTO `jz_admin_log` VALUES ('395', '30', '4', '2130706433', 'admin_action', '0', ' 添加了一条行为   ', '1', '1534926808');
INSERT INTO `jz_admin_log` VALUES ('394', '9', '0', '2130706433', 'admin_inform', '0', '用户xxx   添加了一条通知类型   节点标题(通知类型添加)', '1', '1534842246');
INSERT INTO `jz_admin_log` VALUES ('398', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535098111');
INSERT INTO `jz_admin_log` VALUES ('399', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535098167');
INSERT INTO `jz_admin_log` VALUES ('400', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535099764');
INSERT INTO `jz_admin_log` VALUES ('401', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535099958');
INSERT INTO `jz_admin_log` VALUES ('402', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535100014');
INSERT INTO `jz_admin_log` VALUES ('403', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535100067');
INSERT INTO `jz_admin_log` VALUES ('404', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535100091');
INSERT INTO `jz_admin_log` VALUES ('405', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101090');
INSERT INTO `jz_admin_log` VALUES ('406', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101187');
INSERT INTO `jz_admin_log` VALUES ('407', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101338');
INSERT INTO `jz_admin_log` VALUES ('408', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101400');
INSERT INTO `jz_admin_log` VALUES ('409', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101434');
INSERT INTO `jz_admin_log` VALUES ('410', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101455');
INSERT INTO `jz_admin_log` VALUES ('411', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101495');
INSERT INTO `jz_admin_log` VALUES ('412', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101557');
INSERT INTO `jz_admin_log` VALUES ('413', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101615');
INSERT INTO `jz_admin_log` VALUES ('414', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101650');
INSERT INTO `jz_admin_log` VALUES ('415', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101749');
INSERT INTO `jz_admin_log` VALUES ('416', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101870');
INSERT INTO `jz_admin_log` VALUES ('417', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535101968');
INSERT INTO `jz_admin_log` VALUES ('418', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535103329');
INSERT INTO `jz_admin_log` VALUES ('419', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535103435');
INSERT INTO `jz_admin_log` VALUES ('420', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535103453');
INSERT INTO `jz_admin_log` VALUES ('421', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535103545');
INSERT INTO `jz_admin_log` VALUES ('422', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535103583');
INSERT INTO `jz_admin_log` VALUES ('423', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535103622');
INSERT INTO `jz_admin_log` VALUES ('424', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535106199');
INSERT INTO `jz_admin_log` VALUES ('425', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为   ', '1', '1535345367');
INSERT INTO `jz_admin_log` VALUES ('426', '85', '1', '2130706433', 'supplier_add', '0', ' 用户添加了一条供应商档案 ', '1', '1535352236');
INSERT INTO `jz_admin_log` VALUES ('427', '85', '1', '2130706433', 'supplier_add', '0', ' 用户添加了一条供应商档案 ', '1', '1535352257');
INSERT INTO `jz_admin_log` VALUES ('428', '85', '4', '2130706433', 'supplier_add', '0', ' 用户添加了一条供应商档案 ', '1', '1535352287');
INSERT INTO `jz_admin_log` VALUES ('429', '85', '4', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 ', '1', '1535352380');
INSERT INTO `jz_admin_log` VALUES ('430', '85', '4', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(理查德油漆供应商)', '1', '1535352465');
INSERT INTO `jz_admin_log` VALUES ('431', '85', '4', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(理查德油漆供应商)', '1', '1535352484');
INSERT INTO `jz_admin_log` VALUES ('432', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(爱德华劳务供应公司)', '1', '1535356388');
INSERT INTO `jz_admin_log` VALUES ('433', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(罗兰分包有限公司)', '1', '1535356432');
INSERT INTO `jz_admin_log` VALUES ('434', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(supplier_edit) ', '1', '1535360919');
INSERT INTO `jz_admin_log` VALUES ('435', '86', '1', '2130706433', 'supplier_edit', '0', '修改了供应商资料', '1', '1535361001');
INSERT INTO `jz_admin_log` VALUES ('436', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(擎天柱施工队)', '1', '1535361458');
INSERT INTO `jz_admin_log` VALUES ('437', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(111222)', '1', '1535361557');
INSERT INTO `jz_admin_log` VALUES ('438', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(222222)', '1', '1535361566');
INSERT INTO `jz_admin_log` VALUES ('439', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(3213123)', '1', '1535361618');
INSERT INTO `jz_admin_log` VALUES ('440', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(321312123312)', '1', '1535361626');
INSERT INTO `jz_admin_log` VALUES ('441', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(2312)', '1', '1535361674');
INSERT INTO `jz_admin_log` VALUES ('442', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(312312)', '1', '1535362452');
INSERT INTO `jz_admin_log` VALUES ('443', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(111111)', '1', '1535363036');
INSERT INTO `jz_admin_log` VALUES ('444', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(222222)', '1', '1535363048');
INSERT INTO `jz_admin_log` VALUES ('445', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(333333)', '1', '1535363059');
INSERT INTO `jz_admin_log` VALUES ('446', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(1)', '1', '1535363411');
INSERT INTO `jz_admin_log` VALUES ('447', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(3213123)', '1', '1535363624');
INSERT INTO `jz_admin_log` VALUES ('448', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(3123123)', '1', '1535363641');
INSERT INTO `jz_admin_log` VALUES ('449', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(321312)', '1', '1535363775');
INSERT INTO `jz_admin_log` VALUES ('450', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(321312)', '1', '1535363802');
INSERT INTO `jz_admin_log` VALUES ('451', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(32112312)', '1', '1535363929');
INSERT INTO `jz_admin_log` VALUES ('452', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(1223)', '1', '1535363941');
INSERT INTO `jz_admin_log` VALUES ('453', '85', '1', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(213123232)', '1', '1535364054');
INSERT INTO `jz_admin_log` VALUES ('454', '86', '1', '2130706433', 'supplier_edit', '0', '修改了供应商资料', '1', '1535364135');
INSERT INTO `jz_admin_log` VALUES ('455', '86', '1', '2130706433', 'supplier_edit', '0', '修改了供应商资料', '1', '1535364154');
INSERT INTO `jz_admin_log` VALUES ('456', '86', '1', '2130706433', 'supplier_edit', '0', '修改了供应商资料', '1', '1535364180');
INSERT INTO `jz_admin_log` VALUES ('457', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(fdasfadsf) ', '1', '1535689662');
INSERT INTO `jz_admin_log` VALUES ('458', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(fffffff) ', '1', '1535689965');
INSERT INTO `jz_admin_log` VALUES ('459', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(construction_quantity_add) ', '1', '1536028668');
INSERT INTO `jz_admin_log` VALUES ('460', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(fdfdfdfd) ', '1', '1536806931');
INSERT INTO `jz_admin_log` VALUES ('461', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(makeplan_add) ', '1', '1536823643');
INSERT INTO `jz_admin_log` VALUES ('462', '90', '1', '2130706433', 'construction/makeplan_add', '0', '添加了(金耀科技九月份交底)的技术交底', '1', '1536825957');
INSERT INTO `jz_admin_log` VALUES ('463', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(add_user) ', '1', '1536829309');
INSERT INTO `jz_admin_log` VALUES ('464', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(purchase_add) ', '1', '1536829510');
INSERT INTO `jz_admin_log` VALUES ('465', '92', '1', '2130706433', 'purchase/index', '0', '添加了(1)的物资招标采购计划', '1', '1536830046');
INSERT INTO `jz_admin_log` VALUES ('466', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(purchase_contract_add) ', '1', '1536830269');
INSERT INTO `jz_admin_log` VALUES ('467', '93', '1', '2130706433', 'purchase/contract', '0', '添加了(物资采购合同)的物资采购合同', '1', '1536830507');
INSERT INTO `jz_admin_log` VALUES ('468', '91', '1', '2130706433', 'personnel/save', '0', '添加了放松放松用户', '1', '1536830692');
INSERT INTO `jz_admin_log` VALUES ('469', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(add_delete) ', '1', '1536830985');
INSERT INTO `jz_admin_log` VALUES ('470', '94', '1', '2130706433', 'personnel/delete', '0', '删除了fsfs 用户', '1', '1536831064');
INSERT INTO `jz_admin_log` VALUES ('471', '94', '1', '2130706433', 'personnel/delete', '0', '删除了fsfs 用户', '1', '1536831077');
INSERT INTO `jz_admin_log` VALUES ('472', '94', '1', '2130706433', 'personnel/delete', '0', '删除了放松放松用户', '1', '1536831210');
INSERT INTO `jz_admin_log` VALUES ('473', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(edit_user) ', '1', '1536831601');
INSERT INTO `jz_admin_log` VALUES ('474', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(delete_organization) ', '1', '1536832306');
INSERT INTO `jz_admin_log` VALUES ('475', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(edit_organization) ', '1', '1536832379');
INSERT INTO `jz_admin_log` VALUES ('476', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(add_organization) ', '1', '1536832401');
INSERT INTO `jz_admin_log` VALUES ('477', '98', '1', '2130706433', 'organization/save', '0', 'Details', '1', '1536832453');
INSERT INTO `jz_admin_log` VALUES ('478', '97', '1', '2130706433', 'organization/save', '0', 'Details', '1', '1536832473');
INSERT INTO `jz_admin_log` VALUES ('479', '96', '1', '2130706433', 'organization/delete', '0', 'Details', '1', '1536832479');
INSERT INTO `jz_admin_log` VALUES ('480', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(labor_plan_add) ', '1', '1536887607');
INSERT INTO `jz_admin_log` VALUES ('481', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(labor_contract_add) ', '1', '1536887830');
INSERT INTO `jz_admin_log` VALUES ('482', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(lease_plan_add) ', '1', '1536888338');
INSERT INTO `jz_admin_log` VALUES ('483', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(lease_contract_add) ', '1', '1536888570');
INSERT INTO `jz_admin_log` VALUES ('484', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(sub_plan_add) ', '1', '1536889045');
INSERT INTO `jz_admin_log` VALUES ('485', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(sub_contract_add) ', '1', '1536889089');
INSERT INTO `jz_admin_log` VALUES ('486', '100', '1', '2130706433', 'labor_plan/contract', '0', '添加了(九月项目施工劳务合同)的项目劳务合同', '1', '1536889587');
INSERT INTO `jz_admin_log` VALUES ('487', '92', '1', '2130706433', 'purchase/index', '0', '添加了(项目物资采购)的物资招标采购计划', '1', '1536891941');
INSERT INTO `jz_admin_log` VALUES ('488', '92', '1', '2130706433', 'purchase/index', '0', '添加了(物资采购计划)的物资招标采购计划', '1', '1536911646');
INSERT INTO `jz_admin_log` VALUES ('489', '91', '1', '2130706433', 'personnel/save', '0', '添加了测试用户用户', '1', '1537168372');
INSERT INTO `jz_admin_log` VALUES ('490', '30', '1', '0', 'admin_action', '0', 'UID 添加了一条行为  节点标题(project_list) ', '1', '1537170521');
INSERT INTO `jz_admin_log` VALUES ('491', '92', '1', '2130706433', 'purchase/index', '0', '添加了(采购计划)的物资招标采购计划', '1', '1537172035');
INSERT INTO `jz_admin_log` VALUES ('492', '101', '1', '2130706433', 'lease_plan/lease_index', '0', '添加了(租赁计划)的项目租赁计划', '1', '1537233086');
INSERT INTO `jz_admin_log` VALUES ('493', '101', '1', '2130706433', 'lease_plan/lease_index', '0', '添加了(租赁计划12)的项目租赁计划', '1', '1537233335');
INSERT INTO `jz_admin_log` VALUES ('494', '93', '1', '2130706433', 'purchase/contract', '0', '添加了(金耀大厦物资采购合同)的物资采购合同', '1', '1537236373');
INSERT INTO `jz_admin_log` VALUES ('495', '99', '1', '2130706433', 'labor_plan/labor_index', '0', '添加了(金耀大厦劳务计划)的项目劳务计划', '1', '1537237045');
INSERT INTO `jz_admin_log` VALUES ('496', '99', '1', '2130706433', 'labor_plan/labor_index', '0', '添加了(劳务几乎)的项目劳务计划', '1', '1537239200');
INSERT INTO `jz_admin_log` VALUES ('497', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(house_add) ', '1', '1537258170');
INSERT INTO `jz_admin_log` VALUES ('498', '106', '1', '2130706433', 'house/add', '0', '新增二号仓库)仓库', '1', '1537258310');
INSERT INTO `jz_admin_log` VALUES ('499', '106', '1', '2130706433', 'house/add', '0', '修改二号仓库仓库', '1', '1537258381');
INSERT INTO `jz_admin_log` VALUES ('500', '106', '1', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1537258620');
INSERT INTO `jz_admin_log` VALUES ('501', '106', '1', '2130706433', 'house/add', '0', '修改一号仓库仓库', '1', '1537259473');
INSERT INTO `jz_admin_log` VALUES ('502', '106', '1', '2130706433', 'house/add', '0', '修改二号仓库仓库', '1', '1537259758');
INSERT INTO `jz_admin_log` VALUES ('503', '106', '1', '2130706433', 'house/add', '0', '修改一号仓库仓库', '1', '1537263492');
INSERT INTO `jz_admin_log` VALUES ('504', '106', '1', '2130706433', 'house/add', '0', '修改一号仓库仓库', '1', '1537263699');
INSERT INTO `jz_admin_log` VALUES ('505', '106', '1', '2130706433', 'house/add', '0', '修改二号仓库仓库', '1', '1537263825');
INSERT INTO `jz_admin_log` VALUES ('506', '106', '1', '2130706433', 'house/add', '0', '修改无敌吊炸天仓库仓库', '1', '1537263837');
INSERT INTO `jz_admin_log` VALUES ('507', '106', '1', '2130706433', 'house/add', '0', '修改垃圾的一匹的恶心仓库仓库', '1', '1537263876');
INSERT INTO `jz_admin_log` VALUES ('508', '106', '1', '2130706433', 'house/add', '0', '修改无敌吊炸天豪华金装plus仓库仓库', '1', '1537263897');
INSERT INTO `jz_admin_log` VALUES ('509', '106', '1', '2130706433', 'house/add', '0', '修改垃圾的一匹的恶心仓库仓库', '1', '1537264437');
INSERT INTO `jz_admin_log` VALUES ('510', '106', '1', '2130706433', 'house/add', '0', '修改垃圾的一匹的恶心仓库仓库', '1', '1537264836');
INSERT INTO `jz_admin_log` VALUES ('511', '106', '1', '2130706433', 'house/add', '0', '修改垃圾的一匹的恶心仓库仓库', '1', '1537319161');
INSERT INTO `jz_admin_log` VALUES ('512', '106', '1', '2130706433', 'house/add', '0', '修改垃圾的一匹的恶心仓库仓库', '1', '1537319177');
INSERT INTO `jz_admin_log` VALUES ('513', '92', '1', '2130706433', 'purchase/index', '0', '添加了(金耀大厦物资采购计划)的物资招标采购计划', '1', '1537322976');
INSERT INTO `jz_admin_log` VALUES ('514', '93', '1', '2130706433', 'purchase/contract', '0', '添加了(金耀大厦物资采购合同)的物资采购合同', '1', '1537323449');
INSERT INTO `jz_admin_log` VALUES ('515', '99', '1', '2130706433', 'labor_plan/labor_index', '0', '添加了(金耀大厦劳务计划)的项目劳务计划', '1', '1537324656');
INSERT INTO `jz_admin_log` VALUES ('516', '100', '1', '2130706433', 'labor_plan/contract', '0', '添加了(金耀大厦施工劳务合同)的项目劳务合同', '1', '1537324857');
INSERT INTO `jz_admin_log` VALUES ('517', '101', '1', '2130706433', 'lease_plan/lease_index', '0', '添加了(金耀大厦机械材料租赁计划)的项目租赁计划', '1', '1537325040');
INSERT INTO `jz_admin_log` VALUES ('518', '102', '1', '2130706433', 'lease_plan/leasecontract', '0', '添加了(金耀大厦机械租赁合同)的项目租赁合同', '1', '1537325532');
INSERT INTO `jz_admin_log` VALUES ('519', '103', '1', '2130706433', 'sub_plan/sub_index', '0', '添加了(金耀大厦工程分包计划)的项目分包计划', '1', '1537325810');
INSERT INTO `jz_admin_log` VALUES ('520', '104', '1', '2130706433', 'sub_plan/sub_contract', '0', '添加了(金耀大厦施工分包合同)的项目分包合同', '1', '1537326200');
INSERT INTO `jz_admin_log` VALUES ('521', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(material_create_add) ', '1', '1537342361');
INSERT INTO `jz_admin_log` VALUES ('522', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(material_create_edit) ', '1', '1537342575');
INSERT INTO `jz_admin_log` VALUES ('523', '108', '1', '2130706433', 'material/create', '0', '1修改了材料库中的(破坏机)材料', '1', '1537342672');
INSERT INTO `jz_admin_log` VALUES ('524', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(inandout_addin) ', '1', '1537411033');
INSERT INTO `jz_admin_log` VALUES ('525', '30', '1', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(house_delete) ', '1', '1537411494');
INSERT INTO `jz_admin_log` VALUES ('526', '106', '1', '2130706433', 'house/add', '0', '修改无敌吊炸天豪华金装plus仓库仓库', '1', '1537425063');
INSERT INTO `jz_admin_log` VALUES ('527', '94', '1', '2130706433', 'personnel/delete', '0', '删除了测试用户用户', '1', '1537492529');
INSERT INTO `jz_admin_log` VALUES ('528', '91', '1', '2130706433', 'personnel/save', '0', '添加了张三用户', '1', '1537492562');
INSERT INTO `jz_admin_log` VALUES ('529', '95', '42', '2130706433', 'personnel/save', '0', '修改了张三用户', '1', '1537492733');
INSERT INTO `jz_admin_log` VALUES ('530', '95', '42', '2130706433', 'personnel/save', '0', '修改了张三用户', '1', '1537492758');
INSERT INTO `jz_admin_log` VALUES ('531', '91', '42', '2130706433', 'personnel/save', '0', '添加了李四用户', '1', '1537494127');
INSERT INTO `jz_admin_log` VALUES ('532', '91', '42', '2130706433', 'personnel/save', '0', '添加了王五用户', '1', '1537494149');
INSERT INTO `jz_admin_log` VALUES ('533', '95', '42', '2130706433', 'personnel/save', '0', '修改了李四用户', '1', '1537494182');
INSERT INTO `jz_admin_log` VALUES ('534', '95', '42', '2130706433', 'personnel/save', '0', '修改了王五用户', '1', '1537494198');
INSERT INTO `jz_admin_log` VALUES ('535', '91', '42', '2130706433', 'personnel/save', '0', '添加了贺建平用户', '1', '1537495446');
INSERT INTO `jz_admin_log` VALUES ('536', '91', '1', '2130706433', 'personnel/save', '0', '添加了刘晨用户', '1', '1537495334');
INSERT INTO `jz_admin_log` VALUES ('537', '91', '44', '2130706433', 'personnel/save', '0', '添加了袁志凡用户', '1', '1537495570');
INSERT INTO `jz_admin_log` VALUES ('538', '91', '1', '2130706433', 'personnel/save', '0', '添加了陈笑用户', '1', '1537495375');
INSERT INTO `jz_admin_log` VALUES ('539', '109', '45', '2130706433', 'inandout/addin', '0', '新增入库', '1', '1537498505');
INSERT INTO `jz_admin_log` VALUES ('540', '109', '45', '2130706433', 'inandout/addin', '0', '修改入库', '1', '1537508333');
INSERT INTO `jz_admin_log` VALUES ('541', '108', '45', '2130706433', 'material/create', '0', '45修改了材料库中的(阿里鱼)材料', '1', '1537857870');
INSERT INTO `jz_admin_log` VALUES ('542', '108', '45', '2130706433', 'material/create', '0', '45修改了材料库中的(水泥)材料', '1', '1537858988');
INSERT INTO `jz_admin_log` VALUES ('543', '107', '45', '2130706433', 'material/create', '0', '向材料库中添加了(齿轮)材料', '1', '1537859644');
INSERT INTO `jz_admin_log` VALUES ('544', '109', '45', '2130706433', 'inandout/addin', '0', '新增入库', '1', '1537928058');
INSERT INTO `jz_admin_log` VALUES ('545', '109', '45', '2130706433', 'inandout/addin', '0', '新增入库', '1', '1537928166');
INSERT INTO `jz_admin_log` VALUES ('546', '109', '45', '2130706433', 'inandout/addin', '0', '新增入库', '1', '1537930024');
INSERT INTO `jz_admin_log` VALUES ('547', '95', '47', '2130706433', 'personnel/save', '0', '修改了袁志凡用户', '1', '1537948986');
INSERT INTO `jz_admin_log` VALUES ('548', '95', '47', '2130706433', 'personnel/save', '0', '修改了张三用户', '1', '1537950636');
INSERT INTO `jz_admin_log` VALUES ('549', '95', '47', '2130706433', 'personnel/save', '0', '修改了小王用户', '1', '1537950654');
INSERT INTO `jz_admin_log` VALUES ('550', '97', '47', '2130706433', 'organization/save', '0', 'Details', '1', '1537951682');
INSERT INTO `jz_admin_log` VALUES ('551', '94', '47', '2130706433', 'personnel/delete', '0', '删除了drgdgd用户', '1', '1537954163');
INSERT INTO `jz_admin_log` VALUES ('552', '94', '47', '2130706433', 'personnel/delete', '0', '删除了test2用户', '1', '1537954167');
INSERT INTO `jz_admin_log` VALUES ('553', '106', '45', '2130706433', 'house/add', '0', '新增千瓦时的仓库', '1', '1538105701');
INSERT INTO `jz_admin_log` VALUES ('554', '106', '45', '2130706433', 'house/add', '0', '新增SaaS仓库', '1', '1538105848');
INSERT INTO `jz_admin_log` VALUES ('555', '106', '45', '2130706433', 'house/add', '0', '新增SaaS仓库', '1', '1538106169');
INSERT INTO `jz_admin_log` VALUES ('556', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538106880');
INSERT INTO `jz_admin_log` VALUES ('557', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538106935');
INSERT INTO `jz_admin_log` VALUES ('558', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538122884');
INSERT INTO `jz_admin_log` VALUES ('559', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德2仓库', '1', '1538122953');
INSERT INTO `jz_admin_log` VALUES ('560', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德2仓库', '1', '1538122977');
INSERT INTO `jz_admin_log` VALUES ('561', '106', '45', '2130706433', 'house/add', '0', '新增啊阿萨德仓库', '1', '1538124623');
INSERT INTO `jz_admin_log` VALUES ('562', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538124928');
INSERT INTO `jz_admin_log` VALUES ('563', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538125110');
INSERT INTO `jz_admin_log` VALUES ('564', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538190028');
INSERT INTO `jz_admin_log` VALUES ('565', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538190055');
INSERT INTO `jz_admin_log` VALUES ('566', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538200839');
INSERT INTO `jz_admin_log` VALUES ('567', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538201438');
INSERT INTO `jz_admin_log` VALUES ('568', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538201500');
INSERT INTO `jz_admin_log` VALUES ('569', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538201575');
INSERT INTO `jz_admin_log` VALUES ('570', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538201659');
INSERT INTO `jz_admin_log` VALUES ('571', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538201735');
INSERT INTO `jz_admin_log` VALUES ('572', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538201778');
INSERT INTO `jz_admin_log` VALUES ('573', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538202002');
INSERT INTO `jz_admin_log` VALUES ('574', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538202017');
INSERT INTO `jz_admin_log` VALUES ('575', '106', '45', '2130706433', 'house/add', '0', '新增第一个流程仓库', '1', '1538202102');
INSERT INTO `jz_admin_log` VALUES ('576', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538202251');
INSERT INTO `jz_admin_log` VALUES ('577', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538202546');
INSERT INTO `jz_admin_log` VALUES ('578', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538202901');
INSERT INTO `jz_admin_log` VALUES ('579', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538202959');
INSERT INTO `jz_admin_log` VALUES ('580', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203034');
INSERT INTO `jz_admin_log` VALUES ('581', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203118');
INSERT INTO `jz_admin_log` VALUES ('582', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203141');
INSERT INTO `jz_admin_log` VALUES ('583', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203177');
INSERT INTO `jz_admin_log` VALUES ('584', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203267');
INSERT INTO `jz_admin_log` VALUES ('585', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203459');
INSERT INTO `jz_admin_log` VALUES ('586', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203648');
INSERT INTO `jz_admin_log` VALUES ('587', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538203686');
INSERT INTO `jz_admin_log` VALUES ('588', '106', '45', '2130706433', 'house/add', '0', '新增审批测试1仓库', '1', '1538203968');
INSERT INTO `jz_admin_log` VALUES ('589', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204178');
INSERT INTO `jz_admin_log` VALUES ('590', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204490');
INSERT INTO `jz_admin_log` VALUES ('591', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204533');
INSERT INTO `jz_admin_log` VALUES ('592', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204562');
INSERT INTO `jz_admin_log` VALUES ('593', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204660');
INSERT INTO `jz_admin_log` VALUES ('594', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204719');
INSERT INTO `jz_admin_log` VALUES ('595', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204807');
INSERT INTO `jz_admin_log` VALUES ('596', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204825');
INSERT INTO `jz_admin_log` VALUES ('597', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204835');
INSERT INTO `jz_admin_log` VALUES ('598', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204957');
INSERT INTO `jz_admin_log` VALUES ('599', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538204991');
INSERT INTO `jz_admin_log` VALUES ('600', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538205081');
INSERT INTO `jz_admin_log` VALUES ('601', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538205142');
INSERT INTO `jz_admin_log` VALUES ('602', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538205228');
INSERT INTO `jz_admin_log` VALUES ('603', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德仓库', '1', '1538205315');
INSERT INTO `jz_admin_log` VALUES ('604', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德啊啊仓库', '1', '1538205378');
INSERT INTO `jz_admin_log` VALUES ('605', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德啊啊仓库', '1', '1538205398');
INSERT INTO `jz_admin_log` VALUES ('606', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德啊啊仓库', '1', '1538205475');
INSERT INTO `jz_admin_log` VALUES ('607', '106', '45', '2130706433', 'house/add', '0', '新增阿萨德啊啊仓库', '1', '1538205534');
INSERT INTO `jz_admin_log` VALUES ('608', '106', '45', '2130706433', 'house/add', '0', '新增审批测试仓库', '1', '1538207220');
INSERT INTO `jz_admin_log` VALUES ('609', '106', '45', '2130706433', 'house/add', '0', '新增测试2仓库', '1', '1538211417');
INSERT INTO `jz_admin_log` VALUES ('610', '106', '45', '2130706433', 'house/add', '0', '新增啊实打实大仓库', '1', '1538286497');
INSERT INTO `jz_admin_log` VALUES ('611', '95', '47', '2130706433', 'personnel/save', '0', '修改了袁志凡用户', '1', '1538982739');
INSERT INTO `jz_admin_log` VALUES ('612', '95', '47', '2130706433', 'personnel/save', '0', '修改了小王用户', '1', '1538982771');
INSERT INTO `jz_admin_log` VALUES ('613', '95', '47', '2130706433', 'personnel/save', '0', '修改了陈笑用户', '1', '1538982789');
INSERT INTO `jz_admin_log` VALUES ('614', '95', '47', '2130706433', 'personnel/save', '0', '修改了袁志凡用户', '1', '1538982852');
INSERT INTO `jz_admin_log` VALUES ('615', '106', '45', '2130706433', 'house/add', '0', '新增审批测试仓库', '1', '1539050010');
INSERT INTO `jz_admin_log` VALUES ('616', '95', '47', '2130706433', 'personnel/save', '0', '修改了张三用户', '1', '1539142789');
INSERT INTO `jz_admin_log` VALUES ('617', '95', '47', '2130706433', 'personnel/save', '0', '修改了袁志凡用户', '1', '1539142802');
INSERT INTO `jz_admin_log` VALUES ('618', '97', '47', '2130706433', 'organization/save', '0', 'Details', '1', '1539162542');
INSERT INTO `jz_admin_log` VALUES ('619', '95', '47', '2130706433', 'personnel/save', '0', '修改了张三用户', '1', '1539308153');
INSERT INTO `jz_admin_log` VALUES ('620', '95', '47', '2130706433', 'personnel/save', '0', '修改了张三用户', '1', '1539308511');
INSERT INTO `jz_admin_log` VALUES ('621', '91', '47', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539309220');
INSERT INTO `jz_admin_log` VALUES ('622', '91', '47', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539309836');
INSERT INTO `jz_admin_log` VALUES ('623', '94', '47', '2130706433', 'personnel/delete', '0', '删除了test用户', '1', '1539309862');
INSERT INTO `jz_admin_log` VALUES ('624', '94', '47', '2130706433', 'personnel/delete', '0', '删除了test用户', '1', '1539309866');
INSERT INTO `jz_admin_log` VALUES ('625', '91', '47', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539312836');
INSERT INTO `jz_admin_log` VALUES ('626', '91', '47', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539312863');
INSERT INTO `jz_admin_log` VALUES ('627', '95', '47', '2130706433', 'personnel/save', '0', '修改了tset用户', '1', '1539312897');
INSERT INTO `jz_admin_log` VALUES ('628', '94', '47', '2130706433', 'personnel/delete', '0', '删除了袁志凡用户', '1', '1539313236');
INSERT INTO `jz_admin_log` VALUES ('629', '94', '1', '2130706433', 'personnel/delete', '0', '删除了tset用户', '1', '1539313353');
INSERT INTO `jz_admin_log` VALUES ('630', '94', '1', '2130706433', 'personnel/delete', '0', '删除了tset用户', '1', '1539313357');
INSERT INTO `jz_admin_log` VALUES ('631', '94', '1', '2130706433', 'personnel/delete', '0', '删除了test用户', '1', '1539313362');
INSERT INTO `jz_admin_log` VALUES ('632', '91', '1', '2130706433', 'personnel/save', '0', '添加了yzf用户', '1', '1539313416');
INSERT INTO `jz_admin_log` VALUES ('633', '91', '60', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539313452');
INSERT INTO `jz_admin_log` VALUES ('634', '91', '60', '2130706433', 'personnel/save', '0', '添加了tset用户', '1', '1539313567');
INSERT INTO `jz_admin_log` VALUES ('635', '91', '60', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539313618');
INSERT INTO `jz_admin_log` VALUES ('636', '91', '60', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539313665');
INSERT INTO `jz_admin_log` VALUES ('637', '91', '60', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539313692');
INSERT INTO `jz_admin_log` VALUES ('638', '91', '60', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539313898');
INSERT INTO `jz_admin_log` VALUES ('639', '91', '60', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539314110');
INSERT INTO `jz_admin_log` VALUES ('640', '91', '60', '2130706433', 'personnel/save', '0', '添加了tests用户', '1', '1539314196');
INSERT INTO `jz_admin_log` VALUES ('641', '91', '60', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539314241');
INSERT INTO `jz_admin_log` VALUES ('642', '94', '60', '2130706433', 'personnel/delete', '0', '删除了test用户', '1', '1539314258');
INSERT INTO `jz_admin_log` VALUES ('643', '95', '60', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539314333');
INSERT INTO `jz_admin_log` VALUES ('644', '91', '60', '2130706433', 'personnel/save', '0', '添加了tset用户', '1', '1539314354');
INSERT INTO `jz_admin_log` VALUES ('645', '94', '60', '2130706433', 'personnel/delete', '0', '删除了tset用户', '1', '1539314361');
INSERT INTO `jz_admin_log` VALUES ('646', '95', '60', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539315360');
INSERT INTO `jz_admin_log` VALUES ('647', '95', '60', '2130706433', 'personnel/save', '0', '修改了小王用户', '1', '1539315373');
INSERT INTO `jz_admin_log` VALUES ('648', '91', '60', '2130706433', 'personnel/save', '0', '添加了tset用户', '1', '1539315395');
INSERT INTO `jz_admin_log` VALUES ('649', '95', '60', '2130706433', 'personnel/save', '0', '修改了tset用户', '1', '1539315406');
INSERT INTO `jz_admin_log` VALUES ('650', '95', '60', '2130706433', 'personnel/save', '0', '修改了tset用户', '1', '1539315422');
INSERT INTO `jz_admin_log` VALUES ('651', '94', '60', '2130706433', 'personnel/delete', '0', '删除了tset用户', '1', '1539315431');
INSERT INTO `jz_admin_log` VALUES ('652', '95', '60', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539323359');
INSERT INTO `jz_admin_log` VALUES ('653', '94', '60', '2130706433', 'personnel/delete', '0', '删除了yzf用户', '1', '1539323469');
INSERT INTO `jz_admin_log` VALUES ('654', '91', '1', '2130706433', 'personnel/save', '0', '添加了yzf用户', '1', '1539323525');
INSERT INTO `jz_admin_log` VALUES ('655', '95', '72', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539323798');
INSERT INTO `jz_admin_log` VALUES ('656', '95', '72', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539323813');
INSERT INTO `jz_admin_log` VALUES ('657', '30', '48', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(training_plan) ', '1', '1539326991');
INSERT INTO `jz_admin_log` VALUES ('658', '111', '48', '2130706433', 'training/training_plan', '0', '新增了(财务转型与管理会计)的培训计划', '1', '1539327562');
INSERT INTO `jz_admin_log` VALUES ('659', '95', '72', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539329519');
INSERT INTO `jz_admin_log` VALUES ('660', '95', '72', '2130706433', 'personnel/save', '0', '修改了超级管理员用户', '1', '1539333445');
INSERT INTO `jz_admin_log` VALUES ('661', '95', '1', '2130706433', 'personnel/save', '0', '修改了贺建平用户', '1', '1539567283');
INSERT INTO `jz_admin_log` VALUES ('662', '95', '45', '2130706433', 'personnel/save', '0', '修改了刘晨用户', '1', '1539570016');
INSERT INTO `jz_admin_log` VALUES ('663', '95', '45', '2130706433', 'personnel/save', '0', '修改了贺建平2用户', '1', '1539575050');
INSERT INTO `jz_admin_log` VALUES ('664', '95', '45', '2130706433', 'personnel/save', '0', '修改了贺建平2用户', '1', '1539575064');
INSERT INTO `jz_admin_log` VALUES ('665', '95', '72', '2130706433', 'personnel/save', '0', '修改了王五用户', '1', '1539575652');
INSERT INTO `jz_admin_log` VALUES ('666', '95', '72', '2130706433', 'personnel/save', '0', '修改了陈笑用户', '1', '1539575883');
INSERT INTO `jz_admin_log` VALUES ('667', '95', '72', '2130706433', 'personnel/save', '0', '修改了小小王用户', '1', '1539576906');
INSERT INTO `jz_admin_log` VALUES ('668', '30', '48', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(contractlabor) ', '1', '1539582265');
INSERT INTO `jz_admin_log` VALUES ('669', '91', '72', '2130706433', 'personnel/save', '0', '添加了testse用户', '1', '1539582614');
INSERT INTO `jz_admin_log` VALUES ('670', '91', '72', '2130706433', 'personnel/save', '0', '添加了问题是提升用户', '1', '1539582622');
INSERT INTO `jz_admin_log` VALUES ('671', '94', '72', '2130706433', 'personnel/delete', '0', '删除了问题是提升用户', '1', '1539582630');
INSERT INTO `jz_admin_log` VALUES ('672', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(刘晨)的劳动合同', '1', '1539582890');
INSERT INTO `jz_admin_log` VALUES ('673', '91', '72', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539583143');
INSERT INTO `jz_admin_log` VALUES ('674', '112', '48', '2130706433', 'contractlabor/labor_delete', '0', '删除了(刘晨)的劳动合同', '1', '1539582921');
INSERT INTO `jz_admin_log` VALUES ('675', '91', '72', '2130706433', 'personnel/save', '0', '添加了同色同石头色他用户', '1', '1539583151');
INSERT INTO `jz_admin_log` VALUES ('676', '94', '72', '2130706433', 'personnel/delete', '0', '删除了test用户', '1', '1539583159');
INSERT INTO `jz_admin_log` VALUES ('677', '94', '72', '2130706433', 'personnel/delete', '0', '删除了同色同石头色他用户', '1', '1539583224');
INSERT INTO `jz_admin_log` VALUES ('678', '91', '72', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539583273');
INSERT INTO `jz_admin_log` VALUES ('679', '91', '72', '2130706433', 'personnel/save', '0', '添加了stsetset用户', '1', '1539583283');
INSERT INTO `jz_admin_log` VALUES ('680', '91', '72', '2130706433', 'personnel/save', '0', '添加了tests用户', '1', '1539583298');
INSERT INTO `jz_admin_log` VALUES ('681', '94', '72', '2130706433', 'personnel/delete', '0', '删除了stsetset用户', '1', '1539583306');
INSERT INTO `jz_admin_log` VALUES ('682', '94', '72', '2130706433', 'personnel/delete', '0', '删除了test用户', '1', '1539583312');
INSERT INTO `jz_admin_log` VALUES ('683', '91', '72', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539583640');
INSERT INTO `jz_admin_log` VALUES ('684', '94', '72', '2130706433', 'personnel/delete', '0', '删除了tests用户', '1', '1539583660');
INSERT INTO `jz_admin_log` VALUES ('685', '94', '72', '2130706433', 'personnel/delete', '0', '删除了test用户', '1', '1539583660');
INSERT INTO `jz_admin_log` VALUES ('686', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(小王)的劳动合同', '1', '1539584034');
INSERT INTO `jz_admin_log` VALUES ('687', '91', '72', '2130706433', 'personnel/save', '0', '添加了test用户', '1', '1539586088');
INSERT INTO `jz_admin_log` VALUES ('688', '95', '72', '2130706433', 'personnel/save', '0', '修改了test用户', '1', '1539586214');
INSERT INTO `jz_admin_log` VALUES ('689', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(张三)的劳动合同', '1', '1539588845');
INSERT INTO `jz_admin_log` VALUES ('690', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(小王)的劳动合同', '1', '1539589098');
INSERT INTO `jz_admin_log` VALUES ('691', '95', '45', '2130706433', 'personnel/save', '0', '修改了小小王用户', '1', '1539593945');
INSERT INTO `jz_admin_log` VALUES ('692', '95', '51', '2130706433', 'personnel/save', '0', '修改了test用户', '1', '1539594474');
INSERT INTO `jz_admin_log` VALUES ('693', '95', '72', '2130706433', 'personnel/save', '0', '修改了test用户', '1', '1539594764');
INSERT INTO `jz_admin_log` VALUES ('694', '95', '51', '2130706433', 'personnel/save', '0', '修改了test用户', '1', '1539594833');
INSERT INTO `jz_admin_log` VALUES ('695', '95', '72', '2130706433', 'personnel/save', '0', '修改了test用户', '1', '1539661883');
INSERT INTO `jz_admin_log` VALUES ('696', '91', '72', '2130706433', 'personnel/save', '0', '添加了test2用户', '1', '1539662346');
INSERT INTO `jz_admin_log` VALUES ('697', '95', '1', '2130706433', 'personnel/save', '0', '修改了陈笑用户', '1', '1539663137');
INSERT INTO `jz_admin_log` VALUES ('698', '30', '48', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(leave_list) ', '1', '1539672727');
INSERT INTO `jz_admin_log` VALUES ('699', '113', '48', '2130706433', 'leave/leave_create', '0', '更新了(小小王)的请假', '1', '1539673363');
INSERT INTO `jz_admin_log` VALUES ('700', '95', '72', '2130706433', 'personnel/save', '0', '修改了test用户', '1', '1539676606');
INSERT INTO `jz_admin_log` VALUES ('701', '94', '72', '2130706433', 'personnel/delete', '0', '删除了test2用户', '1', '1539738435');
INSERT INTO `jz_admin_log` VALUES ('702', '91', '72', '2130706433', 'personnel/save', '0', '添加了testsetse用户', '1', '1539743279');
INSERT INTO `jz_admin_log` VALUES ('703', '94', '72', '2130706433', 'personnel/delete', '0', '删除了testsetse用户', '1', '1539743302');
INSERT INTO `jz_admin_log` VALUES ('704', '95', '72', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539758725');
INSERT INTO `jz_admin_log` VALUES ('705', '95', '72', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539758959');
INSERT INTO `jz_admin_log` VALUES ('706', '95', '72', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539759115');
INSERT INTO `jz_admin_log` VALUES ('707', '95', '72', '2130706433', 'personnel/save', '0', '修改了超级管理员用户', '1', '1539759149');
INSERT INTO `jz_admin_log` VALUES ('708', '91', '72', '2130706433', 'personnel/save', '0', '添加了testst用户', '1', '1539759192');
INSERT INTO `jz_admin_log` VALUES ('709', '94', '72', '2130706433', 'personnel/delete', '0', '删除了testst用户', '1', '1539759204');
INSERT INTO `jz_admin_log` VALUES ('710', '95', '72', '2130706433', 'personnel/save', '0', '修改了张三用户', '1', '1539759218');
INSERT INTO `jz_admin_log` VALUES ('711', '95', '72', '2130706433', 'personnel/save', '0', '修改了小王用户', '1', '1539759224');
INSERT INTO `jz_admin_log` VALUES ('712', '95', '72', '2130706433', 'personnel/save', '0', '修改了王五用户', '1', '1539759233');
INSERT INTO `jz_admin_log` VALUES ('713', '95', '72', '2130706433', 'personnel/save', '0', '修改了贺建平用户', '1', '1539759239');
INSERT INTO `jz_admin_log` VALUES ('714', '95', '72', '2130706433', 'personnel/save', '0', '修改了刘晨用户', '1', '1539759248');
INSERT INTO `jz_admin_log` VALUES ('715', '95', '72', '2130706433', 'personnel/save', '0', '修改了陈笑用户', '1', '1539759255');
INSERT INTO `jz_admin_log` VALUES ('716', '95', '72', '2130706433', 'personnel/save', '0', '修改了贺建平2用户', '1', '1539759262');
INSERT INTO `jz_admin_log` VALUES ('717', '95', '72', '2130706433', 'personnel/save', '0', '修改了贺建平2用户', '1', '1539759273');
INSERT INTO `jz_admin_log` VALUES ('718', '95', '72', '2130706433', 'personnel/save', '0', '修改了小小王用户', '1', '1539759280');
INSERT INTO `jz_admin_log` VALUES ('719', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539762156');
INSERT INTO `jz_admin_log` VALUES ('720', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539762276');
INSERT INTO `jz_admin_log` VALUES ('721', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539762860');
INSERT INTO `jz_admin_log` VALUES ('722', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539762921');
INSERT INTO `jz_admin_log` VALUES ('723', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539763067');
INSERT INTO `jz_admin_log` VALUES ('724', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539763167');
INSERT INTO `jz_admin_log` VALUES ('725', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539763182');
INSERT INTO `jz_admin_log` VALUES ('726', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539763293');
INSERT INTO `jz_admin_log` VALUES ('727', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539765536');
INSERT INTO `jz_admin_log` VALUES ('728', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶物资采购)的物资招标采购计划', '1', '1539765542');
INSERT INTO `jz_admin_log` VALUES ('729', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶)的物资招标采购计划', '1', '1539765613');
INSERT INTO `jz_admin_log` VALUES ('730', '92', '48', '2130706433', 'purchase/index', '0', '添加了(九州茗茶)的物资招标采购计划', '1', '1539765616');
INSERT INTO `jz_admin_log` VALUES ('731', '92', '48', '2130706433', 'purchase/index', '0', '添加了(采购计划)的物资招标采购计划', '1', '1539824680');
INSERT INTO `jz_admin_log` VALUES ('732', '92', '48', '2130706433', 'purchase/index', '0', '添加了(采购计划)的物资招标采购计划', '1', '1539824892');
INSERT INTO `jz_admin_log` VALUES ('733', '95', '72', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539830064');
INSERT INTO `jz_admin_log` VALUES ('734', '95', '1', '2130706433', 'personnel/save', '0', '修改了yzf用户', '1', '1539830198');
INSERT INTO `jz_admin_log` VALUES ('735', '30', '48', '2130706433', 'admin_action', '0', 'UID 添加了一条行为  节点标题(notice_add) ', '1', '1539831425');
INSERT INTO `jz_admin_log` VALUES ('736', '114', '48', '2130706433', 'notice/notice_add', '0', '更新了(测试公告)通知公告', '1', '1539832649');
INSERT INTO `jz_admin_log` VALUES ('737', '114', '48', '2130706433', 'notice/notice_delete', '0', '删除了(测试公告)通知公告', '1', '1539835261');
INSERT INTO `jz_admin_log` VALUES ('738', '114', '48', '2130706433', 'notice/notice_add', '0', '更新了(公告)通知公告', '1', '1539836064');
INSERT INTO `jz_admin_log` VALUES ('739', '114', '48', '2130706433', 'notice/notice_add', '0', '更新了(通知公告)通知公告', '1', '1539836266');
INSERT INTO `jz_admin_log` VALUES ('740', '95', '51', '2130706433', 'personnel/save', '0', '修改了小小王用户', '1', '1539842865');
INSERT INTO `jz_admin_log` VALUES ('741', '99', '48', '2130706433', 'labor_plan/labor_index', '0', '添加了(劳务计划)的项目劳务计划', '1', '1539855933');
INSERT INTO `jz_admin_log` VALUES ('742', '102', '72', '2130706433', 'lease_plan/leasecontract', '0', '添加了(test)的项目租赁合同', '1', '1539857652');
INSERT INTO `jz_admin_log` VALUES ('743', '104', '72', '2130706433', 'sub_plan/sub_contract', '0', '添加了(test)的项目分包合同', '1', '1539914686');
INSERT INTO `jz_admin_log` VALUES ('744', '104', '72', '2130706433', 'sub_plan/sub_contract', '0', '添加了(test123)的项目分包合同', '1', '1539914743');
INSERT INTO `jz_admin_log` VALUES ('745', '111', '48', '2130706433', 'trainingcourse/project_delete', '0', '删除了(领导力)的培训项目', '1', '1539914580');
INSERT INTO `jz_admin_log` VALUES ('746', '111', '48', '2130706433', 'trainingcourse/training_delete', '0', '删除了(财务转型与管理会计)的培训计划', '1', '1539914593');
INSERT INTO `jz_admin_log` VALUES ('747', '111', '48', '2130706433', 'training/training_plan', '0', '新增了(创新与变革)的培训计划', '1', '1539914681');
INSERT INTO `jz_admin_log` VALUES ('748', '100', '72', '2130706433', 'labor_plan/contract', '0', '添加了(yzftest)的项目劳务合同', '1', '1539916422');
INSERT INTO `jz_admin_log` VALUES ('749', '100', '48', '2130706433', 'labor_plan/contract', '0', '添加了(刘晨的大项目劳务合同)的项目劳务合同', '1', '1539916262');
INSERT INTO `jz_admin_log` VALUES ('750', '95', '48', '2130706433', 'personnel/save', '0', '修改了陈笑用户', '1', '1539917337');
INSERT INTO `jz_admin_log` VALUES ('751', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(小王)的劳动合同', '1', '1539919237');
INSERT INTO `jz_admin_log` VALUES ('752', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(陈笑)的劳动合同', '1', '1539921091');
INSERT INTO `jz_admin_log` VALUES ('753', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(陈笑)的劳动合同', '1', '1539921358');
INSERT INTO `jz_admin_log` VALUES ('754', '112', '48', '2130706433', 'contractlabor/labor_create', '0', '更新了(张三)的劳动合同', '1', '1539928194');
INSERT INTO `jz_admin_log` VALUES ('755', '85', '45', '2130706433', 'supplier_add', '0', '用户添加了一条供应商档案 节点标题(江西钢材123)', '1', '1539934236');
INSERT INTO `jz_admin_log` VALUES ('756', '92', '48', '2130706433', 'purchase/index', '0', '添加了(小项目采购)的物资招标采购计划', '1', '1539938529');
INSERT INTO `jz_admin_log` VALUES ('757', '92', '48', '2130706433', 'purchase/index', '0', '添加了(采购)的物资招标采购计划', '1', '1539938885');
INSERT INTO `jz_admin_log` VALUES ('758', '92', '48', '2130706433', 'purchase/index', '0', '添加了(萨达)的物资招标采购计划', '1', '1539939038');

-- ----------------------------
-- Table structure for jz_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `jz_admin_menu`;
CREATE TABLE `jz_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `condition` varchar(255) DEFAULT NULL COMMENT '条件， {age}>20 and {age}<25',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2819 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of jz_admin_menu
-- ----------------------------
INSERT INTO `jz_admin_menu` VALUES ('2673', '2663', 'admin', '供应商管理', 'iconfont icon-iconfuzhi', '', 'admin/supplier/index', '_self', '0', '1535521734', '1539849667', '6', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2672', '2669', 'admin', '自定义表单', 'iconfont icon-cangkucangchu', '', 'admin/formtable/index', '_self', '0', '1535521072', '1539849667', '3', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2671', '2669', 'admin', '流程类型', 'iconfont icon-caiwu', '', 'admin/flowtype/index', '_self', '0', '1535521050', '1539849667', '2', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2670', '2669', 'admin', '流程设置', 'iconfont icon-arrow', '', 'admin/flow/index', '_self', '0', '1535521025', '1539849667', '1', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2669', '2662', 'admin', '流程设置', 'iconfont icon-drxx23', '', '', '_self', '0', '1535520994', '1539849667', '1', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2668', '2663', 'admin', '配置管理', 'iconfont icon-wanglaidanwei', '', 'admin/config/index', '_self', '0', '1535520977', '1539849667', '5', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2667', '2663', 'admin', '系统配置', 'iconfont icon-wanglaidanwei', '', 'admin/system/index', '_self', '0', '1535520951', '1539849667', '4', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2666', '2663', 'admin', '节点管理', 'iconfont icon-liucheng', '', 'admin/menu/index', '_self', '0', '1535520900', '1539849667', '3', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2665', '2663', 'admin', '日志管理', 'iconfont icon-17', '', 'admin/systerm_log/index', '_self', '0', '1535520864', '1539849667', '2', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2649', '2736', 'admin', '首页', 'iconfont icon-cangkucangchu', '', 'admin/index/home', '_self', '0', '1535438197', '1539849667', '1', '1', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2664', '2663', 'admin', '行为设置', 'iconfont icon-huiyi', '', 'admin/action/index_action', '_self', '0', '1535520827', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2663', '2662', 'admin', '系统功能', 'iconfont icon-aiqingmiao', '', '', '_self', '0', '1535520778', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2653', '0', 'admin', '人事', 'iconfont icon-iconfuzhi', '', '', '_self', '0', '1535445760', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2655', '2653', 'admin', '人事档案', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/personnel/index', '_self', '0', '1535445856', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2662', '0', 'admin', '系统设置', 'iconfont icon-change', '', '', '_self', '0', '1535520743', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2659', '0', 'admin', '流程审批', 'iconfont icon-aiqingmiao', '', '', '_self', '0', '1535513827', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2660', '2659', 'admin', '流程发起', 'iconfont icon-aiqingmiao', '', 'admin/sponsor/index', '_self', '0', '1535513863', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2674', '2663', 'admin', '类型设置', 'iconfont icon-hetongguanli', '', 'admin/type/index', '_self', '0', '1535522609', '1539849667', '7', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2686', '2662', 'admin', '材料设置', 'iconfont icon-wanglaidanwei', '', '', '_self', '0', '1535532840', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2687', '2686', 'admin', '材料基础库', 'iconfont icon-leicailiaojiagongx', '', 'admin/material/index', '_self', '0', '1535532918', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2688', '2686', 'admin', '资产类别', 'iconfont icon-leicailiaojiagongx', '', 'admin/material_type/index', '_self', '0', '1535532943', '1539913258', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2689', '0', 'admin', '资产管理', 'iconfont icon-leicailiaojiagongx', '', '', '_self', '0', '1535534448', '1539849667', '6', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2690', '2689', 'admin', '资产列表', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/balance/index', '_self', '0', '1535534487', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2691', '2689', 'admin', '资产类别', 'iconfont icon-hetongguanli', '', 'admin/balance/cate', '_self', '0', '1535535124', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2692', '2662', 'admin', '组织架构', 'iconfont icon-hangzheng', '', '', '_self', '0', '1535590439', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2693', '2692', 'admin', '职位管理', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/position/index', '_self', '0', '1535590485', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2694', '2653', 'admin', '基础信息', 'iconfont icon-wanglaidanwei', '', 'admin/personnel/base', '_self', '0', '1535593875', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2695', '2662', 'admin', '数据备份', 'iconfont icon-yuancailiaoshujuku', '', '', '_self', '0', '1535698555', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2696', '2695', 'admin', '备份数据库', 'iconfont icon-xiangmu', '', 'admin/database/index', '_self', '0', '1535698866', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2697', '2695', 'admin', '还原数据库', 'iconfont icon-drxx17', '', 'admin/database/restore', '_self', '0', '1535698980', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2698', '2692', 'admin', '组织管理', 'iconfont icon-shengchanbeiliaoyufaliao', '', 'admin/organization/index', '_self', '0', '1535700062', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2699', '0', 'admin', '证照管理', 'iconfont icon-hetong', '', '', '_self', '0', '1535954243', '1539849667', '7', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2700', '0', 'admin', '施工', 'iconfont icon-shengchan', '', '', '_self', '0', '1535954700', '1539849667', '8', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2701', '2750', 'admin', '采购管理', 'iconfont icon-caidanliebiaozhankai', '', '', '_self', '0', '1535963384', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2702', '2701', 'admin', '采购计划', 'iconfont icon-yuanxingxuanzhong', '', 'admin/purchase_plan/add', '_self', '0', '1535963442', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2703', '2700', 'admin', '质量检查', 'iconfont icon-sousuo', '', 'admin/construction/quality_index', '_self', '0', '1536024026', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2706', '2701', 'admin', '采购计划查询', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/purchase/search', '_self', '0', '1536047942', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2704', '2700', 'admin', '安全日志', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/construction/safe_index', '_self', '0', '1536024620', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2705', '2701', 'admin', '物资采购计划', 'iconfont icon-yuanxingxuanzhong', '', 'admin/purchase/index', '_self', '0', '1536025230', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2707', '2701', 'admin', '物资采购合同', 'iconfont icon-hetong', '', 'admin/purchase/contract', '_self', '0', '1536114724', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2708', '0', 'admin', '项目管理', 'iconfont icon-EPCzuodaohangtubiao', '', '', '_self', '0', '1536116776', '1539849667', '9', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2709', '2708', 'admin', '项目立项', 'iconfont icon-hangzheng', '', 'admin/project_list/index', '_self', '0', '1536117135', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2710', '2701', 'admin', '采购合同查询', 'iconfont icon-xinziguanli', '', 'admin/purchase/contract_all', '_self', '0', '1536130803', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2711', '2700', 'admin', '施工阶段劳务管理', 'iconfont icon-aiqingmiao', '', '', '_self', '0', '1536132496', '1539849667', '7', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2712', '2700', 'admin', '设计变更', 'iconfont icon-drxx17', '', 'admin/construction/change_index', '_self', '0', '1536133099', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2713', '2700', 'admin', '技术交底', 'iconfont icon-gongzuorizhi', '', 'admin/construction/makeplan_index', '_self', '0', '1536137210', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2714', '2700', 'admin', '施工阶段材料管理', 'iconfont icon-leicailiaojiagongx', '', '', '_self', '0', '1536197361', '1539849667', '9', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2715', '2714', 'admin', '材料申领计划', 'iconfont icon-gongzuorizhi', '', 'admin/construction/materialplan_index', '_self', '0', '1536197412', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2716', '2714', 'admin', '材料入场', 'iconfont icon-ruku', '', 'admin/construction/materialin_index', '_self', '0', '1536197560', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2717', '2708', 'admin', '物料需用计划', 'iconfont icon-change', '', 'admin/project_based_cost/index', '_self', '0', '1536199590', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2718', '2708', 'admin', '进度计划', 'iconfont icon-hetongguanli', '', 'admin/project_progress_plan/index', '_self', '0', '1536202587', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2719', '2750', 'admin', '劳务管理', 'iconfont icon-shigong', '', '', '_self', '0', '1536204051', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2720', '2719', 'admin', '劳务计划', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/labor_plan/labor_index', '_self', '0', '1536204167', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2721', '2700', 'admin', '施工日志', 'iconfont icon-gongzuorizhi', '', 'admin/construction/buildlog_index', '_self', '0', '1536214257', '1539849667', '6', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2722', '2699', 'admin', '证照管理', 'iconfont icon-EPCzuodaohangtubiao', '', '', '_self', '0', '1536283350', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2723', '2722', 'admin', '证照录入', '', '', 'admin/certificates/add', '_self', '0', '1536283370', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2724', '2719', 'admin', '劳务计划查询', 'iconfont icon-xinziguanli', '', 'admin/labor_plan/search', '_self', '0', '1536304787', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2725', '2692', 'admin', '部门职位', 'iconfont icon-huiyikaihuitaolun', '', 'admin/department_position/index', '_self', '0', '1536498449', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2774', '2775', 'admin', '投标信息查询', 'iconfont icon-gongzuorizhi', '', 'admin/bidding/bidding_view', '_self', '0', '1537431320', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2727', '2719', 'admin', '劳务合同', 'iconfont icon-hetong', '', 'admin/labor_plan/contract', '_self', '0', '1536548889', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2728', '2719', 'admin', '劳务合同列表', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/labor_plan/contract_list', '_self', '0', '1536548989', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2775', '2771', 'admin', '投标管理报表', 'iconfont icon-gongzuorizhi', '', '', '_self', '0', '1537492564', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2730', '2750', 'admin', '租赁管理', 'iconfont icon-shengchan', '', '', '_self', '0', '1536566289', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2731', '2730', 'admin', '租赁计划', 'iconfont icon-hetong', '', 'admin/lease_plan/lease_index', '_self', '0', '1536566312', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2732', '2730', 'admin', '租赁计划查询', 'iconfont icon-gongzuorizhi', '', 'admin/lease_plan/lease_list', '_self', '0', '1536568650', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2733', '2730', 'admin', '租赁合同', 'iconfont icon-hetong', '', 'admin/lease_plan/leasecontract', '_self', '0', '1536638356', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2734', '2730', 'admin', '租赁合同查询', 'iconfont icon-gongzuorizhi', '', 'admin/lease_plan/leaseconlist', '_self', '0', '1536652886', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2735', '2711', 'admin', '完工结算', 'iconfont icon-icon', '', 'admin/construction/serviceclearindex', '_self', '0', '1536732468', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2736', '2662', 'admin', '首页配置', 'iconfont icon-hangzheng', '', 'admin/index/allocation', '_self', '0', '1536736750', '1539849667', '6', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2737', '2711', 'admin', '付款申报', 'iconfont icon-daoru', '', 'admin/construction/servicerateindex', '_self', '0', '1536744009', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2738', '2700', 'admin', '导航', 'iconfont icon-bumen2', '', 'admin/construction/nav', '_self', '0', '1536803235', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2739', '2750', 'admin', '分包管理', 'iconfont icon-shigong', '', '', '_self', '0', '1536809604', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2740', '2739', 'admin', '分包计划', 'iconfont icon-hetong', '', 'admin/sub_plan/sub_index', '_self', '0', '1536809684', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2741', '2739', 'admin', '分包查询', 'iconfont icon-sousuo', '', 'admin/sub_plan/sub_search', '_self', '0', '1536817167', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2742', '2739', 'admin', '分包合同', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/sub_plan/sub_contract', '_self', '0', '1536818023', '1539934817', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2743', '2739', 'admin', '分包合同查询', 'iconfont icon-gongzuorizhi', '', 'admin/sub_plan/sub_conlist', '_self', '0', '1536821603', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2744', '0', 'admin', '竣工管理', 'iconfont icon-hetong', '', '', '_self', '0', '1536889036', '1539849667', '10', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2745', '2751', 'admin', '收款单', 'iconfont icon-huiyi', '', 'admin/complete_invoice_open/index', '_self', '0', '1536889897', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2746', '2700', 'admin', '施工阶段分包管理', 'iconfont icon-iconfuzhi', '', '', '_self', '0', '1536892091', '1539849667', '8', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2747', '2746', 'admin', '完工结算', 'iconfont icon-zichan', '', 'admin/construction/subpickclearindex', '_self', '0', '1536892824', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2748', '2751', 'admin', '收款单登记', 'iconfont icon-webicon308', '', 'admin/complete_invoice_open/add', '_self', '0', '1536893933', '1539849667', '2', '0', '0', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2749', '2722', 'admin', '证照费用', '', '', 'admin/certificates/moneyadd', '_self', '0', '1536897080', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2750', '0', 'admin', '招标管理', 'iconfont icon-renshi', '', '', '_self', '0', '1536904257', '1539849667', '11', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2751', '2744', 'admin', '发票管理', 'iconfont icon-drxx17', '', '', '_self', '0', '1536905914', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2752', '2746', 'admin', '付款申请', 'iconfont icon-icon', '', 'admin/construction/subpickrateindex', '_self', '0', '1536906695', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2753', '2751', 'admin', '付款单', 'iconfont icon-wanglaidanwei', '', 'admin/complete_invoice_put/index', '_self', '0', '1536906956', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2754', '2751', 'admin', '付款单登记', 'iconfont icon-shengchanbeiliaoyufaliao', '', 'admin/complete_invoice_put/add', '_self', '0', '1536907026', '1539849667', '4', '0', '0', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2755', '2722', 'admin', '证照借出', '', '', 'admin/certificates/outadd', '_self', '0', '1537151578', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2756', '2744', 'admin', '竣工报告', 'iconfont icon-liucheng', '', '', '_self', '0', '1537152409', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2757', '2744', 'admin', '尾款结算', 'iconfont icon-hetong', '', 'admin/complete_final_settlement/index', '_self', '0', '1537152432', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2758', '2756', 'admin', '竣工申请', 'iconfont icon-aiqingmiao', '', 'admin/complete_apply_for_completion/index', '_self', '0', '1537153600', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2759', '2756', 'admin', '添加竣工申请', 'iconfont icon-yuanxingxuanzhong', '', 'admin/complete_apply_for_completion/add', '_self', '0', '1537153639', '1539849667', '2', '0', '0', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2760', '2756', 'admin', '竣工报告', 'iconfont icon-xinzengshengchanjihua', '', 'admin/complete_report/index', '_self', '0', '1537153711', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2761', '2756', 'admin', '添加竣工报告', 'iconfont icon-huiyi', '', 'admin/complete_report/add', '_self', '0', '1537153767', '1539849667', '4', '0', '0', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2762', '2722', 'admin', '证照归还', '', '', 'admin/certificates/inadd', '_self', '0', '1537157045', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2763', '2751', 'admin', '报销登记', 'iconfont icon-wanglaidanwei', '', 'admin/complete_expense_reimbursement/add', '_self', '0', '1537169075', '1539849667', '5', '0', '0', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2764', '2751', 'admin', '报销', 'iconfont icon-shengchan', '', 'admin/complete_expense_reimbursement/index', '_self', '0', '1537169102', '1539849667', '6', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2765', '0', 'admin', '库存管理', 'iconfont icon-shigong', '', '', '_self', '0', '1537234116', '1539849667', '12', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2766', '2708', 'admin', '成本编制', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/project_cost_compile/index', '_self', '0', '1537234717', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2767', '2765', 'admin', '仓库管理', 'iconfont icon-cangkucangchu', '', 'admin/house/index', '_self', '0', '1537235642', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2768', '2765', 'admin', '入库管理', 'iconfont icon-daochu', '', 'admin/inandout/index/state/1', '_self', '0', '1537236172', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2769', '2765', 'admin', '出库管理', 'iconfont icon-kucun', '', 'admin/inandout/index/state/2', '_self', '0', '1537236250', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2770', '2765', 'admin', '查询管理', 'iconfont icon-sousuo', '', 'admin/inandout/search', '_self', '0', '1537236406', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2776', '2772', 'admin', '招标文件购买申请', 'iconfont icon-hetong', '', 'admin/biddingfile/biddingdile_add', '_self', '0', '1537492634', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2771', '0', 'admin', '投标管理', 'iconfont icon-drxx23', '', '', '_self', '0', '1537238193', '1539849667', '13', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2772', '2771', 'admin', '投标管理', 'iconfont icon-hetong', '', '', '_self', '0', '1537345515', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2773', '2772', 'admin', '投标信息', 'iconfont icon-hangzheng', '', 'admin/bidding/bidding_add', '_self', '0', '1537345967', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2777', '2775', 'admin', '招投标文件购买申请查询', 'iconfont icon-hangzheng', '', 'admin/biddingfile/biddingdile_view', '_self', '0', '1537492690', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2778', '2751', 'admin', '收入支出凭证', 'iconfont icon-aiqingmiao', '', 'admin/complete_income_and_expenses', '_self', '0', '1537839248', '1539849667', '7', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2779', '2662', 'admin', '消息通知', 'iconfont icon-navicon', '', 'admin/message_config/index', '_self', '0', '1537845203', '1539849667', '7', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2780', '2772', 'admin', '项目业务费申请', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/bidding_tbywf/bidding_tbywf', '_self', '0', '1537845604', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2781', '2775', 'admin', '项目业务费申请查询', 'iconfont icon-hetong', '', 'admin/bidding_tbywf/bidding_list', '_self', '0', '1537861782', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2782', '2765', 'admin', '现有库存', 'iconfont icon-liucheng', '', 'admin/inandout/stock', '_self', '0', '1537934250', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2783', '2699', 'admin', '证照管理报表', 'iconfont icon-xinzengshengchanjihua', '', '', '_self', '0', '1537947771', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2784', '2783', 'admin', '证件查询', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/certificates/clist', '_self', '0', '1537947801', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2785', '2783', 'admin', '证件费用查询', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/certificates/moneylist', '_self', '0', '1538103690', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2786', '2783', 'admin', '证件借出查询', 'iconfont icon-hetong', '', 'admin/certificates/outlist', '_self', '0', '1538199226', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2787', '2783', 'admin', '证件归还查询', 'iconfont icon-gongzuorizhi', '', 'admin/certificates/inlist', '_self', '0', '1538200004', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2788', '2659', 'admin', '待办流程', 'iconfont icon-kaoqin', '', 'admin/sponsor/backlog_flow', '_self', '0', '1538207537', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2789', '2783', 'admin', '证件报表', 'iconfont icon-yuancailiaoshujuku', '', 'admin/certificates/certificatelist', '_self', '0', '1538274866', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2790', '2659', 'admin', '已办流程', 'iconfont icon-huiyi', '', 'admin/sponsor/finished_flow', '_self', '0', '1538963140', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2791', '2708', 'admin', '合同管理', 'iconfont icon-hetong', '', 'admin/contract/index', '_self', '0', '1538965171', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2792', '2692', 'admin', '菜单角色', 'iconfont icon-yingyong', '', 'admin/auth_rule/index', '_self', '0', '1539047102', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2794', '2653', 'admin', '培训管理', 'iconfont icon-renshi', '', '', '_self', '0', '1539151046', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2795', '2794', 'admin', '培训计划', 'iconfont icon-change', '', 'admin/training/training_list', '_self', '0', '1539151087', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2796', '2653', 'admin', '培训资源', 'iconfont icon-drxx17', '', '', '_self', '0', '1539156221', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2797', '2796', 'admin', '培训课程', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/trainingcourse/course_list', '_self', '0', '1539156414', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2798', '2796', 'admin', '培训讲师', 'iconfont icon-iconfuzhi', '', 'admin/traininglecturer/lecturer_list', '_self', '0', '1539221057', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2799', '2796', 'admin', '培训机构', 'iconfont icon-wanglaidanwei', '', 'admin/trainingdepartment/department_list', '_self', '0', '1539240475', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2800', '2794', 'admin', '培训项目', 'iconfont icon-hetongguanli', '', 'admin/training/project_list', '_self', '0', '1539243384', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2801', '2653', 'admin', '合同管理', 'iconfont icon-qiandao', '', 'admin/contractlabor/labor_list', '_self', '0', '1539570286', '1539849667', '5', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2802', '2767', 'admin', '新增库存', '', '', 'admin/house/add', '_self', '0', '1539585437', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2803', '2649', 'admin', '框架首页', '', '', 'admin/index/index', '_self', '0', '1539593347', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2804', '2653', 'admin', '请假管理', 'iconfont icon-EPCzuodaohangtubiao', '', 'admin/leave/leave_list', '_self', '0', '1539673529', '1539849667', '6', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2815', '2814', 'admin', '公告列表', 'iconfont icon-gonggao', '', 'admin/notice/notice_list', '_self', '0', '1539832516', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2814', '0', 'admin', '公告', 'iconfont icon-gonggao', '', '', '_self', '0', '1539832487', '1539849667', '3', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2813', '2709', 'admin', '新增', '', '', 'admin/project_list/add', '_self', '0', '1539829815', '1539849667', '1', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2816', '2814', 'admin', '我的公告', 'iconfont icon-gonggao', '', 'admin/notice/notice_personal', '_self', '0', '1539841409', '1539849667', '2', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2817', '0', 'admin', '会议', 'iconfont icon-renshi', '', '', '_self', '0', '1539849660', '1539849667', '4', '0', '1', '', null);
INSERT INTO `jz_admin_menu` VALUES ('2818', '2817', 'admin', '会议室', 'iconfont icon-renshi', '', 'admin/metingroom/room_list', '_self', '0', '1539849756', '1539854766', '100', '0', '1', '', null);

-- ----------------------------
-- Table structure for jz_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `jz_auth_group`;
CREATE TABLE `jz_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `rules` text CHARACTER SET utf8 COLLATE utf8_bin,
  `organization` int(11) DEFAULT NULL COMMENT '所属组织',
  `order` int(11) DEFAULT '10' COMMENT '显示顺序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_auth_group
-- ----------------------------
INSERT INTO `jz_auth_group` VALUES ('1', '超级管理员', '1', '', '9', '1');
INSERT INTO `jz_auth_group` VALUES ('3', '管理员', '1', 0x323635352C323639342C323739352C323830302C323739342C323739372C323739382C323739392C323739362C323830312C323830342C323635332C323637322C323637312C323637302C323636392C323637332C323636382C323636372C323636362C323636352C323636342C323637342C323636332C323638372C323638382C323638362C323639332C323639382C323732352C323739322C323639322C323639362C323639372C323639352C323830332C323634392C323733362C323737392C323636322C323636302C323738382C323739302C323635392C323830322C323736372C323736382C323736392C323737302C323738322C323736352C323730382C323831332C323730392C323731372C323731382C323736362C32373931, '4', '1');
INSERT INTO `jz_auth_group` VALUES ('7', '会计', '1', 0x323637332C323636382C323636372C323636362C323636352C323636342C323637342C323636332C323634392C32383033, '6', '0');
INSERT INTO `jz_auth_group` VALUES ('8', 'test', '1', 0x323634392C323830332C323635332C323739352C323830302C323739372C323739382C323739392C323830392C323830382C323831312C323830372C323831302C323830362C323635352C323639342C323739342C323739362C323830312C323830342C32383035, '9', '0');

-- ----------------------------
-- Table structure for jz_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `jz_auth_group_access`;
CREATE TABLE `jz_auth_group_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_auth_group_access
-- ----------------------------
INSERT INTO `jz_auth_group_access` VALUES ('4', '72', '1');
INSERT INTO `jz_auth_group_access` VALUES ('2', '43', '3');
INSERT INTO `jz_auth_group_access` VALUES ('5', '1', '1');
INSERT INTO `jz_auth_group_access` VALUES ('6', '45', '1');
INSERT INTO `jz_auth_group_access` VALUES ('7', '46', '1');
INSERT INTO `jz_auth_group_access` VALUES ('8', '52', '3');
INSERT INTO `jz_auth_group_access` VALUES ('9', '44', '7');
INSERT INTO `jz_auth_group_access` VALUES ('10', '48', '1');
INSERT INTO `jz_auth_group_access` VALUES ('11', '51', '1');
INSERT INTO `jz_auth_group_access` VALUES ('20', '81', '3');
INSERT INTO `jz_auth_group_access` VALUES ('24', '42', '0');

-- ----------------------------
-- Table structure for jz_balance_cate
-- ----------------------------
DROP TABLE IF EXISTS `jz_balance_cate`;
CREATE TABLE `jz_balance_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  `cid` int(11) NOT NULL COMMENT '排序',
  `pid` int(11) NOT NULL COMMENT '父类型',
  `age_limit` int(3) NOT NULL COMMENT '折旧年限',
  `remaining` int(3) NOT NULL COMMENT '残值率',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_balance_cate
-- ----------------------------
INSERT INTO `jz_balance_cate` VALUES ('1', '标题', '32', '0', '23', '23', '32', '1533800910', '1533800910', null);
INSERT INTO `jz_balance_cate` VALUES ('2', '标题', '21', '0', '12', '21', '21', '1533800995', '1534236910', null);
INSERT INTO `jz_balance_cate` VALUES ('3', '标题', '21', '0', '12', '21', '12', '1533801096', '1533801096', null);
INSERT INTO `jz_balance_cate` VALUES ('4', '标题', '21', '2', '21', '21', '21', '1533801267', '1534239562', null);
INSERT INTO `jz_balance_cate` VALUES ('5', '32', '21', '4', '21', '21', '21', '1533801437', '1534237659', '1534237659');
INSERT INTO `jz_balance_cate` VALUES ('6', '2222', '3', '4', '222', '22', '3', '1533802638', '1534318489', '1534318489');
INSERT INTO `jz_balance_cate` VALUES ('11', '12', '12', '0', '21', '21', '21', '1533804013', '1533804013', null);
INSERT INTO `jz_balance_cate` VALUES ('12', '标题', '21', '0', '21', '12', '12', '1533804606', '1535679051', null);
INSERT INTO `jz_balance_cate` VALUES ('13', '标题', '21', '0', '12', '21', '21', '1533804895', '1533804895', null);
INSERT INTO `jz_balance_cate` VALUES ('14', '777333', '7', '0', '7', '7', '7', '1533866307', '1535597364', null);
INSERT INTO `jz_balance_cate` VALUES ('15', '32', '21', '5', '21', '12', '12', '1533893907', '1534237582', '1534237582');
INSERT INTO `jz_balance_cate` VALUES ('16', '3444', '221', '15', '222', '2', '', '1534121862', '1534237573', '1534237573');
INSERT INTO `jz_balance_cate` VALUES ('33', '标题', '0', '0', '0', '0', '', '1534147919', '1534492232', '1534492232');
INSERT INTO `jz_balance_cate` VALUES ('34', '标题', '0', '0', '0', '2', '', '1534147923', '1534492260', '1534492260');
INSERT INTO `jz_balance_cate` VALUES ('35', '标题', '0', '0', '0', '0', '', '1534147929', '1534492243', '1534492243');
INSERT INTO `jz_balance_cate` VALUES ('36', '标题', '0', '0', '1', '0', '', '1534147932', '1534237669', '1534237669');
INSERT INTO `jz_balance_cate` VALUES ('37', '标题', '0', '0', '2', '0', '', '1534147935', '1534492225', '1534492225');
INSERT INTO `jz_balance_cate` VALUES ('38', '标题', '0', '0', '23', '0', '', '1534147937', '1534492237', '1534492237');
INSERT INTO `jz_balance_cate` VALUES ('52', '', '0', '0', '0', '0', '', '1534239206', '1534294821', '1534294821');
INSERT INTO `jz_balance_cate` VALUES ('53', '12', '21', '0', '21', '2', '', '1534297378', '1534492219', '1534492219');
INSERT INTO `jz_balance_cate` VALUES ('54', '5555', '3', '14', '3222', '3', '3', '1534303550', '1534318565', null);
INSERT INTO `jz_balance_cate` VALUES ('55', '标题', '2', '37', '23', '23', '', '1534315606', '1534315606', null);
INSERT INTO `jz_balance_cate` VALUES ('56', '23', '12', '14', '12', '12', '', '1534318590', '1535597600', null);
INSERT INTO `jz_balance_cate` VALUES ('57', '2', '12', '0', '12', '12', '', '1534321647', '1534492213', '1534492213');
INSERT INTO `jz_balance_cate` VALUES ('58', '标题', '21', '0', '21', '21', '21', '1534404992', '1534492206', '1534492206');
INSERT INTO `jz_balance_cate` VALUES ('59', '按时', '1', '0', '1', '1', '1', '1534468351', '1534492200', '1534492200');
INSERT INTO `jz_balance_cate` VALUES ('60', '地下城与勇士', '2', '54', '2', '2', '3', '1535358357', '1535597824', null);
INSERT INTO `jz_balance_cate` VALUES ('61', 'hhh', '4', '0', '4', '4', '1', '1535593638', '1535593648', '1535593648');
INSERT INTO `jz_balance_cate` VALUES ('62', '哈哈哈', '1', '56', '21', '1', '1', '1535597847', '1535608590', null);
INSERT INTO `jz_balance_cate` VALUES ('63', 'dnf', '21', '60', '21', '21', '21', '1536299609', '1536299609', null);

-- ----------------------------
-- Table structure for jz_balance_index
-- ----------------------------
DROP TABLE IF EXISTS `jz_balance_index`;
CREATE TABLE `jz_balance_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资产类别',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `code` varchar(255) NOT NULL COMMENT '编号',
  `cate` int(11) NOT NULL COMMENT '类别',
  `spec` varchar(255) NOT NULL COMMENT '规格',
  `random` varchar(255) NOT NULL COMMENT '测量范围',
  `invoice_moeny` int(11) NOT NULL COMMENT '发票金额',
  `invoice_date` int(11) NOT NULL COMMENT '发票日期',
  `exact` varchar(255) NOT NULL COMMENT '精确度',
  `maker` varchar(255) NOT NULL COMMENT '制造商',
  `number` varchar(200) NOT NULL COMMENT '出厂编号',
  `purchaser` varchar(255) NOT NULL COMMENT '采购人',
  `end_time` int(11) DEFAULT NULL COMMENT '质保到期日',
  `age_limit` int(4) NOT NULL COMMENT '折旧年限',
  `remaining` int(2) NOT NULL COMMENT '残值率',
  `verification` varchar(255) NOT NULL COMMENT '检定机构',
  `cycle` int(4) NOT NULL COMMENT '检定周期',
  `verification_number` varchar(110) NOT NULL COMMENT '检定编号',
  `verification_date` int(11) NOT NULL COMMENT '检定日期',
  `result` varchar(255) NOT NULL COMMENT '检定结果',
  `expir` int(11) NOT NULL COMMENT '检定到期日',
  `recipient` int(11) NOT NULL COMMENT '领用人',
  `duty` int(11) NOT NULL COMMENT '责任部门',
  `status` int(1) NOT NULL COMMENT '状态1可用, 2领用,3,维修, 4报废',
  `note` text NOT NULL COMMENT '备注',
  `file` text COMMENT '附件',
  `delete_time` int(11) DEFAULT NULL COMMENT '伪删除,删除时间',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_balance_index
-- ----------------------------
INSERT INTO `jz_balance_index` VALUES ('5', '桌子', 'NM2018', '14', '1=2', '1-22', '1000000', '1534435200', '1-222', '腾讯', 'N1568', '我', '1534521600', '7', '7', '国务院', '12', 'N12', '1534694400', '合格', '1534694400', '8', '8', '2', '666', '46,47', '1534485430', '1534474814', '1534485430');
INSERT INTO `jz_balance_index` VALUES ('6', '12', '无敌', '0', '21', '21', '12', '1534435200', '21', '21', '21', '21', '1534435200', '12', '12', '12', '12', '12', '1534435200', '12', '1534435200', '8', '8', '1', '12', '48', '1535707268', '1534488188', '1535707268');
INSERT INTO `jz_balance_index` VALUES ('7', '@啊啊啊', '55', '13', '21', '12', '12', '0', '12', '1', '12', '1', '0', '12', '21', '2222', '2', '2', '0', '2', '0', '8', '8', '1', '', null, '1534917268', '1534900339', '1534917268');
INSERT INTO `jz_balance_index` VALUES ('8', '1', '1', '0', '3', '321', '21312312', '1535040000', '321', '3123', '312', '321', '1535040000', '321', '321', '312', '31', '312', '1535040000', '321', '1535040000', '8', '8', '1', '', null, '1535436291', '1535074437', '1535436291');
INSERT INTO `jz_balance_index` VALUES ('9', 'hhh', '1', '0', '1', '1', '1', '1535040000', '1', '1', '1', '1', '1535040000', '1', '1', '1', '1', '1', '1535040000', '1', '1535040000', '8', '8', '1', '', null, null, '1535074488', '1535074488');
INSERT INTO `jz_balance_index` VALUES ('10', '1', '12', '11', '1', '1', '1', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '0', '1', '0', '8', '8', '1', '1', null, null, '1535514956', '1535514956');

-- ----------------------------
-- Table structure for jz_bidding
-- ----------------------------
DROP TABLE IF EXISTS `jz_bidding`;
CREATE TABLE `jz_bidding` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '项目编号',
  `title` varchar(25) NOT NULL COMMENT '项目名称',
  `content` varchar(255) NOT NULL COMMENT '项目简介',
  `address` varchar(255) NOT NULL COMMENT '项目地址',
  `maker` int(11) NOT NULL COMMENT '录入人',
  `date` int(11) NOT NULL COMMENT '时间',
  `nature` int(11) NOT NULL DEFAULT '0' COMMENT '项目性质 0=自营 1=联营',
  `type_id` int(11) NOT NULL COMMENT '项目类型',
  `head_id` int(11) NOT NULL COMMENT '投标负责人',
  `etime` int(11) NOT NULL COMMENT '预计投标时间',
  `bcost` double(50,2) NOT NULL DEFAULT '0.00' COMMENT '预计投标费用',
  `contract_cost` double(50,2) NOT NULL DEFAULT '0.00' COMMENT '预计合同金额',
  `contractor` varchar(25) NOT NULL COMMENT '建设单位',
  `cost_capital` varchar(25) NOT NULL COMMENT '费用大写',
  `contact_people` varchar(25) NOT NULL COMMENT '联系人',
  `contact_phone` varchar(25) NOT NULL COMMENT '联系电话',
  `design_unit` varchar(25) NOT NULL COMMENT '设计单位',
  `supervision_unit` varchar(25) NOT NULL COMMENT '监制单位',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `file` varchar(25) DEFAULT NULL COMMENT '附件',
  `statu` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//投标项目信息登记';

-- ----------------------------
-- Records of jz_bidding
-- ----------------------------
INSERT INTO `jz_bidding` VALUES ('1', 'TBSQ201809-97525', '项目名称', '实打实大师', '爱仕达爱仕达', '1', '1537372800', '0', '45', '41', '1537718400', '213123.00', '123123123.00', '阿萨斯的', '壹亿贰仟叁佰壹拾贰万叁仟壹佰贰拾叁圆', '啊实打实', '13667919872', '萨达', '爱仕达无多', '', '', '0', '1537423988', '1537423988');
INSERT INTO `jz_bidding` VALUES ('2', 'TBSQ201809-99575', '重建红谷滩', '重建红谷滩重建红谷滩', '红谷滩', '48', '1537891200', '0', '44', '48', '1537977600', '354137.00', '798456132.00', '金耀', '柒亿玖仟捌佰肆拾伍万陆仟壹佰叁拾贰圆', '阿萨德', '12345678911', '阿萨德完全', '自行车', '执行擦完', '', '0', '1537925055', '1537925055');

-- ----------------------------
-- Table structure for jz_bidding_file
-- ----------------------------
DROP TABLE IF EXISTS `jz_bidding_file`;
CREATE TABLE `jz_bidding_file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '编号',
  `maker` int(11) NOT NULL COMMENT '申请人',
  `bidding_id` int(11) NOT NULL COMMENT '项目ID',
  `type_id` int(11) NOT NULL COMMENT '项目类型',
  `cost_capitals` varchar(25) NOT NULL COMMENT '建设单位',
  `cost` double(40,2) NOT NULL COMMENT '招投标文件费',
  `date` int(11) DEFAULT NULL COMMENT '时间',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `file` varchar(25) DEFAULT NULL COMMENT '附件',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//招标文件购买';

-- ----------------------------
-- Records of jz_bidding_file
-- ----------------------------
INSERT INTO `jz_bidding_file` VALUES ('1', 'ZBWJ201809-54541', '48', '1', '45', '阿萨斯的', '123123123.00', '1537459200', '阿达我的自行车', '', '0', '1537496247', '1537496247');

-- ----------------------------
-- Table structure for jz_bidding_tbywf
-- ----------------------------
DROP TABLE IF EXISTS `jz_bidding_tbywf`;
CREATE TABLE `jz_bidding_tbywf` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '项目编号',
  `maker` int(11) NOT NULL COMMENT '申请人ID',
  `bidding_id` int(11) NOT NULL COMMENT '项目ID',
  `type_id` int(11) NOT NULL COMMENT '项目类型ID',
  `date` int(11) NOT NULL COMMENT '日期',
  `amount` double(50,2) NOT NULL DEFAULT '0.00' COMMENT '申请金额',
  `capital` varchar(25) NOT NULL COMMENT '金额大写',
  `reason` varchar(255) NOT NULL COMMENT '申请事由',
  `detail` varchar(255) NOT NULL COMMENT '费用明细',
  `purpose` varchar(255) NOT NULL COMMENT '费用目的',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `file` varchar(25) DEFAULT NULL COMMENT '附件ID',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_bidding_tbywf
-- ----------------------------
INSERT INTO `jz_bidding_tbywf` VALUES ('1', 'XMYWF201809-56515', '48', '1', '45', '1537891200', '123123123.00', '壹亿贰仟叁佰壹拾贰万叁仟壹佰贰拾叁圆', '安闻风丧胆', '安闻风丧胆', '安闻风丧胆', '', '546,', '0', '1537856326', '1537856326');
INSERT INTO `jz_bidding_tbywf` VALUES ('2', 'XMYWF201809-51525', '48', '1', '45', '1537977600', '123687686.00', '壹亿贰仟叁佰陆拾捌万柒仟陆佰捌拾陆圆', 'QWERTY', '全网通曲儿', '曲儿特权我让他', '', '', '0', '1537864858', '1537864858');

-- ----------------------------
-- Table structure for jz_certificates
-- ----------------------------
DROP TABLE IF EXISTS `jz_certificates`;
CREATE TABLE `jz_certificates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 不填 1 男 2女',
  `organization` varchar(255) NOT NULL DEFAULT '' COMMENT '部门',
  `id_card` varchar(30) NOT NULL COMMENT '身份证',
  `tel` varchar(255) NOT NULL COMMENT '联系电话',
  `issue_unit` varchar(255) NOT NULL COMMENT '发证单位',
  `certificate_number` varchar(255) NOT NULL COMMENT '证书编号',
  `certificate_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '证件类',
  `login_number` varchar(50) NOT NULL COMMENT '注册编号',
  `qualification_certificate_number` varchar(50) NOT NULL COMMENT '资格证书编号',
  `domain_type` varchar(50) NOT NULL COMMENT '专业类别',
  `end_time` int(10) unsigned NOT NULL COMMENT '到期时间',
  `storage_location` varchar(255) NOT NULL COMMENT '存放地址',
  `add_user_id` int(11) unsigned NOT NULL COMMENT '录入人',
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `delete_time` int(11) unsigned DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL COMMENT '文件',
  `pic` varchar(50) DEFAULT NULL COMMENT '图片',
  `status` varchar(25) DEFAULT NULL COMMENT '0=到期，1=即将到期5=借出2=异常9=闲置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='证照';

-- ----------------------------
-- Records of jz_certificates
-- ----------------------------
INSERT INTO `jz_certificates` VALUES ('1', '张三', '2', '经营部', '142555789541544444', '15777777777', '江西省建设部', '154546415', '34', '152456456', '45', '454564', '1536854400', '项目部', '1', '1536891798', '1536891798', null, '408,', '409,', '2,5');
INSERT INTO `jz_certificates` VALUES ('2', '李四', '1', '经营部', '142333199789898454', '15779855555', '江西建筑部', '1545454564651654', '35', '16531561563', '1515615611', '651561651561', '1536854400', '经营部', '1', '1536893865', '1536893865', null, '377,', null, '5');
INSERT INTO `jz_certificates` VALUES ('3', '王五', '1', '项目部', '51022459388128', '12345678915', '江西省建筑部', '345689093', '34', '678998780', '123456789123456789', '拆楼', '1543334400', '行政部', '48', '1537929070', '1537947410', null, '', '', '9');
INSERT INTO `jz_certificates` VALUES ('4', '赵六', '1', '', '142726199505127894', '', '', '123123', '35', '', '', '', '1536249600', '仓库', '48', '1537949848', '1537949890', '1537949890', '', '', '0');
INSERT INTO `jz_certificates` VALUES ('8', '赵一', '1', '项目部', '123456789123456789', '12345678912', '建筑部', '1231465464', '35', '13457412sd', '18SDR684314', '建筑证', '1544544000', '财务部', '48', '1539047976', '1539047976', null, '', '', '5');
INSERT INTO `jz_certificates` VALUES ('9', '赵一', '1', '项目部', '123456789123456789', '12345678912', '建筑部', '1231465464', '35', '13457412sd', '18SDR684314', '建筑证', '1544544000', '财务部', '48', '1539048035', '1539048035', null, '', '', '9');

-- ----------------------------
-- Table structure for jz_certificates_detail
-- ----------------------------
DROP TABLE IF EXISTS `jz_certificates_detail`;
CREATE TABLE `jz_certificates_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` int(11) NOT NULL COMMENT '证件姓名',
  `certificate_number` varchar(25) NOT NULL COMMENT '证件编号',
  `certificate_name` varchar(25) NOT NULL COMMENT '证件名称',
  `place` varchar(25) NOT NULL COMMENT '证件存放点',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `out_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL COMMENT '类型',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='证件借出明细';

-- ----------------------------
-- Records of jz_certificates_detail
-- ----------------------------
INSERT INTO `jz_certificates_detail` VALUES ('1', '2', '1545454564651654', '二级注册建造师', '爱是打我', '爱我的', '1', 'lend', '1538119430', '1538119430');
INSERT INTO `jz_certificates_detail` VALUES ('2', '3', '345689093', '一级注册建造师', '爱是达瓦', '行政村为', '1', 'lend', '1538119430', '1538119430');
INSERT INTO `jz_certificates_detail` VALUES ('3', '2', '1545454564651654', '二级注册建造师', '项目部', '项目部没收', '2', 'lend', '1538191124', '1538191124');
INSERT INTO `jz_certificates_detail` VALUES ('7', '2', '1545454564651654', '二级注册建造师', '', '投标', '4', 'in', '1538270666', '1538270666');
INSERT INTO `jz_certificates_detail` VALUES ('8', '3', '345689093', '一级注册建造师', '市场部', '', '3', 'lend', '1539048480', '1539048480');
INSERT INTO `jz_certificates_detail` VALUES ('9', '2', '1545454564651654', '二级注册建造师', '市场部', '', '3', 'lend', '1539048480', '1539048480');
INSERT INTO `jz_certificates_detail` VALUES ('10', '2', '1545454564651654', '二级注册建造师', '技术部', '', '4', 'lend', '1539049534', '1539049534');
INSERT INTO `jz_certificates_detail` VALUES ('11', '8', '1231465464', '二级注册建造师', '技术部', '', '4', 'lend', '1539049534', '1539049534');

-- ----------------------------
-- Table structure for jz_certificates_in
-- ----------------------------
DROP TABLE IF EXISTS `jz_certificates_in`;
CREATE TABLE `jz_certificates_in` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `in_code` varchar(25) NOT NULL,
  `in_username` int(11) NOT NULL COMMENT '归还人',
  `organization` varchar(25) NOT NULL COMMENT '部门',
  `in_time` int(11) NOT NULL COMMENT '归还日期',
  `in_note` varchar(255) DEFAULT NULL COMMENT '备注',
  `statu` tinyint(1) DEFAULT '1' COMMENT '0=完成1=进行中2=作废',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='证件归还';

-- ----------------------------
-- Records of jz_certificates_in
-- ----------------------------
INSERT INTO `jz_certificates_in` VALUES ('4', 'ZZGH201809-56511', '48', '8', '1538236800', '投标', '1', '1538270666', '1538270666');

-- ----------------------------
-- Table structure for jz_certificates_money
-- ----------------------------
DROP TABLE IF EXISTS `jz_certificates_money`;
CREATE TABLE `jz_certificates_money` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `username` int(10) unsigned NOT NULL COMMENT '证照id',
  `add_user_id` int(10) unsigned NOT NULL COMMENT '录入人',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `money` double(50,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '金钱',
  `bigmoney` varchar(50) NOT NULL COMMENT '金额大写',
  `file` varchar(255) DEFAULT NULL,
  `note` text,
  `create_time` int(10) unsigned NOT NULL COMMENT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='证照费用';

-- ----------------------------
-- Records of jz_certificates_money
-- ----------------------------
INSERT INTO `jz_certificates_money` VALUES ('1', 'ZZFY201809-51531', '1', '1', '1536854400', '1538064000', '50000.00', '伍万', '441,442,', 'eeee', '1536913883', '1536913883', null);

-- ----------------------------
-- Table structure for jz_certificates_out
-- ----------------------------
DROP TABLE IF EXISTS `jz_certificates_out`;
CREATE TABLE `jz_certificates_out` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `out_code` varchar(25) NOT NULL COMMENT '借出编号',
  `out_user_id` int(10) unsigned NOT NULL COMMENT '借用人',
  `organization` int(5) unsigned NOT NULL COMMENT '部门',
  `out_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '借出时间',
  `tender_name` varchar(255) NOT NULL COMMENT '出借项目',
  `in_plan_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '预计归还日期',
  `out_note` text NOT NULL COMMENT '借出原因',
  `statu` tinyint(1) DEFAULT '1' COMMENT '0=完成1=进行中2=作废',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='证件借出';

-- ----------------------------
-- Records of jz_certificates_out
-- ----------------------------
INSERT INTO `jz_certificates_out` VALUES ('1', 'ZZJC201809-99551', '46', '4', '1538064000', '阿迪王', '1538150400', '自行车我都', '1', '1538119430', '1538119430');
INSERT INTO `jz_certificates_out` VALUES ('2', 'ZZJC201809-10051', '48', '8', '1538236800', '飞翔的荷兰号', '1538755200', '资质不足', '1', '1538191124', '1538191124');
INSERT INTO `jz_certificates_out` VALUES ('3', 'ZZJC201810-98975', '46', '4', '1539100800', '金耀大厦', '1540915200', '项目资质不足', '1', '1539048480', '1539048480');
INSERT INTO `jz_certificates_out` VALUES ('4', 'ZZJC201810-48534', '51', '5', '1539014400', '爱仕达无多', '1539705600', '爱上自行车', '1', '1539049534', '1539049534');

-- ----------------------------
-- Table structure for jz_complete_apply_for_completion
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_apply_for_completion`;
CREATE TABLE `jz_complete_apply_for_completion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL COMMENT '填报编号',
  `title` varchar(30) NOT NULL COMMENT '标题',
  `project_name` int(11) NOT NULL COMMENT '项目名称',
  `maker` int(11) DEFAULT NULL COMMENT '申请人',
  `start_date` date DEFAULT NULL COMMENT '完工日期',
  `end_date` date DEFAULT NULL COMMENT '竣工日期',
  `Duration` int(11) NOT NULL COMMENT '工期',
  `det_id` int(11) DEFAULT NULL COMMENT '明细id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='竣工申请';

-- ----------------------------
-- Records of jz_complete_apply_for_completion
-- ----------------------------
INSERT INTO `jz_complete_apply_for_completion` VALUES ('2', 'JG201810-56579', 'sdfsfsf', '3', '72', '2018-10-11', '2018-10-15', '213123', null, '12312', null, '2018-10-19', '2018-10-19');

-- ----------------------------
-- Table structure for jz_complete_engineering_log
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_engineering_log`;
CREATE TABLE `jz_complete_engineering_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_complete_engineering_log
-- ----------------------------

-- ----------------------------
-- Table structure for jz_complete_expense_reimbursement
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_expense_reimbursement`;
CREATE TABLE `jz_complete_expense_reimbursement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL COMMENT '报销单编号（随机）',
  `title` varchar(20) NOT NULL COMMENT '报销名称',
  `project_name` int(11) NOT NULL COMMENT '所属项目',
  `subject` int(11) NOT NULL COMMENT '报销科目',
  `money` decimal(20,2) DEFAULT NULL COMMENT '报销金额',
  `amount_in_words` varchar(50) DEFAULT NULL COMMENT '金额大写',
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `user_id` int(11) DEFAULT NULL COMMENT '报销人',
  `date` date DEFAULT NULL COMMENT '日期',
  `informant` int(11) DEFAULT NULL COMMENT '填单人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `files` varchar(50) DEFAULT NULL COMMENT '附件',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_time` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='费用报销';

-- ----------------------------
-- Records of jz_complete_expense_reimbursement
-- ----------------------------

-- ----------------------------
-- Table structure for jz_complete_invoice_manage
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_invoice_manage`;
CREATE TABLE `jz_complete_invoice_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` char(20) DEFAULT NULL COMMENT '开票登记编号(自动生成)',
  `invoice_value` varchar(50) DEFAULT NULL COMMENT '发票金额',
  `identify_number` char(10) DEFAULT NULL COMMENT '纳税人识别号',
  `project_name` varchar(20) NOT NULL COMMENT '项目名称',
  `payee` char(10) DEFAULT NULL COMMENT '收款单位',
  `Organization_code_certificate_number` varchar(50) DEFAULT NULL COMMENT '组织机构代码证号码',
  `informant` char(10) DEFAULT NULL COMMENT '填报人',
  `the_invoice_photos` int(11) DEFAULT NULL COMMENT '发票照片',
  `Invoice_type` int(11) DEFAULT NULL COMMENT '发票类型',
  `amount_in_words` char(20) DEFAULT NULL COMMENT '金额大写',
  `Bank_and_account_number` varchar(50) DEFAULT NULL COMMENT '开户银行及账号',
  `payer` char(20) DEFAULT NULL COMMENT '付款单位',
  `invoice_number` char(20) DEFAULT NULL COMMENT '发票号码',
  `date` datetime DEFAULT NULL COMMENT '日期',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Leadership_approval` varchar(255) DEFAULT NULL COMMENT '领导审批',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_complete_invoice_manage
-- ----------------------------

-- ----------------------------
-- Table structure for jz_complete_invoice_open
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_invoice_open`;
CREATE TABLE `jz_complete_invoice_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `number` varchar(50) DEFAULT NULL COMMENT '开票登记编号(自动生成)',
  `invoice_value` decimal(20,2) DEFAULT NULL COMMENT '发票金额',
  `identify_number` char(20) DEFAULT NULL COMMENT '纳税人识别号',
  `project_name` varchar(20) NOT NULL COMMENT '项目名称',
  `payee` char(10) DEFAULT NULL COMMENT '收款单位',
  `Organization_code_certificate_number` varchar(50) DEFAULT NULL COMMENT '组织机构代码证号码',
  `informant` varchar(50) DEFAULT NULL COMMENT '填报人',
  `the_invoice_photos` varchar(50) DEFAULT NULL COMMENT '发票照片',
  `Invoice_type` int(11) DEFAULT NULL COMMENT '发票类型',
  `amount_in_words` char(50) DEFAULT NULL COMMENT '金额大写',
  `Bank_and_account_number` varchar(50) DEFAULT NULL COMMENT '开户银行及账号',
  `payer` char(20) DEFAULT NULL COMMENT '付款单位',
  `invoice_number` char(20) DEFAULT NULL COMMENT '发票号码',
  `date` date DEFAULT NULL COMMENT '发票生成日期',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `Leadership_approval` varchar(255) DEFAULT NULL COMMENT '领导审批',
  `status` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000' COMMENT '审批状态',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_time` date DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='收款单';

-- ----------------------------
-- Records of jz_complete_invoice_open
-- ----------------------------

-- ----------------------------
-- Table structure for jz_complete_invoice_put
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_invoice_put`;
CREATE TABLE `jz_complete_invoice_put` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `number` varchar(50) DEFAULT NULL COMMENT '收票编号',
  `invoice_value` decimal(20,2) DEFAULT NULL COMMENT '发票金额',
  `amount_in_words` varchar(50) DEFAULT NULL COMMENT '金额大写',
  `project_name` varchar(20) NOT NULL COMMENT '项目名称',
  `identify_number` char(20) DEFAULT NULL COMMENT '纳税人识别号：',
  `payee` varchar(20) DEFAULT NULL COMMENT '收款单位',
  `Organization_code_certificate_number` varchar(50) DEFAULT NULL COMMENT '组织机构代码证号码',
  `informant` int(11) DEFAULT NULL COMMENT '填报人',
  `the_invoice_photos` varchar(30) DEFAULT NULL COMMENT '发票照片',
  `Invoice_type` int(11) DEFAULT NULL COMMENT '发票类型',
  `bill_type` int(11) DEFAULT NULL COMMENT '开票类型',
  `Bank_and_account_number` varchar(50) DEFAULT NULL COMMENT '开户银行及账号',
  `payer` char(20) DEFAULT NULL COMMENT '付款方',
  `invoice_number` char(20) DEFAULT NULL COMMENT '发票号码',
  `date` date DEFAULT NULL COMMENT '日期',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_time` date DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='付款单';

-- ----------------------------
-- Records of jz_complete_invoice_put
-- ----------------------------

-- ----------------------------
-- Table structure for jz_complete_report
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_report`;
CREATE TABLE `jz_complete_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL COMMENT '报告编号（随机）',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `project_name` int(11) NOT NULL COMMENT '项目名称',
  `maker` int(11) NOT NULL COMMENT '填报人',
  `the_weather_in_the_morning` int(11) DEFAULT NULL COMMENT '上午天气(1晴2雨3阴)',
  `the_weather_in_the_afternoon` int(11) DEFAULT NULL COMMENT '下午天气',
  `highest_temperature` int(11) DEFAULT NULL COMMENT '最高气温',
  `lowest_temperature` int(11) DEFAULT NULL COMMENT '最低气温',
  `location` varchar(50) DEFAULT NULL COMMENT '地点',
  `Number_of_people` int(11) DEFAULT NULL COMMENT '工人人数',
  `files` varchar(50) DEFAULT NULL COMMENT '附件',
  `complete_explain` varchar(255) DEFAULT NULL COMMENT '详细说明',
  `problem_description` varchar(255) DEFAULT NULL COMMENT '所遇问题说明',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `update_time` date DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='竣工报告';

-- ----------------------------
-- Records of jz_complete_report
-- ----------------------------
INSERT INTO `jz_complete_report` VALUES ('2', 'JG201810-48981', 'test', '3', '72', '0', '1', '123', '13', '2312312', '1231', '', '123', '3123', null, '2018-10-19', '2018-10-19');

-- ----------------------------
-- Table structure for jz_complete_settle_accounts
-- ----------------------------
DROP TABLE IF EXISTS `jz_complete_settle_accounts`;
CREATE TABLE `jz_complete_settle_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_complete_settle_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for jz_construction_build_log
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_build_log`;
CREATE TABLE `jz_construction_build_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `maker` int(11) unsigned DEFAULT '1' COMMENT '填报人',
  `obj_id` int(11) unsigned NOT NULL COMMENT '项目名称',
  `date` int(11) NOT NULL COMMENT '日期',
  `mooning_temp` varchar(255) NOT NULL COMMENT '上午天气',
  `afternoon_temp` varchar(255) NOT NULL COMMENT '下午天气',
  `low_temp` int(3) NOT NULL COMMENT '最低气温',
  `hight_temp` int(3) NOT NULL COMMENT '最高气温',
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `pic` varchar(255) DEFAULT NULL COMMENT '现场图片',
  `status` tinyint(1) unsigned DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL COMMENT '施工进展',
  `work` varchar(255) DEFAULT NULL COMMENT '施工工作',
  `other` varchar(255) DEFAULT NULL COMMENT '其他情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_build_log
-- ----------------------------
INSERT INTO `jz_construction_build_log` VALUES ('33', '201810-49505', '46', '63', '1539878400', '1', '1', '11', '11', '567,', '568,', '0', '1539928901', '1539928901', '完成', '挖款', '无');

-- ----------------------------
-- Table structure for jz_construction_build_log_detail
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_build_log_detail`;
CREATE TABLE `jz_construction_build_log_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL COMMENT '施工日志id',
  `part` varchar(255) DEFAULT NULL COMMENT '施工班组',
  `people` int(11) DEFAULT NULL COMMENT '工作人数',
  `mes` varchar(255) DEFAULT NULL COMMENT '施工内容',
  `ps` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_build_log_detail
-- ----------------------------
INSERT INTO `jz_construction_build_log_detail` VALUES ('14', '33', '8', '11', '挖款', '的', '1539928901', '1539928901', null);

-- ----------------------------
-- Table structure for jz_construction_change
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_change`;
CREATE TABLE `jz_construction_change` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '变更名称',
  `maker` int(11) DEFAULT '1' COMMENT '填报人',
  `date` int(11) NOT NULL COMMENT '日期',
  `file` varchar(255) DEFAULT NULL,
  `obj_id` int(11) NOT NULL COMMENT '项目名称',
  `contract_id` int(11) NOT NULL COMMENT '合同id',
  `change_work` varchar(255) NOT NULL COMMENT '提出变更单位',
  `change_money` double(255,2) NOT NULL COMMENT '变更金额',
  `big_money` varchar(255) DEFAULT NULL COMMENT '金额大写',
  `pre_file` varchar(255) DEFAULT NULL COMMENT '原图纸',
  `change_file` varchar(255) DEFAULT NULL COMMENT '变更后图纸',
  `change_cause` varchar(255) DEFAULT NULL COMMENT '变更原因',
  `change_mes` varchar(255) DEFAULT NULL COMMENT '变更内容',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_change
-- ----------------------------
INSERT INTO `jz_construction_change` VALUES ('1', '5b8f9448814b5', '变更1', '1', '1536076800', null, '1', '1', '1', '10120000.00', '1', null, null, '1', '1', '1', '0', '1536136353', '1536136353');
INSERT INTO `jz_construction_change` VALUES ('2', '201809-10198', '第一次变更', '43', '1537459200', null, '8', '0', '金耀', '5000000.00', '伍佰万', '511,', '512,', '任性', '任性', '任性', '0', '1537498750', '1537498750');
INSERT INTO `jz_construction_change` VALUES ('3', '201810-97504', '我要变更', '46', '1539792000', '0', '3', '1', '甲方1', '200000.00', '贰拾万', '562,', '563,', '甲方需求', '改建楼层', '无', '0', '1539829154', '1539831119');

-- ----------------------------
-- Table structure for jz_construction_makeplan
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_makeplan`;
CREATE TABLE `jz_construction_makeplan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '交底名称',
  `obj_id` int(11) NOT NULL COMMENT '项目名称',
  `work` varchar(255) NOT NULL COMMENT '施工单位',
  `maker` int(11) DEFAULT '1' COMMENT '填报人',
  `date` int(11) NOT NULL COMMENT '日期',
  `address` varchar(255) NOT NULL COMMENT '交底地址',
  `btell_work` varchar(255) NOT NULL COMMENT '被交底单位',
  `tell_man` varchar(255) NOT NULL COMMENT '交底人',
  `btell_man` varchar(255) NOT NULL COMMENT '被交底人',
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `mes` varchar(255) DEFAULT NULL COMMENT '交底内容',
  `remark` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_makeplan
-- ----------------------------
INSERT INTO `jz_construction_makeplan` VALUES ('1', '5b8f9dd54e3a7', '交底1', '1', '哈', '1', '1536076800', '111', '111', '111', '1111', null, '111', '111', '0', '1536138795', '1536138795');
INSERT INTO `jz_construction_makeplan` VALUES ('2', '5b8f9e3462996', '交底2', '1', '111', '1', '1536076800', '111', '111', '111', '1111', null, '11', '111', '0', '1536138817', '1536138817');
INSERT INTO `jz_construction_makeplan` VALUES ('3', '20180906120752', '312312', '1', '31312', '1', '1536163200', '3123', '321312', '321312', '312312', null, '3122', '3123', '0', '1536206883', '1536206883');
INSERT INTO `jz_construction_makeplan` VALUES ('4', '20180906120826', '3123', '2', '31232', '1', '1536163200', '321312', '321312', '312312', '312312', null, '31231', '31312', '0', '1536206918', '1536206918');
INSERT INTO `jz_construction_makeplan` VALUES ('5', '编号随机数201809-56551', '大', '2', '大萨达', '1', '1536768000', '撒大声地', '大萨达', '打算', '打算', null, '1', '1', '0', '1536823798', '1536823798');
INSERT INTO `jz_construction_makeplan` VALUES ('6', '编号随机数201809-56551', '大', '2', '大萨达', '1', '1536768000', '撒大声地', '大萨达', '打算', '打算', null, '1', '1', '0', '1536823803', '1536823803');
INSERT INTO `jz_construction_makeplan` VALUES ('7', '编号随机数201809-56551', '大', '2', '大萨达', '1', '1536768000', '撒大声地', '大萨达', '打算', '打算', null, '1', '1', '0', '1536823889', '1536823889');
INSERT INTO `jz_construction_makeplan` VALUES ('8', '201809-52494', '金耀科技九月份交底', '2', '', '1', '1536768000', '打开撒即可倒垃圾', '打电话看见就看', '大萨达', '是的撒', null, '大家还能和健康', '大萨达', '0', '1536825957', '1536825957');
INSERT INTO `jz_construction_makeplan` VALUES ('9', '201809-55534', 'fsfs', '1', '三国杀帝国时代', '1', '1536768000', '放松放松', 'sfsf', 'fsfs', 'fsf', null, 'sfs', 'fsfsfs', '0', '1536826039', '1536826039');
INSERT INTO `jz_construction_makeplan` VALUES ('10', '201809-55534', 'fsfs', '1', '三国杀帝国时代', '1', '1536768000', '放松放松', 'sfsf', 'fsfs', 'fsf', null, 'sfs', 'fsfsfs', '0', '1536826054', '1536826054');
INSERT INTO `jz_construction_makeplan` VALUES ('11', '201809-97989', 'sfs', '1', 'sfsf', '1', '1536768000', 'sfsf', 'sfsfsf', 'sfs', 'sfsf', null, 'fsfs', 'fsfs', '0', '1536826165', '1536826165');
INSERT INTO `jz_construction_makeplan` VALUES ('12', '201809-98564', 'fsfs', '3', 'fsfsfsfs', '1', '1535385600', 'sfsf', 'sfsf', 'sfsfsf', 'sfs', null, 'fsfs', 'fsfs', '0', '1536826346', '1536826346');
INSERT INTO `jz_construction_makeplan` VALUES ('13', '201810-99555', '交底', '5', '擎天柱', '46', '1539792000', 'NCV', '都是大萨达', '的的', '大萨达所', null, '无', '', '0', '1539831869', '1539831869');
INSERT INTO `jz_construction_makeplan` VALUES ('14', '201810-99555', '交底', '5', '擎天柱', '46', '1539792000', 'NCV', '都是大萨达', '的的', '大萨达所', null, '无', '', '0', '1539831935', '1539831935');
INSERT INTO `jz_construction_makeplan` VALUES ('15', '201810-99555', '交底', '5', '擎天柱', '46', '1539792000', 'NCV', '都是大萨达', '的的', '大萨达所', null, '无', '', '0', '1539831949', '1539831949');

-- ----------------------------
-- Table structure for jz_construction_materialin
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_materialin`;
CREATE TABLE `jz_construction_materialin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL COMMENT '入场编号',
  `name` varchar(255) NOT NULL COMMENT '入场名称',
  `maker` int(11) NOT NULL COMMENT '申请人',
  `source_id` int(11) NOT NULL COMMENT '源单号',
  `date` int(11) NOT NULL COMMENT '日期',
  `file` varchar(25) DEFAULT NULL COMMENT '附件Id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_materialin
-- ----------------------------
INSERT INTO `jz_construction_materialin` VALUES ('1', '201810-10298', '十月份材料入场', '46', '5', '0', '575,', null, '1539936566', '1539936566', null);
INSERT INTO `jz_construction_materialin` VALUES ('2', '201810-56554', '测试入场', '46', '5', '0', '576,', null, '1539936791', '1539936791', '0');

-- ----------------------------
-- Table structure for jz_construction_materialin_detail
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_materialin_detail`;
CREATE TABLE `jz_construction_materialin_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned DEFAULT NULL COMMENT '入场明细id',
  `material_name` int(11) unsigned zerofill NOT NULL COMMENT '材料名称',
  `material_size` varchar(50) NOT NULL DEFAULT '0' COMMENT '材料型号',
  `unit` varchar(255) NOT NULL DEFAULT '0' COMMENT '单位',
  `num` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '实收数量',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_materialin_detail
-- ----------------------------
INSERT INTO `jz_construction_materialin_detail` VALUES ('1', '1', '00000000001', '0022', '0022', '1000.00', '', '1539936566', '1539936566');
INSERT INTO `jz_construction_materialin_detail` VALUES ('2', '2', '00000000012', 'DL003号', 'DL003号', '11111.00', '', '1539936791', '1539936791');

-- ----------------------------
-- Table structure for jz_construction_materialplan
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_materialplan`;
CREATE TABLE `jz_construction_materialplan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '计划名称',
  `obj_id` int(11) NOT NULL COMMENT '项目名称',
  `maker` int(11) unsigned DEFAULT '1' COMMENT '编制人',
  `date` int(11) NOT NULL,
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0',
  `sum` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '合计',
  `big_sum` varchar(255) DEFAULT NULL COMMENT '大写金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_materialplan
-- ----------------------------
INSERT INTO `jz_construction_materialplan` VALUES ('5', '201810-55574', '测试材料申领', '52', '45', '1539705600', null, '', '1539759130', '1539759130', '0', '121.00', '壹佰贰拾壹圆');

-- ----------------------------
-- Table structure for jz_construction_materialplan_detail
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_materialplan_detail`;
CREATE TABLE `jz_construction_materialplan_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned DEFAULT NULL COMMENT '需用计划id',
  `material_name` int(11) unsigned zerofill NOT NULL COMMENT '材料名称',
  `material_size` varchar(50) NOT NULL DEFAULT '0' COMMENT '材料型号',
  `unit` varchar(255) NOT NULL DEFAULT '0' COMMENT '单位',
  `num` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '需用数量',
  `pre_price` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '参考价格',
  `count` double(12,2) NOT NULL DEFAULT '0.00' COMMENT '小计',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_materialplan_detail
-- ----------------------------
INSERT INTO `jz_construction_materialplan_detail` VALUES ('1', '5', '00000000001', '0022', 't', '11.00', '11.00', '121.00', null, '1539759130', '1539759130');

-- ----------------------------
-- Table structure for jz_construction_quality_change
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_quality_change`;
CREATE TABLE `jz_construction_quality_change` (
  `number` varchar(50) NOT NULL,
  `maker` int(11) NOT NULL COMMENT '填报人',
  `obj_id` int(11) NOT NULL COMMENT '项目id',
  `mod_mes` varchar(255) NOT NULL COMMENT '整改意见',
  `modify` varchar(255) NOT NULL COMMENT '修改版',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_quality_change
-- ----------------------------

-- ----------------------------
-- Table structure for jz_construction_quality_look
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_quality_look`;
CREATE TABLE `jz_construction_quality_look` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL COMMENT ' ',
  `date` int(11) NOT NULL,
  `obj_id` int(11) NOT NULL COMMENT '项目id',
  `maker` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '质检员',
  `part` varchar(255) NOT NULL COMMENT '检查部位',
  `mes` varchar(255) NOT NULL COMMENT '检查情况',
  `suggest` varchar(255) NOT NULL COMMENT '检查建议',
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_quality_look
-- ----------------------------
INSERT INTO `jz_construction_quality_look` VALUES ('8', '201809-52994', '1536595200', '6', '1', '中部', '好', '良好', '', '没有', '0', '1536651601', '1537496831');
INSERT INTO `jz_construction_quality_look` VALUES ('11', '201810-56481', '1539878400', '5', '48', '22222222', '222', '222', '', '2222', '0', '1539914644', '1539914644');
INSERT INTO `jz_construction_quality_look` VALUES ('12', '201810-57559', '1539878400', '4', '48', '2222', '2', '2', '', '2', '0', '1539915267', '1539915267');
INSERT INTO `jz_construction_quality_look` VALUES ('13', '201810-55994', '1539878400', '5', '46', '222', '22', '22', '566,', '222', '0', '1539928245', '1539928245');

-- ----------------------------
-- Table structure for jz_construction_safe_change
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_safe_change`;
CREATE TABLE `jz_construction_safe_change` (
  `number` varchar(50) NOT NULL,
  `date` int(11) NOT NULL,
  `obj_id` int(11) NOT NULL COMMENT '项目id',
  `obj_scop` varchar(255) NOT NULL COMMENT '项目规划',
  `rate` varchar(255) NOT NULL COMMENT '形象进度',
  `checker` int(11) NOT NULL COMMENT '检查人',
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `mes` varchar(255) NOT NULL COMMENT '基本情况',
  `check_mes` varchar(255) NOT NULL COMMENT '检查情况',
  `check_suggest` varchar(255) NOT NULL COMMENT '检查建议',
  `re_check` varchar(255) NOT NULL COMMENT '复查建议',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_safe_change
-- ----------------------------

-- ----------------------------
-- Table structure for jz_construction_safe_log
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_safe_log`;
CREATE TABLE `jz_construction_safe_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `maker` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写人',
  `obj_id` int(11) NOT NULL COMMENT '项目id',
  `people_number` int(11) NOT NULL COMMENT '出勤人数',
  `part` int(11) NOT NULL COMMENT '部门',
  `temperature` varchar(255) NOT NULL COMMENT '温度',
  `date` int(11) NOT NULL COMMENT '时间',
  `build_part` varchar(255) NOT NULL COMMENT '施工部位',
  `safe_mes` varchar(255) NOT NULL COMMENT '施工安全情况',
  `safe_edu` varchar(255) NOT NULL COMMENT '安全教育情况',
  `safe_check` varchar(255) NOT NULL COMMENT '安全检查情况',
  `other` varchar(255) DEFAULT NULL COMMENT '其他',
  `status` tinyint(255) unsigned DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_safe_log
-- ----------------------------
INSERT INTO `jz_construction_safe_log` VALUES ('5', '201809-10098', '1', '6', '8', '0', '5℃', '1536681600', '中部写字楼', '安全良好', '优秀', '良好', '无', '0', '1536714641', '1536823278');
INSERT INTO `jz_construction_safe_log` VALUES ('6', '201809-48565', '44', '6', '50', '11', '4℃', '1537459200', '中部燕尾楼', '良好', '很好', '良好', '无', '0', '1537497981', '1537498149');
INSERT INTO `jz_construction_safe_log` VALUES ('7', '201810-54495', '46', '3', '20', '8', '20', '1539273600', '1栋建筑', '1栋2楼阳台有裂缝', '40分钟安全课堂教育', '良好', '无', '0', '1539333312', '1539827518');
INSERT INTO `jz_construction_safe_log` VALUES ('8', '201810-55100', '46', '4', '20', '4', '20', '1539792000', '中部', '良好', '优秀', '无误', '无明显状况', '0', '1539846957', '1539846957');
INSERT INTO `jz_construction_safe_log` VALUES ('9', '201810-50555', '46', '4', '1', '5', '11', '1539878400', '中部', '不要', '不要', '不要', '不要', '0', '1539928321', '1539928321');

-- ----------------------------
-- Table structure for jz_construction_service_clear
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_service_clear`;
CREATE TABLE `jz_construction_service_clear` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '结算名',
  `obj_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `money` double(15,2) NOT NULL COMMENT '合同额',
  `service_line` int(11) NOT NULL COMMENT '劳务班组',
  `maker` int(11) NOT NULL COMMENT '经办人',
  `date` int(11) NOT NULL DEFAULT '0',
  `fines` double(15,2) DEFAULT NULL COMMENT '罚款',
  `cut_money` double(15,2) DEFAULT NULL COMMENT '扣款',
  `clear_money` double(15,2) unsigned zerofill DEFAULT NULL COMMENT '结算金额',
  `bigmoney` varchar(255) DEFAULT NULL COMMENT '金额大写',
  `clear_mes` varchar(255) DEFAULT NULL COMMENT '结算说明',
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `status` tinyint(1) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `count_sum` double(15,2) DEFAULT NULL,
  `big_sum` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `count_money` double(15,2) DEFAULT NULL COMMENT '结算价款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_service_clear
-- ----------------------------
INSERT INTO `jz_construction_service_clear` VALUES ('21', '201810-97495', 'yzftest', '3', '4', '423423.00', '40', '43', '1539705600', '2423.00', '23423.00', null, '', '2342', null, null, '1539916625', '1539916625', '9907929.00', '玖佰玖拾万零柒仟玖佰贰拾玖圆', '', null, null);
INSERT INTO `jz_construction_service_clear` VALUES ('22', '201810-52515', '劳务结算', '3', '4', '6000000.00', '41', '43', '1541433600', '2000.00', '20.00', null, '', '', null, null, '1539929458', '1539929458', '3000000.00', '叁佰万', '', null, null);
INSERT INTO `jz_construction_service_clear` VALUES ('23', '201810-99981', '测试', '61', '4', '1333333.00', '41', '51', '1539878400', '0.00', '0.00', null, null, '1', null, null, '1539939504', '1539939504', '10000.00', '壹万', '', null, null);

-- ----------------------------
-- Table structure for jz_construction_service_clear_detail
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_service_clear_detail`;
CREATE TABLE `jz_construction_service_clear_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父级结算id',
  `code` int(11) DEFAULT '1' COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '清单子目',
  `unit` varchar(255) NOT NULL COMMENT '单位',
  `contract_num` double(15,2) NOT NULL COMMENT '合同数量',
  `contract_price` double(15,2) NOT NULL COMMENT '合同单价',
  `fact_num` double(15,2) NOT NULL COMMENT '实际完成数量',
  `fact_price` double(15,2) NOT NULL COMMENT '实际执行价',
  `count_money` double(15,2) DEFAULT NULL COMMENT '结算价款',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `count_sum` double(15,2) DEFAULT NULL,
  `big_sum` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_service_clear_detail
-- ----------------------------
INSERT INTO `jz_construction_service_clear_detail` VALUES ('3', '3', '1', '修建阳台', 'm2', '100.00', '100.00', '20.00', '20.00', '400.00', 'WU1', '0.00', '', '1536743204', '1536743204');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('4', '10', '0', '建筑', 'm2', '10.00', '10.00', '10.00', '10.00', '100.00', null, null, null, '1539678659', '1539844920');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('5', '16', '1', 'dsa1', 'das', '100.00', '100.00', '100.00', '100.00', '10000.00', null, null, null, '1539683045', '1539683045');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('6', '17', '1', '水泥工', 'm2', '100.00', '100.00', '100.00', '100.00', '10000.00', null, null, null, '1539857400', '1539857400');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('7', '18', '1231', '2312', '3123', '123.00', '1231.00', '2321.00', '3213123.00', '7457658483.00', null, null, null, '1539858073', '1539858073');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('8', '19', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', null, null, null, '1539915930', '1539915930');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('9', '20', '0', '', '', '0.00', '0.00', '0.00', '0.00', '0.00', null, null, null, '1539915976', '1539915976');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('10', '21', '234', '23423', '423', '4234.00', '234.00', '23423.00', '423.00', '9907929.00', null, null, null, '1539916625', '1539916625');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('11', '22', '1', '水泥', 'm2', '1500.00', '200.00', '200.00', '15000.00', '3000000.00', null, null, null, '1539929458', '1539929458');
INSERT INTO `jz_construction_service_clear_detail` VALUES ('12', '23', '1', '水泥', 'm2', '100.00', '100.00', '100.00', '100.00', '10000.00', null, null, null, '1539939504', '1539939504');

-- ----------------------------
-- Table structure for jz_construction_service_rate
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_service_rate`;
CREATE TABLE `jz_construction_service_rate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `contract_money` double(15,2) NOT NULL,
  `service_line` int(11) NOT NULL,
  `maker` int(11) NOT NULL,
  `fines` double(15,2) DEFAULT NULL,
  `cut_money` double(15,2) DEFAULT NULL,
  `pay_type` varchar(50) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account` char(50) DEFAULT NULL,
  `pay_money` double(15,2) NOT NULL,
  `date` int(11) DEFAULT NULL,
  `back_money` double(15,2) DEFAULT '0.00',
  `bigmoney` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_service_rate
-- ----------------------------
INSERT INTO `jz_construction_service_rate` VALUES ('11', '201810-56100', 'setst', '3', '3', '13123.00', '40', '43', '123123.00', '12312.00', '0', '1221', '21211', '12121.00', '1540310400', null, '壹万贰仟壹佰贰拾壹圆', '', '12121', '1539911932', '1539911932', null);
INSERT INTO `jz_construction_service_rate` VALUES ('12', '201810-56100', 'setst', '3', '3', '13123.00', '40', '43', '123123.00', '12312.00', '0', '1221', '21211', '12121.00', '1540310400', null, '壹万贰仟壹佰贰拾壹圆', '', '12121', '1539911945', '1539911945', null);
INSERT INTO `jz_construction_service_rate` VALUES ('13', '201810-53575', 'yzftest', '4', '4', '2423.00', '40', '43', '234234.00', '234234.00', '0', '234234', '234234234', '23423.00', '1540310400', null, '贰万叁仟肆佰贰拾叁圆', '', '23423', '1539916716', '1539916716', null);
INSERT INTO `jz_construction_service_rate` VALUES ('14', '201810-54985', 'yzftest2', '4', '4', '1231.00', '40', '43', '312123.00', '123213.00', '0', '12321', '123123', '123213.00', '1540396800', null, '壹拾贰万叁仟贰佰壹拾叁圆', '', '123213', '1539916770', '1539916770', null);
INSERT INTO `jz_construction_service_rate` VALUES ('15', '201810-48545', 'yzftest', '4', '4', '13213.00', '40', '43', '12312.00', '12312.00', '0', '312312', '123123123', '12312.00', '1539792000', '0.00', '壹万贰仟叁佰壹拾贰圆', '', '12312', '1539919622', '1539919622', null);
INSERT INTO `jz_construction_service_rate` VALUES ('16', '201810-57569', '213221', '5', '4', '21312.00', '0', '43', '12312.00', '123123.00', '1', '123123', '123213', '123123.00', '1539878400', '0.00', '壹拾贰万叁仟壹佰贰拾叁圆', '', '', '1539937881', '1539937881', null);

-- ----------------------------
-- Table structure for jz_construction_subpick_clear
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_subpick_clear`;
CREATE TABLE `jz_construction_subpick_clear` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '结算名称',
  `obj_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL COMMENT '合同名称',
  `contract_money` double(15,2) NOT NULL COMMENT '合同金额',
  `work` varchar(255) NOT NULL COMMENT '分包单位',
  `maker` int(11) NOT NULL COMMENT '经办人',
  `date` int(11) NOT NULL,
  `fines` double(15,2) DEFAULT NULL COMMENT '罚款',
  `cut_money` double(15,2) DEFAULT NULL COMMENT '扣款',
  `count_money` double(15,2) NOT NULL DEFAULT '0.00' COMMENT '结算金额',
  `bigmoney` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL COMMENT '结算说明',
  `file` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `all_sum` double(15,2) DEFAULT NULL,
  `big_sum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_subpick_clear
-- ----------------------------
INSERT INTO `jz_construction_subpick_clear` VALUES ('16', '201810-51505', '32131', '53', '1', '10000000.00', '40', '46', '1539705600', '3213.00', '32131.00', '0.00', '', '', null, '1539748048', '1539748048', null, '103241401344.00', '');
INSERT INTO `jz_construction_subpick_clear` VALUES ('17', '201810-51985', '1111', '55', '2', '10000000.00', '40', '46', '0', '11.00', '3123.00', '0.00', '321313', '', null, '1539748405', '1539748405', null, '68508914373.00', '');
INSERT INTO `jz_construction_subpick_clear` VALUES ('18', '201810-50525', '2131', '53', '2', '10000000.00', '40', '46', '0', '112.00', '22.00', '0.00', '', '', null, '1539748713', '1539748713', null, '121.00', '叁佰贰拾壹万叁仟贰佰壹拾叁圆');
INSERT INTO `jz_construction_subpick_clear` VALUES ('19', '201810-98549', '分包结算', '55', '2', '10000000.00', '40', '46', '0', '50.00', '50.00', '900000000.00', '', '', null, '1539754834', '1539755037', null, '10000000.00', '玖亿');
INSERT INTO `jz_construction_subpick_clear` VALUES ('20', '201810-97505', '分包结算', '4', '3', '10000000.00', '40', '46', '1539792000', '20.00', '20.00', '0.00', '', '11111', null, '1539842973', '1539842973', null, '1110000.00', '壹佰壹拾壹万');
INSERT INTO `jz_construction_subpick_clear` VALUES ('21', '201810-97102', 'test', '61', '4', '23242424.00', '40', '72', '1539446400', '131231.00', '123123.00', '12312.00', '2131', '123123', null, '1539912294', '1539912294', null, '1312.00', '壹仟叁佰壹拾贰圆');
INSERT INTO `jz_construction_subpick_clear` VALUES ('22', '201810-10054', '13213123', '63', '8', '0.00', '', '72', '1538323200', '123.00', '123.00', '12312.00', '123123', '3123', null, '1539914779', '1539914779', null, '0.00', '壹万贰仟叁佰壹拾贰圆');

-- ----------------------------
-- Table structure for jz_construction_subpick_clear_detail
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_subpick_clear_detail`;
CREATE TABLE `jz_construction_subpick_clear_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父级结算id',
  `code` int(11) unsigned zerofill DEFAULT NULL COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '清单子目',
  `unit` varchar(255) NOT NULL COMMENT '单位',
  `contract_num` double(15,2) NOT NULL COMMENT '合同数量',
  `contract_price` double(15,2) NOT NULL COMMENT '合同单价',
  `fact_num` double(15,2) NOT NULL COMMENT '实际完成数量',
  `fact_price` double(15,2) NOT NULL COMMENT '实际执行价',
  `all_money` double(15,2) NOT NULL DEFAULT '0.00' COMMENT '结算价款',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_subpick_clear_detail
-- ----------------------------
INSERT INTO `jz_construction_subpick_clear_detail` VALUES ('10', '16', null, '321', '323213', '12321321.00', '321321.00', '321312.00', '321312.00', '103241401344.00', '', '1539748048', '1539748048');
INSERT INTO `jz_construction_subpick_clear_detail` VALUES ('11', '17', null, '321323', '23213', '21321321.00', '3232132131.00', '21321.00', '3213213.00', '68508914373.00', '', '1539748405', '1539748405');
INSERT INTO `jz_construction_subpick_clear_detail` VALUES ('12', '18', null, '', '', '11.00', '11.00', '11.00', '11.00', '121.00', '', '1539748713', '1539748713');
INSERT INTO `jz_construction_subpick_clear_detail` VALUES ('13', '19', '00000000002', '阳台', 'M2', '100.00', '100.00', '100.00', '100.00', '100.00', '', '1539754834', '1539755037');
INSERT INTO `jz_construction_subpick_clear_detail` VALUES ('14', '20', null, '地面', 'm2', '10001.00', '1111.00', '1000.00', '1110.00', '1110000.00', '', '1539842973', '1539842973');
INSERT INTO `jz_construction_subpick_clear_detail` VALUES ('15', '21', null, '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1539912294', '1539912294');
INSERT INTO `jz_construction_subpick_clear_detail` VALUES ('16', '22', null, '', '', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1539914779', '1539914779');

-- ----------------------------
-- Table structure for jz_construction_subpick_rate
-- ----------------------------
DROP TABLE IF EXISTS `jz_construction_subpick_rate`;
CREATE TABLE `jz_construction_subpick_rate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  `contract_money` double(15,2) NOT NULL,
  `service_line` int(11) NOT NULL,
  `maker` int(11) NOT NULL,
  `fines` double(15,2) DEFAULT NULL,
  `cut_money` double(15,2) DEFAULT NULL,
  `pay_type` varchar(50) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account` char(50) DEFAULT NULL,
  `pay_money` double(15,2) NOT NULL,
  `date` int(11) DEFAULT NULL,
  `bigmoney` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `back_money` double(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_construction_subpick_rate
-- ----------------------------
INSERT INTO `jz_construction_subpick_rate` VALUES ('1', '201810-51491', '付款测试', '4', '1', '22222222.00', '41', '46', '22.00', '22.00', '请选择', 'dsd', '32131232132131', '520000.00', '1539705600', '伍拾贰万', '', '', '1539757064', '1539757064', null);
INSERT INTO `jz_construction_subpick_rate` VALUES ('2', '201810-97545', '312312', '4', '3', '1231.00', '40', '72', '123123.00', '12312.00', '0', '1231231', '123123', '12312.00', '1540396800', '壹万贰仟叁佰壹拾贰圆3', '', '123123', '1539912340', '1539912340', null);
INSERT INTO `jz_construction_subpick_rate` VALUES ('3', '201810-98971', '1312', '4', '5', '3123123.00', '40', '72', '213123.00', '123123.00', '0', '123123', '12312312', '3123123.00', '1540915200', '叁佰壹拾贰万叁仟壹佰贰拾叁圆', '', '', '1539912382', '1539912382', null);
INSERT INTO `jz_construction_subpick_rate` VALUES ('4', '201810-48565', '12312312', '4', '8', '3123123.00', '40', '72', '1231231.00', '23123213.00', '0', '12312312', '213123', '123123.00', '1540310400', '壹拾贰万叁仟壹佰贰拾叁圆', '', '123213', '1539914807', '1539914807', null);
INSERT INTO `jz_construction_subpick_rate` VALUES ('5', '201810-98569', 'sfsdfsfs', '4', '8', '1312312.00', '40', '72', '12312.00', '123123.00', '0', '123123', '12312', '12312.00', '1540396800', '壹万贰仟叁佰壹拾贰圆', '', '123123', '1539917516', '1539917516', null);
INSERT INTO `jz_construction_subpick_rate` VALUES ('6', '201810-51100', 'yzf123', '4', '8', '1231231.00', '40', '72', '2312312.00', '213123.00', '-1', '12312', '312321', '123123.00', '1539100800', '壹拾贰万叁仟壹佰贰拾叁圆', '', '1231231', '1539919722', '1539919722', null);
INSERT INTO `jz_construction_subpick_rate` VALUES ('7', '201810-48555', 'yzf123', '4', '8', '123123.00', '40', '72', '123123.00', '12.00', '-1', '3123123', '123123', '123123.00', '1539100800', '壹拾贰万叁仟壹佰贰拾叁圆', '', '123', '1539919796', '1539919796', '0.00');
INSERT INTO `jz_construction_subpick_rate` VALUES ('8', '201810-10110', '24234', '-1', '8', '2342342.00', '0', '72', '234234.00', '423.00', '0', '4324234', '32423423', '2342323.00', '1539100800', '贰佰叁拾肆万贰仟叁佰贰拾叁圆', '', '2342', '1539922467', '1539922467', '0.00');
INSERT INTO `jz_construction_subpick_rate` VALUES ('9', '201810-56554', '23423423', '4', '8', '234234.00', '40', '72', '234.00', '4234.00', '0', '3423', '234324', '2342.00', '1539187200', '贰仟叁佰肆拾贰圆', '', '23423', '1539922492', '1539922492', '0.00');
INSERT INTO `jz_construction_subpick_rate` VALUES ('10', '201810-10297', '23432', '4', '8', '423432.00', '40', '72', '23423423.00', '423.00', '-1', '4234', '234234', '23423.00', '1539187200', '贰万叁仟肆佰贰拾叁圆', '', '234324', '1539922510', '1539922510', '0.00');
INSERT INTO `jz_construction_subpick_rate` VALUES ('11', '201810-54535', '234234234', '-1', '8', '2342342.00', '40', '72', '234234.00', '4234234234.00', '-1', '23', '234', '234234.00', '1539100800', '贰拾叁万肆仟贰佰叁拾肆圆', '', '4234', '1539922550', '1539922550', '0.00');
INSERT INTO `jz_construction_subpick_rate` VALUES ('12', '201810-57995', '嘿嘿嘿', '3', '8', '3121231231.00', '42', '72', '1231231.00', '123213213.00', '36', '123213', '12312312', '3123213.00', '1539878400', '叁佰壹拾贰万叁仟贰佰壹拾叁圆', '', '12312312', '1539936953', '1539936953', '0.00');

-- ----------------------------
-- Table structure for jz_contract
-- ----------------------------
DROP TABLE IF EXISTS `jz_contract`;
CREATE TABLE `jz_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `c_name` varchar(255) NOT NULL COMMENT '客户名称',
  `c_phone` varchar(255) NOT NULL COMMENT '客户手机号',
  `pay_type` int(3) NOT NULL COMMENT '支付类型',
  `finish_type` int(3) NOT NULL COMMENT '交货方式',
  `money_type` int(3) NOT NULL COMMENT '币种',
  `rate` varchar(255) NOT NULL COMMENT '汇率',
  `money` varchar(255) NOT NULL COMMENT '金额',
  `bigmoney` varchar(255) NOT NULL COMMENT '金额大写',
  `sign_man` int(11) NOT NULL COMMENT '签订人',
  `s_time` int(11) NOT NULL COMMENT '开始时间',
  `e_time` int(11) NOT NULL COMMENT '结束时间',
  `address` varchar(255) NOT NULL COMMENT '签约地址',
  `maker` int(11) NOT NULL COMMENT '制单人',
  `date` int(11) NOT NULL COMMENT '日期',
  `file` text NOT NULL COMMENT '附件',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='//合同';

-- ----------------------------
-- Records of jz_contract
-- ----------------------------
INSERT INTO `jz_contract` VALUES ('1', 'HT201810-56485', '核弹合同', '小李子公公', '17779741367', '36', '51', '53', '1', '1200000', '壹佰贰拾万', '43', '1538928000', '1539014400', '湾里', '51', '1539619200', '0', '无', '1538988049', '1539051130', null);
INSERT INTO `jz_contract` VALUES ('2', 'HT201810-97549', '金耀大厦', '大王', '17779741366', '1', '2', '2', '0.2', '120000', '壹拾贰万', '51', '1538928000', '1539187200', '湾里', '51', '1538928000', '', '无', '1538988726', '1539051186', null);
INSERT INTO `jz_contract` VALUES ('3', 'HT201810-51505', '导弹合同', '楼下小黑', '17779741367', '36', '51', '53', '1', '1', '壹圆', '43', '1539705600', '1539705600', '湾里', '51', '1539705600', '', '', '1539766548', '1539830029', null);
INSERT INTO `jz_contract` VALUES ('4', 'HT201810-51505', '导弹合同', '小黑', '17779741367', '36', '51', '53', '1', '1', '壹圆', '43', '1539705600', '1539705600', '湾里', '51', '1539705600', '', '', '1539766558', '1539830007', '1539830007');
INSERT INTO `jz_contract` VALUES ('5', 'HT201810-51505', '导弹合同', '小黑', '17779741367', '36', '51', '53', '1', '1', '壹圆', '43', '1539705600', '1539705600', '湾里', '51', '1539705600', '', '', '1539766568', '1539830015', '1539830015');

-- ----------------------------
-- Table structure for jz_contractlabor
-- ----------------------------
DROP TABLE IF EXISTS `jz_contractlabor`;
CREATE TABLE `jz_contractlabor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(25) DEFAULT NULL COMMENT '部门',
  `name_id` int(11) DEFAULT NULL COMMENT '姓名ID',
  `code` varchar(25) DEFAULT NULL COMMENT '合同编号',
  `type` varchar(255) DEFAULT NULL COMMENT '合同类型',
  `stime` int(11) DEFAULT NULL COMMENT '签约日期',
  `ctime` int(11) DEFAULT NULL COMMENT '开始日期',
  `etime` int(11) DEFAULT NULL COMMENT '结束日期',
  `applytime` int(11) DEFAULT NULL COMMENT '试用结束日期',
  `trtime` varchar(25) DEFAULT NULL COMMENT '提前终止合同日期',
  `note` varchar(255) DEFAULT NULL,
  `file` varchar(25) DEFAULT NULL,
  `statu` tinyint(1) DEFAULT '1',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='//合同管理';

-- ----------------------------
-- Records of jz_contractlabor
-- ----------------------------
INSERT INTO `jz_contractlabor` VALUES ('1', '人事部', '42', '12312', '55', '1539532800', '1540137600', '1544544000', '1540310400', '1540742400', '劳动合同副本', '', '2', '1539573540', '1539928194', null);
INSERT INTO `jz_contractlabor` VALUES ('2', '金耀科技', '46', '1557531-123', '56', '1539532800', '1540051200', '1540828800', '1539878400', null, '合同合同', '', '1', '1539582890', '1539582921', '1539582921');
INSERT INTO `jz_contractlabor` VALUES ('3', '市场部', '43', '1223we', '57', '1539100800', '1539878400', '1539792000', '1539705600', '1539792000', '1', '', '0', '1539584034', '1539935420', null);
INSERT INTO `jz_contractlabor` VALUES ('5', '金耀科技', '48', 'assdawexzdsdf123', '55', '1539878400', '1540137600', '1540915200', '1540224000', null, '自行车自行车爱是打我', '', '1', '1539921091', '1539921358', null);

-- ----------------------------
-- Table structure for jz_feedback
-- ----------------------------
DROP TABLE IF EXISTS `jz_feedback`;
CREATE TABLE `jz_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL DEFAULT '0' COMMENT '任务ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '反馈人ID',
  `type` varchar(25) DEFAULT '反馈' COMMENT '类型 默认为反馈',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='//反馈信息';

-- ----------------------------
-- Records of jz_feedback
-- ----------------------------
INSERT INTO `jz_feedback` VALUES ('3', '6', '0', '反馈', '抢位置', '2018-08-15 16:00:47', '2018-08-15 16:00:47');
INSERT INTO `jz_feedback` VALUES ('4', '6', '0', '反馈', '阿萨德', '2018-08-16 09:42:48', '2018-08-16 09:42:48');

-- ----------------------------
-- Table structure for jz_flow
-- ----------------------------
DROP TABLE IF EXISTS `jz_flow`;
CREATE TABLE `jz_flow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '流程名称',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '表单id',
  `flow_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '流程类型',
  `sort` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `explain` varchar(255) DEFAULT NULL COMMENT '说明',
  `delete_time` int(10) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='流程发起';

-- ----------------------------
-- Records of jz_flow
-- ----------------------------
INSERT INTO `jz_flow` VALUES ('1', '出差报销单', '1', '28', '101', '1', '出差报销申请', null, null, null);
INSERT INTO `jz_flow` VALUES ('2', '请假申请日', '2', '28', '100', '1', '请假申请流程', '1538014507', null, '1538014507');
INSERT INTO `jz_flow` VALUES ('3', '施工日志', '4', '27', '100', '1', '施工日志', null, null, null);
INSERT INTO `jz_flow` VALUES ('5', '招标添', '6', '27', '100', '1', '', null, '1535362442', '1535362442');
INSERT INTO `jz_flow` VALUES ('6', '其奇公司', '3', '27', '100', '1', '', null, '1535702681', '1535702681');
INSERT INTO `jz_flow` VALUES ('7', '采购计划', '9', '30', '100', '1', '', null, '1535962725', '1535962725');
INSERT INTO `jz_flow` VALUES ('8', '施工组织方案', '5', '27', '100', '1', '', null, '1536141488', '1536141488');
INSERT INTO `jz_flow` VALUES ('9', '物资采购计划', '12', '30', '100', '1', '', null, '1536199608', '1536199608');
INSERT INTO `jz_flow` VALUES ('10', '劳务计划', '20', '34', '100', '1', '', null, '1537241450', '1537241450');
INSERT INTO `jz_flow` VALUES ('11', '新增仓库', '45', '35', '1', '0', '', null, '1538100157', '1539938502');
INSERT INTO `jz_flow` VALUES ('12', '项目审批', '15', '32', '100', '0', '', null, '1538982716', '1539849435');
INSERT INTO `jz_flow` VALUES ('13', '安全日志', '8', '31', '100', '1', '', null, '1539654166', '1539654166');
INSERT INTO `jz_flow` VALUES ('14', '收款单登记', '33', '32', '100', '1', '', null, '1539654606', '1539654606');
INSERT INTO `jz_flow` VALUES ('15', '竣工报告', '42', '32', '100', '1', '', null, '1539654704', '1539654704');
INSERT INTO `jz_flow` VALUES ('16', '报销登记', '43', '32', '100', '1', '', null, '1539654725', '1539654725');
INSERT INTO `jz_flow` VALUES ('17', '竣工申请', '44', '32', '100', '1', '', null, '1539654754', '1539654754');
INSERT INTO `jz_flow` VALUES ('18', '付款单登记', '39', '32', '100', '1', '', null, '1539654878', '1539654878');
INSERT INTO `jz_flow` VALUES ('19', '劳务付款申请', '29', '31', '100', '1', '劳务付款申请', null, '1539740061', '1539740061');
INSERT INTO `jz_flow` VALUES ('20', '物资采购合同', '14', '30', '100', '1', '', null, '1539755490', '1539755490');
INSERT INTO `jz_flow` VALUES ('21', '劳务合同', '24', '34', '100', '1', '招标劳务合同', null, '1539755647', '1539755647');
INSERT INTO `jz_flow` VALUES ('22', '租赁计划', '25', '31', '100', '1', '招标租赁计划', null, '1539755728', '1539755728');
INSERT INTO `jz_flow` VALUES ('23', '租赁合同', '27', '31', '100', '1', '招标租赁合同', null, '1539755748', '1539755748');
INSERT INTO `jz_flow` VALUES ('24', '分包付款申请', '47', '34', '100', '1', '分包付款申请', null, '1539756241', '1539756241');
INSERT INTO `jz_flow` VALUES ('25', '分包计划', '31', '31', '100', '1', '招标分包计划', null, '1539756046', '1539756046');
INSERT INTO `jz_flow` VALUES ('26', '分包合同', '32', '31', '100', '1', '招标分包合同', null, '1539756064', '1539756064');
INSERT INTO `jz_flow` VALUES ('27', '投标申请', '49', '32', '100', '1', '投标申请', null, '1539756234', '1539756234');
INSERT INTO `jz_flow` VALUES ('28', '招标文件购买申请', '50', '32', '100', '1', '招标文件购买申请', null, '1539756253', '1539756253');
INSERT INTO `jz_flow` VALUES ('29', '项目业务费申请', '52', '32', '100', '1', '项目业务费申请', null, '1539756283', '1539756283');
INSERT INTO `jz_flow` VALUES ('30', '证照录入', '19', '33', '100', '1', '证照录入', null, '1539756746', '1539756746');
INSERT INTO `jz_flow` VALUES ('31', '证照费用', '35', '33', '100', '1', '', null, '1539756765', '1539756765');
INSERT INTO `jz_flow` VALUES ('32', '证照借出', '40', '33', '100', '1', '', null, '1539756776', '1539756776');
INSERT INTO `jz_flow` VALUES ('33', '证照归还', '41', '33', '100', '1', '', null, '1539756786', '1539756786');
INSERT INTO `jz_flow` VALUES ('34', '合同管理', '59', '28', '100', '1', '', null, '1539756948', '1539756948');
INSERT INTO `jz_flow` VALUES ('35', '12', '2', '28', '100', '1', '', '1539757554', '1539757549', '1539757554');
INSERT INTO `jz_flow` VALUES ('36', '请假申请单', '2', '28', '100', '1', '', null, '1539757443', '1539848395');
INSERT INTO `jz_flow` VALUES ('37', '材料申领', '18', '31', '100', '1', '材料申领', null, '1539758408', '1539913934');

-- ----------------------------
-- Table structure for jz_flow_approval
-- ----------------------------
DROP TABLE IF EXISTS `jz_flow_approval`;
CREATE TABLE `jz_flow_approval` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `step_id` int(11) NOT NULL COMMENT '步骤id',
  `record_id` int(11) NOT NULL COMMENT '审批记录id',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '审批状态0审批中1成功-1失败',
  `remark` text COMMENT '备注',
  `before_id` int(11) DEFAULT NULL COMMENT '由前一步骤指定办理人id或职位id',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COMMENT='审批表';

-- ----------------------------
-- Records of jz_flow_approval
-- ----------------------------
INSERT INTO `jz_flow_approval` VALUES ('94', '22', '90', '1', '2121', null, '1539229281', '1539229342');
INSERT INTO `jz_flow_approval` VALUES ('95', '23', '90', '1', '', null, '1539229342', '1539229572');
INSERT INTO `jz_flow_approval` VALUES ('96', '25', '90', '1', '', null, '1539229572', '1539235872');
INSERT INTO `jz_flow_approval` VALUES ('100', '22', '94', '1', '', null, '1539323173', '1539323273');
INSERT INTO `jz_flow_approval` VALUES ('142', '23', '94', '1', null, null, '1539333802', '1539333802');
INSERT INTO `jz_flow_approval` VALUES ('143', '25', '94', '1', null, null, '1539333808', '1539333808');
INSERT INTO `jz_flow_approval` VALUES ('144', '22', '95', '1', null, null, '1539676481', '1539676481');
INSERT INTO `jz_flow_approval` VALUES ('145', '22', '96', '1', null, null, '1539676562', '1539676562');
INSERT INTO `jz_flow_approval` VALUES ('146', '23', '95', '1', null, null, '1539676843', '1539676843');
INSERT INTO `jz_flow_approval` VALUES ('147', '23', '96', '1', null, null, '1539676924', '1539676924');
INSERT INTO `jz_flow_approval` VALUES ('148', '25', '95', '1', null, null, '1539677206', '1539677206');
INSERT INTO `jz_flow_approval` VALUES ('149', '25', '96', '1', null, null, '1539677287', '1539677287');
INSERT INTO `jz_flow_approval` VALUES ('150', '22', '97', '1', null, null, '1539677705', '1539677705');
INSERT INTO `jz_flow_approval` VALUES ('153', '23', '97', '1', null, null, '1539679825', '1539679825');
INSERT INTO `jz_flow_approval` VALUES ('154', '22', '98', '1', null, null, '1539679896', '1539679896');
INSERT INTO `jz_flow_approval` VALUES ('155', '25', '97', '1', null, null, '1539680188', '1539680188');
INSERT INTO `jz_flow_approval` VALUES ('156', '23', '98', '1', null, null, '1539680257', '1539680257');
INSERT INTO `jz_flow_approval` VALUES ('157', '25', '98', '1', null, null, '1539680620', '1539680620');
INSERT INTO `jz_flow_approval` VALUES ('161', '50', '102', '1', '同同一', null, '1539741712', '1539743616');
INSERT INTO `jz_flow_approval` VALUES ('162', '50', '103', '1', '1', null, '1539742568', '1539743838');
INSERT INTO `jz_flow_approval` VALUES ('163', '50', '104', '1', '1', null, '1539744122', '1539744140');
INSERT INTO `jz_flow_approval` VALUES ('164', '25', '96', '1', null, null, '1539744754', '1539744754');
INSERT INTO `jz_flow_approval` VALUES ('165', '22', '105', '1', null, null, '1539744769', '1539744769');
INSERT INTO `jz_flow_approval` VALUES ('166', '23', '105', '1', null, null, '1539745132', '1539745132');
INSERT INTO `jz_flow_approval` VALUES ('167', '25', '105', '1', null, null, '1539745495', '1539745495');
INSERT INTO `jz_flow_approval` VALUES ('183', '22', '108', '-1', null, null, '1539761459', '1539761459');
INSERT INTO `jz_flow_approval` VALUES ('189', '1', '109', '-1', null, null, '1539762156', '1539762156');
INSERT INTO `jz_flow_approval` VALUES ('190', '1', '110', '-1', null, null, '1539762276', '1539762276');
INSERT INTO `jz_flow_approval` VALUES ('191', '1', '111', '-1', null, null, '1539762860', '1539762860');
INSERT INTO `jz_flow_approval` VALUES ('192', '1', '112', '-1', null, null, '1539762921', '1539762921');
INSERT INTO `jz_flow_approval` VALUES ('193', '1', '113', '-1', null, null, '1539763067', '1539763067');
INSERT INTO `jz_flow_approval` VALUES ('194', '1', '114', '-1', null, null, '1539763167', '1539763167');
INSERT INTO `jz_flow_approval` VALUES ('195', '23', '108', '-1', null, null, '1539763347', '1539763347');
INSERT INTO `jz_flow_approval` VALUES ('196', '1', '115', '-1', null, null, '1539763182', '1539763182');
INSERT INTO `jz_flow_approval` VALUES ('197', '1', '116', '-1', null, null, '1539763293', '1539763293');
INSERT INTO `jz_flow_approval` VALUES ('198', '1', '117', '-1', null, null, '1539765536', '1539765536');
INSERT INTO `jz_flow_approval` VALUES ('199', '1', '118', '-1', null, null, '1539765542', '1539765542');
INSERT INTO `jz_flow_approval` VALUES ('200', '1', '119', '-1', null, null, '1539765613', '1539765613');
INSERT INTO `jz_flow_approval` VALUES ('201', '1', '120', '-1', null, null, '1539765616', '1539765616');
INSERT INTO `jz_flow_approval` VALUES ('202', '22', '124', '-1', null, null, '1539767434', '1539767434');
INSERT INTO `jz_flow_approval` VALUES ('203', '1', '125', '0', null, null, '1539824680', '1539824680');
INSERT INTO `jz_flow_approval` VALUES ('204', '1', '126', '0', null, null, '1539824892', '1539824892');
INSERT INTO `jz_flow_approval` VALUES ('205', '62', '127', '1', 'fsfsf', null, '1539834357', '1539841250');
INSERT INTO `jz_flow_approval` VALUES ('206', '22', '128', '-1', null, null, '1539834597', '1539834597');
INSERT INTO `jz_flow_approval` VALUES ('207', '62', '129', '1', '31231', null, '1539834856', '1539843168');
INSERT INTO `jz_flow_approval` VALUES ('208', '66', '131', '1', '13123', null, '1539842554', '1539843174');
INSERT INTO `jz_flow_approval` VALUES ('209', '67', '132', '1', '123123', null, '1539842566', '1539843179');
INSERT INTO `jz_flow_approval` VALUES ('210', '64', '133', '1', '123123', null, '1539842577', '1539843185');
INSERT INTO `jz_flow_approval` VALUES ('211', '70', '135', '1', '12312', null, '1539843696', '1539843705');
INSERT INTO `jz_flow_approval` VALUES ('213', '50', '137', '0', null, null, '1539911932', '1539911932');
INSERT INTO `jz_flow_approval` VALUES ('214', '50', '138', '0', null, null, '1539911945', '1539911945');
INSERT INTO `jz_flow_approval` VALUES ('215', '52', '139', '0', null, null, '1539912339', '1539912339');
INSERT INTO `jz_flow_approval` VALUES ('216', '52', '140', '0', null, null, '1539912382', '1539912382');
INSERT INTO `jz_flow_approval` VALUES ('217', '52', '141', '0', null, null, '1539914807', '1539914807');
INSERT INTO `jz_flow_approval` VALUES ('218', '50', '142', '0', null, null, '1539916716', '1539916716');
INSERT INTO `jz_flow_approval` VALUES ('219', '50', '143', '0', null, null, '1539916770', '1539916770');
INSERT INTO `jz_flow_approval` VALUES ('220', '52', '144', '0', null, null, '1539917515', '1539917515');
INSERT INTO `jz_flow_approval` VALUES ('221', '50', '145', '0', null, null, '1539919622', '1539919622');
INSERT INTO `jz_flow_approval` VALUES ('222', '52', '146', '0', null, null, '1539919721', '1539919721');
INSERT INTO `jz_flow_approval` VALUES ('223', '52', '147', '0', null, null, '1539919796', '1539919796');
INSERT INTO `jz_flow_approval` VALUES ('224', '52', '148', '0', null, null, '1539922467', '1539922467');
INSERT INTO `jz_flow_approval` VALUES ('225', '52', '149', '0', null, null, '1539922491', '1539922491');
INSERT INTO `jz_flow_approval` VALUES ('226', '52', '150', '0', null, null, '1539922510', '1539922510');
INSERT INTO `jz_flow_approval` VALUES ('227', '52', '151', '0', null, null, '1539922550', '1539922550');
INSERT INTO `jz_flow_approval` VALUES ('228', '52', '152', '0', null, null, '1539936953', '1539936953');
INSERT INTO `jz_flow_approval` VALUES ('229', '50', '153', '0', null, null, '1539937881', '1539937881');
INSERT INTO `jz_flow_approval` VALUES ('230', '58', '154', '1', '', null, '1539938529', '1539938579');
INSERT INTO `jz_flow_approval` VALUES ('231', '55', '154', '1', '同意', null, '1539938579', '1539938934');
INSERT INTO `jz_flow_approval` VALUES ('232', '58', '155', '1', '同意', null, '1539938885', '1539938903');
INSERT INTO `jz_flow_approval` VALUES ('233', '55', '155', '1', '同意', null, '1539938903', '1539939161');
INSERT INTO `jz_flow_approval` VALUES ('234', '58', '156', '1', '阿萨德', null, '1539939038', '1539939055');
INSERT INTO `jz_flow_approval` VALUES ('235', '55', '156', '-1', '不同意', null, '1539939055', '1539939306');

-- ----------------------------
-- Table structure for jz_flow_form
-- ----------------------------
DROP TABLE IF EXISTS `jz_flow_form`;
CREATE TABLE `jz_flow_form` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自定义表单',
  `title` varchar(255) NOT NULL COMMENT '表单名称',
  `type` int(11) NOT NULL COMMENT '表单类型',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1启用0禁用',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `delete_time` int(10) DEFAULT NULL,
  `form_url` varchar(50) NOT NULL COMMENT '表单提交的地址',
  `form_details` varchar(50) DEFAULT '' COMMENT '查看页url',
  `table` varchar(50) DEFAULT NULL COMMENT '表名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='设计表单';

-- ----------------------------
-- Records of jz_flow_form
-- ----------------------------
INSERT INTO `jz_flow_form` VALUES ('1', '出差报销单', '28', '100', '1', '1534312672', '1534312672', null, '', '', null);
INSERT INTO `jz_flow_form` VALUES ('2', '请假申请单', '28', '100', '1', '1534318480', '1534318480', null, 'admin/leave/leave_create', 'admin/leave/leave_read', '');
INSERT INTO `jz_flow_form` VALUES ('3', '其奇公司1', '27', '100', '1', '1534319748', '1535097051', null, '', '', null);
INSERT INTO `jz_flow_form` VALUES ('4', '施工日志', '27', '100', '1', '1534998647', '1534998647', null, 'admin/construction/buildlog_add', 'admin/construction/buildlog_detail', null);
INSERT INTO `jz_flow_form` VALUES ('5', '施工组织方案', '27', '100', '1', '1534998735', '1534998735', null, '', '', null);
INSERT INTO `jz_flow_form` VALUES ('6', '招标', '27', '100', '1', '1535362337', '1535362337', null, '', '', null);
INSERT INTO `jz_flow_form` VALUES ('8', '安全日志', '31', '100', '1', '1535955180', '1535955180', null, 'admin/construction/safe_add', 'admin/construction/safe_detail', null);
INSERT INTO `jz_flow_form` VALUES ('9', '采购计划', '30', '100', '1', '1535962624', '1535962624', null, 'admin/purchasePlan/add', 'admin/PurchasePlan/details', null);
INSERT INTO `jz_flow_form` VALUES ('10', '安全日志添加', '31', '100', '1', '1536026304', '1536030937', '1536030937', 'admin/construction/safe', '', null);
INSERT INTO `jz_flow_form` VALUES ('11', '物资招标采购计划', '30', '100', '1', '1536026539', '1536029384', '1536029384', 'admin/purchase/save', '', null);
INSERT INTO `jz_flow_form` VALUES ('12', '物资采购计划', '30', '100', '1', '1536029411', '1536029411', null, 'admin/purchase/index', 'admin/purchase/details', 'purchase_plan');
INSERT INTO `jz_flow_form` VALUES ('13', '质量检查', '31', '100', '1', '1536030950', '1536030950', null, 'admin/construction/quality_add', 'admin/construction/quality_detail', null);
INSERT INTO `jz_flow_form` VALUES ('14', '物资采购合同', '30', '100', '1', '1536114651', '1536114651', null, 'admin/purchase/contract', 'admin/purchase/appoint_details', 'purchase_contract');
INSERT INTO `jz_flow_form` VALUES ('15', '项目立项', '32', '100', '1', '1536127590', '1536127590', null, 'admin/projectList/add', 'admin/ProjectList/details', 'project_list');
INSERT INTO `jz_flow_form` VALUES ('16', '设计变更', '31', '100', '1', '1536134834', '1536134834', null, 'admin/construction/change_add', 'admin/construction/change_detail', null);
INSERT INTO `jz_flow_form` VALUES ('17', '技术交底', '31', '100', '1', '1536137330', '1536137330', null, 'admin/construction/makeplan_add', 'admin/construction/makeplan_detail', null);
INSERT INTO `jz_flow_form` VALUES ('18', '材料申领', '31', '100', '1', '1536199827', '1536199827', null, 'admin/construction/materialplan_add', '', null);
INSERT INTO `jz_flow_form` VALUES ('19', '证照录入', '33', '100', '1', '1536202709', '1536202709', null, 'admin/certificates/add', 'admin/certificates/zzck', null);
INSERT INTO `jz_flow_form` VALUES ('20', '劳务计划', '34', '100', '1', '1536204266', '1536204266', null, 'admin/laborPlan/labor_index', 'admin/LaborPlan/labor_details', null);
INSERT INTO `jz_flow_form` VALUES ('21', '物料需求计划', '32', '100', '1', '1536302180', '1536305118', '1536305118', 'admin/ProjectBasedCost/add', '', null);
INSERT INTO `jz_flow_form` VALUES ('22', '材料总计划', '32', '100', '1', '1536310684', '1536310684', '1536305118', 'admin/ProjectBasedCost/add', '', null);
INSERT INTO `jz_flow_form` VALUES ('23', '项目类型', '32', '100', '1', '1536544711', '1537498528', '1537498528', 'admin/ProjectList/typeAdd', '', null);
INSERT INTO `jz_flow_form` VALUES ('24', '劳务合同', '34', '100', '1', '1536545766', '1536545766', null, 'admin/laborPlan/contract', 'admin/LaborPlan/contract_details', null);
INSERT INTO `jz_flow_form` VALUES ('25', '租赁计划', '31', '100', '1', '1536565040', '1536565040', null, 'admin/leasePlan/lease_index', 'admin/LeasePlan/lease_detail', null);
INSERT INTO `jz_flow_form` VALUES ('26', '质量等级', '32', '100', '1', '1536632972', '1537498528', '1537498528', 'admin/ProjectList/qualityAdd', '', null);
INSERT INTO `jz_flow_form` VALUES ('27', '租赁合同', '31', '100', '1', '1536638397', '1536638397', null, 'admin/leasePlan/leasecontract', 'admin/LeasePlan/leaseconlist_details', null);
INSERT INTO `jz_flow_form` VALUES ('28', '劳务结算', '31', '100', '1', '1536733324', '1536733324', null, 'admin/construction/ServiceClearAdd', 'admin/construction/ServiceClearDetails', '');
INSERT INTO `jz_flow_form` VALUES ('29', '劳务付款', '31', '100', '1', '1536746052', '1536746052', null, 'admin/construction/ServiceRateAdd', 'admin/construction/ServiceRateDetail', 'construction_service_rate');
INSERT INTO `jz_flow_form` VALUES ('30', '物料需用计划', '32', '100', '1', '1536800698', '1536800698', null, 'admin/projectBasedCost/add', 'admin/ProjectBasedCost/details', 'project_based_cost');
INSERT INTO `jz_flow_form` VALUES ('31', '分包计划', '31', '100', '1', '1536809580', '1536809580', null, 'admin/subPlan/sub_index', 'admin/SubPlan/sub_details', null);
INSERT INTO `jz_flow_form` VALUES ('32', '分包合同', '31', '100', '1', '1536818046', '1536818046', null, 'admin/subPlan/sub_contract', 'admin/SubPlan/subcontract_details', null);
INSERT INTO `jz_flow_form` VALUES ('33', '收款单登记', '32', '100', '1', '1536891373', '1536891373', null, 'admin/completeInvoiceOpen/add', 'admin/completeInvoiceOpen/view', 'complete_invoice_open');
INSERT INTO `jz_flow_form` VALUES ('34', '施工阶段分包结算', '34', '100', '1', '1536893548', '1536893548', null, 'admin/construction/SubpickAdd', 'admin/construction/SubpickClearDetail', 'construction_subpick_clear');
INSERT INTO `jz_flow_form` VALUES ('35', '证件费用', '33', '100', '1', '1536893832', '1536893832', null, 'admin/certificates/moneyadd', 'admin/certificates/moneyck', null);
INSERT INTO `jz_flow_form` VALUES ('36', '进度计划', '32', '100', '1', '1536896660', '1536896660', '1536305118', 'admin/ProjectProgressPlan/add', '', null);
INSERT INTO `jz_flow_form` VALUES ('37', '进度计划', '32', '100', '1', '1536896909', '1536896909', null, 'admin/projectProgressPlan/add', 'admin/ProjectProgressPlan/details', null);
INSERT INTO `jz_flow_form` VALUES ('38', '收票登记', '32', '100', '1', '1536907391', '1536907558', '1536305118', 'admin/completioninvoiceput/add', '', null);
INSERT INTO `jz_flow_form` VALUES ('39', '付款单登记', '32', '100', '1', '1536909934', '1536909934', null, 'admin/completeInvoicePut/add', 'admin/completeInvoicePut/view', 'complete_invoice_put');
INSERT INTO `jz_flow_form` VALUES ('40', '证件借出', '33', '19', '1', '1537146914', '1537146914', null, 'admin/certificates/outadd', 'admin/certificates/outck', null);
INSERT INTO `jz_flow_form` VALUES ('41', '证照归还', '33', '100', '1', '1537156294', '1537156294', null, 'admin/certificates/inadd', 'admin/certificates/inck', null);
INSERT INTO `jz_flow_form` VALUES ('42', '竣工报告', '32', '100', '1', '1537163922', '1537163922', null, 'admin/completeReport/add', 'admin/completeReport/view', 'complete_report');
INSERT INTO `jz_flow_form` VALUES ('43', '报销登记', '32', '100', '1', '1537169447', '1537169447', null, 'admin/completeExpenseReimbursement/add', 'admin/completeExpenseReimbursement/view', 'complete_expense_reimbursement');
INSERT INTO `jz_flow_form` VALUES ('44', '竣工申请', '32', '100', '1', '1537173458', '1537173458', null, 'admin/completeApplyForCompletion/add', 'admin/completeApplyForCompletion/view', 'complete_apply_for_completion');
INSERT INTO `jz_flow_form` VALUES ('45', '新增仓库', '35', '100', '1', '1537254845', '1537254845', null, 'admin/house/add', 'admin/house/detail', null);
INSERT INTO `jz_flow_form` VALUES ('46', '成本编制', '32', '100', '1', '1537257046', '1537257046', null, 'admin/projectCostCompile/add', 'admin/ProjectCostCompile/details', null);
INSERT INTO `jz_flow_form` VALUES ('47', '分包付款申请', '34', '100', '1', '1537339030', '1537339030', null, 'admin/construction/SubpickRateAdd', 'admin/construction/SubPickRateDetail', 'construction_subpick_rate');
INSERT INTO `jz_flow_form` VALUES ('48', '入库管理', '32', '1', '1', '1537411784', '1537411784', null, 'admin/inandout/addin', 'admin/inandout/detail', null);
INSERT INTO `jz_flow_form` VALUES ('49', '投标申请', '32', '100', '1', '1537412762', '1537412762', null, 'admin/bidding/bidding_add', 'admin/Bidding/bidding_details', null);
INSERT INTO `jz_flow_form` VALUES ('50', '招标文件购买申请', '32', '1', '1', '1537492386', '1537492386', null, 'admin/biddingfile/biddingdile_add', 'admin/Biddingfile/biddingdile_details', null);
INSERT INTO `jz_flow_form` VALUES ('51', '出库管理', '35', '2', '1', '1537512860', '1537512860', null, 'admin/inandout/addout', 'admin/inandout/details', null);
INSERT INTO `jz_flow_form` VALUES ('52', '项目业务费申请', '32', '2', '1', '1537845570', '1537845570', null, 'admin/biddingtbywf/bidding_tbywf', 'admin/Biddingtbywf/bidding_read', null);
INSERT INTO `jz_flow_form` VALUES ('53', '项目合同', '32', '100', '1', '1538968069', '1538968069', null, 'admin/contract/add', 'admin/contract/details', 'contract');
INSERT INTO `jz_flow_form` VALUES ('54', '培训计划', '28', '100', '1', '1539141986', '1539141986', null, 'admin/training/training_plan', 'admin/training/training_details', '');
INSERT INTO `jz_flow_form` VALUES ('55', '培训课程', '28', '100', '1', '1539157200', '1539157200', null, 'admin/trainingcourse/course_plan', 'admin/Trainingcourse/course_details', '');
INSERT INTO `jz_flow_form` VALUES ('56', '培训讲师', '28', '100', '1', '1539221634', '1539221634', null, 'admin/traininglecturer/lecturer_create', 'admin/traininglecturer/lecturer_details', '');
INSERT INTO `jz_flow_form` VALUES ('57', '培训机构', '28', '100', '1', '1539236914', '1539236914', null, 'admin/trainingdepartment/department_create', 'admin/trainingdepartment/department_details', '');
INSERT INTO `jz_flow_form` VALUES ('58', '培训项目', '28', '100', '1', '1539243443', '1539243443', null, 'admin/training/project_add', 'admin/training/project_details', '');
INSERT INTO `jz_flow_form` VALUES ('59', '合同管理', '28', '100', '1', '1539571070', '1539571070', null, 'admin/contractlabor/labor_create', 'admin/contractlabor/labor_read', '');
INSERT INTO `jz_flow_form` VALUES ('60', '转正申请单', '28', '100', '1', '1539585341', '1539585579', '1539585579', 'admin/contractlabor/labor_positive', '', '');
INSERT INTO `jz_flow_form` VALUES ('61', '分包请款', '31', '100', '1', '1539755697', '1539756167', '1539756167', 'admin/construction/SubpickRateAdd', 'admin/construction/SubpickRateDetail', 'construction_materialplan');
INSERT INTO `jz_flow_form` VALUES ('62', '通知公告', '28', '100', '1', '1539828395', '1539828395', null, 'admin/notice/notice_add', 'admin/notice/notice_read', '');
INSERT INTO `jz_flow_form` VALUES ('63', '材料入场', '31', '100', '1', '1539933449', '1539933449', null, 'admin/construction/materalinAdd', 'admin/construction/materalin_detail', 'jz_construction_materialin');

-- ----------------------------
-- Table structure for jz_flow_form_list
-- ----------------------------
DROP TABLE IF EXISTS `jz_flow_form_list`;
CREATE TABLE `jz_flow_form_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'table行号列号form中的数据',
  `pid` int(11) NOT NULL COMMENT '父级flow_form',
  `title` varchar(255) NOT NULL COMMENT '表单标题',
  `type` char(50) DEFAULT NULL COMMENT '表单类型',
  `name` char(50) DEFAULT NULL COMMENT 'name值',
  `option` text COMMENT 'select->optin OR radio OR checkbox',
  `placeholder` varchar(255) DEFAULT NULL COMMENT '提示信息',
  `row` tinyint(50) NOT NULL COMMENT '行号',
  `col` tinyint(50) NOT NULL COMMENT '列号',
  `colspan` tinyint(50) DEFAULT NULL COMMENT '列宽',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `readonly` tinyint(2) DEFAULT '1' COMMENT '只读1-正常0-只读',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '是否隐藏1-显示0-不显示',
  `lists` tinyint(2) NOT NULL DEFAULT '0' COMMENT '列表输入1其他0',
  `dtitle` varchar(50) DEFAULT NULL COMMENT '大标题',
  `must` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1必填',
  `pname` varchar(20) DEFAULT NULL COMMENT '父级select name值',
  `tbname` varchar(20) DEFAULT NULL COMMENT '关联表名',
  `jofield` varchar(20) DEFAULT NULL COMMENT '关联字段',
  `action` varchar(20) DEFAULT NULL COMMENT '方法名称',
  `total` varchar(20) DEFAULT NULL COMMENT '合计，输入需要合计的name值',
  `morelinkage` varchar(20) DEFAULT NULL COMMENT '多级联动name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1302 DEFAULT CHARSET=utf8 COMMENT='设计表单明细';

-- ----------------------------
-- Records of jz_flow_form_list
-- ----------------------------
INSERT INTO `jz_flow_form_list` VALUES ('53', '1', '文本框：', 'text', '', '[]', '请输入文本', '1', '1', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('54', '1', '密码框：', 'password', 'password', '[]', '请输入密码', '1', '2', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('55', '1', '登录人：', 'login_user', 'login_user', '[]', '默认当前登录人', '1', '3', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('56', '1', '下拉列表：', 'select', '', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '1', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('57', '1', '日期：', 'datetime', 'id', '[]', 'YYYY-MM-DD', '2', '2', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('58', '1', '单选框：', 'radio', 'optionsRadios', '[{\"value\":\"option1\",\"text\":\"选项1\",\"checked\":true},{\"value\":\"option2\",\"text\":\"选项2\",\"checked\":false}]', null, '2', '3', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('59', '1', '复选框：', 'checkbox', '', '[{\"value\":\"option1\",\"text\":\"选项1\",\"checked\":false},{\"value\":\"option2\",\"text\":\"选项2\",\"checked\":false},{\"value\":\"option3\",\"text\":\"选项3\",\"checked\":false}]', null, '3', '1', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('60', '1', '', '', '', '[]', null, '3', '2', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('61', '1', '', '', '', '[]', null, '3', '3', '1', '1535335117', '1535335117', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('70', '6', '标题：', 'text', '', '[]', '请输入文本', '1', '1', '1', '1535363481', '1536029649', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('71', '6', '项目名称：', 'select', '', '[{\"value\":\"1\",\"text\":\"金耀科技\"},{\"value\":\"2\",\"text\":\"2377\"},{\"value\":\"3\",\"text\":\"中国移动\"},{\"value\":\"4\",\"text\":\"中国联通\"}]', null, '1', '2', '1', '1535363481', '1536029649', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('74', '3', '文本框：', 'text', 'title', '[]', '请输入文本', '1', '1', '1', '1535701513', '1536219125', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('75', '3', '下拉列表：', 'select', '', '[{\"value\":\"0\",\"text\":\"请选择1\"},{\"value\":\"1\",\"text\":\"选项2\"},{\"value\":\"2\",\"text\":\"选项3\"},{\"value\":\"3\",\"text\":\"选项4\"}]', null, '1', '2', '1', '1535701513', '1536219125', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('76', '3', '单选框：', 'radio', 'radio', '[{\"value\":\"0\",\"text\":\"嗯\",\"checked\":false},{\"value\":\"1\",\"text\":\"嗯？\",\"checked\":false}]', null, '1', '3', '1', '1535701513', '1536219125', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('107', '11', '', '', '', '[]', null, '1', '1', '1', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('108', '11', '登录人：', 'login_user', 'maker', '[]', '1', '2', '2', '1', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('109', '11', '', '', '', '[]', 'YYYY-MM-DD', '3', '1', '1', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('110', '11', '文件域：', 'file', 'file_id', '[]', '', '4', '2', '1', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('112', '11', '大文本框：', 'textarea', 'renark', '[]', '', '5', '1', '5', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('113', '11', '单选框：', 'radio', 'radio', '[{\"value\":\"0\",\"text\":\"领导审批\",\"checked\":false},{\"value\":\"1\",\"text\":\"通过\",\"checked\":false}]', null, '7', '1', '5', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('114', '11', '下拉列表：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"项目1\"},{\"value\":\"1\",\"text\":\"项目2\"},{\"value\":\"2\",\"text\":\"项目3\"},{\"value\":\"3\",\"text\":\"项目4\"}]', null, '2', '1', '1', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('116', '11', '日期：', 'datetime', 'date', '[]', 'YYYY-MM-DD', '4', '1', '1', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('119', '11', '', '', '', '[]', '', '6', '1', '5', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('120', '11', '', '', '', '[]', null, '8', '1', '5', '1536028615', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('121', '11', '', '', '', '[]', null, '1', '2', '1', '1536028703', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('122', '11', '', '', '', '[]', null, '3', '2', '1', '1536028703', '1536028703', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('123', '10', '编号随机数：', 'code', 'number', '[]', '请输入编号', '1', '1', '1', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('124', '10', '日期：', 'datetime', 'date', '[]', 'YYYY-MM-DD', '1', '2', '1', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('125', '10', '下拉列表：', 'select', 'select', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '1', '3', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('126', '10', '登录人：', 'login_user', 'maker', '[]', '默认当前登录人', '3', '1', '1', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('127', '10', '文本框：', 'text', 'part', '[]', '请输入检查部位', '3', '2', '1', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('128', '10', '大文本框：', 'textarea', 'mes', '[]', '请输入检查情况', '4', '1', '5', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('129', '10', '大文本框：', 'textarea', 'suggest', '[]', '请输入建议', '5', '1', '3', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('130', '10', '文件域：', 'file', 'file', '[]', '请选择附件', '6', '1', '5', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('131', '10', '大文本框：', 'textarea', 'remark', '[]', '请输入备注', '7', '1', '3', '1536029403', '1536029528', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('133', '10', '文本框：', 'text', 'title', '[]', '请输入文本', '1', '1', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('134', '10', '编号随机数：', 'code', 'code', '[]', '编号随机数', '1', '2', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('135', '10', '', '', '', '[]', null, '1', '3', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('136', '10', '', '', '', '[]', null, '2', '1', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('137', '10', '', '', '', '[]', null, '2', '2', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('138', '10', '', '', '', '[]', null, '2', '3', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('139', '10', '', '', '', '[]', null, '3', '1', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('140', '10', '', '', '', '[]', null, '3', '2', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('141', '10', '', '', '', '[]', null, '3', '3', '1', '1536029497', '1536029497', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('147', '12', '备注：', 'textarea', 'renark', '[]', '', '3', '1', '5', '1536030088', '1537428099', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('159', '12', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', 'YYYY-MM-DD', '2', '1', '1', '1536032233', '1537428099', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('173', '14', '合同编号：', 'code', 'number', '[]', 'CGHT', '1', '1', '1', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('174', '14', '合同名称：', 'text', 'name', '[]', '请输入合同名称', '1', '2', '1', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('175', '14', '合同类型：', 'select', 'contract_type', '[{\"value\":\"0\",\"text\":\"材料合同\"}]', null, '2', '1', '1', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('179', '14', '所属项目：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '4', '1', '1', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('180', '14', '', '', '', '[]', null, '4', '2', '1', '1536116656', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('183', '14', '付款方式：', 'select', 'pay_type', '[{\"value\":\"0\",\"text\":\"按进度付款\"},{\"value\":\"1\",\"text\":\"按合同付款\"}]', null, '6', '1', '1', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('184', '14', '结算方式：', 'select', 'clear_type', '[{\"value\":\"0\",\"text\":\"分段结算\"},{\"value\":\"1\",\"text\":\"竣工后一次结算\"}]', null, '6', '2', '1', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('190', '14', '', '', '', '[]', null, '9', '2', '1', '1536116656', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('191', '14', '付款条件：', 'textarea', 'condition', '[]', '', '10', '1', '5', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('192', '14', '主要条款：', 'textarea', 'item', '[]', '', '11', '1', '5', '1536116656', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('193', '14', '备注：', 'textarea', 'remark', '[]', '', '12', '1', '5', '1536116656', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('194', '15', '编号', 'code', 'number', '[]', 'XM', '1', '1', '1', '1536127925', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('195', '15', '项目名称', 'text', 'title', '[]', '请输入项目名称', '1', '2', '1', '1536127925', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('199', '8', '*项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536128793', '1537497930', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('207', '8', '安全教育情况：', 'textarea', 'safe_edu', '[]', '请输入安全教育情况', '6', '1', '5', '1536128793', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('208', '8', '安全检查情况：', 'textarea', 'safe_check', '[]', '请输入安全检查情况', '7', '1', '5', '1536128793', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('209', '8', '其他情况：其他情况：', 'textarea', 'other', '[]', '请输入其他情况', '8', '1', '5', '1536128793', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('245', '16', '变更原因：', 'textarea', 'change_cause', '[]', '请输入变更原因', '7', '1', '3', '1536135426', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('246', '16', '变更内容：', 'textarea', 'change_mes', '[]', '请输入变更内容', '8', '1', '3', '1536135426', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('247', '16', '备注：', 'textarea', 'remark', '[]', '请输入备注', '9', '1', '3', '1536135426', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('309', '17', '', '', '', '[]', null, '1', '2', '1', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('310', '17', '*交底名称：', 'text', 'name', '[]', '请输入交底名称', '1', '3', '1', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('311', '17', '*项目名称：', 'select', 'obj_id', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '1', '3', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('313', '17', '*施工单位：', 'text', 'work', '[]', '请输入施工单位', '3', '1', '3', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('314', '17', '', '', '', '[]', null, '3', '2', '1', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('315', '17', '填报人：', 'login_user', 'maker', '[]', '默认当前登录人', '4', '1', '3', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('316', '17', '', '', '', '[]', 'YYYY-MM-DD', '4', '2', '1', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('317', '17', '*交底地点：', 'text', 'address', '[]', '请输入交底地点', '5', '1', '3', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('318', '17', '被交底单位：', 'text', 'btell_work', '[]', '请输入被交底单位', '5', '2', '1', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('319', '17', '交底人：', 'text', 'tell_man', '[]', '请输入交底人', '6', '1', '3', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('320', '17', '被交底人：', 'text', 'btell_man', '[]', '请输入被交底人', '6', '2', '1', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('321', '17', '文件域：', 'file', '', '[]', '', '7', '1', '3', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('322', '17', '', '', '', '[]', null, '7', '2', '1', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('323', '17', '交底内容：', 'textarea', 'mes', '[]', '请输入交底内容', '8', '1', '5', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('324', '17', '备注：', 'textarea', 'remark', '[]', '请输入备注', '9', '1', '5', '1536138419', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('356', '5', '', '', '', '[]', null, '1', '1', '1', '1536140855', '1536196493', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('357', '5', '大标题', 'lists', null, '[{\"option\":[{\"value\":\"1\",\"text\":\"\\u9009\\u98791\"},{\"value\":\"2\",\"text\":\"\\u9009\\u98792\"},{\"value\":\"3\",\"text\":\"\\u9009\\u98793\"},{\"value\":\"4\",\"text\":\"\\u9009\\u98794\"}],\"type\":\"select\",\"name\":\"select\",\"id\":\"357\",\"title\":\"\",\"row\":\"2\",\"col\":\"1\",\"lists\":\"2\"},{\"option\":\"[]\",\"type\":\"\",\"name\":\"\",\"id\":\"357\",\"title\":\"\",\"row\":\"2\",\"col\":\"2\",\"lists\":\"2\"},{\"option\":\"[]\",\"type\":\"\",\"name\":\"\",\"id\":\"357\",\"title\":\"\",\"row\":\"2\",\"col\":\"3\",\"lists\":\"2\"},{\"option\":\"[]\",\"type\":\"\",\"name\":\"\",\"id\":\"357\",\"title\":\"\",\"row\":\"2\",\"col\":\"4\",\"lists\":\"2\"},{\"option\":\"[]\",\"type\":\"\",\"name\":\"\",\"id\":\"357\",\"title\":\"\",\"row\":\"2\",\"col\":\"5\",\"lists\":\"2\"}]', null, '2', '1', null, '1536140855', '1536196494', null, '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('359', '5', '', '', '', '[]', '点击选择', '6', '1', '1', '1536142785', '1536196494', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('360', '5', '文本框：', 'text', 'title', '[]', '请输入文本', '5', '1', '1', '1536195741', '1536196494', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('362', '5', '编号随机数：', 'code', 'code', '[]', '编号随机数', '4', '1', '1', '1536196283', '1536196493', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('363', '5', '编号随机数：', 'code', 'code', '[]', '编号随机数', '3', '1', '1', '1536196493', '1536196493', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('365', '12', '物资招标采购明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"m_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"4\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u89c4\\u683c\\u578b\\u53f7\\uff1a\",\"row\":\"4\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"metering\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u8ba1\\u91cf\\u5355\\u4f4d\\uff1a\",\"row\":\"4\",\"col\":\"3\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u4f30\\u7b97\\u6570\\u91cf\",\"type\":\"number\",\"name\":\"amout[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u4f30\\u7b97\\u6570\\u91cf\\uff1a\",\"row\":\"4\",\"col\":\"4\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u91c7\\u8d2d\\u5355\\u4f4d\",\"type\":\"text\",\"name\":\"unit[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u91c7\\u8d2d\\u5355\\u4f4d\\uff1a\",\"row\":\"4\",\"col\":\"5\",\"lists\":\"3\"},{\"option\":\"[{\\\"value\\\":\\\"date\\\"}]\",\"placeholder\":\"YYYY-MM-DD\",\"type\":\"datetime\",\"name\":\"mdate[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u91c7\\u8d2d\\u65f6\\u95f4\\uff1a\",\"row\":\"4\",\"col\":\"6\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u91c7\\u8d2d\\u5730\\u70b9\",\"type\":\"text\",\"name\":\"place[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u91c7\\u8d2d\\u5730\\u70b9\\uff1a\",\"row\":\"4\",\"col\":\"7\",\"lists\":\"3\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"suppliers[]\",\"placeholder\":\"\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"365\",\"title\":\"\\u5019\\u9009\\u4f9b\\u5e94\\u5546\\u540d\\u5355\\uff1a\",\"row\":\"4\",\"col\":\"8\",\"lists\":\"3\"}]', '点击选择', '4', '1', null, '1536199124', '1537428099', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('372', '15', '所属区域', 'text', 'area', '[]', '请输入所属区域', '2', '2', '1', '1536212739', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('373', '15', '项目地址', 'text', 'address', '[]', '请输入项目地址', '2', '3', '1', '1536212739', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('375', '15', '工程量', 'text', 'quantities', '[]', '请输入工程量', '3', '2', '1', '1536212739', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('397', '4', '【施工明细】', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"department\",\"name\":\"part[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"397\",\"title\":\"*\\u65bd\\u5de5\\u73ed\\u7ec4\\uff1a\",\"row\":\"7\",\"col\":\"1\",\"lists\":\"2\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"people[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"397\",\"title\":\"*\\u5de5\\u4f5c\\u4eba\\u6570\\uff1a\",\"row\":\"7\",\"col\":\"2\",\"lists\":\"2\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"mes[]\",\"placeholder\":\"\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"397\",\"title\":\"*\\u65bd\\u5de5\\u5185\\u5bb9\\uff1a\",\"row\":\"7\",\"col\":\"3\",\"lists\":\"2\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"ps[]\",\"placeholder\":\"\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"397\",\"title\":\"\\u5907\\u6ce8\\uff1a\",\"row\":\"7\",\"col\":\"4\",\"lists\":\"2\"}]', '点击选择', '7', '1', null, '1536216764', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('400', '15', '预计利润', 'text', 'pre_profit', '[]', '请输入预计利润', '4', '2', '1', '1536220299', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('401', '15', '项目类型', 'select', 'obj_type', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '4', '3', '1', '1536220299', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('402', '15', '质量等级', 'select', 'quality', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '5', '1', '1', '1536220299', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('403', '15', '项目跟踪人', 'person', 'leader', '[]', '点击选择项目跟踪人', '5', '2', '1', '1536220299', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('407', '15', '联系人', 'person', 'dev_name', '[]', '点击选择联系人', '6', '3', '1', '1536220299', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('408', '15', '联系人电话', 'text', 'dev_phone', '[]', '请输入联系人电话', '7', '1', '1', '1536220299', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('409', '15', '立项人', 'login_user', 'maker', '[]', '默认当前登录人', '7', '2', '1', '1536220299', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('415', '19', '*姓名：', 'text', 'username', '[]', '请输入姓名', '1', '1', '1', '1536284961', '1537949253', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('416', '19', '性别：', 'select', 'sex', '[{\"value\":\"0\",\"text\":\"\"},{\"value\":\"1\",\"text\":\"男\"},{\"value\":\"2\",\"text\":\"女\"}]', null, '1', '2', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('417', '19', '部门：', 'text', 'organization', '[]', '', '2', '1', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('418', '19', '*身份证号码：', 'text', 'id_card', '[]', '请输入身份证号码', '2', '2', '1', '1536284961', '1537949253', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('419', '19', '联系电话：', 'text', 'tel', '[]', '', '3', '1', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('420', '19', '发证单位：', 'text', 'issue_unit', '[]', '', '3', '2', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('421', '19', '*证书编号：', 'text', 'certificate_number', '[]', '请输入证书编号', '4', '1', '1', '1536284961', '1537949253', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('422', '19', '*证件类型：', 'select', 'certificate_type', '[{\"value\":\"0\",\"text\":\"\"}]', null, '4', '2', '1', '1536284961', '1537949253', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('423', '19', '注册编号：', 'text', 'login_number', '[]', '', '5', '1', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('424', '19', '资格证书编号：', 'text', 'qualification_certificate_number', '[]', '', '5', '2', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('425', '19', '专业类别：', 'text', 'domain_type', '[]', '', '6', '1', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('427', '19', '*存放地点：', 'text', 'storage_location', '[]', '请输入存放地点', '7', '1', '1', '1536284961', '1537949253', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('428', '19', '录入人：', 'login_user', 'add_user_id', '[]', '', '7', '2', '1', '1536284961', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('429', '14', '签订人：', 'login_user', 'maker', '[]', '默认当前登录人', '3', '1', '1', '1536285255', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('430', '14', '材料明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"m_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"430\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"13\",\"col\":\"1\",\"lists\":\"6\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"430\",\"title\":\"\\u89c4\\u683c\\u578b\\u53f7\\uff1a\",\"row\":\"13\",\"col\":\"2\",\"lists\":\"6\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"metering\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"units[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"430\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"13\",\"col\":\"3\",\"lists\":\"6\"},{\"option\":\"[]\",\"total\":\"sum[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u91c7\\u8d2d\\u6570\\u91cf\",\"type\":\"number\",\"name\":\"amount[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"430\",\"title\":\"\\u91c7\\u8d2d\\u6570\\u91cf\\uff1a\",\"row\":\"13\",\"col\":\"4\",\"lists\":\"6\"},{\"option\":\"[]\",\"total\":\"sum[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"prince[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"430\",\"title\":\"\\u91c7\\u8d2d\\u4ef7\\u683c\\uff1a\",\"row\":\"13\",\"col\":\"5\",\"lists\":\"6\"},{\"option\":\"[]\",\"total\":\"all_sum\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"sum[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"430\",\"title\":\"\\u5c0f\\u8ba1\\uff1a\",\"row\":\"13\",\"col\":\"6\",\"lists\":\"6\"}]', '点击选择', '13', '1', null, '1536285255', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('443', '12', '编号随机数：', 'code', 'number', '[]', 'CGJH', '1', '1', '1', '1536290428', '1537428099', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('444', '12', '编制人：', 'login_user', 'maker', '[]', '默认当前登录人', '1', '3', '1', '1536290428', '1537428099', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('455', '20', '计划编号：', 'code', 'number', '[]', 'LWJH', '1', '1', '1', '1536301349', '1537428764', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('457', '20', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536301349', '1537428764', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('459', '20', '备注：', 'textarea', 'renark', '[]', '', '3', '1', '5', '1536301349', '1537428764', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('461', '20', '制单人：', 'login_user', 'maker', '[]', '默认当前登录人', '4', '2', '1', '1536301350', '1537428764', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('462', '20', '工程量清单', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"work[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"462\",\"title\":\"\\u5de5\\u4f5c\\u5185\\u5bb9\\uff1a\",\"row\":\"5\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"462\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"5\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"amout[]\",\"readonly\":\"1\",\"must\":\"0\",\"title\":\"\\u5de5\\u7a0b\\u91cf\\uff1a\",\"row\":\"5\",\"col\":\"3\",\"lists\":\"3\",\"id\":\"462\"},{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"supplier\",\"name\":\"team[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"462\",\"title\":\"\\u52b3\\u52a1\\u73ed\\u7ec4\\uff1a\",\"row\":\"5\",\"col\":\"4\",\"lists\":\"3\"}]', '', '5', '1', null, '1536301350', '1537428764', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('463', '21', '编号', 'code', 'number', '[]', 'WL', '1', '1', '1', '1536304771', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('464', '21', '', '', '', '[]', '请输入名称', '8', '2', '1', '1536304771', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('466', '21', '', '', '', '[]', 'YYYY-MM-DD', '9', '1', '1', '1536304771', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('467', '21', '', '', '', '[]', null, '16', '2', '1', '1536304771', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('469', '21', '', '', '', '[]', 'WL', '2', '1', '1', '1536304773', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('470', '21', '', '', '', '[]', '请输入名称', '8', '3', '1', '1536304773', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('472', '21', '', '', '', '[]', 'YYYY-MM-DD', '10', '1', '1', '1536304773', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('473', '21', '', '', '', '[]', null, '16', '3', '1', '1536304773', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('475', '21', '', '', '', '[]', 'WL', '3', '1', '1', '1536304774', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('478', '21', '', '', '', '[]', 'YYYY-MM-DD', '11', '1', '1', '1536304775', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('481', '21', '', '', '', '[]', 'WL', '4', '1', '1', '1536304775', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('484', '21', '', '', '', '[]', 'YYYY-MM-DD', '12', '1', '1', '1536304775', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('487', '21', '', '', '', '[]', 'WL', '5', '1', '1', '1536304775', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('490', '21', '', '', '', '[]', 'YYYY-MM-DD', '13', '1', '1', '1536304775', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('493', '21', '', '', '', '[]', 'WL', '6', '1', '1', '1536304776', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('496', '21', '', '', '', '[]', 'YYYY-MM-DD', '14', '1', '1', '1536304776', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('499', '21', '', '', '', '[]', 'WL', '7', '1', '1', '1536304776', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('502', '21', '', '', '', '[]', 'YYYY-MM-DD', '15', '1', '1', '1536304776', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('505', '21', '', '', '', '[]', 'WL', '8', '1', '1', '1536304776', '1536305019', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('508', '21', '', '', '', '[]', 'YYYY-MM-DD', '16', '1', '1', '1536304776', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('511', '21', '名称', 'text', 'title', '[]', '请输入名称', '1', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('512', '21', '日期', 'datetime', 'date', '[]', 'YYYY-MM-DD', '1', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('513', '21', '', '', '', '[]', null, '2', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('514', '21', '', '', '', '[]', null, '2', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('515', '21', '', '', '', '[]', null, '3', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('516', '21', '', '', '', '[]', null, '3', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('517', '21', '', '', '', '[]', null, '4', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('518', '21', '', '', '', '[]', null, '4', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('519', '21', '', '', '', '[]', null, '5', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('520', '21', '', '', '', '[]', null, '5', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('521', '21', '', '', '', '[]', null, '6', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('522', '21', '', '', '', '[]', null, '6', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('523', '21', '', '', '', '[]', null, '7', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('524', '21', '', '', '', '[]', null, '7', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('525', '21', '', '', '', '[]', null, '9', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('526', '21', '', '', '', '[]', null, '9', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('527', '21', '', '', '', '[]', null, '10', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('528', '21', '', '', '', '[]', null, '10', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('529', '21', '', '', '', '[]', null, '11', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('530', '21', '', '', '', '[]', null, '11', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('531', '21', '', '', '', '[]', null, '12', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('532', '21', '', '', '', '[]', null, '12', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('533', '21', '', '', '', '[]', null, '13', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('534', '21', '', '', '', '[]', null, '13', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('535', '21', '', '', '', '[]', null, '14', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('536', '21', '', '', '', '[]', null, '14', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('537', '21', '', '', '', '[]', null, '15', '2', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('538', '21', '', '', '', '[]', null, '15', '3', '1', '1536305019', '1536305019', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('541', '23', '名称', 'text', 'title', '[]', '请输入名称', '1', '1', '1', '1536544887', '1536548860', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('542', '23', '排序', 'text', 'zid', '[]', '请输入排序', '2', '1', '1', '1536544887', '1536548860', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('543', '24', '合同编号：', 'code', 'number', '[]', 'LWHT', '1', '1', '1', '1536547450', '1539674066', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('544', '24', '合同名称：', 'text', 'name', '[]', '请输入合同名称', '1', '2', '1', '1536547450', '1539674066', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('545', '24', '所属项目：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '1', '3', '1', '1536547450', '1539674066', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('546', '24', '合同类型：', 'select', 'contract_type', '[{\"value\":\"0\",\"text\":\"劳务合同\"}]', null, '2', '1', '1', '1536547450', '1539674066', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('551', '24', '', '', '', '[]', null, '3', '3', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('554', '24', '', '', '', '[]', null, '4', '3', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('555', '24', '结算方式：', 'select', 'clear_type', '[{\"value\":\"0\",\"text\":\"分段结算\"},{\"value\":\"1\",\"text\":\"竣工后一次结算\"}]', null, '5', '1', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('556', '24', '付款方式：', 'select', 'pay_type', '[{\"value\":\"0\",\"text\":\"按进度结算\"},{\"value\":\"1\",\"text\":\"按合同结算\"}]', null, '5', '2', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('557', '24', '', '', '', '[]', null, '5', '3', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('560', '24', '签订人：', 'login_user', 'app_id', '[]', '默认当前登录人', '6', '3', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('562', '24', '', '', '', '[]', null, '7', '2', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('563', '24', '', '', '', '[]', null, '7', '3', '1', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('564', '24', '付款条件：', 'textarea', 'condition', '[]', '', '8', '1', '5', '1536547450', '1539674066', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('565', '24', '主要条款：', 'textarea', 'item', '[]', '', '9', '1', '5', '1536547450', '1539674066', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('566', '24', '备注：', 'textarea', 'remark', '[]', '', '10', '1', '5', '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('570', '24', '工程量清单', 'lists', null, '[{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"m_name[]\",\"placeholder\":\"\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"570\",\"title\":\"\\u5de5\\u4f5c\\u5185\\u5bb9\",\"row\":\"11\",\"col\":\"1\",\"lists\":\"7\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"570\",\"title\":\"\\u5355\\u4f4d\",\"row\":\"11\",\"col\":\"2\",\"lists\":\"7\"},{\"option\":\"[]\",\"total\":\"combined[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"quantities[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"570\",\"title\":\"\\u5de5\\u7a0b\\u91cf\\uff1a\",\"row\":\"11\",\"col\":\"3\",\"lists\":\"7\"},{\"option\":\"[]\",\"total\":\"combined[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"570\",\"title\":\"\\u5355\\u4ef7\\uff1a\",\"row\":\"11\",\"col\":\"4\",\"lists\":\"7\"},{\"option\":\"[]\",\"total\":\"total\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"combined[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"570\",\"title\":\"\\u5408\\u4ef7\\uff1a\",\"row\":\"11\",\"col\":\"5\",\"lists\":\"7\"}]', '', '11', '1', null, '1536547450', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('583', '9', '项目：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '1', '1', '1', '1536562725', '1537234686', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('584', '25', '租赁编号：', 'code', 'number', '[]', 'ZLJH', '1', '1', '1', '1536565581', '1537429144', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('585', '25', '租赁计划名称：', 'text', 'title', '[]', '请输入计划名称', '1', '2', '1', '1536565581', '1537429144', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('586', '25', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536565581', '1537429144', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('588', '25', '填报人：', 'login_user', 'maker', '[]', '默认当前登录人', '3', '1', '1', '1536565581', '1537429144', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('589', '25', '', '', '', '[]', 'YYYY-MM-DD', '3', '2', '1', '1536565581', '1537429144', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('590', '25', '用途：', 'textarea', 'renark', '[]', '', '4', '1', '5', '1536565581', '1537429144', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('592', '25', '', '', '', '[]', null, '5', '2', '1', '1536565581', '1537429144', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('593', '25', '计划明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"m_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"593\",\"title\":\"\\u79df\\u8d41\\u7269\\u54c1\\u540d\\u79f0\\uff1a\",\"row\":\"6\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"593\",\"title\":\"\\u89c4\\u683c\\u578b\\u53f7\\uff1a\",\"row\":\"6\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"metering\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"593\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"6\",\"col\":\"3\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"numbers[]\",\"readonly\":\"1\",\"must\":\"0\",\"title\":\"\\u6570\\u91cf\\uff1a\",\"row\":\"6\",\"col\":\"4\",\"lists\":\"3\",\"id\":\"593\"},{\"option\":\"[{\\\"value\\\":\\\"date\\\"}]\",\"placeholder\":\"YYYY-MM-DD\",\"type\":\"datetime\",\"name\":\"ctime[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"593\",\"title\":\"\\u8ba1\\u5212\\u8fdb\\u573a\\u65f6\\u95f4\\uff1a\",\"row\":\"6\",\"col\":\"5\",\"lists\":\"3\"},{\"option\":\"[{\\\"value\\\":\\\"date\\\"}]\",\"placeholder\":\"YYYY-MM-DD\",\"type\":\"datetime\",\"name\":\"etime[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"593\",\"title\":\"\\u8ba1\\u5212\\u9000\\u573a\\u65f6\\u95f4\\uff1a\",\"row\":\"6\",\"col\":\"6\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"day[]\",\"readonly\":\"1\",\"must\":\"0\",\"title\":\"\\u79df\\u8d41\\u5929\\u6570\\uff1a\",\"row\":\"6\",\"col\":\"7\",\"lists\":\"3\",\"id\":\"593\"}]', '点击选择', '6', '1', null, '1536565581', '1537429144', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('594', '9', '编号：', 'text', 'title', '[]', '请输入文本', '1', '2', '1', '1536566214', '1537234686', '1', '1', '0', null, '0', 'obj_id', 'project_list', 'number', null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('597', '8', '日志编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536575111', '1537497930', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('602', '8', '部门：', 'department', 'part', '[]', '点击选择', '3', '1', '1', '1536575112', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('609', '8', '当日安全情况：', 'textarea', 'safe_mes', '[]', '请输入当日安全情况', '5', '1', '5', '1536628082', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('611', '13', '检查编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536629333', '1537496987', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('613', '13', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536629333', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('615', '13', '质检员：', 'person', 'maker', '[]', '点击选择', '3', '1', '1', '1536629334', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('616', '13', '检查部位：', 'text', 'part', '[]', '请输入文本', '3', '2', '1', '1536629334', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('617', '13', '检查情况：', 'textarea', 'mes', '[]', '请输入检查情况', '4', '1', '3', '1536629334', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('618', '13', '检查建议：', 'textarea', 'suggest', '[]', '请输入检查建议', '5', '1', '3', '1536629334', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('620', '13', '备注：', 'textarea', 'remark', '[]', '请输入备注', '7', '1', '3', '1536629334', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('621', '26', '名称', 'text', 'title', '[]', '请输入名称', '1', '1', '1', '1536633083', '1536633083', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('622', '26', '排序', 'text', 'zid', '[]', '请输入排序', '2', '1', '1', '1536633083', '1536633083', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('623', '9', '文本框：', 'text', 'title', '[]', '请输入文本', '1', '3', '1', '1536633668', '1537234686', '1', '1', '0', null, '0', 'obj_id', 'project_list', 'id', 'get_file_name', null, null);
INSERT INTO `jz_flow_form_list` VALUES ('624', '27', '编号随机数：', 'code', 'number', '[]', 'ZLHT', '1', '1', '1', '1536638434', '1537500284', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('629', '27', '合同名称：', 'text', 'title', '[]', '请输入合同名称', '1', '2', '1', '1536654547', '1537500284', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('630', '27', '所属项目：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536654547', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('633', '27', '金额大写：', 'bigmoney', 'bigmoney', '[]', '', '3', '2', '1', '1536654547', '1537500284', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('634', '27', '合同类型：', 'select', 'contract_type', '[{\"value\":\"0\",\"text\":\"租赁合同\"},{\"value\":\"1\",\"text\":\"总承包租赁合同\"}]', null, '4', '1', '1', '1536654547', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('638', '27', '合同金额：', 'money', 'contract_money', '[]', '请输入金额', '3', '1', '1', '1536654720', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('639', '27', '', '', '', '[]', '请输入金额', '4', '2', '1', '1536654720', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('641', '27', '制单人：', 'login_user', 'app_id', '[]', '默认当前登录人', '6', '2', '1', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('642', '27', '结算方式：', 'select', 'clear_type', '[{\"value\":\"0\",\"text\":\"分段结算\"},{\"value\":\"1\",\"text\":\"竣工后一次结算\"},{\"value\":\"2\",\"text\":\"进度款结算\"}]', null, '7', '1', '1', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('643', '27', '付款方式：', 'select', 'pay_type', '[{\"value\":\"0\",\"text\":\"按合同付款\"},{\"value\":\"1\",\"text\":\"按进度付款\"}]', null, '7', '2', '1', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('644', '27', '预付款：', 'money', 'pre_money', '[]', '', '8', '1', '1', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('645', '27', '保证金：', 'money', 'bail', '[]', '', '8', '2', '1', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('647', '27', '', '', '', '[]', null, '9', '2', '1', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('648', '27', '付款条件：', 'textarea', 'condition', '[]', '', '10', '1', '5', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('649', '27', '主要条款：', 'textarea', 'item', '[]', '', '11', '1', '5', '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('650', '27', '租赁明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"m_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"12\",\"col\":\"1\",\"lists\":\"5\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u89c4\\u683c\\u578b\\u53f7\\uff1a\",\"row\":\"12\",\"col\":\"2\",\"lists\":\"5\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"metering\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"12\",\"col\":\"3\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"sum[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"amount[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u6570\\u91cf\\uff1a\",\"row\":\"12\",\"col\":\"4\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"sum[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"prince[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u5355\\u4ef7\\uff1a\",\"row\":\"12\",\"col\":\"5\",\"lists\":\"5\"},{\"option\":\"[{\\\"value\\\":\\\"date\\\"}]\",\"placeholder\":\"YYYY-MM-DD\",\"type\":\"datetime\",\"name\":\"start_time[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u8ba1\\u5212\\u8fdb\\u573a\\u65f6\\u95f4\\uff1a\",\"row\":\"12\",\"col\":\"6\",\"lists\":\"5\"},{\"option\":\"[{\\\"value\\\":\\\"date\\\"}]\",\"placeholder\":\"YYYY-MM-DD\",\"type\":\"datetime\",\"name\":\"end_time[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u8ba1\\u5212\\u9000\\u573a\\u65f6\\u95f4\\uff1a\",\"row\":\"12\",\"col\":\"7\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"sum[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"day[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"650\",\"title\":\"\\u79df\\u8d41\\u5929\\u6570\\uff1a\",\"row\":\"12\",\"col\":\"8\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"all_sum\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"sum[]\",\"readonly\":\"0\",\"must\":\"0\",\"title\":\"\\u5c0f\\u8ba1\\uff1a\",\"row\":\"12\",\"col\":\"9\",\"lists\":\"5\",\"id\":\"650\"}]', '点击选择', '12', '1', null, '1536655819', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('658', '9', '大标题', 'lists', null, '[{\"option\":\"[]\",\"type\":\"\",\"name\":\"\",\"must\":\"0\",\"id\":\"658\",\"title\":\"\",\"row\":\"2\",\"col\":\"1\",\"lists\":\"4\"},{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"supplier\",\"name\":\"supplier\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"658\",\"title\":\"\\u4f9b\\u5e94\\u5546\\uff1a\",\"row\":\"2\",\"col\":\"2\",\"lists\":\"4\"},{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"materials\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"658\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"2\",\"col\":\"3\",\"lists\":\"4\"}]', null, '2', '1', null, '1536658577', '1537234686', null, '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('662', '8', '*填报人：', 'person', 'maker', '[]', '点击选择', '1', '2', '1', '1536716094', '1537497930', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('663', '8', '*出勤人数：', 'number', 'people_number', '[]', '数字', '2', '2', '1', '1536716094', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('664', '8', '温度：', 'text', 'temperature', '[]', '请输入温度', '3', '2', '1', '1536716094', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('665', '8', '施工部位：', 'text', 'build_part', '[]', '请输入施工部位', '4', '2', '1', '1536716094', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('669', '18', '编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536719028', '1539936257', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('670', '18', '*主题：', 'text', 'name', '[]', '请输入主题', '1', '2', '1', '1536719028', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('671', '18', '*项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536719028', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('672', '18', '', '', '', '[]', null, '2', '2', '1', '1536719028', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('673', '18', '*单选人：', 'person', 'maker', '[]', '点击选择', '3', '1', '1', '1536719028', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('675', '18', '附件：', '', '', '[]', '', '4', '1', '1', '1536719028', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('676', '18', '', '', '', '[]', null, '4', '2', '1', '1536719028', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('677', '18', '备注：', 'textarea', 'remark', '[]', '请输入备注', '5', '1', '3', '1536719028', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('680', '18', '金额大写：', 'bigmoney', 'big_sum', '[]', '', '7', '2', '1', '1536719376', '1539936257', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('681', '18', '申请明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"material_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"681\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"6\",\"col\":\"1\",\"lists\":\"5\"},{\"option\":\"[]\",\"pname\":\"material_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"material_size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"681\",\"title\":\"\\u89c4\\u683c\\u578b\\u53f7\\uff1a\",\"row\":\"6\",\"col\":\"2\",\"lists\":\"5\"},{\"option\":\"[]\",\"pname\":\"material_name\",\"jofield\":\"metering\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"unit[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"681\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"6\",\"col\":\"3\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"count[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"681\",\"title\":\"\\u9700\\u7528\\u6570\\u91cf\\uff1a\",\"row\":\"6\",\"col\":\"4\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"count[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"pre_price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"681\",\"title\":\"\\u53c2\\u8003\\u4ef7\\u683c\\uff1a\",\"row\":\"6\",\"col\":\"5\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"sum\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5c0f\\u8ba1\",\"type\":\"text\",\"name\":\"count[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"681\",\"title\":\"\\u5c0f\\u8ba1\\uff1a\",\"row\":\"6\",\"col\":\"6\",\"lists\":\"5\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"remark\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5907\\u6ce8\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"681\",\"title\":\"\\u5907\\u6ce8\\uff1a\",\"row\":\"6\",\"col\":\"7\",\"lists\":\"5\"}]', '点击选择', '6', '1', null, '1536719376', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('683', '28', '编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536733794', '1539940027', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('684', '28', '*结算名称：', 'text', 'name', '[]', '请输入结算名称', '1', '2', '1', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('685', '28', '*项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('686', '28', '*合同名称：', 'select', 'contract_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1536733794', '1539940027', '1', '1', '0', null, '0', 'obj_id', 'labor_contract', null, null, null, 'obj_id');
INSERT INTO `jz_flow_form_list` VALUES ('689', '28', '经办人：', 'person', 'maker', '[]', '点击选择', '5', '1', '1', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('690', '28', '', '', '', '[]', 'YYYY-MM-DD', '5', '2', '1', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('691', '28', '罚款：', 'number', 'fines', '[]', '', '6', '1', '1', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('692', '28', '扣款：', 'number', 'cut_money', '[]', '', '6', '2', '1', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('695', '28', '结算说明：', 'textarea', 'clear_mes', '[]', '', '8', '1', '5', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('696', '28', '附件：', '', '', '[]', '', '9', '1', '3', '1536733794', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('697', '15', '工程造价', 'money', 'obj_cost', '[]', '请输入工程造价', '3', '3', '1', '1536735219', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('698', '15', '工程造价大写金额', 'bigmoney', 'big_const', '[]', '工程造价大写金额', '4', '1', '1', '1536735219', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('701', '28', '工程量清单', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"code[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u7f16\\u53f7\\uff1a\",\"row\":\"10\",\"col\":\"1\",\"lists\":\"10\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"title[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u6e05\\u5355\\u5b50\\u76ee\\uff1a\",\"row\":\"10\",\"col\":\"2\",\"lists\":\"10\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"unit[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"10\",\"col\":\"3\",\"lists\":\"10\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"contract_num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u5408\\u540c\\u6570\\u91cf\\uff1a\",\"row\":\"10\",\"col\":\"4\",\"lists\":\"10\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"contract_price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u5408\\u540c\\u5355\\u4ef7\\uff1a\",\"row\":\"10\",\"col\":\"5\",\"lists\":\"10\"},{\"option\":\"[]\",\"total\":\"count_money[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"fact_num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u5b9e\\u9645\\u5b8c\\u6210\\u6570\\u91cf\\uff1a\",\"row\":\"10\",\"col\":\"6\",\"lists\":\"10\"},{\"option\":\"[]\",\"total\":\"count_money[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"fact_price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u5b9e\\u9645\\u6267\\u884c\\u4ef7\\uff1a\",\"row\":\"10\",\"col\":\"7\",\"lists\":\"10\"},{\"option\":\"[]\",\"total\":\"count_sum\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"count_money[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u7ed3\\u7b97\\u4ef7\\u6b3e\\uff1a\",\"row\":\"10\",\"col\":\"8\",\"lists\":\"10\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"remark\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5907\\u6ce8\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"701\",\"title\":\"\\u5907\\u6ce8\\uff1a\",\"row\":\"10\",\"col\":\"9\",\"lists\":\"10\"}]', '', '10', '1', null, '1536735409', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('703', '28', '', '', '', '[]', null, '2', '2', '1', '1536736902', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('709', '28', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '2', '1', '1536741620', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('710', '29', '编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536746670', '1539739993', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('711', '29', '*申请名称：', 'text', 'name', '[]', '', '1', '2', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('712', '29', '*所属项目：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '3', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('713', '29', '*合同名称：', 'select', 'contract_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('716', '29', '填报人：', 'person', 'maker', '[]', '', '4', '2', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('719', '29', '付款类型：', 'select', 'pay_type', '[{\"value\":\"0\",\"text\":\"进度款\"},{\"value\":\"1\",\"text\":\"完工款\"}]', null, '6', '1', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('720', '29', '开户行名称：', 'text', 'bank_name', '[]', '', '6', '2', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('721', '29', '银行账号：', 'number', 'bank_account', '[]', '数字', '7', '1', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('722', '29', '*付款金额：', 'money', 'pay_money', '[]', '', '7', '2', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('723', '29', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '8', '1', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('724', '29', '金额大写：', 'bigmoney', 'bigmoney', '[]', '请输入金额', '8', '2', '1', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('726', '29', '备注：', 'textarea', 'remark', '[]', '', '10', '1', '5', '1536746670', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('727', '12', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '3', '1', '1536800532', '1537428099', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('728', '30', '编号', 'code', 'number', '[]', 'JC', '1', '1', '1', '1536801127', '1537413187', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('729', '30', '名称', 'text', 'title', '[]', '请输入名称', '1', '2', '1', '1536801127', '1537413187', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('730', '30', '制定人', 'login_user', 'maker', '[]', '制定人', '1', '3', '1', '1536801127', '1537413187', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('732', '30', '项目', 'select', 'obj_id', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '2', '1', '1536801127', '1537413187', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('734', '14', '开始时间：', 'datetime', 'start_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '1', '1', '1536802242', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('735', '14', '结束时间：', 'datetime', 'end_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '2', '1', '1536802242', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('736', '14', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '8', '2', '1', '1536802242', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('739', '14', '合同金额：', 'money', 'contract_money', '[]', '请输入金额', '2', '2', '1', '1536802381', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('740', '14', '金额大写：', 'bigmoney', 'big_money', '[]', '', '3', '2', '1', '1536802381', '1539937741', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('741', '30', '日期(年月日)：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '1', '1', '1536802684', '1537413187', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('742', '20', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1536802725', '1537428764', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('743', '24', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1536802953', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('744', '24', '开始时间：', 'datetime', 'start_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '1', '1', '1536802953', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('745', '24', '结束时间：', 'datetime', 'end_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '2', '1', '1536802953', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('746', '24', '预付款：', 'money', 'pre_money', '[]', '请输入预付款金额', '6', '1', '1', '1536802953', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('747', '24', '保证金：', 'money', 'bail', '[]', '请输入保证金', '6', '2', '1', '1536802953', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('748', '24', '合同金额：', 'money', 'contract_money', '[]', '请输入金额', '3', '1', '1', '1536803036', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('749', '24', '合同金额(大写)：', 'bigmoney', 'big_money', '[]', '请输入金额', '3', '2', '1', '1536803036', '1539674066', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('750', '25', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1536803300', '1537429144', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('751', '19', '*有效截止日期：', 'datetime', 'end_time', '[{\"value\":\"date\"}]', '', '6', '2', '1', '1536803376', '1537949253', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('752', '27', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1536803521', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('753', '27', '开始日期：', 'datetime', 'ctime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '1', '1', '1536803614', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('754', '27', '结束日期：', 'datetime', 'etime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '2', '1', '1536803614', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('755', '31', '计划编号：', 'code', 'number', '[]', 'FBJH', '1', '1', '1', '1536810382', '1537429293', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('756', '31', '计划名称：', 'text', 'title', '[]', '请输入计划名称', '1', '2', '1', '1536810382', '1537429293', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('757', '31', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536810382', '1537429293', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('758', '31', '', '', '', '[]', null, '2', '2', '1', '1536810382', '1537429293', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('759', '31', '制单人：', 'login_user', 'maker', '[]', '默认当前登录人', '3', '1', '1', '1536810382', '1537429293', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('760', '31', '日期(年月日)：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '3', '2', '1', '1536810382', '1537429293', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('761', '31', '备注：', 'textarea', 'renark', '[]', '', '4', '1', '5', '1536810382', '1537429293', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('763', '31', '', '', '', '[]', null, '5', '2', '1', '1536810382', '1537429293', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('764', '31', '计划明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"work[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"764\",\"title\":\"\\u5de5\\u4f5c\\u5185\\u5bb9\\uff1a\",\"row\":\"6\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"764\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"6\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"amout[]\",\"readonly\":\"1\",\"must\":\"0\",\"title\":\"\\u5de5\\u7a0b\\u91cf\\uff1a\",\"row\":\"6\",\"col\":\"3\",\"lists\":\"3\",\"id\":\"764\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"price[]\",\"readonly\":\"1\",\"must\":\"0\",\"title\":\"\\u5355\\u4ef7\\uff1a\",\"row\":\"6\",\"col\":\"4\",\"lists\":\"3\",\"id\":\"764\"}]', '', '6', '1', null, '1536810382', '1537429293', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('765', '32', '编号随机数：', 'code', 'number', '[]', 'FBHT', '1', '1', '1', '1536818105', '1537500566', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('766', '32', '合同名称：', 'text', 'title', '[]', '请输入合同名称', '1', '2', '1', '1536818105', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('770', '9', '上传多文件：', 'file', 'file', '[{}]', '', '3', '1', '1', '1536818648', '1537234686', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('771', '9', '上传单图片：', 'file', 'image', '[{\"value\":\"multiple\"}]', '', '3', '2', '1', '1536818648', '1537234686', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('772', '9', '上传多图片：', 'file', 'images', '[{\"value\":\"multiples\"}]', '', '3', '3', '1', '1536818649', '1537234686', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('773', '32', '合同类型：', 'select', 'contract_type', '[{\"value\":\"0\",\"text\":\"分包合同\"}]', null, '2', '1', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('774', '32', '合同金额：', 'money', 'contract_money', '[]', '请输入合同金额', '2', '2', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('775', '32', '结算方式：', 'select', 'clear_type', '[{\"value\":\"0\",\"text\":\"分段结算\"},{\"value\":\"1\",\"text\":\"竣工后一次结算\"},{\"value\":\"2\",\"text\":\"按进度款结算\"}]', null, '3', '1', '1', '1536819132', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('776', '32', '合同金额(大写)：', 'bigmoney', 'big_money', '[]', '', '3', '2', '1', '1536819132', '1537500566', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('777', '32', '开始日期：', 'datetime', 'start_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '1', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('778', '32', '结束日期：', 'datetime', 'end_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '2', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('779', '32', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '5', '1', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('780', '32', '', '', '', '[]', null, '5', '2', '1', '1536819132', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('782', '32', '预付款：', 'money', 'pre_money', '[]', '', '6', '2', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('783', '32', '保证金：', 'money', 'bail', '[]', '', '7', '1', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('784', '32', '付款方式：', 'select', 'pay_type', '[{\"value\":\"0\",\"text\":\"现金\"},{\"value\":\"1\",\"text\":\"银行\"},{\"value\":\"2\",\"text\":\"转账\"},{\"value\":\"3\",\"text\":\"支票\"}]', null, '7', '2', '1', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('785', '32', '制单人：', 'login_user', 'maker', '[]', '默认当前登录人', '8', '1', '1', '1536819132', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('786', '32', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '8', '2', '1', '1536819132', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('788', '32', '', '', '', '[]', null, '9', '2', '1', '1536819132', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('789', '32', '付款条件：', 'textarea', 'condition', '[]', '', '10', '1', '5', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('790', '32', '主要条款：', 'textarea', 'item', '[]', '', '11', '1', '5', '1536819132', '1537500566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('791', '32', '备注：', 'textarea', 'remark', '[]', '', '12', '1', '5', '1536819132', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('792', '32', '工程量清单', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"m_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"792\",\"title\":\"\\u65bd\\u5de5\\u5185\\u5bb9\\uff1a\",\"row\":\"13\",\"col\":\"1\",\"lists\":\"6\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"792\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"13\",\"col\":\"2\",\"lists\":\"6\"},{\"option\":\"[]\",\"total\":\"combined[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"quantities[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"792\",\"title\":\"\\u5de5\\u7a0b\\u91cf\\uff1a\",\"row\":\"13\",\"col\":\"3\",\"lists\":\"6\"},{\"option\":\"[]\",\"total\":\"combined[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"792\",\"title\":\"\\u5355\\u4ef7\\uff1a\",\"row\":\"13\",\"col\":\"4\",\"lists\":\"6\"},{\"option\":\"[]\",\"total\":\"total\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"combined[]\",\"readonly\":\"0\",\"must\":\"0\",\"title\":\"\\u5c0f\\u8ba1\\uff1a\",\"row\":\"13\",\"col\":\"5\",\"lists\":\"6\",\"id\":\"792\"}]', '', '13', '1', null, '1536819132', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('793', '13', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '1', '2', '1', '1536821806', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('794', '17', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1536823777', '1536824606', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('795', '17', '编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536824606', '1536824606', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('796', '20', '计划名称：', 'text', 'title', '[]', '清输入计划名称', '1', '2', '1', '1536828388', '1537428764', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('797', '16', '变更名称：', 'text', 'name', '[]', '请输入文本', '1', '2', '1', '1536831587', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('799', '16', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1536831587', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('800', '16', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1536831587', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('802', '16', '所属合同：', 'select', 'contract_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '4', '1', '1', '1536831587', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('803', '16', '提出变更单位：', 'text', 'change_work', '[]', '', '4', '2', '1', '1536831587', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('804', '16', '变更金额：', 'money', 'change_money', '[]', '', '5', '1', '1', '1536831587', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('805', '16', '金额大写：', 'bigmoney', 'big_money', '[]', '', '5', '2', '1', '1536831587', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('808', '4', '日志编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536889981', '1539593794', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('809', '4', '*填报人：', 'login_user', 'maker', '[]', '默认当前登录人', '1', '2', '1', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('810', '4', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('811', '4', '*日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('812', '4', '上午天气：', 'select', 'mooning_temp', '[{\"value\":\"0\",\"text\":\"晴\"},{\"value\":\"1\",\"text\":\"阴\"},{\"value\":\"2\",\"text\":\"雨\"}]', null, '3', '1', '1', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('813', '4', '下午天气：', 'select', 'afternoon_temp', '[{\"value\":\"0\",\"text\":\"晴\"},{\"value\":\"1\",\"text\":\"阴\"},{\"value\":\"2\",\"text\":\"雨\"}]', null, '3', '2', '1', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('814', '4', '最低气温：', 'number', 'low_temp', '[]', '', '4', '1', '1', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('815', '4', '最高气温：', 'number', 'hight_temp', '[]', '', '4', '2', '1', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('818', '4', '施工进展：', 'textarea', 'advance', '[]', '', '8', '1', '3', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('819', '4', '主要工作：', 'textarea', 'work', '[]', '', '9', '1', '3', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('820', '4', '其他情况：', 'textarea', 'other', '[]', '', '10', '1', '3', '1536889981', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('821', '12', '计划名称：', 'text', 'title', '[]', '请输入计划名称', '1', '2', '1', '1536891846', '1537428099', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('822', '33', '开票登记编号(自动生成)：', 'code', 'number', '[]', 'SK', '1', '1', '1', '1536893404', '1538192036', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('824', '33', '纳税人识别号：', 'number', 'identify_number', '[]', '数字', '2', '1', '1', '1536893404', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('825', '33', '发票类型：', 'select', 'Invoice_type', '[{\"value\":\"0\",\"text\":\"\"}]', '请输入金额', '2', '2', '1', '1536893404', '1538192036', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('826', '33', '发票金额：', 'money', 'invoice_value', '[]', '请输入金额', '3', '1', '1', '1536893404', '1538192036', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('827', '33', '金额大写：', 'bigmoney', 'amount_in_words', '[]', '请输入金额', '3', '2', '1', '1536893404', '1538192036', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('828', '33', '项目名称：', 'select', 'project_name', '[{\"value\":\"0\",\"text\":\"\"}]', null, '4', '1', '1', '1536893404', '1538192036', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('829', '33', '开户银行及账号：', 'text', 'Bank_and_account_number', '[]', '请输入文本', '4', '2', '1', '1536893404', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('831', '33', '付款方：', 'text', 'payer', '[]', '请输入文本', '5', '2', '1', '1536893404', '1538192036', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('832', '33', '组织机构代码证号码：', 'text', 'Organization_code_certificate_number', '[]', '请输入文本', '6', '1', '1', '1536893404', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('833', '33', '发票号码：', 'number', 'invoice_number', '[]', '数字', '6', '2', '1', '1536893404', '1538192036', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('835', '33', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '7', '2', '1', '1536893404', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('836', '33', '发票照片：', 'file', 'the_invoice_photos', '[{\"value\":\"multiples\"}]', '', '8', '1', '3', '1536893404', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('837', '33', '备注：', 'textarea', 'remark', '[]', '请输入备注', '9', '1', '5', '1536893404', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('838', '33', '填报人：', 'login_user', 'informant', '[]', '', '7', '1', '1', '1536893730', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('839', '34', '编号：', 'code', 'number', '[]', '', '1', '1', '1', '1536894397', '1539912944', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('840', '34', '*结算名称：', 'text', 'name', '[]', '', '1', '2', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('841', '34', '所属项目：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '3', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('842', '34', '合同名称：', 'select', 'contract_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', 'obj_id', 'sub_contract', null, null, null, 'obj_id');
INSERT INTO `jz_flow_form_list` VALUES ('843', '34', '合同金额：', 'number', 'contract_money', '[]', '', '3', '2', '1', '1536894397', '1539912944', '0', '1', '0', null, '0', 'contract_id', 'sub_contract', 'contract_money', null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('844', '34', '分包单位：', 'text', 'work', '[]', '', '4', '1', '1', '1536894397', '1539912944', '0', '1', '0', null, '0', 'contract_id', 'sub_contract', 'supplier_id', '', null, null);
INSERT INTO `jz_flow_form_list` VALUES ('845', '34', '', '', '', '[]', null, '4', '2', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('846', '34', '制单人：', 'login_user', 'maker', '[]', '默认当前登录人', '5', '1', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('847', '34', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '2', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('848', '34', '罚款：', 'text', 'fines', '[]', '', '6', '1', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('849', '34', '扣款：', 'number', 'cut_money', '[]', '', '6', '2', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('851', '34', '金额大写：', 'bigmoney', 'bigmoney', '[]', '', '7', '2', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('852', '34', '结算说明：', 'textarea', 'mes', '[]', '', '8', '1', '3', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('853', '34', '附件：', '', '', '[]', '', '9', '1', '3', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('855', '34', '金额大写：', 'bigmoney', 'big_sum', '[]', '', '11', '2', '1', '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('856', '34', '工程量清单', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"code[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u7f16\\u53f7\\uff1a\",\"row\":\"10\",\"col\":\"1\",\"lists\":\"8\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"title[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u6e05\\u5355\\u5b50\\u76ee\\uff1a\",\"row\":\"10\",\"col\":\"2\",\"lists\":\"8\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"unit[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"10\",\"col\":\"3\",\"lists\":\"8\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"contract_num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u5408\\u540c\\u6570\\u91cf\\uff1a\",\"row\":\"10\",\"col\":\"4\",\"lists\":\"8\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"contract_price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u5408\\u540c\\u5355\\u4ef7\\uff1a\",\"row\":\"10\",\"col\":\"5\",\"lists\":\"8\"},{\"option\":\"[]\",\"total\":\"all_money[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"fact_num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u5b9e\\u9645\\u5b8c\\u6210\\u6570\\u91cf\\uff1a\",\"row\":\"10\",\"col\":\"6\",\"lists\":\"8\"},{\"option\":\"[]\",\"total\":\"all_money[]\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"fact_price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u5b9e\\u9645\\u6267\\u884c\\u4ef7\\u683c\\uff1a\",\"row\":\"10\",\"col\":\"7\",\"lists\":\"8\"},{\"option\":\"[]\",\"total\":\"all_sum\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"all_money[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u7ed3\\u7b97\\u4ef7\\u6b3e\\uff1a\",\"row\":\"10\",\"col\":\"8\",\"lists\":\"8\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"remark[]\",\"placeholder\":\"\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"856\",\"title\":\"\\u5907\\u6ce8\\uff1a\",\"row\":\"10\",\"col\":\"9\",\"lists\":\"8\"}]', '', '10', '1', null, '1536894397', '1539912944', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('864', '35', '费用编号：', 'code', 'code', '[]', 'ZZFY', '1', '1', '1', '1536897017', '1537951435', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('865', '35', '录入人：', 'login_user', 'add_user_id', '[]', '默认当前登录人', '1', '2', '1', '1536897017', '1537951435', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('866', '35', '*姓名：', 'select', 'username', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1536897017', '1537951435', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('867', '35', '*性别：', 'text', 'sex', '[]', '', '2', '2', '1', '1536897017', '1537951435', '0', '1', '0', null, '1', 'username', 'certificates', 'sex', 'get_sex', null, null);
INSERT INTO `jz_flow_form_list` VALUES ('868', '35', '证件名称：', 'text', 'certificate_name', '[]', '', '3', '1', '1', '1536897017', '1537951435', '0', '1', '0', null, '0', 'username', 'certificates', 'certificate_type', 'get_certificate_type', null, null);
INSERT INTO `jz_flow_form_list` VALUES ('869', '35', '证件编号：', 'text', 'certificate_number', '[]', '', '3', '2', '1', '1536897017', '1537951435', '0', '1', '0', null, '0', 'username', 'certificates', 'certificate_number', null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('870', '35', '*开始日期：', 'datetime', 'start_time', '[{\"value\":\"date\"}]', '', '4', '1', '1', '1536897017', '1537951435', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('871', '35', '*结束日期：', 'datetime', 'end_time', '[{\"value\":\"date\"}]', '', '4', '2', '1', '1536897017', '1537951435', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('872', '35', '*证件费用：', 'money', 'money', '[]', '请输入金额', '5', '1', '1', '1536897017', '1537951435', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('873', '35', '金额(大写)：', 'bigmoney', 'bigmoney', '[]', '', '5', '2', '1', '1536897017', '1537951435', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('875', '35', '备注：', 'textarea', 'note', '[]', '', '7', '1', '5', '1536897017', '1537951435', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('876', '37', '编号', 'code', 'number', '[]', 'JD', '1', '1', '1', '1536903916', '1538125030', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('877', '37', '计划名称', 'text', 'title', '[]', '计划名称', '1', '2', '1', '1536903916', '1538125030', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('878', '37', '制定人', 'login_user', 'maker', '[]', '默认当前登录人', '1', '3', '1', '1536903916', '1538125030', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('879', '37', '日期', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '1', '1', '1536903916', '1538125030', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('880', '37', '项目名称', 'select', 'obj_id', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '2', '1', '1536903916', '1538125030', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('881', '37', '', '', '', '[]', null, '2', '3', '1', '1536903916', '1538125030', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('882', '37', '进度明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u5de5\\u7a0b\\u540d\\u79f0\",\"type\":\"text\",\"name\":\"obj_title[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"882\",\"title\":\"\\u5de5\\u7a0b\\u540d\\u79f0\",\"row\":\"3\",\"col\":\"1\",\"lists\":\"6\"},{\"option\":\"[{\\\"value\\\":\\\"date\\\"}]\",\"placeholder\":\"YYYY-MM-DD\",\"type\":\"datetime\",\"name\":\"start_time[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"882\",\"title\":\"\\u9884\\u8ba1\\u5f00\\u59cb\\u65e5\\u671f\",\"row\":\"3\",\"col\":\"2\",\"lists\":\"6\"},{\"option\":\"[{\\\"value\\\":\\\"date\\\"}]\",\"placeholder\":\"YYYY-MM-DD\",\"type\":\"datetime\",\"name\":\"end_time[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"882\",\"title\":\"\\u9884\\u8ba1\\u5b8c\\u5de5\\u65e5\\u671f\",\"row\":\"3\",\"col\":\"3\",\"lists\":\"6\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5de5\\u7a0b\\u91cf\",\"type\":\"text\",\"name\":\"amount[]\",\"readonly\":\"1\",\"must\":\"0\",\"title\":\"\\u5de5\\u7a0b\\u91cf\",\"row\":\"3\",\"col\":\"4\",\"lists\":\"6\",\"id\":\"882\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5355\\u4f4d\",\"type\":\"text\",\"name\":\"unit[]\",\"readonly\":\"1\",\"must\":\"0\",\"title\":\"\\u5355\\u4f4d\",\"row\":\"3\",\"col\":\"5\",\"lists\":\"6\",\"id\":\"882\"}]', '工程名称', '3', '1', null, '1536903916', '1538125030', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('883', '24', '合计金额：', 'money', 'total', '[]', '', '12', '1', '1', '1536903850', '1539674066', '0', '1', '0', null, '0', null, null, null, null, 'capital', null);
INSERT INTO `jz_flow_form_list` VALUES ('884', '24', '金额大写：', 'text', 'capital', '[]', '', '12', '2', '1', '1536903850', '1539674066', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('885', '24', '', '', '', '[]', null, '12', '3', '1', '1536903850', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('886', '14', '总计：', 'money', 'all_sum', '[]', '', '14', '1', '1', '1536905259', '1539937741', '0', '1', '0', null, '0', null, null, null, null, 'big_sum', null);
INSERT INTO `jz_flow_form_list` VALUES ('887', '14', '金额大写：', 'text', 'big_sum', '[]', '', '14', '2', '1', '1536905259', '1539937741', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('891', '32', '共计：', 'money', 'total', '[]', '', '14', '1', '1', '1536906982', '1537500566', '0', '1', '0', null, '0', null, null, null, null, 'capital', null);
INSERT INTO `jz_flow_form_list` VALUES ('892', '32', '金额大写：', 'text', 'capital', '[]', '', '14', '2', '1', '1536906982', '1537500566', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('893', '38', '售票登记编号(自动生成)：', 'code', 'code', '[]', '', '1', '1', '1', '1536908162', '1536909006', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('894', '38', '开票类型：', 'select', 'select', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '1', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('895', '38', '发票金额：', 'money', 'money', '[]', '', '2', '1', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('896', '38', '发票类型：', 'select', 'select', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('897', '38', '金额大写：', 'bigmoney', 'bigmoney', '[]', '', '3', '1', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('898', '38', '', '', '', '[]', null, '3', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('899', '38', '项目名称：', 'select', 'select', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '4', '1', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('900', '38', '', '', '', '[]', null, '4', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('901', '38', '纳税人识别号：', 'text', 'title', '[]', '', '5', '1', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('902', '38', '开户银行及账号：', 'number', 'number', '[]', '', '5', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('903', '38', '收款单位：', 'text', 'title', '[]', '', '6', '1', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('904', '38', '付款单位：', 'number', 'number', '[]', '', '6', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('905', '38', '组织机构代码证号码：', 'text', 'title', '[]', '', '7', '1', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('906', '38', '发票号码：', 'number', 'number', '[]', '', '7', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('907', '38', '填报人：', 'login_user', 'login_user', '[]', '', '8', '1', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('908', '38', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', '', '8', '2', '1', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('909', '38', '发票照片：', 'file', 'images', '[{\"value\":\"multiples\"}]', '', '9', '1', '3', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('910', '38', '备注：', 'textarea', 'note', '[]', '', '10', '1', '5', '1536908162', '1536909006', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('911', '27', '总计：', 'money', 'all_sum', '[]', '', '13', '1', '1', '1536909257', '1537500284', '0', '1', '0', null, '0', null, null, null, null, 'big_sum', null);
INSERT INTO `jz_flow_form_list` VALUES ('912', '27', '大写：', 'text', 'big_sum', '[]', '请输入文本', '13', '2', '1', '1536909257', '1537500284', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('913', '32', '合同附件：', 'file', 'file', '[{}]', '', '9', '1', '1', '1536909778', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('914', '39', '售票登记编号(自动生成)：', 'code', 'number', '[]', 'FK', '1', '1', '1', '1536910377', '1538191262', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('916', '39', '发票金额：', 'money', 'invoice_value', '[]', '请输入金额', '2', '1', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('917', '39', '付款类型：', 'select', 'bill_type', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '2', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('918', '39', '金额大写：', 'bigmoney', 'amount_in_words', '[]', '请输入金额', '3', '1', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('919', '39', '发票类型：', 'select', 'Invoice_type', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '2', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('920', '39', '项目名称：', 'select', 'project_name', '[{\"value\":\"0\",\"text\":\"\"}]', null, '4', '1', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('921', '39', '', '', '', '[]', null, '4', '2', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('922', '39', '纳税人识别号：', 'text', 'identify_number', '[]', '请输入文本', '5', '1', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('923', '39', '开户银行及账号：', 'number', 'Bank_and_account_number', '[]', '数字', '5', '2', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('926', '39', '组织机构代码证号码：', 'number', 'Organization_code_certificate_number', '[]', '数字', '7', '1', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('927', '39', '发票号码：', 'text', 'invoice_number', '[]', '请输入文本', '7', '2', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('928', '39', '填报人：', 'login_user', 'informant', '[]', '默认当前登录人', '8', '1', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('929', '39', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '8', '2', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('930', '39', '发票照片：', 'file', 'the_invoice_photos', '[{\"value\":\"multiples\"}]', '', '9', '1', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('931', '39', '', '', '', '[]', null, '9', '2', '1', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('932', '39', '备注：', 'textarea', 'remark', '[]', '请输入备注', '10', '1', '3', '1536910377', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('937', '35', '附件：', 'file', 'file', '[{}]', '', '6', '1', '5', '1536910847', '1537951435', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('938', '19', '附件：', 'file', 'file', '[{}]', '', '8', '1', '3', '1536910903', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('939', '19', '图片：', 'file', 'pic', '[{\"value\":\"multiples\"}]', '', '9', '1', '5', '1536910903', '1537949253', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('940', '27', '合同附件：', 'file', 'file', '[{}]', '', '9', '1', '1', '1536910997', '1537500284', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('941', '24', '合同附件：', 'file', 'file', '[{}]', '', '7', '1', '1', '1536911077', '1539674066', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('942', '14', '合同附件：', 'file', 'file', '[{}]', '', '9', '1', '1', '1536911106', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('943', '18', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '3', '2', '1', '1536911445', '1539936257', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('944', '31', '附件：', 'file', 'file', '[{}]', '', '5', '1', '1', '1536911288', '1537429293', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('945', '25', '附件：', 'file', 'file', '[{}]', '', '5', '1', '1', '1536911315', '1537429144', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('946', '20', '附件：', 'file', 'file', '[{}]', '', '4', '1', '1', '1536911338', '1537428764', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('947', '12', '附件：', 'file', 'file', '[{}]', '', '2', '2', '1', '1536911371', '1537428099', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('948', '30', '', '', '', '[]', '点击选择', '2', '3', '1', '1537147554', '1537413187', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('949', '40', '编号：', 'code', 'out_code', '[]', 'ZZJC', '1', '1', '1', '1537147370', '1538119161', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('950', '40', '*借用人：', 'person', 'out_user_id', '[]', '', '1', '2', '1', '1537147370', '1538119161', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('951', '40', '部门：', 'department', 'organization', '[]', '', '2', '1', '1', '1537147370', '1538119161', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('952', '40', '日期：', 'datetime', 'out_time', '[{\"value\":\"date\"}]', '', '2', '2', '1', '1537147370', '1538119161', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('953', '40', '*出借项目：', 'text', 'tender_name', '[]', '', '3', '1', '1', '1537147370', '1538119161', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('954', '40', '*预计归还日期：', 'datetime', 'in_plan_time', '[{\"value\":\"date\"}]', '', '3', '2', '1', '1537147370', '1538119161', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('955', '40', '借出原因*：', 'textarea', 'out_note', '[]', '', '4', '1', '5', '1537147370', '1538119161', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('958', '40', '证件借出明细', 'lists', null, '[{\"option\":[{\"value\":\"0\",\"text\":\"\"}],\"type\":\"select\",\"name\":\"username[]\",\"must\":\"0\",\"id\":\"958\",\"title\":\"\\u59d3\\u540d\\uff1a\",\"row\":\"5\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"username[]\",\"tbname\":\"certificates\",\"jofield\":\"certificate_number\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6587\\u672c\",\"type\":\"text\",\"name\":\"certificate_number[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"958\",\"title\":\"\\u8bc1\\u4ef6\\u7f16\\u53f7\\uff1a\",\"row\":\"5\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"username[]\",\"tbname\":\"certificates\",\"jofield\":\"certificate_type\",\"action\":\"get_certificate_type\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"certificate_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"958\",\"title\":\"\\u8bc1\\u4ef6\\u540d\\u79f0\\uff1a\",\"row\":\"5\",\"col\":\"3\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"place[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"958\",\"title\":\"*\\u5b58\\u653e\\u4f4e\\u70b9\\uff1a\",\"row\":\"5\",\"col\":\"4\",\"lists\":\"3\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"note[]\",\"placeholder\":\"\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"958\",\"title\":\"\\u5907\\u6ce8\\uff1a\",\"row\":\"5\",\"col\":\"5\",\"lists\":\"3\"}]', null, '5', '1', null, '1537148946', '1538119161', null, '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('959', '15', '开始日期', 'datetime', 'start_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '1', '3', '1', '1537150391', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('960', '15', '结束日期', 'datetime', 'end_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '1', '1', '1537150391', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('961', '15', '日期', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '6', '1', '1', '1537150508', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('962', '41', '编号：', 'code', 'in_code', '[]', 'ZZGH', '1', '1', '1', '1537157000', '1538274182', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('963', '41', '*归还人：', 'person', 'in_username', '[]', '', '1', '2', '1', '1537157000', '1538274182', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('964', '41', '*部门：', 'department', 'organization', '[]', '', '2', '1', '1', '1537157000', '1538274182', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('965', '41', '日期：', 'datetime', 'in_time', '[{\"value\":\"date\"}]', '', '2', '2', '1', '1537157000', '1538274182', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('966', '41', '备注：', 'textarea', 'in_note', '[]', '', '3', '1', '5', '1537157000', '1538274182', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('967', '41', '证书归还明细', 'lists', null, '[{\"option\":[{\"value\":\"0\",\"text\":\"\"}],\"type\":\"select\",\"name\":\"username[]\",\"must\":\"0\",\"id\":\"967\",\"title\":\"\\u59d3\\u540d\\uff1a\",\"row\":\"4\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"username[]\",\"tbname\":\"certificates\",\"jofield\":\"certificate_number\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"certificate_number[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"967\",\"title\":\"\\u8bc1\\u4e66\\u7f16\\u53f7\\uff1a\",\"row\":\"4\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"username[]\",\"tbname\":\"certificates\",\"jofield\":\"certificate_type\",\"action\":\"get_certificate_type\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"certificate_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"967\",\"title\":\"\\u8bc1\\u4e66\\u540d\\u79f0\\uff1a\",\"row\":\"4\",\"col\":\"3\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6587\\u672c\",\"type\":\"text\",\"name\":\"place[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"967\",\"title\":\"\\u5b58\\u653e\\u5730\\u70b9\\uff1a\",\"row\":\"4\",\"col\":\"4\",\"lists\":\"3\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"note[]\",\"placeholder\":\"\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"967\",\"title\":\"\\u5907\\u6ce8\\uff1a\",\"row\":\"4\",\"col\":\"5\",\"lists\":\"3\"}]', null, '4', '1', null, '1537157000', '1538274182', null, '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('968', '30', '材料明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"materials_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"968\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"3\",\"col\":\"1\",\"lists\":\"6\"},{\"option\":\"[]\",\"pname\":\"materials\",\"jofield\":\"specifications\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u89c4\\u683c\\u578b\\u53f7\",\"type\":\"text\",\"name\":\"size[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"968\",\"title\":\"\\u89c4\\u683c\\u578b\\u53f7\",\"row\":\"3\",\"col\":\"2\",\"lists\":\"6\"},{\"option\":\"[]\",\"pname\":\"materials\",\"jofield\":\"metering\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5355\\u4f4d\",\"type\":\"text\",\"name\":\"unit[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"968\",\"title\":\"\\u5355\\u4f4d\",\"row\":\"3\",\"col\":\"3\",\"lists\":\"6\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u603b\\u8ba1\\u5212\\u91cf\",\"type\":\"text\",\"name\":\"amount[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"968\",\"title\":\"\\u603b\\u8ba1\\u5212\\u91cf\",\"row\":\"3\",\"col\":\"4\",\"lists\":\"6\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5907\\u6ce8\",\"type\":\"text\",\"name\":\"ps[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"968\",\"title\":\"\\u5907\\u6ce8\",\"row\":\"3\",\"col\":\"5\",\"lists\":\"6\"}]', '点击选择', '3', '1', null, '1537163122', '1537413187', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('969', '42', '编号随机数：', 'code', 'number', '[]', 'JG', '1', '1', '1', '1537166378', '1537854330', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('971', '42', '填报人：', 'login_user', 'maker', '[]', '默认当前登录人', '2', '1', '1', '1537166378', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('972', '42', '项目名称：', 'select', 'project_name', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '2', '1', '1537166378', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('973', '42', '下午天气：', 'select', 'the_weather_in_the_afternoon', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1537166378', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('974', '42', '上午天气：', 'select', 'the_weather_in_the_morning', '[{\"value\":\"0\",\"text\":\"\"}]', '数字', '3', '2', '1', '1537166378', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('975', '42', '最低气温（℃）：', 'number', 'lowest_temperature', '[]', '数字', '4', '1', '1', '1537166378', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('976', '42', '最高气温（℃）：', 'number', 'highest_temperature', '[]', '数字', '4', '2', '1', '1537166378', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('981', '42', '上传多文件：', 'file', 'files', '[{}]', '', '6', '1', '5', '1537166525', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('982', '42', '施工内容：', 'textarea', 'complete_explain', '[]', '请输入备注', '7', '1', '3', '1537166525', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('983', '42', '施工遇到的问题', 'textarea', 'problem_description', '[]', '请输入备注', '8', '1', '3', '1537166525', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('984', '43', '编号随机数：', 'code', 'number', '[]', 'BX', '1', '1', '1', '1537169455', '1537854223', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('985', '43', '报销名称：', 'text', 'title', '[]', '请输入文本', '1', '2', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('986', '43', '所属项目：', 'select', 'project_name', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('987', '43', '报销科目：', 'select', 'subject', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '2', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('988', '43', '报销金额：', 'money', 'money', '[]', '请输入金额', '3', '1', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('989', '43', '金额大写：', 'bigmoney', 'amount_in_words', '[]', '请输入金额', '3', '2', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('990', '43', '部门：', 'department', 'department_id', '[]', '点击选择', '4', '1', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('991', '43', '报销人：', 'person', 'user_id', '[]', '点击选择', '4', '2', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('992', '43', '日期(年月日)：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '1', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('993', '43', '制单人：', 'login_user', 'informant', '[]', '默认当前登录人', '5', '2', '1', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('994', '43', '上传多文件：', 'file', 'files', '[{}]', '', '6', '1', '5', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('995', '43', '备注：', 'textarea', 'remark', '[]', '请输入备注', '7', '1', '3', '1537170583', '1537854223', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('996', '44', '编号随机数：', 'code', 'number', '[]', 'JG', '1', '1', '1', '1537173668', '1537511788', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('997', '44', '标题：', 'text', 'title', '[]', '请输入文本', '1', '2', '1', '1537173668', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('998', '44', '完工项目：', 'select', 'project_name', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1537173668', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('999', '44', '申请人：', 'login_user', 'maker', '[]', '默认当前登录人', '2', '2', '1', '1537173668', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1000', '44', '开工日期：', 'datetime', 'start_date', '[{\"value\":\"date\"}]', '', '3', '1', '1', '1537173668', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1005', '14', '供应商：', 'supplier', 'supplier_id', '[]', '点击选择', '8', '1', '1', '1537234106', '1539937741', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1009', '9', '供应商：', 'supplier', 'supplier', '[]', '点击选择', '4', '1', '1', '1537234636', '1537234686', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1011', '9', '', '', '', '[]', null, '4', '3', '1', '1537234636', '1537234686', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1012', '9', '材料名称：', 'materials', 'materials', '[]', '点击选择', '4', '2', '1', '1537234686', '1537234686', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1013', '24', '劳务班组：', 'supplier', 'supplier_id', '[]', '点击选择', '2', '3', '1', '1537237146', '1539674066', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1014', '39', '主题：', 'text', 'title', '[]', '请输入文本', '1', '2', '1', '1537240681', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1015', '33', '主题：', 'text', 'title', '[]', '请输入文本', '1', '2', '1', '1537240748', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1016', '32', '分包单位：', 'supplier', 'supplier_id', '[]', '点击选择', '6', '1', '1', '1537240628', '1537500566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1017', '39', '收款方：', 'text', 'payer', '[]', '请输入文本', '6', '2', '1', '1537251057', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1018', '45', '仓库编号：', 'code', 'code', '[]', 'CK', '1', '1', '1', '1537255204', '1537259454', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1019', '45', '仓库名称：', 'text', 'title', '[]', '请输入仓库名称', '1', '2', '1', '1537255204', '1537259454', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1020', '45', '仓库地址：', 'text', 'address', '[]', '请输入仓库地址', '2', '1', '3', '1537255204', '1537259454', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1021', '45', '仓库管理员：', 'text', 'contact', '[]', '请输入仓库管理员', '3', '1', '1', '1537255204', '1537259454', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1022', '45', '手机号：', 'number', 'phone', '[]', '请输入手机号', '3', '2', '1', '1537255204', '1537259454', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1023', '45', '备注：', 'textarea', 'remark', '[]', '请输入备注', '4', '1', '3', '1537255204', '1537259454', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1024', '46', '编号随机数：', 'code', 'number', '[]', 'BZ', '1', '1', '1', '1537258043', '1537426410', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1025', '46', '编制名称', 'text', 'title', '[]', '请输入编制名称', '1', '2', '1', '1537258043', '1537426410', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1026', '46', '制订人：', 'login_user', 'maker', '[]', '默认当前登录人', '1', '3', '1', '1537258043', '1537426410', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1027', '46', '日期', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '1', '1', '1537258043', '1537426410', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1028', '46', '所属项目', 'select', 'obj_id', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '2', '1', '1537258043', '1537426410', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1029', '46', '', '', '', '[]', null, '2', '3', '1', '1537258043', '1537426410', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1030', '46', '成本编制明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6587\\u672c\",\"type\":\"text\",\"name\":\"obj_title[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1030\",\"title\":\"\\u5de5\\u7a0b\\u540d\\u79f0\",\"row\":\"3\",\"col\":\"1\",\"lists\":\"6\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u9884\\u8ba1\\u6210\\u672c\",\"type\":\"money\",\"name\":\"cost[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1030\",\"title\":\"\\u9884\\u8ba1\\u6210\\u672c\",\"row\":\"3\",\"col\":\"2\",\"lists\":\"6\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5907\\u6ce8\",\"type\":\"text\",\"name\":\"remark[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1030\",\"title\":\"\\u5907\\u6ce8\",\"row\":\"3\",\"col\":\"3\",\"lists\":\"6\"}]', '请输入文本', '3', '1', null, '1537258043', '1537426410', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1031', '45', '状态：', 'radio', 'status', '[{\"value\":\"0\",\"text\":\"废弃\",\"checked\":false},{\"value\":\"1\",\"text\":\"正常\",\"checked\":true}]', '', '5', '1', '3', '1537259454', '1537259454', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1032', '15', '所属部门', 'department', 'part', '[]', '点击选择', '5', '3', '1', '1537322228', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1033', '27', '供应商：', 'supplier', 'supplier_id', '[]', '点击选择', '6', '1', '1', '1537325305', '1537500284', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1034', '47', '编号：', 'code', 'number', '[]', '', '1', '1', '1', '1537341279', '1539756197', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1035', '47', '付款名称*：', 'text', 'name', '[]', '请输入付款名称', '1', '2', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1036', '47', '项目名称：', 'select', 'obj_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1037', '47', '', '', '', '[]', null, '2', '2', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1038', '47', '合同名称：', 'select', 'contract_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1039', '47', '合同金额*：', 'text', 'contract_money', '[]', '请输入合同金额 ', '3', '2', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1040', '47', '劳务班组：', 'supplier', 'service_line', '[]', '点击选择', '4', '1', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1041', '47', '制单人：', 'login_user', 'maker', '[]', '默认当前登录人', '4', '2', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1042', '47', '罚款：', 'text', 'fines', '[]', '', '5', '1', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1043', '47', '扣款：', 'text', 'cut_money', '[]', '', '5', '2', '3', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1044', '47', '支付类型：', 'select', 'pay_type', '[{\"value\":\"0\",\"text\":\"\"}]', null, '6', '1', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1045', '47', '开户行名：', 'text', 'bank_name', '[]', '', '6', '2', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1046', '47', '银行账户：', 'text', 'bank_account', '[]', '', '7', '1', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1047', '47', '金额：', 'money', 'pay_money', '[]', '请输入金额', '7', '2', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1048', '47', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '8', '1', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1049', '47', '金额大写：', 'bigmoney', 'bigmoney', '[]', '请输入金额', '8', '2', '1', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1050', '47', '附件：', 'file', 'file', '[{}]', '', '9', '1', '3', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1051', '47', '备注：', 'textarea', 'remark', '[]', '', '10', '1', '3', '1537341279', '1539756197', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1052', '15', '', '', '', '[]', '点击选择', '7', '3', '1', '1537344188', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1053', '48', '入库编号：', 'code', 'code', '[]', 'RK', '1', '1', '1', '1537412325', '1537497828', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1054', '48', '制单人：', 'login_user', 'maker', '[]', '默认当前登录人', '1', '2', '1', '1537412325', '1537497828', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1055', '48', '入库类型：', 'select', 'type', '[{\"value\":\"0\",\"text\":\"采购入库\"},{\"value\":\"1\",\"text\":\"完工入库\"}]', null, '2', '1', '1', '1537412325', '1537497828', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1057', '48', '备注：', 'textarea', 'remark', '[]', '', '3', '1', '3', '1537412325', '1537497828', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1058', '48', '入库明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"m_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1058\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"4\",\"col\":\"1\",\"lists\":\"5\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1058\",\"title\":\"\\u89c4\\u683c\\uff1a\",\"row\":\"4\",\"col\":\"2\",\"lists\":\"5\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"metering\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1058\",\"title\":\"\\u8ba1\\u91cf\\u5355\\u4f4d\\uff1a\",\"row\":\"4\",\"col\":\"3\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"total[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6570\\u91cf\",\"type\":\"number\",\"name\":\"num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1058\",\"title\":\"\\u6570\\u91cf\\uff1a\",\"row\":\"4\",\"col\":\"4\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"total[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5355\\u4ef7\",\"type\":\"number\",\"name\":\"price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1058\",\"title\":\"\\u5355\\u4ef7\\uff1a\",\"row\":\"4\",\"col\":\"5\",\"lists\":\"5\"},{\"option\":\"[]\",\"total\":\"money\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"total[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1058\",\"title\":\"\\u603b\\u4ef7\\uff1a\",\"row\":\"4\",\"col\":\"6\",\"lists\":\"5\"}]', '点击选择', '4', '1', null, '1537412325', '1537497828', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1059', '49', '项目编号：', 'code', 'number', '[]', 'TBSQ', '1', '1', '1', '1537414563', '1537432190', '0', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1060', '49', '项目名称：', 'text', 'title', '[]', '请输入项目名称', '1', '2', '1', '1537414563', '1537432190', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1061', '49', '项目简介：', 'textarea', 'content', '[]', '请输入介绍', '2', '1', '5', '1537414563', '1537432190', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1062', '49', '项目地址：', 'text', 'address', '[]', '请输入项目地址', '3', '1', '1', '1537414563', '1537432190', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1063', '49', '录入人：', 'login_user', 'maker', '[]', '默认当前登录人', '3', '2', '1', '1537414563', '1537432190', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1064', '49', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '1', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1065', '49', '项目性质：', 'select', 'nature', '[{\"value\":\"0\",\"text\":\"自营\"},{\"value\":\"1\",\"text\":\"联营\"}]', null, '4', '2', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1066', '49', '项目类型：', 'select', 'type_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '5', '1', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1067', '49', '投标负责人：', 'person', 'head_id', '[]', '点击选择', '5', '2', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1068', '49', '预计投标日期：', 'datetime', 'etime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '6', '1', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1070', '49', '预计合同金额：', 'money', 'contract_cost', '[]', '请输入金额', '7', '1', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1071', '49', '建设单位：', 'text', 'contractor', '[]', '请输入建设单位', '7', '2', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1072', '49', '合同金额(大写)：', 'bigmoney', 'cost_capital', '[]', '请输入金额', '8', '1', '1', '1537414563', '1537432191', '0', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1073', '49', '', '', '', '[]', null, '8', '2', '1', '1537414563', '1537432191', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1074', '49', '联系人：', 'text', 'contact_people', '[]', '请输入联系人', '9', '1', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1075', '49', '联系电话：', 'text', 'contact_phone', '[]', '请输入手机号', '9', '2', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1076', '49', '设计单位：', 'text', 'design_unit', '[]', '请输入设计单位', '10', '1', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1077', '49', '监制单位：', 'text', 'supervision_unit', '[]', '请输入监制单位', '10', '2', '1', '1537414563', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1078', '49', '备注：', 'textarea', 'note', '[]', '', '11', '1', '5', '1537414563', '1537432191', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1079', '49', '附件：', 'file', 'file', '[{}]', '', '12', '1', '1', '1537414563', '1537432191', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1080', '49', '', '', '', '[]', null, '12', '2', '1', '1537414563', '1537432191', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1082', '42', '工人人数：', 'text', 'Number_of_people', '[]', '请输入文本', '5', '1', '1', '1537423878', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1085', '49', '预计投标费：', 'number', 'bcost', '[]', '', '6', '2', '1', '1537432191', '1537432191', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1086', '48', '供应商：', 'supplier', 'supandpos', '[]', '点击选择', '2', '2', '1', '1537493164', '1537497828', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1087', '50', '标书购买编号：', 'code', 'number', '[]', 'ZBWJ', '1', '1', '1', '1537493356', '1537512460', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1088', '50', '申请人：', 'login_user', 'maker', '[]', '默认当前登录人', '1', '2', '1', '1537493356', '1537512460', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1089', '50', '项目名称：', 'select', 'bidding_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1537493356', '1537512460', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1090', '50', '', '', '', '[]', null, '2', '2', '1', '1537493356', '1537512460', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1091', '50', '项目类型：', 'text', 'type_id', '[]', '', '3', '1', '1', '1537493356', '1537512460', '0', '1', '0', null, '0', 'bidding_id', 'bidding', 'type_id', 'TypeName', null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1092', '50', '建设单位：', 'text', 'cost_capitals', '[]', '', '3', '2', '1', '1537493356', '1537512460', '0', '1', '0', null, '0', 'bidding_id', 'bidding', 'contractor', null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1093', '48', '总金额：', 'money', 'money', '[]', '', '5', '1', '1', '1537494264', '1537497828', '0', '1', '0', null, '0', null, null, null, null, 'bigmoney', null);
INSERT INTO `jz_flow_form_list` VALUES ('1094', '48', '总金额大写：', 'bigmoney', 'bigmoney', '[]', '', '5', '2', '1', '1537494264', '1537497828', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1095', '50', '招投标文件费：', 'number', 'cost', '[]', '', '4', '1', '1', '1537494285', '1537512460', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1096', '50', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '2', '1', '1537494285', '1537512460', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1097', '50', '备注：', 'textarea', 'note', '[]', '', '5', '1', '5', '1537494285', '1537512460', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1098', '50', '附件：', 'file', 'file', '[{}]', '', '6', '1', '1', '1537494285', '1537512460', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1099', '50', '', '', '', '[]', null, '6', '2', '1', '1537494285', '1537512460', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1100', '13', '', '', '', '[]', null, '2', '2', '1', '1537496960', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1101', '13', '附件：', 'file', 'file', '[{}]', '', '6', '1', '3', '1537496960', '1537496987', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1102', '8', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '1', '1', '1537497931', '1537497931', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1103', '16', '', '', '', '[]', null, '3', '2', '1', '1537498414', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1104', '16', '原图纸及附件：', 'file', 'pre_file', '[{}]', '', '6', '1', '1', '1537498414', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1105', '16', '变更后图纸及附件：', 'file', 'change_file', '[{}]', '', '6', '2', '1', '1537498414', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1106', '16', '编号：', 'code', 'number', '[]', '', '1', '1', '1', '1537498449', '1537500461', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1107', '16', '单选人：', 'person', 'maker', '[]', '点击选择', '2', '1', '1', '1537498486', '1537500461', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1108', '44', '完工日期：', 'datetime', 'end_date', '[{\"value\":\"date\"}]', '', '3', '2', '1', '1537509996', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1109', '44', '工期（天）：', 'number', 'Duration', '[]', '数字', '4', '1', '1', '1537509996', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1110', '44', '', '', '', '[]', null, '4', '2', '1', '1537509996', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1111', '44', '备注：', 'textarea', 'remark', '[]', '请输入备注', '5', '1', '5', '1537509996', '1537511788', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1112', '4', '上传附件：', 'file', 'file', '[{}]', '', '5', '1', '3', '1537510531', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1113', '4', '上传图片：', 'file', 'pic', '[{\"value\":\"multiple\"}]', '', '6', '1', '3', '1537510531', '1539593794', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1114', '42', '主题：', 'text', 'title', '[]', '请输入文本', '1', '2', '1', '1537513232', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1115', '51', '出库编号：', 'code', 'code', '[]', 'CK', '1', '1', '1', '1537513461', '1539655282', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1116', '51', '制单人：', 'login_user', 'maker', '[]', '默认当前登录人', '1', '2', '1', '1537513461', '1539655282', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1117', '51', '出库类型：', 'select', 'type', '[{\"value\":\"0\",\"text\":\"采购出库\"},{\"value\":\"1\",\"text\":\"完工出库\"}]', null, '2', '1', '1', '1537513461', '1539655282', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1118', '51', '项目：', 'select', 'supandpos', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '2', '1', '1537513461', '1539655282', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1119', '51', '总金额：', 'money', 'money', '[]', '', '4', '1', '1', '1537513461', '1539655282', '0', '1', '0', null, '0', null, null, null, null, 'bigmoney', null);
INSERT INTO `jz_flow_form_list` VALUES ('1120', '51', '总金额大写：', 'bigmoney', 'bigmoney', '[]', '', '4', '2', '1', '1537513461', '1539655282', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1121', '51', '出库明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"m_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1121\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"3\",\"col\":\"1\",\"lists\":\"2\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1121\",\"title\":\"\\u89c4\\u683c\\uff1a\",\"row\":\"3\",\"col\":\"2\",\"lists\":\"2\"},{\"option\":\"[]\",\"pname\":\"m_name\",\"jofield\":\"metering\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"measuring[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1121\",\"title\":\"\\u8ba1\\u91cf\\u5355\\u4f4d\\uff1a\",\"row\":\"3\",\"col\":\"3\",\"lists\":\"2\"},{\"option\":\"[]\",\"total\":\"total[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6570\\u91cf\",\"type\":\"number\",\"name\":\"num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1121\",\"title\":\"\\u6570\\u91cf\\uff1a\",\"row\":\"3\",\"col\":\"4\",\"lists\":\"2\"},{\"option\":\"[]\",\"total\":\"total[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5355\\u4ef7\",\"type\":\"number\",\"name\":\"price[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1121\",\"title\":\"\\u5355\\u4ef7\\uff1a\",\"row\":\"3\",\"col\":\"5\",\"lists\":\"2\"},{\"option\":\"[]\",\"total\":\"money\",\"placeholder\":\"\",\"type\":\"number\",\"name\":\"total[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1121\",\"title\":\"\\u603b\\u4ef7\\uff1a\",\"row\":\"3\",\"col\":\"6\",\"lists\":\"2\"}]', '点击选择', '3', '1', null, '1537513461', '1539655282', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1122', '42', '地点：', 'text', 'location', '[]', '请输入文本', '5', '2', '1', '1537513623', '1537854330', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1123', '52', '业务费编号(自动生成)：', 'code', 'number', '[]', 'XMYWF', '1', '1', '1', '1537847045', '1537847045', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1124', '52', '申请人：', 'login_user', 'maker', '[]', '默认当前登录人', '1', '2', '1', '1537847045', '1537847045', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1125', '52', '项目名称：', 'select', 'bidding_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1537847045', '1537847045', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1126', '52', '', '', '', '[]', null, '2', '2', '1', '1537847045', '1537847045', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1127', '52', '项目类型：', 'text', 'type_id', '[]', '', '3', '1', '1', '1537847045', '1537847045', '0', '1', '0', null, '0', 'bidding_id', 'bidding', 'type_id', 'TypeName', null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1128', '52', '日期：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '3', '2', '1', '1537847045', '1537847045', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1129', '52', '申请金额：', 'money', 'amount', '[]', '请输入金额', '4', '1', '1', '1537847045', '1537847045', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1130', '52', '金额大写：', 'bigmoney', 'capital', '[]', '请输入金额', '4', '2', '1', '1537847045', '1537847045', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1131', '52', '申请事由：', 'textarea', 'reason', '[]', '', '5', '1', '5', '1537847045', '1537847045', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1132', '52', '费用明细：', 'textarea', 'detail', '[]', '', '6', '1', '5', '1537847045', '1537847045', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1133', '52', '费用目的：', 'textarea', 'purpose', '[]', '', '7', '1', '5', '1537847045', '1537847045', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1134', '52', '备注：', 'textarea', 'note', '[]', '', '8', '1', '5', '1537847045', '1537847045', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1135', '52', '附件：', 'file', 'file', '[{}]', '', '9', '1', '1', '1537847045', '1537847045', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1136', '52', '', '', '', '[]', null, '9', '2', '1', '1537847045', '1537847045', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1137', '15', '建设单位', 'text', 'dev_organization', '[]', '请输入建设单位', '6', '2', '1', '1538125126', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1138', '39', '付款单位：', 'select', 'payee', '[{\"value\":\"0\",\"text\":\"\"}]', null, '6', '1', '1', '1538191172', '1538191262', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1139', '33', '收款单位：', 'select', 'payee', '[{\"value\":\"0\",\"text\":\"\"}]', null, '5', '1', '1', '1538192036', '1538192036', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1140', '53', '日期', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '1', '1', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1141', '53', '编号随机数：', 'code', 'number', '[]', 'HT', '1', '2', '1', '1538983787', '1538988118', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1142', '53', '标题', 'text', 'title', '[]', '请输入标题', '1', '3', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1143', '53', '客户名称', 'text', 'c_name', '[]', '请输入客户名称', '2', '1', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1144', '53', '客户电话', 'text', 'c_phone', '[]', '请输入客户电话', '2', '2', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1145', '53', '支付方式', 'select', 'pay_type', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '2', '3', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1146', '53', '交货方式', 'select', 'finish_type', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '3', '1', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1147', '53', '币种', 'select', 'money_type', '[{\"value\":\"1\",\"text\":\"选项1\"},{\"value\":\"2\",\"text\":\"选项2\"},{\"value\":\"3\",\"text\":\"选项3\"},{\"value\":\"4\",\"text\":\"选项4\"}]', null, '3', '2', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1148', '53', '汇率', 'text', 'rate', '[]', '请输入汇率', '3', '3', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1149', '53', '金额：', 'money', 'money', '[]', '请输入金额', '4', '1', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1150', '53', '金额大写：', 'bigmoney', 'bigmoney', '[]', '请输入金额', '4', '2', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1151', '53', '签订人', 'person', 'sign_man', '[]', '点击签订人', '4', '3', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1152', '53', '开始时间', 'datetime', 's_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '1', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1153', '53', '结束时间', 'datetime', 'e_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '2', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1154', '53', '签约地址', 'text', 'address', '[]', '请输入签约地址', '5', '3', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1155', '53', '制单人', 'login_user', 'maker', '[]', '默认当前登录人', '6', '1', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1156', '53', '附件', 'file', 'file', '[{}]', '', '6', '2', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1157', '53', '备注', 'textarea', 'remark', '[]', '请输入备注', '6', '3', '1', '1538983787', '1538988118', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1158', '54', '名称：', 'text', 'title', '[]', '请输入计划名称', '1', '1', '1', '1539142086', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1159', '54', '课程类型：', 'text', 'type', '[]', '请输入课程类型', '1', '2', '1', '1539142086', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1160', '54', '主办单位：', 'text', 'organizer', '[]', '请输入主办单位', '2', '1', '1', '1539143673', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1161', '54', '培训范围：', 'text', 'scope', '[]', '请输入培训范围', '2', '2', '1', '1539143673', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1162', '54', '负责人：', 'person', 'head', '[]', '点击选择', '3', '1', '1', '1539143673', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1163', '54', '培训机构：', 'select', 'department', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '2', '1', '1539143673', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1164', '54', '培训地点：', 'text', 'place', '[]', '请输入培训地点', '4', '1', '1', '1539143673', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1165', '54', '培训天数：', 'number', 'day', '[]', '', '4', '2', '1', '1539143673', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1166', '54', '培训费用：', 'money', 'training_cost', '[]', '请输入金额', '5', '1', '1', '1539143673', '1539914565', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1167', '54', '其他费用：', 'money', 'other_fees', '[]', '请输入金额', '5', '2', '1', '1539143673', '1539914565', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1168', '54', '开始日期：', 'datetime', 'ctime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '6', '1', '1', '1539143673', '1539914566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1169', '54', '结束日期：', 'datetime', 'etime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '6', '2', '1', '1539143673', '1539914566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1170', '54', '培训内容：', 'textarea', 'content', '[]', '请输入培训内容', '7', '1', '5', '1539143673', '1539914566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1172', '55', '名称：', 'text', 'course_title', '[]', '请输入课程名称', '1', '1', '1', '1539157276', '1539240674', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1173', '55', '课程类型：', 'text', 'course_type', '[]', '请输入课程类型', '1', '2', '1', '1539157276', '1539240674', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1174', '55', '课时：', 'number', 'course_day', '[]', '', '2', '1', '1', '1539157553', '1539240674', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1175', '55', '价格：', 'number', 'course_price', '[]', '', '2', '2', '1', '1539157553', '1539240674', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1176', '55', '讲师：', 'select', 'course_lecturer', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1539157553', '1539240674', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1177', '55', '', '', '', '[]', null, '3', '2', '1', '1539157553', '1539240674', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1178', '55', '备注：', 'textarea', 'course_unit', '[]', '', '4', '1', '5', '1539157553', '1539240674', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1179', '55', '附件：', 'file', 'course_file', '[{}]', '', '5', '1', '1', '1539157553', '1539240674', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1180', '55', '', '', '', '[]', null, '5', '2', '1', '1539157553', '1539240674', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1181', '55', '创建人：', 'login_user', 'course_user', '[]', '默认当前登录人', '6', '1', '1', '1539157553', '1539240674', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1182', '55', '创建时间：', 'datetime', 'course_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '6', '2', '1', '1539157553', '1539240674', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1183', '56', '姓名：', 'text', 'lecturer_name', '[]', '请输入讲师姓名', '1', '1', '1', '1539222313', '1539224926', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1184', '56', '课程类型：', 'select', 'lecturer_type', '[{\"value\":\"0\",\"text\":\"内部讲师\"},{\"value\":\"1\",\"text\":\"外部讲师\"}]', null, '1', '2', '1', '1539222313', '1539224926', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1185', '56', '课程名称：', 'text', 'lecturer_title', '[]', '课程名称', '2', '1', '1', '1539222313', '1539224926', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1186', '56', '电话：', 'text', 'lecturer_phone', '[]', '', '2', '2', '1', '1539222313', '1539224926', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1187', '56', '邮箱：', 'text', 'lecturer_email', '[]', '', '3', '1', '1', '1539222313', '1539224926', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1188', '56', '邮编：', 'text', 'lecturer_code', '[]', '', '3', '2', '1', '1539222313', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1189', '56', '地址：', 'textarea', 'lecturer_addtess', '[]', '', '4', '1', '3', '1539222313', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1190', '56', '内部证书：', 'text', 'lecturer_certificate_n', '[]', '', '5', '1', '1', '1539222313', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1191', '56', '发证日期：', 'datetime', 'lecturer_certificate_ntime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '5', '2', '1', '1539222313', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1193', '56', '外部证书：', 'text', 'lecturer_certificate_w', '[]', '', '6', '1', '1', '1539222313', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1194', '56', '发证日期：', 'datetime', 'lecturer_certificate_wtime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '6', '2', '1', '1539222313', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1195', '56', '备注：', 'textarea', 'lecturer_unit', '[]', '', '7', '1', '5', '1539222313', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1196', '56', '附件：', 'file', 'lecturer_file', '[{}]', '', '8', '1', '1', '1539222484', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1197', '56', '', '', '', '[]', null, '8', '2', '1', '1539222484', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1198', '56', '制单人：', 'login_user', 'lecturer_obj', '[]', '默认当前登录人', '9', '1', '1', '1539222484', '1539224926', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1199', '56', '创建时间：', 'datetime', 'lecturer_time', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '9', '2', '1', '1539222484', '1539224926', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1200', '57', '名称：', 'text', 'department_name', '[]', '请输入机构名称', '1', '1', '1', '1539237190', '1539237190', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1201', '57', '联系人：', 'text', 'department_contact', '[]', '请输入联系人', '1', '2', '1', '1539237190', '1539237190', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1202', '57', '电话：', 'text', 'department_landline', '[]', '', '2', '1', '1', '1539237190', '1539237190', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1203', '57', '手机：', 'text', 'department_phone', '[]', '', '2', '2', '1', '1539237190', '1539237190', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1204', '57', '邮箱：', 'text', 'department_email', '[]', '请输入邮箱', '3', '1', '1', '1539237190', '1539237190', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1205', '57', '邮编：', 'text', 'department_code', '[]', '', '3', '2', '1', '1539237190', '1539237190', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1206', '57', '网站：', 'text', 'department_web', '[]', '', '4', '1', '1', '1539237190', '1539237190', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1207', '57', '地址：', 'text', 'department_address', '[]', '', '4', '2', '1', '1539237190', '1539237190', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1208', '57', '备注：', 'textarea', 'department_unit', '[]', '', '5', '1', '5', '1539237190', '1539237190', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1209', '58', '名称：', 'text', 'title', '[]', '清输入培训名称', '1', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1210', '58', '培训类型：', 'text', 'type', '[]', '请输入培训类型', '1', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1211', '58', '主办单位：', 'text', 'organizer', '[]', '请输入主办单位', '2', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1212', '58', '培训范围：', 'text', 'scope', '[]', '请输入培训范围', '2', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1213', '58', '负责人：', 'person', 'head', '[]', '点击选择', '3', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1214', '58', '培训机构：', 'select', 'department', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1215', '58', '培训地点：', 'text', 'place', '[]', '请输入培训地点', '4', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1216', '58', '培训天数：', 'number', 'day', '[]', '请输入培训天数', '4', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1217', '58', '培训费用：', 'number', 'training_cost', '[]', '请输入培训费用', '5', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1218', '58', '其他费用：', 'number', 'other_fees', '[]', '', '5', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1219', '58', '课程总数：', 'number', 'number', '[]', '', '6', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1220', '58', '学员总数：', 'number', 'students', '[]', '', '6', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1221', '58', '开始日期：', 'datetime', 'ctime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '7', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1222', '58', '结束日期：', 'datetime', 'etime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '7', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1223', '58', '培训评估：', 'textarea', 'assessment', '[]', '', '8', '1', '5', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1224', '58', '培训内容：', 'textarea', 'content', '[]', '请输入培训内容', '9', '1', '5', '1539244544', '1539914744', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1225', '58', '培训学员：', 'persons', 'personnel', '[]', '点击选择', '10', '1', '5', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1226', '58', '备注：', 'textarea', 'unit', '[]', '', '11', '1', '5', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1227', '58', '附件：', 'file', 'file', '[{}]', '', '12', '1', '1', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1228', '58', '', '', '', '[]', null, '12', '2', '1', '1539244544', '1539914744', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1229', '58', '培训课程', 'lists', null, '[{\"option\":[{\"value\":\"0\",\"text\":\"\"}],\"type\":\"select\",\"name\":\"training_name[]\",\"must\":\"0\",\"id\":\"1229\",\"title\":\"\\u540d\\u79f0\\uff1a\",\"row\":\"13\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"training_name[]\",\"tbname\":\"training_course\",\"jofield\":\"course_type\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"training_type[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1229\",\"title\":\"\\u7c7b\\u522b\\uff1a\",\"row\":\"13\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"training_name[]\",\"tbname\":\"training_course\",\"jofield\":\"course_day\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"training_day[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1229\",\"title\":\"\\u8bfe\\u65f6\\uff1a\",\"row\":\"13\",\"col\":\"3\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"training_name[]\",\"tbname\":\"training_course\",\"jofield\":\"course_price\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"training_price[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1229\",\"title\":\"\\u4ef7\\u683c\\uff1a\",\"row\":\"13\",\"col\":\"4\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"training_name\",\"tbname\":\"training_course\",\"jofield\":\"course_lecturer\",\"action\":\"lecturer_name\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"training_lecturer[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1229\",\"title\":\"\\u8bb2\\u5e08\\uff1a\",\"row\":\"13\",\"col\":\"5\",\"lists\":\"3\"}]', null, '13', '1', null, '1539245724', '1539914744', null, '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1230', '59', '姓名：', 'person', 'name_id', '[]', '点击选择', '1', '1', '1', '1539571341', '1539588136', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1232', '59', '合同编号：', 'text', 'code', '[]', '', '1', '2', '1', '1539571808', '1539588136', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1233', '59', '合同类型：', 'select', 'type', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '1', '1', '1539571808', '1539588136', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1234', '59', '签约日期：', 'datetime', 'stime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '2', '2', '1', '1539571808', '1539588136', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1235', '59', '开始日期：', 'datetime', 'ctime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '3', '1', '1', '1539571808', '1539588136', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1236', '59', '结束日期：', 'datetime', 'etime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '3', '2', '1', '1539571808', '1539588136', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1237', '59', '试用结束日期：', 'datetime', 'applytime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '1', '1', '1539571808', '1539588136', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1238', '59', '提前终止日期：', 'datetime', 'trtime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '4', '2', '1', '1539571808', '1539588136', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1239', '59', '备注：', 'textarea', 'note', '[]', '', '5', '1', '5', '1539571808', '1539588136', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1240', '59', '附件：', 'file', 'file', '[{}]', '', '6', '1', '1', '1539571808', '1539588136', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1241', '59', '', '', '', '[]', null, '6', '2', '1', '1539571808', '1539588136', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1243', '2', '申请日期：', 'datetime', 'ltime', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '1', '2', '1', '1539595693', '1539747614', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1246', '2', '开始时间：', 'datetime', 'ctime', '[{\"value\":\"datetime\"}]', 'Y-m-d H-i-s', '2', '1', '1', '1539595693', '1539747614', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1247', '2', '结束时间：', 'datetime', 'etime', '[{\"value\":\"datetime\"}]', 'Y-m-d H-i-s', '2', '2', '1', '1539595693', '1539747614', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1248', '2', '请假类型：', 'select', 'type', '[{\"value\":\"0\",\"text\":\"\"}]', null, '3', '1', '1', '1539595693', '1539747614', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1249', '2', '请假天数：', 'number', 'day', '[]', '', '3', '2', '1', '1539595693', '1539747614', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1250', '2', '请假事由：', 'textarea', 'note', '[]', '', '4', '1', '5', '1539595693', '1539747614', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1251', '2', '附件：', 'file', 'file', '[{}]', '', '5', '1', '1', '1539652284', '1539747614', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1252', '2', '', '', '', '[]', null, '5', '2', '1', '1539652284', '1539747614', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1256', '28', '', '', '', '[]', '请输入金额', '7', '2', '1', '1539656567', '1539940027', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1258', '28', '金额大写：', 'bigmoney', 'big_sum', '[]', '请输入金额', '11', '2', '1', '1539657302', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1262', '28', '金额：', 'money', 'count_sum', '[]', '请输入金额', '11', '1', '1', '1539658307', '1539940027', '1', '1', '0', null, '0', null, null, null, null, 'big_sum', null);
INSERT INTO `jz_flow_form_list` VALUES ('1264', '28', '劳务班组：', 'supplier', 'service_line', '[]', '点击选择', '4', '1', '1', '1539673454', '1539940027', '0', '1', '0', null, '1', 'contract_id', 'labor_contract', 'supplier_id', null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1265', '2', '请假人：', 'login_user', 'name_id', '[]', '默认当前登录人', '1', '1', '1', '1539677005', '1539747614', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1266', '29', '合同金额：', 'number', 'contract_money', '[]', '', '3', '2', '1', '1539739079', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1267', '29', '罚款：', 'number', 'fines', '[]', '', '5', '1', '1', '1539739079', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1268', '29', '扣款：', 'number', 'cut_money', '[]', '数字', '5', '2', '1', '1539739079', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1269', '29', '劳务班组：', 'supplier', 'service_line', '[]', '点击选择', '4', '1', '1', '1539739750', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1270', '29', '上传多文件：', 'file', 'file', '[{}]', '', '9', '1', '3', '1539739993', '1539739993', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1272', '34', '金额：', 'money', 'all_sum', '[]', '请输入金额', '11', '1', '1', '1539745657', '1539912944', '1', '1', '0', null, '0', null, null, null, null, 'big_sum', null);
INSERT INTO `jz_flow_form_list` VALUES ('1274', '34', '金额：', 'money', 'count_money', '[]', '请输入金额', '7', '1', '1', '1539748522', '1539912944', '1', '1', '0', null, '0', null, null, null, null, 'bigmoney', null);
INSERT INTO `jz_flow_form_list` VALUES ('1275', '18', '金额：', 'money', 'sum', '[]', '', '7', '1', '1', '1539758723', '1539936257', '0', '1', '0', null, '0', null, null, null, null, 'big_sum', null);
INSERT INTO `jz_flow_form_list` VALUES ('1276', '62', '公告标题：', 'text', 'notice_title', '[]', '请输入公告标题', '1', '1', '1', '1539828864', '1539828950', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1278', '62', '发布公告：', 'datetime', 'notice_time', '[{\"value\":\"datetime\"}]', 'Y-m-d H-i-s', '2', '1', '1', '1539828864', '1539828950', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1279', '62', '发布人：', 'login_user', 'notice_user', '[]', '默认当前登录人', '2', '2', '1', '1539828864', '1539828950', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1280', '62', '接收人：', 'persons', 'notice_receive', '[]', '点击选择', '3', '1', '5', '1539828864', '1539828950', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1281', '62', '公告描述：', 'textarea', 'notice_describe', '[]', '请输入公告描述', '4', '1', '5', '1539828864', '1539828950', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1282', '62', '公告内容：', 'textarea', 'notice_note', '[]', '请输入备注', '5', '1', '5', '1539828864', '1539828950', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1283', '62', '附件：', 'file', 'notice_file', '[{}]', '', '6', '1', '1', '1539828864', '1539828950', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1284', '62', '', '', '', '[]', null, '6', '2', '1', '1539828864', '1539828950', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1285', '62', '公告类型：', 'select', 'notice_type', '[{\"value\":\"0\",\"text\":\"\"}]', null, '1', '2', '1', '1539828950', '1539828950', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1286', '15', '工期', 'text', 'pro_time', '[]', '请输入工期', '3', '1', '1', '1539842634', '1539842634', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1287', '54', '培训学员：', 'persons', 'personnel', '[]', '点击选择', '8', '1', '5', '1539914566', '1539914566', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1288', '54', '备注：', 'textarea', 'unit', '[]', '', '9', '1', '5', '1539914566', '1539914566', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1289', '63', '记录编号：', 'code', 'number', '[]', '', '1', '1', '1', '1539934311', '1539936325', '0', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1290', '63', '入场主题：', 'text', 'name', '[]', '', '1', '2', '1', '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1291', '63', '录入人：', 'login_user', 'maker', '[]', '默认当前登录人', '2', '1', '1', '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1292', '63', '源单号：', 'select', 'source_id', '[{\"value\":\"0\",\"text\":\"\"}]', null, '2', '2', '1', '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1293', '63', '录入时间：', 'datetime', 'date', '[{\"value\":\"date\"}]', 'YYYY-MM-DD', '3', '1', '1', '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1294', '63', '', '', '', '[]', null, '3', '2', '1', '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1295', '63', '附件：', 'file', 'file', '[{}]', '', '4', '1', '3', '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1296', '63', '备注：', 'textarea', 'remark', '[]', '', '5', '1', '3', '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1297', '63', '入场明细', 'lists', null, '[{\"option\":\"[]\",\"placeholder\":\"\\u70b9\\u51fb\\u9009\\u62e9\",\"type\":\"materials\",\"name\":\"material_name[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1297\",\"title\":\"\\u6750\\u6599\\u540d\\u79f0\\uff1a\",\"row\":\"6\",\"col\":\"1\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"material_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"material_size[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1297\",\"title\":\"\\u89c4\\u683c\\u578b\\u53f7\\uff1a\",\"row\":\"6\",\"col\":\"2\",\"lists\":\"3\"},{\"option\":\"[]\",\"pname\":\"material_name\",\"jofield\":\"specifications\",\"placeholder\":\"\",\"type\":\"text\",\"name\":\"unit[]\",\"readonly\":\"0\",\"must\":\"0\",\"id\":\"1297\",\"title\":\"\\u5355\\u4f4d\\uff1a\",\"row\":\"6\",\"col\":\"3\",\"lists\":\"3\"},{\"option\":\"[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u6587\\u672c\",\"type\":\"text\",\"name\":\"num[]\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1297\",\"title\":\"\\u5b9e\\u9645\\u5165\\u573a\\uff1a\",\"row\":\"6\",\"col\":\"4\",\"lists\":\"3\"},{\"option\":\"[]\",\"type\":\"textarea\",\"name\":\"remark[]\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u5907\\u6ce8\",\"readonly\":\"1\",\"must\":\"0\",\"id\":\"1297\",\"title\":\"\\u5907\\u6ce8\\uff1a\",\"row\":\"6\",\"col\":\"5\",\"lists\":\"3\"}]', '点击选择', '6', '1', null, '1539934311', '1539936325', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1298', '14', '预付款：', 'number', 'pre_money', '[]', '数字', '7', '1', '1', '1539937741', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1299', '14', '保证金：', 'number', 'bail', '[]', '数字', '7', '2', '1', '1539937741', '1539937741', '1', '1', '0', null, '1', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1300', '28', '结算金额：', 'number', 'clear_money', '[]', '', '7', '1', '1', '1539939372', '1539940027', '1', '1', '0', null, '0', null, null, null, null, null, null);
INSERT INTO `jz_flow_form_list` VALUES ('1301', '28', '合同金额：', 'number', 'money', '[]', '', '3', '2', '1', '1539939693', '1539940027', '0', '1', '0', null, '0', 'contract_id', 'labor_contract', 'contract_money', null, null, null);

-- ----------------------------
-- Table structure for jz_flow_step
-- ----------------------------
DROP TABLE IF EXISTS `jz_flow_step`;
CREATE TABLE `jz_flow_step` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flow_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父id流程设置',
  `step_title` varchar(255) NOT NULL COMMENT '步骤名称',
  `next_step_id` int(255) unsigned DEFAULT '0' COMMENT '下一个审批id',
  `ban_type` int(10) unsigned DEFAULT '0' COMMENT '办理人类型',
  `ban_id` varchar(50) DEFAULT NULL COMMENT '要办理的人或者部门id',
  `sort` int(10) unsigned NOT NULL DEFAULT '10' COMMENT '排序',
  `time` float(50,1) NOT NULL DEFAULT '2.0' COMMENT '办理时间时间',
  `time_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0天1小时',
  `warning` float(50,1) DEFAULT NULL COMMENT '超时预警',
  `warning_type` tinyint(2) DEFAULT '-1' COMMENT '超时自动流转-1不通过1通过',
  `uid_warning` tinyint(2) DEFAULT NULL COMMENT '办理人提醒',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `added` varchar(255) DEFAULT NULL COMMENT '增值服务，比如审批金额的name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='步骤表';

-- ----------------------------
-- Records of jz_flow_step
-- ----------------------------
INSERT INTO `jz_flow_step` VALUES ('1', '0', '结束', null, null, null, '0', '2.0', '0', '0.0', '-1', '0', '0', '0', null);
INSERT INTO `jz_flow_step` VALUES ('18', '11', '填写表单', '20', '0', '', '10', '2.0', '0', '2.0', '-1', '0', '1538100256', '1538274550', null);
INSERT INTO `jz_flow_step` VALUES ('19', '11', '领导审批', '1', '1', ',45,', '10', '2.0', '0', '2.0', '-1', '0', '1538100282', '1538100282', null);
INSERT INTO `jz_flow_step` VALUES ('20', '11', '经理审批', '19', '1', ',43,', '10', '2.0', '0', '2.0', '-1', '0', '1538274538', '1539137782', null);
INSERT INTO `jz_flow_step` VALUES ('21', '12', '填写表单', '22', '0', '', '10', '2.0', '0', '2.0', '-1', '0', '1538982740', '1538982879', null);
INSERT INTO `jz_flow_step` VALUES ('22', '12', '部门经理审批', '23', '1', ',45,', '10', '0.1', '1', '2.0', '-1', '0', '1538982856', '1539226454', '');
INSERT INTO `jz_flow_step` VALUES ('23', '12', '总经理审批', '25', '1', ',45,', '10', '0.1', '1', '2.0', '-1', '0', '1538982940', '1539226477', null);
INSERT INTO `jz_flow_step` VALUES ('25', '12', '董事长审批', '1', '1', ',52,', '10', '0.1', '1', '2.0', '-1', '0', '1538985367', '1539226494', null);
INSERT INTO `jz_flow_step` VALUES ('49', '19', '填写表单', '50', '0', '', '10', '2.0', '0', '2.0', '-1', '0', '1539740333', '1539740391', '');
INSERT INTO `jz_flow_step` VALUES ('50', '19', '财务部审批', '1', '1', ',46,', '10', '2.0', '0', '2.0', '-1', '0', '1539740378', '1539740378', 'back_money');
INSERT INTO `jz_flow_step` VALUES ('51', '24', '填写表单', '52', '0', '', '10', '2.0', '0', '2.0', '-1', '0', '1539756468', '1539756988', '');
INSERT INTO `jz_flow_step` VALUES ('52', '24', '审批', '1', '1', ',45,', '10', '2.0', '0', '2.0', '-1', '0', '1539756970', '1539756970', 'back_money');
INSERT INTO `jz_flow_step` VALUES ('53', '37', '填写表单', '54', '0', '', '10', '2.0', '0', '0.0', null, null, '1539758543', '1539758569', '');
INSERT INTO `jz_flow_step` VALUES ('54', '37', '审核', '1', '1', ',45,', '10', '2.0', '0', '2.0', null, null, '1539758561', '1539758561', '');
INSERT INTO `jz_flow_step` VALUES ('55', '9', '部门经理审批', '1', '1', ',46,', '10', '2.0', '0', '2.0', '-1', '0', '1539758462', '1539938288', '');
INSERT INTO `jz_flow_step` VALUES ('56', '36', '填写表单', '0', '0', '', '10', '2.0', '0', '0.0', null, null, '1539758896', '1539758896', '');
INSERT INTO `jz_flow_step` VALUES ('57', '36', '经理审批', '0', '1', ',48,', '10', '2.0', '0', '0.0', null, null, '1539758939', '1539758939', '');
INSERT INTO `jz_flow_step` VALUES ('58', '9', '部门主任审批', '55', '1', ',48,', '10', '2.0', '0', '2.0', '-1', '0', '1539758911', '1539938265', '');
INSERT INTO `jz_flow_step` VALUES ('59', '9', '填写表单', '58', '0', '', '10', '2.0', '0', '0.0', '-1', '0', '1539758923', '1539759262', '');
INSERT INTO `jz_flow_step` VALUES ('71', '20', '填写表单', '72', '0', '', '10', '2.0', '0', '2.0', '-1', null, '1539939418', '1539939521', '');
INSERT INTO `jz_flow_step` VALUES ('72', '20', '部门经理审批', '73', '1', ',46,', '10', '2.0', '0', '2.0', '-1', null, '1539939444', '1539939493', '');
INSERT INTO `jz_flow_step` VALUES ('73', '20', '总经理审批', '1', '0', '', '10', '2.0', '0', '2.0', '-1', null, '1539939459', '1539939504', '');

-- ----------------------------
-- Table structure for jz_flow_type
-- ----------------------------
DROP TABLE IF EXISTS `jz_flow_type`;
CREATE TABLE `jz_flow_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '流程类型名称',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `delete_time` int(10) DEFAULT NULL COMMENT '软删除',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='流程类型';

-- ----------------------------
-- Records of jz_flow_type
-- ----------------------------
INSERT INTO `jz_flow_type` VALUES ('22', '行政类', '1', null, '1534212838', '1534212838', '0');
INSERT INTO `jz_flow_type` VALUES ('27', '施工类', '1', null, '1534297388', '1534297388', '200');
INSERT INTO `jz_flow_type` VALUES ('28', '人事类', '1', null, '1534315938', '1534315938', '100');
INSERT INTO `jz_flow_type` VALUES ('30', '采购类', '1', null, '1535704515', '1535704515', '100');
INSERT INTO `jz_flow_type` VALUES ('31', '施工', '1', null, '1535955147', '1535955147', '100');
INSERT INTO `jz_flow_type` VALUES ('32', '项目', '1', null, '1536127541', '1536127541', '100');
INSERT INTO `jz_flow_type` VALUES ('33', '证照管理', '1', null, '1536202501', '1536202501', '100');
INSERT INTO `jz_flow_type` VALUES ('34', '劳务类', '1', null, '1536204242', '1536204242', '100');
INSERT INTO `jz_flow_type` VALUES ('35', '库存类', '1', null, '1537254774', '1537254774', '1');

-- ----------------------------
-- Table structure for jz_flowtype
-- ----------------------------
DROP TABLE IF EXISTS `jz_flowtype`;
CREATE TABLE `jz_flowtype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '流程类型名称',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `delete_time` int(10) DEFAULT NULL COMMENT '软删除',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_flowtype
-- ----------------------------
INSERT INTO `jz_flowtype` VALUES ('1', 'asd', '1', '1534239370', '1534143817', '1534239370', '100');
INSERT INTO `jz_flowtype` VALUES ('2', 'asd', '1', '1534239189', '1534143822', '1534239189', '100');
INSERT INTO `jz_flowtype` VALUES ('3', 'asd', '1', '1534239189', '1534143868', '1534239189', '100');
INSERT INTO `jz_flowtype` VALUES ('4', 'asd', '1', '1534239189', '1534143882', '1534239189', '100');
INSERT INTO `jz_flowtype` VALUES ('14', '阿萨德搜索', '1', '1534485368', '1534148011', '1534485368', '100');
INSERT INTO `jz_flowtype` VALUES ('15', '啊实打实大', '1', '1534485368', '1534209011', '1534485368', '100');
INSERT INTO `jz_flowtype` VALUES ('16', '阿萨德', '1', null, '1534211955', '1534211955', '100');
INSERT INTO `jz_flowtype` VALUES ('17', '阿萨德是', '1', null, '1534212546', '1534212546', '100');
INSERT INTO `jz_flowtype` VALUES ('18', '阿萨德搜索的', '1', null, '1534212675', '1534212675', '100');
INSERT INTO `jz_flowtype` VALUES ('19', '是是是', '1', null, '1534212717', '1534212717', '100');
INSERT INTO `jz_flowtype` VALUES ('22', '啊阿萨德', '1', null, '1534212838', '1534212838', '100');
INSERT INTO `jz_flowtype` VALUES ('25', '啊实打实大', '1', '1534296465', '1534296226', '1534296465', '0');
INSERT INTO `jz_flowtype` VALUES ('26', '啊啊啊', '1', '1534296469', '1534296447', '1534296469', '0');
INSERT INTO `jz_flowtype` VALUES ('27', '驱动器', '1', null, '1534297388', '1534297388', '100');
INSERT INTO `jz_flowtype` VALUES ('28', '啊啊啊的的', '1', null, '1534315938', '1534315938', '100');
INSERT INTO `jz_flowtype` VALUES ('29', 'qqq', '1', '1534470032', '1534316005', '1534470032', '1');

-- ----------------------------
-- Table structure for jz_form_table
-- ----------------------------
DROP TABLE IF EXISTS `jz_form_table`;
CREATE TABLE `jz_form_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自定义表单',
  `title` varchar(255) NOT NULL COMMENT '表单名称',
  `type` int(11) NOT NULL COMMENT '表单类型',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1启用0禁用',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `delete_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='自定义表单';

-- ----------------------------
-- Records of jz_form_table
-- ----------------------------
INSERT INTO `jz_form_table` VALUES ('1', '阿萨啊', '27', '100', '1', '1534312672', '1534312672', null);
INSERT INTO `jz_form_table` VALUES ('2', '驱器大啊', '19', '100', '1', '1534318480', '1534318480', null);
INSERT INTO `jz_form_table` VALUES ('3', '其奇公司', '29', '100', '1', '1534319748', '1534319752', '1534319752');

-- ----------------------------
-- Table structure for jz_index_allocation
-- ----------------------------
DROP TABLE IF EXISTS `jz_index_allocation`;
CREATE TABLE `jz_index_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` text NOT NULL COMMENT '内容',
  `active` text NOT NULL COMMENT '每组第一项',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='//首页配置';

-- ----------------------------
-- Records of jz_index_allocation
-- ----------------------------
INSERT INTO `jz_index_allocation` VALUES ('1', '1', '[{\"top\":[{\"icon\":\"\",\"title\":\"通知公告\",\"type\":\"notice\"},{\"icon\":\"\",\"title\":\"待办流程\",\"type\":\"flow\"},{\"icon\":\"\",\"title\":\"我的会议\",\"type\":\"meeting\"}],\"width\":\"20.66115702479339%\",\"active\":\"notice\"},{\"top\":[{\"icon\":\"\",\"title\":\"待办流程\",\"type\":\"flow\"}],\"width\":\"29.173553719008265%\",\"active\":\"flow\"},{\"top\":[{\"icon\":\"\",\"title\":\"我的会议\",\"type\":\"meeting\"}],\"width\":\"50%\",\"active\":\"meeting\"},{\"top\":[{\"icon\":\"\",\"title\":\"我的会议\",\"type\":\"meeting\"}],\"width\":\"50%\",\"active\":\"meeting\"},{\"top\":[],\"width\":\"50%\"}]', '[\"notice\",\"flow\",\"meeting\"]', '1537349083', '1537349083', null);
INSERT INTO `jz_index_allocation` VALUES ('5', '51', '[{\"top\":[{\"icon\":\"\",\"title\":\"通知公告\",\"type\":\"notice\"},{\"icon\":\"\",\"title\":\"待办流程\",\"type\":\"flow\"},{\"icon\":\"\",\"title\":\"我的会议\",\"type\":\"meeting\"}],\"width\":\"50%\",\"active\":\"notice\"},{\"top\":[{\"icon\":\"\",\"title\":\"待办流程\",\"type\":\"flow\"},{\"icon\":\"\",\"title\":\"我的会议\",\"type\":\"meeting\"}],\"width\":\"50%\",\"active\":\"flow\"}]', '[\"notice\",\"flow\"]', '1538017860', '1538017860', null);
INSERT INTO `jz_index_allocation` VALUES ('6', '46', '[{\"top\":[{\"icon\":\"\",\"title\":\"通知公告\",\"type\":\"notice\"},{\"icon\":\"\",\"title\":\"我的会议\",\"type\":\"meeting\"},{\"icon\":\"\",\"title\":\"待办流程\",\"type\":\"flow\"}],\"width\":\"50%\",\"active\":\"notice\"}]', '[\"notice\"]', '1539311897', '1539311897', null);

-- ----------------------------
-- Table structure for jz_inform_inform
-- ----------------------------
DROP TABLE IF EXISTS `jz_inform_inform`;
CREATE TABLE `jz_inform_inform` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `number` int(12) NOT NULL COMMENT '通知编号',
  `title` varchar(255) NOT NULL COMMENT '通知标题',
  `type` int(11) NOT NULL COMMENT '通知类型',
  `date` int(11) NOT NULL COMMENT '发布时间',
  `maker` int(11) NOT NULL COMMENT '作者',
  `mes` varchar(255) NOT NULL COMMENT '内容',
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '0审核中 1通过 2未通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_inform_inform
-- ----------------------------

-- ----------------------------
-- Table structure for jz_inform_type
-- ----------------------------
DROP TABLE IF EXISTS `jz_inform_type`;
CREATE TABLE `jz_inform_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_inform_type
-- ----------------------------
INSERT INTO `jz_inform_type` VALUES ('42', '重要的通知', '重要的通知', '1', '1534838013', '1');
INSERT INTO `jz_inform_type` VALUES ('43', '不重要通知', '不重要通知', '1', '1534840472', '1');
INSERT INTO `jz_inform_type` VALUES ('44', '重要重要的通知', '111111', '1', '1534840487', '1');
INSERT INTO `jz_inform_type` VALUES ('45', '通知测试', '通知测试', '1', '1534841854', '1');
INSERT INTO `jz_inform_type` VALUES ('46', '通知测试', '通知测试', '1', '1534841877', '1');
INSERT INTO `jz_inform_type` VALUES ('47', '通知测试', '通知测试', '1', '1534841886', '1');
INSERT INTO `jz_inform_type` VALUES ('48', '通知类型添加', '1', '1', '1534842207', '1');
INSERT INTO `jz_inform_type` VALUES ('49', '通知类型添加', '1', '1', '1534842246', '1');

-- ----------------------------
-- Table structure for jz_labor_condetails
-- ----------------------------
DROP TABLE IF EXISTS `jz_labor_condetails`;
CREATE TABLE `jz_labor_condetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `labor_id` int(11) DEFAULT NULL COMMENT '合同ID',
  `m_name` varchar(25) DEFAULT NULL COMMENT '工程内容',
  `measuring` varchar(25) DEFAULT NULL COMMENT '单位',
  `quantities` int(11) DEFAULT NULL COMMENT '工程量',
  `price` decimal(45,2) DEFAULT NULL COMMENT '单价',
  `combined` decimal(45,2) DEFAULT NULL COMMENT '合价',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='//劳务合同明细表';

-- ----------------------------
-- Records of jz_labor_condetails
-- ----------------------------
INSERT INTO `jz_labor_condetails` VALUES ('2', '4', '12312', '12312', '213123', '123.00', '26214129.00', '1539916422', '1539916422');

-- ----------------------------
-- Table structure for jz_labor_contract
-- ----------------------------
DROP TABLE IF EXISTS `jz_labor_contract`;
CREATE TABLE `jz_labor_contract` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '合同编号',
  `name` varchar(255) NOT NULL COMMENT '合同名称',
  `obj_id` int(11) DEFAULT NULL COMMENT '项目ID',
  `contract_type` int(11) NOT NULL COMMENT '合同类型',
  `date` int(11) DEFAULT NULL COMMENT '日期',
  `contract_money` decimal(65,2) DEFAULT NULL COMMENT '合同金额',
  `big_money` text COMMENT '合同金额大写',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `supplier_id` int(11) DEFAULT NULL COMMENT '劳务班组ID',
  `clear_type` int(11) DEFAULT NULL COMMENT '结算方式',
  `pay_type` int(11) DEFAULT NULL COMMENT '付款方式',
  `pre_money` decimal(65,2) DEFAULT NULL COMMENT '预付款',
  `bail` decimal(65,2) DEFAULT NULL COMMENT '保证金',
  `app_id` int(11) DEFAULT NULL COMMENT '签订人',
  `file` varchar(25) DEFAULT NULL COMMENT '附件ID',
  `condition` varchar(255) DEFAULT NULL COMMENT '付款条件',
  `item` varchar(255) DEFAULT NULL COMMENT '主要条款',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `total` decimal(65,2) DEFAULT NULL COMMENT '工程量总计',
  `capital` varchar(255) DEFAULT NULL COMMENT '总计大写',
  `count` int(11) DEFAULT '0' COMMENT '明细条数',
  `stetus` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='//劳务合同表';

-- ----------------------------
-- Records of jz_labor_contract
-- ----------------------------
INSERT INTO `jz_labor_contract` VALUES ('4', 'LWHT201810-50981', 'yzftest', '3', '0', '1539100800', '13213.00', '壹拾贰万叁仟壹佰贰拾叁圆', '1539705600', '1539964800', '40', '0', '0', '1231.00', '123123.00', '72', '', '21312', '3123', '1231', '26214129.00', '贰仟陆佰贰拾壹万肆仟壹佰贰拾玖圆', '1', '0', '1539916422', '1539916422');

-- ----------------------------
-- Table structure for jz_labor_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_labor_details`;
CREATE TABLE `jz_labor_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `work` varchar(25) DEFAULT NULL COMMENT '工作内容',
  `measuring` varchar(25) DEFAULT NULL COMMENT '单位',
  `amout` int(11) DEFAULT NULL COMMENT '工程量',
  `team` int(11) DEFAULT NULL COMMENT '劳务班组',
  `plan_id` int(11) DEFAULT NULL COMMENT '计划ID',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//劳务计划明细表';

-- ----------------------------
-- Records of jz_labor_details
-- ----------------------------
INSERT INTO `jz_labor_details` VALUES ('1', '外基工程', '米', '5000', '41', '1', '1537324656', '1537324656');
INSERT INTO `jz_labor_details` VALUES ('2', '萨达', '100', '123123', '41', '3', '1539855934', '1539855934');

-- ----------------------------
-- Table structure for jz_labor_plan
-- ----------------------------
DROP TABLE IF EXISTS `jz_labor_plan`;
CREATE TABLE `jz_labor_plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) DEFAULT NULL COMMENT '编号',
  `title` varchar(25) DEFAULT NULL COMMENT '计划名称',
  `obj_id` int(11) NOT NULL COMMENT '项目ID',
  `maker` int(11) NOT NULL COMMENT '申请人ID',
  `date` int(11) DEFAULT NULL COMMENT '日期',
  `file` varchar(25) DEFAULT NULL COMMENT '附件ID',
  `renark` varchar(255) DEFAULT NULL COMMENT '备注',
  `count` int(11) DEFAULT '0' COMMENT '清单条数',
  `state` int(11) DEFAULT '0' COMMENT '任务状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='//劳务计划表';

-- ----------------------------
-- Records of jz_labor_plan
-- ----------------------------
INSERT INTO `jz_labor_plan` VALUES ('1', 'LWJH201809-10298', '金耀大厦劳务计划', '8', '1', '1537286400', '', '金耀大厦', '8', '0', '1537324656', '1537324656');
INSERT INTO `jz_labor_plan` VALUES ('2', 'LWJH201810-53505', '劳务计划', '3', '48', '1539792000', '', '从VB你', '8', '0', '1539855909', '1539855909');
INSERT INTO `jz_labor_plan` VALUES ('3', 'LWJH201810-53505', '劳务计划', '3', '48', '1539792000', '', '从VB你', '8', '0', '1539855933', '1539855933');

-- ----------------------------
-- Table structure for jz_lease_condetails
-- ----------------------------
DROP TABLE IF EXISTS `jz_lease_condetails`;
CREATE TABLE `jz_lease_condetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `con_id` int(11) DEFAULT NULL COMMENT '合同ID',
  `m_name` int(11) DEFAULT NULL COMMENT '材料名称',
  `size` varchar(25) DEFAULT NULL COMMENT '规格型号',
  `measuring` varchar(25) DEFAULT NULL COMMENT '单位',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `prince` decimal(15,2) DEFAULT NULL COMMENT '价格',
  `sum` int(11) DEFAULT NULL COMMENT '小计',
  `start_time` int(11) DEFAULT NULL COMMENT '计划进场时间',
  `end_time` int(11) DEFAULT NULL COMMENT '计划退场时间',
  `day` int(11) DEFAULT NULL COMMENT '天数',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//租赁合同清单';

-- ----------------------------
-- Records of jz_lease_condetails
-- ----------------------------
INSERT INTO `jz_lease_condetails` VALUES ('1', '1', '7', 'a', 'q', '1000', '200.00', '2000000', '1537372800', '1540828800', '40', '1537325532', '1537325532');
INSERT INTO `jz_lease_condetails` VALUES ('2', '2', '12', 'DL003号', '台', '12', '12.00', '864', '1538323200', '1539360000', '6', '1539857652', '1539857652');

-- ----------------------------
-- Table structure for jz_lease_contract
-- ----------------------------
DROP TABLE IF EXISTS `jz_lease_contract`;
CREATE TABLE `jz_lease_contract` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '合同编号',
  `title` varchar(25) NOT NULL COMMENT '合同名称',
  `obj_id` int(11) NOT NULL DEFAULT '1' COMMENT '项目ID',
  `contract_money` decimal(15,2) NOT NULL COMMENT '合同金额',
  `date` int(11) NOT NULL COMMENT '日期',
  `contract_type` int(11) NOT NULL DEFAULT '0' COMMENT '合同类型',
  `bigmoney` varchar(25) NOT NULL COMMENT '合同金额大写',
  `ctime` int(11) NOT NULL COMMENT '开始时间',
  `etime` int(11) NOT NULL COMMENT '结束时间',
  `supplier_id` int(11) NOT NULL COMMENT '供应商ID',
  `app_id` int(11) NOT NULL COMMENT '签订人ID',
  `clear_type` int(11) NOT NULL DEFAULT '0' COMMENT '结算方式 0=分段结算 1=竣工后 2=进度结算',
  `pay_type` int(11) NOT NULL DEFAULT '0' COMMENT '付款方式',
  `pre_money` decimal(15,2) NOT NULL COMMENT '预付款',
  `bail` decimal(15,2) NOT NULL COMMENT '保证金',
  `file` int(11) DEFAULT NULL COMMENT '附件ID',
  `condition` varchar(255) DEFAULT NULL COMMENT '付款条件',
  `item` varchar(255) NOT NULL COMMENT '主要条款',
  `all_sum` decimal(45,2) DEFAULT NULL COMMENT '总计',
  `big_sum` varchar(255) DEFAULT NULL COMMENT '总计金额大写',
  `count` int(11) DEFAULT NULL COMMENT '明细条数',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//租赁合同';

-- ----------------------------
-- Records of jz_lease_contract
-- ----------------------------
INSERT INTO `jz_lease_contract` VALUES ('1', 'ZLHT201809-48515', '金耀大厦机械租赁合同', '8', '2000000.00', '1537286400', '0', '贰佰万', '1537372800', '1540828800', '17', '1', '1', '0', '200000.00', '200000.00', '0', '租赁机械送达并无安全隐患', '租赁机械送达并无安全隐患', '2000000.00', '贰佰万', '1', '0', '1537325532', '1537325532');
INSERT INTO `jz_lease_contract` VALUES ('2', 'ZLHT201810-98545', 'test', '3', '312312.00', '1538236800', '1', '壹万贰仟叁佰壹拾贰圆', '1538582400', '1541088000', '40', '72', '1', '1', '123123.00', '12312.00', '0', '123', '123', '864.00', '捌佰陆拾肆圆', '1', '0', '1539857652', '1539857652');

-- ----------------------------
-- Table structure for jz_lease_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_lease_details`;
CREATE TABLE `jz_lease_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` int(11) DEFAULT NULL COMMENT '租赁物品名称',
  `size` varchar(25) DEFAULT NULL COMMENT '租赁型号',
  `measuring` varchar(25) DEFAULT NULL COMMENT '计量单位',
  `numbers` int(11) DEFAULT NULL COMMENT '数量',
  `ctime` int(11) DEFAULT NULL COMMENT '计划进场日期',
  `etime` int(11) DEFAULT NULL COMMENT '计划退场日期',
  `day` int(11) DEFAULT NULL COMMENT '租赁日期',
  `plan_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//租赁计划明细';

-- ----------------------------
-- Records of jz_lease_details
-- ----------------------------
INSERT INTO `jz_lease_details` VALUES ('1', '7', 'a', 'q', '1000', '1537372800', '1540828800', '40', '1', '1537325040', '1537325040');

-- ----------------------------
-- Table structure for jz_lease_plan
-- ----------------------------
DROP TABLE IF EXISTS `jz_lease_plan`;
CREATE TABLE `jz_lease_plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) DEFAULT NULL COMMENT '编号',
  `title` varchar(25) DEFAULT NULL COMMENT '租赁计划名称',
  `obj_id` int(11) DEFAULT NULL COMMENT '项目ID',
  `maker` int(11) DEFAULT NULL COMMENT '填报人ID',
  `date` int(11) DEFAULT NULL COMMENT '时间',
  `renark` varchar(255) DEFAULT NULL COMMENT '用途',
  `file` varchar(25) DEFAULT NULL COMMENT '附件ID',
  `count` int(11) DEFAULT '0' COMMENT '明细条数',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//租赁计划';

-- ----------------------------
-- Records of jz_lease_plan
-- ----------------------------
INSERT INTO `jz_lease_plan` VALUES ('1', 'ZLJH201809-56975', '金耀大厦机械材料租赁计划', '8', '1', '1537286400', '机械工具租赁', '', '1', '0', '1537325040', '1537325040');

-- ----------------------------
-- Table structure for jz_leave
-- ----------------------------
DROP TABLE IF EXISTS `jz_leave`;
CREATE TABLE `jz_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_id` int(11) NOT NULL COMMENT '请假人',
  `entry_id` int(11) DEFAULT NULL COMMENT '录入人',
  `ltime` int(11) NOT NULL COMMENT '请假时间',
  `department` varchar(25) DEFAULT NULL COMMENT '部门',
  `position` varchar(25) DEFAULT NULL COMMENT '职位',
  `ctime` int(11) NOT NULL COMMENT '开始时间',
  `etime` int(11) NOT NULL COMMENT '结束时间',
  `type` tinyint(1) NOT NULL COMMENT '请假类型',
  `day` int(11) NOT NULL COMMENT '请假天数',
  `note` varchar(255) NOT NULL COMMENT '请假事由',
  `file` varchar(25) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//请假';

-- ----------------------------
-- Records of jz_leave
-- ----------------------------
INSERT INTO `jz_leave` VALUES ('1', '48', null, '1539619200', '8', '人事', '1539705600', '1539964800', '62', '3', '抢位子', '', null, '1539659503', '1539659503', null);
INSERT INTO `jz_leave` VALUES ('2', '51', null, '1539619200', '8', '人事', '1539619200', '1540137600', '61', '7', '爱是打我', '', null, '1539659756', '1539673363', null);

-- ----------------------------
-- Table structure for jz_material
-- ----------------------------
DROP TABLE IF EXISTS `jz_material`;
CREATE TABLE `jz_material` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL COMMENT '物品名称',
  `number` varchar(25) NOT NULL COMMENT '物品编号',
  `specifications` varchar(255) NOT NULL COMMENT '规格型号',
  `type_id` int(11) NOT NULL DEFAULT '1' COMMENT '材料类型ID',
  `metering` varchar(25) NOT NULL COMMENT '计量单位',
  `price` double(50,2) NOT NULL DEFAULT '0.00' COMMENT '参考价格',
  `sort` int(11) DEFAULT '1' COMMENT '显示顺序',
  `stock` double(50,4) DEFAULT '0.0000' COMMENT '数量',
  `total` double(50,2) DEFAULT '0.00' COMMENT '材料总价',
  `notes` varchar(255) DEFAULT NULL COMMENT '备注',
  `img_id` int(11) DEFAULT NULL COMMENT '头像ID',
  `house_id` int(11) DEFAULT NULL COMMENT '仓库ID',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='//材料库表';

-- ----------------------------
-- Records of jz_material
-- ----------------------------
INSERT INTO `jz_material` VALUES ('1', '水泥', '1', '0022', '1', 't', '-3.88', '0', '103.0000', '-400.00', '', '96', '2', null, '2018-10-12 15:20:07', '2018-10-12 15:20:07');
INSERT INTO `jz_material` VALUES ('2', '水泥1', '1', '12', '1', 't', '3.00', '0', '2.0000', '6.00', '', null, '2', null, '2018-09-26 10:14:40', '2018-09-26 10:14:40');
INSERT INTO `jz_material` VALUES ('3', '脚手架', '7', 'a', '3', 'q', '123.00', '1', '0.0000', '0.00', '123', null, '2', null, '2018-09-25 14:58:31', '2018-09-25 14:58:31');
INSERT INTO `jz_material` VALUES ('4', '脚手', '123', '21', '1', 'q', '123.00', '1', '0.0000', '0.00', '123', null, '2', null, '2018-09-25 14:58:30', '2018-09-25 14:58:30');
INSERT INTO `jz_material` VALUES ('5', '脚手架1', '72', '12', '2', 'q', '123.00', '1', '0.0000', '0.00', '123', null, '2', null, '2018-09-25 14:58:29', '2018-09-25 14:58:29');
INSERT INTO `jz_material` VALUES ('6', '脚手架', '7', 'a', '3', 'q', '123.00', '1', '0.0000', '0.00', '123阿萨德', null, '2', null, '2018-09-25 14:58:29', '2018-09-25 14:58:29');
INSERT INTO `jz_material` VALUES ('7', '脚手架001号', '7', 'a', '1', 'q', '100.00', '1', '100.0000', '0.00', '123阿萨德', '0', '2', null, '2018-09-25 14:58:28', '2018-09-25 14:58:28');
INSERT INTO `jz_material` VALUES ('8', '钢筋', '123', '123', '2', '123', '123.00', '123123', '11.0000', '0.00', '', '0', '2', null, '2018-09-25 14:58:28', '2018-09-25 14:58:28');
INSERT INTO `jz_material` VALUES ('9', '鱼', '12', '1', '1', 't', '120.00', '1', '12.0000', '0.00', null, null, '2', null, '2018-09-25 14:58:27', '2018-09-25 14:58:27');
INSERT INTO `jz_material` VALUES ('10', '酒', '12', '1', '1', 't', '120.00', '1', '12.0000', '0.00', null, null, '2', null, '2018-09-25 14:58:26', '2018-09-25 14:58:26');
INSERT INTO `jz_material` VALUES ('11', '阿里鱼', '32', '1', '1', 'z', '11.21', '1', '22.2300', '249.21', '', '0', '2', null, '2018-09-26 10:47:27', '2018-09-26 10:47:27');
INSERT INTO `jz_material` VALUES ('12', '破坏机', '34', 'DL003号', '3', '台', '22.56', '1', '41.0000', '925.00', '', '0', '2', null, '2018-09-26 11:45:52', '2018-09-26 11:45:52');
INSERT INTO `jz_material` VALUES ('13', '挖掘机', 'CL201809-54515', 'UFC', '3', '台', '0.00', '100', '0.0000', '0.00', '', '0', '2', null, '2018-09-19 11:50:32', '2018-09-19 11:50:32');
INSERT INTO `jz_material` VALUES ('14', '齿轮', 'CL201809-10049', '100*100', '2', '件', '3.00', '0', '1.0000', '3.00', '', '0', '2', null, '2018-09-26 10:14:40', '2018-09-26 10:14:40');

-- ----------------------------
-- Table structure for jz_material_require
-- ----------------------------
DROP TABLE IF EXISTS `jz_material_require`;
CREATE TABLE `jz_material_require` (
  `id` int(11) NOT NULL,
  `number` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `maker` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `file` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `det_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_material_require
-- ----------------------------

-- ----------------------------
-- Table structure for jz_material_type
-- ----------------------------
DROP TABLE IF EXISTS `jz_material_type`;
CREATE TABLE `jz_material_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_type` varchar(255) NOT NULL COMMENT '材料类型名称',
  `fid` int(111) NOT NULL DEFAULT '0' COMMENT '父级ID 0为顶级分类',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '显示顺序',
  `notes` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='//材料类型表';

-- ----------------------------
-- Records of jz_material_type
-- ----------------------------
INSERT INTO `jz_material_type` VALUES ('1', '主材', '0', '1', '', '2018-08-31 13:57:53', '2018-08-31 13:57:53');
INSERT INTO `jz_material_type` VALUES ('2', '辅材', '0', '2', '', '2018-08-31 17:17:36', '2018-08-31 17:17:36');
INSERT INTO `jz_material_type` VALUES ('3', '机械', '6', '3', '', '2018-08-30 13:40:18', '2018-08-30 13:40:18');
INSERT INTO `jz_material_type` VALUES ('5', '钢钉', '3', '2', '', '2018-08-31 17:42:08', '2018-08-31 17:42:08');
INSERT INTO `jz_material_type` VALUES ('6', '钢材', '0', '1', '', '2018-08-30 11:59:29', '2018-08-30 11:59:29');
INSERT INTO `jz_material_type` VALUES ('7', '保温棉', '2', '1', '', '2018-09-14 16:50:53', '2018-09-14 16:50:53');
INSERT INTO `jz_material_type` VALUES ('8', '保温漆', '2', '1', '', '2018-09-14 16:51:11', '2018-09-14 16:51:11');

-- ----------------------------
-- Table structure for jz_meeting
-- ----------------------------
DROP TABLE IF EXISTS `jz_meeting`;
CREATE TABLE `jz_meeting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `meeting_title` varchar(25) NOT NULL COMMENT '会议标题',
  `meeting_time` int(11) NOT NULL COMMENT '会议日期',
  `ctime` int(11) NOT NULL,
  `etimt` int(11) NOT NULL,
  `meeting_room` int(11) NOT NULL COMMENT '会议室',
  `meeting_user` varchar(25) NOT NULL COMMENT '会议人员',
  `meeting_details` varchar(255) NOT NULL COMMENT '会议细节',
  `meeting_file` varchar(25) DEFAULT NULL COMMENT '附件',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='//会议';

-- ----------------------------
-- Records of jz_meeting
-- ----------------------------

-- ----------------------------
-- Table structure for jz_meeting_room
-- ----------------------------
DROP TABLE IF EXISTS `jz_meeting_room`;
CREATE TABLE `jz_meeting_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `room_title` varchar(25) NOT NULL COMMENT '会议室名称',
  `room_number` int(11) NOT NULL COMMENT '容纳人数',
  `room_configuration` varchar(255) NOT NULL COMMENT '会议配置',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='//会议室';

-- ----------------------------
-- Records of jz_meeting_room
-- ----------------------------
INSERT INTO `jz_meeting_room` VALUES ('1', '大会议室', '100', '投影仪、投影笔、麦克风、饮水机', '1539850771', '1539850771', null);
INSERT INTO `jz_meeting_room` VALUES ('2', '大会议室', '100', '投影仪、投影笔、麦克风、饮水机', '1539850830', '1539850830', null);
INSERT INTO `jz_meeting_room` VALUES ('3', '大会议室', '100', '投影仪、投影笔、麦克风、饮水机', '1539850947', '1539850947', null);
INSERT INTO `jz_meeting_room` VALUES ('4', '大会议室', '100', '投影仪、投影笔、麦克风、饮水机', '1539851129', '1539851129', null);
INSERT INTO `jz_meeting_room` VALUES ('5', '大会议室', '100', '投影仪、投影笔、麦克风、饮水机', '1539851404', '1539851404', null);
INSERT INTO `jz_meeting_room` VALUES ('6', '大会议室', '100', '投影仪、投影笔、麦克风、饮水机', '1539851474', '1539851474', null);
INSERT INTO `jz_meeting_room` VALUES ('7', '中会议室', '80', '麦克风', '1539851706', '1539851706', null);
INSERT INTO `jz_meeting_room` VALUES ('8', '中会议室', '80', '麦克风', '1539851808', '1539851808', null);
INSERT INTO `jz_meeting_room` VALUES ('9', '小会议室', '50', '桌子', '1539851945', '1539851945', null);
INSERT INTO `jz_meeting_room` VALUES ('10', '小会议室', '50', '桌子', '1539851965', '1539851965', null);
INSERT INTO `jz_meeting_room` VALUES ('11', '小会议室', '50', '桌子', '1539852009', '1539852009', null);
INSERT INTO `jz_meeting_room` VALUES ('12', '小会议室', '50', '桌子', '1539852027', '1539852027', null);
INSERT INTO `jz_meeting_room` VALUES ('13', '小会议室', '100', '桌子', '1539852067', '1539852067', null);
INSERT INTO `jz_meeting_room` VALUES ('14', '小会议室', '100', '桌子', '1539852175', '1539852175', null);
INSERT INTO `jz_meeting_room` VALUES ('15', '小会议室', '100', '桌子', '1539852202', '1539852202', null);
INSERT INTO `jz_meeting_room` VALUES ('16', '小会议室', '100', '桌子', '1539852221', '1539852221', null);
INSERT INTO `jz_meeting_room` VALUES ('17', '小会议室', '100', '桌子', '1539852234', '1539852234', null);
INSERT INTO `jz_meeting_room` VALUES ('18', '小会议室', '100', '桌子上岛咖啡哈三联的看法', '1539852254', '1539855371', null);
INSERT INTO `jz_meeting_room` VALUES ('19', '阿萨德', '11', '123阿萨德', '1539852265', '1539852782', '1539852782');
INSERT INTO `jz_meeting_room` VALUES ('20', '会议室', '20', '比街边', '1539852354', '1539852778', '1539852778');

-- ----------------------------
-- Table structure for jz_message_config
-- ----------------------------
DROP TABLE IF EXISTS `jz_message_config`;
CREATE TABLE `jz_message_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '参数名称',
  `sign` varchar(255) NOT NULL COMMENT '标识, 唯一',
  `time` int(11) NOT NULL,
  `send_type` int(1) NOT NULL,
  `template` varchar(100) DEFAULT '',
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_message_config
-- ----------------------------
INSERT INTO `jz_message_config` VALUES ('1', '证件提醒', 'papers', '0', '3', 'SMS_146281086', '尊敬的${name},您的证件即将(${time})到期.', '1537848056', '1539914002', null);
INSERT INTO `jz_message_config` VALUES ('2', '合同提醒', 'contract', '12', '1', 'SMS_146281081', '尊敬的${name},您的合同将于${time}到期,特此通知', '1537848056', '1539914002', null);
INSERT INTO `jz_message_config` VALUES ('3', '公告提醒', 'notice', '0', '1', 'SMS_146125193', '尊敬的${name},您有一条主题为${title}的公告,请及时查看.', '1537848056', '1539914002', null);
INSERT INTO `jz_message_config` VALUES ('4', '会议提醒', 'meeting', '0', '3', 'SMS_143700545', '尊敬的${name}, 您有一项主题为${title}的会议于${time}召开,请及时参加.', '1537848056', '1539914002', null);
INSERT INTO `jz_message_config` VALUES ('5', '审核提醒', 'audit', '0', '1', 'SMS_146290710', '您的${title}申请已于${time}审批${state}，特此通知。', '1537848056', '1539914002', null);

-- ----------------------------
-- Table structure for jz_message_consignee
-- ----------------------------
DROP TABLE IF EXISTS `jz_message_consignee`;
CREATE TABLE `jz_message_consignee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL COMMENT '消息id',
  `consignee_id` int(11) NOT NULL COMMENT '接受者id',
  `sender_id` int(11) NOT NULL COMMENT '发送者id',
  `send_type` int(11) NOT NULL COMMENT '发送类型 1, websocket ,2 sms, 3,都发送了,',
  `is_read` int(1) NOT NULL COMMENT '是否已读',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_message_consignee
-- ----------------------------
INSERT INTO `jz_message_consignee` VALUES ('22', '26', '51', '43', '1', '0', '1537948194', '1538298944', '1538298944');
INSERT INTO `jz_message_consignee` VALUES ('23', '44', '43', '45', '2', '1', '1539140310', '1539140310', null);
INSERT INTO `jz_message_consignee` VALUES ('24', '45', '43', '45', '1', '0', '1539140527', '1539140527', null);
INSERT INTO `jz_message_consignee` VALUES ('25', '53', '43', '45', '2', '1', '1539152524', '1539152524', null);
INSERT INTO `jz_message_consignee` VALUES ('26', '54', '43', '45', '2', '1', '1539152586', '1539152586', null);
INSERT INTO `jz_message_consignee` VALUES ('27', '56', '43', '45', '2', '1', '1539152683', '1539152683', null);
INSERT INTO `jz_message_consignee` VALUES ('28', '57', '43', '45', '2', '1', '1539152693', '1539152693', null);
INSERT INTO `jz_message_consignee` VALUES ('29', '59', '43', '45', '2', '1', '1539152781', '1539152781', null);
INSERT INTO `jz_message_consignee` VALUES ('30', '60', '43', '45', '2', '1', '1539152800', '1539152800', null);
INSERT INTO `jz_message_consignee` VALUES ('31', '61', '43', '45', '2', '1', '1539152822', '1539152822', null);
INSERT INTO `jz_message_consignee` VALUES ('32', '62', '43', '45', '2', '1', '1539152870', '1539152870', null);
INSERT INTO `jz_message_consignee` VALUES ('33', '75', '43', '45', '2', '1', '1539153307', '1539153307', null);
INSERT INTO `jz_message_consignee` VALUES ('34', '89', '43', '51', '2', '1', '1539159509', '1539159509', null);
INSERT INTO `jz_message_consignee` VALUES ('35', '90', '43', '51', '2', '1', '1539159538', '1539159538', null);
INSERT INTO `jz_message_consignee` VALUES ('36', '91', '43', '51', '2', '1', '1539159601', '1539159601', null);
INSERT INTO `jz_message_consignee` VALUES ('37', '92', '43', '51', '2', '1', '1539159616', '1539159616', null);
INSERT INTO `jz_message_consignee` VALUES ('38', '93', '43', '51', '2', '1', '1539159622', '1539159622', null);
INSERT INTO `jz_message_consignee` VALUES ('39', '94', '43', '51', '2', '1', '1539159683', '1539159683', null);
INSERT INTO `jz_message_consignee` VALUES ('40', '95', '43', '51', '2', '1', '1539159693', '1539159693', null);
INSERT INTO `jz_message_consignee` VALUES ('41', '96', '43', '51', '2', '1', '1539159793', '1539159793', null);
INSERT INTO `jz_message_consignee` VALUES ('42', '97', '43', '45', '2', '1', '1539160985', '1539160985', null);
INSERT INTO `jz_message_consignee` VALUES ('43', '97', '45', '45', '2', '1', '1539160985', '1539160985', null);
INSERT INTO `jz_message_consignee` VALUES ('44', '98', '43', '45', '2', '1', '1539161114', '1539161114', null);
INSERT INTO `jz_message_consignee` VALUES ('45', '99', '43', '45', '2', '1', '1539161192', '1539161192', null);
INSERT INTO `jz_message_consignee` VALUES ('46', '100', '43', '45', '2', '1', '1539161334', '1539161334', null);
INSERT INTO `jz_message_consignee` VALUES ('47', '100', '45', '45', '2', '1', '1539161334', '1539161334', null);
INSERT INTO `jz_message_consignee` VALUES ('48', '101', '45', '43', '2', '1', '1539165870', '1539165870', null);
INSERT INTO `jz_message_consignee` VALUES ('49', '102', '45', '43', '2', '1', '1539165939', '1539165939', null);
INSERT INTO `jz_message_consignee` VALUES ('50', '103', '45', '43', '2', '1', '1539165957', '1539165957', null);
INSERT INTO `jz_message_consignee` VALUES ('51', '104', '45', '43', '2', '1', '1539166003', '1539166003', null);
INSERT INTO `jz_message_consignee` VALUES ('52', '105', '43', '45', '2', '1', '1539166142', '1539166142', null);
INSERT INTO `jz_message_consignee` VALUES ('53', '106', '43', '45', '2', '1', '1539166225', '1539166225', null);
INSERT INTO `jz_message_consignee` VALUES ('54', '107', '45', '45', '2', '1', '1539166262', '1539166262', null);
INSERT INTO `jz_message_consignee` VALUES ('55', '108', '45', '45', '2', '1', '1539166277', '1539166277', null);
INSERT INTO `jz_message_consignee` VALUES ('56', '109', '45', '45', '2', '1', '1539166461', '1539166461', null);
INSERT INTO `jz_message_consignee` VALUES ('57', '110', '45', '45', '2', '1', '1539166476', '1539166476', null);
INSERT INTO `jz_message_consignee` VALUES ('58', '111', '45', '45', '2', '1', '1539219071', '1539219071', null);
INSERT INTO `jz_message_consignee` VALUES ('59', '112', '45', '45', '2', '1', '1539219107', '1539219107', null);
INSERT INTO `jz_message_consignee` VALUES ('60', '113', '45', '45', '2', '1', '1539219183', '1539219183', null);
INSERT INTO `jz_message_consignee` VALUES ('61', '114', '45', '45', '2', '1', '1539219353', '1539219353', null);
INSERT INTO `jz_message_consignee` VALUES ('62', '115', '45', '45', '2', '1', '1539219385', '1539219385', null);
INSERT INTO `jz_message_consignee` VALUES ('63', '116', '45', '45', '2', '1', '1539219429', '1539219429', null);
INSERT INTO `jz_message_consignee` VALUES ('64', '117', '45', '45', '2', '1', '1539219492', '1539219492', null);
INSERT INTO `jz_message_consignee` VALUES ('65', '118', '45', '45', '2', '1', '1539219607', '1539219607', null);
INSERT INTO `jz_message_consignee` VALUES ('66', '119', '45', '45', '2', '1', '1539219902', '1539219902', null);
INSERT INTO `jz_message_consignee` VALUES ('67', '120', '45', '45', '2', '1', '1539221043', '1539221043', null);
INSERT INTO `jz_message_consignee` VALUES ('69', '121', '43', '45', '2', '1', '1539221584', '1539221584', null);
INSERT INTO `jz_message_consignee` VALUES ('70', '122', '45', '51', '2', '1', '1539221860', '1539221860', null);
INSERT INTO `jz_message_consignee` VALUES ('71', '123', '43', '45', '2', '1', '1539226597', '1539226597', null);
INSERT INTO `jz_message_consignee` VALUES ('72', '123', '46', '45', '2', '1', '1539226597', '1539226597', null);
INSERT INTO `jz_message_consignee` VALUES ('73', '126', '45', '43', '2', '1', '1539227210', '1539227210', null);
INSERT INTO `jz_message_consignee` VALUES ('75', '129', '43', '45', '2', '1', '1539228030', '1539228030', null);
INSERT INTO `jz_message_consignee` VALUES ('76', '129', '48', '45', '2', '1', '1539228030', '1539228030', null);
INSERT INTO `jz_message_consignee` VALUES ('77', '130', '48', '45', '2', '1', '1539229033', '1539229033', null);
INSERT INTO `jz_message_consignee` VALUES ('78', '130', '43', '45', '2', '1', '1539229033', '1539229033', null);
INSERT INTO `jz_message_consignee` VALUES ('79', '131', '48', '45', '2', '1', '1539229281', '1539229281', null);
INSERT INTO `jz_message_consignee` VALUES ('80', '131', '43', '45', '2', '1', '1539229281', '1539229281', null);
INSERT INTO `jz_message_consignee` VALUES ('81', '132', '45', '48', '2', '1', '1539229342', '1539229342', null);
INSERT INTO `jz_message_consignee` VALUES ('83', '133', '47', '45', '2', '1', '1539229573', '1539229573', null);
INSERT INTO `jz_message_consignee` VALUES ('84', '133', '52', '45', '2', '1', '1539229573', '1539229573', null);
INSERT INTO `jz_message_consignee` VALUES ('85', '134', '45', '52', '2', '1', '1539235872', '1539235872', null);
INSERT INTO `jz_message_consignee` VALUES ('86', '135', '48', '45', '2', '1', '1539239801', '1539239801', null);
INSERT INTO `jz_message_consignee` VALUES ('87', '135', '43', '45', '2', '1', '1539239801', '1539239801', null);
INSERT INTO `jz_message_consignee` VALUES ('88', '137', '48', '45', '2', '1', '1539323174', '1539323174', null);
INSERT INTO `jz_message_consignee` VALUES ('89', '137', '43', '45', '2', '1', '1539323174', '1539323174', null);
INSERT INTO `jz_message_consignee` VALUES ('90', '138', '45', '43', '2', '1', '1539323273', '1539323273', null);
INSERT INTO `jz_message_consignee` VALUES ('92', '139', '43', '51', '1', '0', '1539589400', '1539589400', null);
INSERT INTO `jz_message_consignee` VALUES ('93', '140', '43', '51', '1', '0', '1539589441', '1539589441', null);
INSERT INTO `jz_message_consignee` VALUES ('117', '165', '48', '45', '2', '1', '1539676563', '1539676563', null);
INSERT INTO `jz_message_consignee` VALUES ('118', '165', '43', '45', '2', '1', '1539676563', '1539676563', null);
INSERT INTO `jz_message_consignee` VALUES ('119', '166', '48', '45', '2', '1', '1539677706', '1539677706', null);
INSERT INTO `jz_message_consignee` VALUES ('120', '166', '45', '45', '2', '1', '1539677706', '1539677706', null);
INSERT INTO `jz_message_consignee` VALUES ('121', '167', '48', '45', '2', '1', '1539679896', '1539679896', null);
INSERT INTO `jz_message_consignee` VALUES ('122', '167', '45', '45', '2', '1', '1539679896', '1539679896', null);
INSERT INTO `jz_message_consignee` VALUES ('123', '171', '46', '46', '2', '1', '1539741712', '1539741712', null);
INSERT INTO `jz_message_consignee` VALUES ('124', '172', '46', '46', '2', '1', '1539742568', '1539742568', null);
INSERT INTO `jz_message_consignee` VALUES ('129', '177', '46', '46', '2', '1', '1539744122', '1539744122', null);
INSERT INTO `jz_message_consignee` VALUES ('130', '178', '46', '46', '2', '1', '1539744141', '1539744141', null);
INSERT INTO `jz_message_consignee` VALUES ('132', '180', '48', '45', '2', '1', '1539744770', '1539744770', null);
INSERT INTO `jz_message_consignee` VALUES ('133', '180', '45', '45', '2', '1', '1539744770', '1539744770', null);
INSERT INTO `jz_message_consignee` VALUES ('180', '227', '45', '46', '2', '1', '1539757065', '1539757065', null);
INSERT INTO `jz_message_consignee` VALUES ('210', '257', '48', '45', '1', '0', '1539760942', '1539760942', null);
INSERT INTO `jz_message_consignee` VALUES ('211', '257', '45', '45', '1', '0', '1539760942', '1539760942', null);
INSERT INTO `jz_message_consignee` VALUES ('212', '258', '45', '45', '1', '0', '1539761459', '1539761459', null);
INSERT INTO `jz_message_consignee` VALUES ('213', '265', '45', '45', '1', '0', '1539763347', '1539763347', null);
INSERT INTO `jz_message_consignee` VALUES ('214', '272', '45', '45', '1', '0', '1539767434', '1539767434', null);
INSERT INTO `jz_message_consignee` VALUES ('222', '282', '51', '51', '1', '0', '1539827182', '1539827182', null);
INSERT INTO `jz_message_consignee` VALUES ('223', '283', '51', '51', '1', '0', '1539827213', '1539827213', null);
INSERT INTO `jz_message_consignee` VALUES ('224', '284', '72', '72', '1', '0', '1539834358', '1539834358', null);
INSERT INTO `jz_message_consignee` VALUES ('225', '285', '45', '72', '1', '0', '1539834597', '1539834597', null);
INSERT INTO `jz_message_consignee` VALUES ('226', '286', '72', '72', '1', '0', '1539834857', '1539834857', null);
INSERT INTO `jz_message_consignee` VALUES ('227', '286', '45', '72', '1', '0', '1539834857', '1539834857', null);
INSERT INTO `jz_message_consignee` VALUES ('228', '287', '72', '72', '1', '0', '1539841250', '1539841250', null);
INSERT INTO `jz_message_consignee` VALUES ('229', '288', '51', '51', '1', '0', '1539841857', '1539841857', null);
INSERT INTO `jz_message_consignee` VALUES ('230', '289', '72', '72', '1', '0', '1539842555', '1539842555', null);
INSERT INTO `jz_message_consignee` VALUES ('231', '290', '72', '72', '1', '0', '1539842566', '1539842566', null);
INSERT INTO `jz_message_consignee` VALUES ('232', '291', '72', '72', '1', '0', '1539842578', '1539842578', null);
INSERT INTO `jz_message_consignee` VALUES ('233', '292', '72', '72', '1', '0', '1539843168', '1539843168', null);
INSERT INTO `jz_message_consignee` VALUES ('234', '293', '72', '72', '1', '0', '1539843174', '1539843174', null);
INSERT INTO `jz_message_consignee` VALUES ('235', '294', '72', '72', '1', '0', '1539843179', '1539843179', null);
INSERT INTO `jz_message_consignee` VALUES ('236', '295', '72', '72', '1', '0', '1539843185', '1539843185', null);
INSERT INTO `jz_message_consignee` VALUES ('237', '296', '72', '72', '1', '0', '1539843696', '1539843696', null);
INSERT INTO `jz_message_consignee` VALUES ('238', '297', '72', '72', '1', '0', '1539843705', '1539843705', null);
INSERT INTO `jz_message_consignee` VALUES ('239', '298', '72', '72', '1', '0', '1539843932', '1539843932', null);
INSERT INTO `jz_message_consignee` VALUES ('240', '299', '51', '51', '1', '0', '1539849601', '1539849601', null);
INSERT INTO `jz_message_consignee` VALUES ('241', '300', '51', '51', '1', '0', '1539852422', '1539852422', null);
INSERT INTO `jz_message_consignee` VALUES ('242', '301', '51', '51', '1', '0', '1539852519', '1539852519', null);
INSERT INTO `jz_message_consignee` VALUES ('243', '302', '51', '51', '1', '0', '1539852663', '1539852663', null);
INSERT INTO `jz_message_consignee` VALUES ('244', '303', '51', '51', '1', '0', '1539852665', '1539852665', null);
INSERT INTO `jz_message_consignee` VALUES ('245', '304', '51', '51', '1', '0', '1539852668', '1539852668', null);
INSERT INTO `jz_message_consignee` VALUES ('246', '305', '51', '51', '1', '0', '1539852671', '1539852671', null);
INSERT INTO `jz_message_consignee` VALUES ('247', '306', '51', '51', '1', '0', '1539852708', '1539852708', null);
INSERT INTO `jz_message_consignee` VALUES ('248', '307', '51', '51', '1', '0', '1539852752', '1539852752', null);
INSERT INTO `jz_message_consignee` VALUES ('249', '308', '51', '51', '1', '0', '1539852923', '1539852923', null);
INSERT INTO `jz_message_consignee` VALUES ('250', '309', '51', '51', '1', '0', '1539852945', '1539852945', null);
INSERT INTO `jz_message_consignee` VALUES ('251', '310', '51', '51', '1', '0', '1539852949', '1539852949', null);
INSERT INTO `jz_message_consignee` VALUES ('252', '311', '51', '51', '1', '0', '1539852998', '1539852998', null);
INSERT INTO `jz_message_consignee` VALUES ('253', '312', '51', '51', '1', '0', '1539853002', '1539853002', null);
INSERT INTO `jz_message_consignee` VALUES ('254', '313', '51', '51', '1', '0', '1539853051', '1539853051', null);
INSERT INTO `jz_message_consignee` VALUES ('255', '314', '51', '51', '1', '0', '1539853054', '1539853054', null);
INSERT INTO `jz_message_consignee` VALUES ('256', '315', '51', '51', '1', '0', '1539853059', '1539853059', null);
INSERT INTO `jz_message_consignee` VALUES ('257', '316', '51', '51', '1', '0', '1539855175', '1539855175', null);
INSERT INTO `jz_message_consignee` VALUES ('258', '317', '51', '51', '1', '0', '1539855180', '1539855180', null);
INSERT INTO `jz_message_consignee` VALUES ('259', '318', '51', '51', '1', '0', '1539855183', '1539855183', null);
INSERT INTO `jz_message_consignee` VALUES ('260', '319', '51', '51', '1', '0', '1539911471', '1539911471', null);
INSERT INTO `jz_message_consignee` VALUES ('261', '320', '51', '51', '1', '0', '1539911566', '1539911566', null);
INSERT INTO `jz_message_consignee` VALUES ('262', '321', '51', '51', '1', '0', '1539911572', '1539911572', null);
INSERT INTO `jz_message_consignee` VALUES ('263', '322', '51', '51', '1', '0', '1539911575', '1539911575', null);
INSERT INTO `jz_message_consignee` VALUES ('264', '323', '51', '51', '1', '0', '1539911581', '1539911581', null);
INSERT INTO `jz_message_consignee` VALUES ('265', '326', '45', '72', '1', '0', '1539912340', '1539912340', null);
INSERT INTO `jz_message_consignee` VALUES ('266', '327', '45', '72', '1', '0', '1539912383', '1539912383', null);
INSERT INTO `jz_message_consignee` VALUES ('267', '328', '45', '72', '1', '0', '1539914808', '1539914808', null);
INSERT INTO `jz_message_consignee` VALUES ('268', '329', '46', '72', '1', '0', '1539916716', '1539916716', null);
INSERT INTO `jz_message_consignee` VALUES ('269', '330', '46', '72', '1', '0', '1539916771', '1539916771', null);
INSERT INTO `jz_message_consignee` VALUES ('270', '331', '45', '72', '1', '0', '1539917516', '1539917516', null);
INSERT INTO `jz_message_consignee` VALUES ('271', '332', '46', '72', '1', '0', '1539919622', '1539919622', null);
INSERT INTO `jz_message_consignee` VALUES ('272', '333', '45', '72', '1', '0', '1539919722', '1539919722', null);
INSERT INTO `jz_message_consignee` VALUES ('273', '334', '45', '72', '1', '0', '1539919796', '1539919796', null);
INSERT INTO `jz_message_consignee` VALUES ('274', '335', '51', '51', '1', '0', '1539919855', '1539919855', null);
INSERT INTO `jz_message_consignee` VALUES ('275', '336', '51', '51', '1', '0', '1539920539', '1539920539', null);
INSERT INTO `jz_message_consignee` VALUES ('276', '337', '51', '51', '1', '0', '1539920734', '1539920734', null);
INSERT INTO `jz_message_consignee` VALUES ('277', '338', '51', '51', '1', '0', '1539920788', '1539920788', null);
INSERT INTO `jz_message_consignee` VALUES ('278', '339', '51', '51', '1', '0', '1539921161', '1539921161', null);
INSERT INTO `jz_message_consignee` VALUES ('279', '340', '51', '51', '1', '0', '1539922072', '1539922072', null);
INSERT INTO `jz_message_consignee` VALUES ('280', '341', '51', '51', '1', '0', '1539922389', '1539922389', null);
INSERT INTO `jz_message_consignee` VALUES ('281', '342', '45', '72', '1', '0', '1539922467', '1539922467', null);
INSERT INTO `jz_message_consignee` VALUES ('282', '343', '45', '72', '1', '0', '1539922492', '1539922492', null);
INSERT INTO `jz_message_consignee` VALUES ('283', '344', '45', '72', '1', '0', '1539922510', '1539922510', null);
INSERT INTO `jz_message_consignee` VALUES ('284', '345', '45', '72', '1', '0', '1539922550', '1539922550', null);
INSERT INTO `jz_message_consignee` VALUES ('285', '346', '51', '51', '1', '0', '1539927398', '1539927398', null);
INSERT INTO `jz_message_consignee` VALUES ('286', '347', '51', '51', '1', '0', '1539927484', '1539927484', null);
INSERT INTO `jz_message_consignee` VALUES ('287', '348', '45', '72', '1', '0', '1539936953', '1539936953', null);
INSERT INTO `jz_message_consignee` VALUES ('288', '349', '46', '72', '1', '0', '1539937881', '1539937881', null);
INSERT INTO `jz_message_consignee` VALUES ('289', '350', '48', '48', '1', '0', '1539938529', '1539938529', null);
INSERT INTO `jz_message_consignee` VALUES ('290', '351', '46', '48', '1', '0', '1539938579', '1539938579', null);
INSERT INTO `jz_message_consignee` VALUES ('291', '352', '51', '51', '1', '0', '1539938879', '1539938879', null);
INSERT INTO `jz_message_consignee` VALUES ('292', '353', '51', '51', '1', '0', '1539938970', '1539938970', null);
INSERT INTO `jz_message_consignee` VALUES ('293', '354', '51', '51', '1', '0', '1539938974', '1539938974', null);
INSERT INTO `jz_message_consignee` VALUES ('294', '355', '48', '48', '1', '0', '1539938886', '1539938886', null);
INSERT INTO `jz_message_consignee` VALUES ('295', '356', '46', '48', '1', '0', '1539938903', '1539938903', null);
INSERT INTO `jz_message_consignee` VALUES ('296', '359', '48', '48', '1', '0', '1539939038', '1539939038', null);
INSERT INTO `jz_message_consignee` VALUES ('297', '360', '46', '48', '1', '0', '1539939055', '1539939055', null);
INSERT INTO `jz_message_consignee` VALUES ('298', '361', '48', '46', '2', '1', '1539939306', '1539939306', null);

-- ----------------------------
-- Table structure for jz_message_list
-- ----------------------------
DROP TABLE IF EXISTS `jz_message_list`;
CREATE TABLE `jz_message_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息发送表',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '发送内容',
  `sender_id` int(11) NOT NULL COMMENT '发送者id',
  `msg_type` varchar(30) NOT NULL COMMENT '消息类型, meeting 会议消息, notice公告消息, audit审批消息, offline下线消息',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_message_list
-- ----------------------------
INSERT INTO `jz_message_list` VALUES ('14', '', '', '43', 'notice', '1537947666', '1537947666', null);
INSERT INTO `jz_message_list` VALUES ('15', '', '', '43', 'notice', '1537947821', '1537947821', null);
INSERT INTO `jz_message_list` VALUES ('16', '', '', '43', 'notice', '1537947833', '1537947833', null);
INSERT INTO `jz_message_list` VALUES ('17', '555', '666', '43', 'notice', '1537947876', '1537947876', null);
INSERT INTO `jz_message_list` VALUES ('18', '555', '666', '43', 'notice', '1537947899', '1537947899', null);
INSERT INTO `jz_message_list` VALUES ('19', '555', '666', '43', 'notice', '1537947907', '1537947907', null);
INSERT INTO `jz_message_list` VALUES ('20', '555', '666', '43', 'notice', '1537947943', '1537947943', null);
INSERT INTO `jz_message_list` VALUES ('21', '555', '666', '43', 'notice', '1537947951', '1537947951', null);
INSERT INTO `jz_message_list` VALUES ('22', '555', '666', '43', 'notice', '1537947998', '1537947998', null);
INSERT INTO `jz_message_list` VALUES ('23', '555', '666', '43', 'notice', '1537948041', '1537948041', null);
INSERT INTO `jz_message_list` VALUES ('24', '555', '666', '43', 'notice', '1537948131', '1537948131', null);
INSERT INTO `jz_message_list` VALUES ('25', '555', '666', '43', 'notice', '1537948150', '1537948150', null);
INSERT INTO `jz_message_list` VALUES ('26', '555', '666', '43', 'notice', '1537948194', '1537948194', null);
INSERT INTO `jz_message_list` VALUES ('27', '555', '666', '43', 'notice', '1537948220', '1537948220', null);
INSERT INTO `jz_message_list` VALUES ('28', '555', '666', '43', 'notice', '1537948255', '1537948255', null);
INSERT INTO `jz_message_list` VALUES ('29', '555', '666', '43', 'notice', '1537948276', '1537948276', null);
INSERT INTO `jz_message_list` VALUES ('30', '555', '666', '43', 'notice', '1537948312', '1537948312', null);
INSERT INTO `jz_message_list` VALUES ('31', '555', '666', '43', 'notice', '1537948323', '1537948323', null);
INSERT INTO `jz_message_list` VALUES ('32', '555', '666', '43', 'notice', '1537948406', '1537948406', null);
INSERT INTO `jz_message_list` VALUES ('33', '555', '666', '43', 'notice', '1537948420', '1537948420', null);
INSERT INTO `jz_message_list` VALUES ('34', '555', '666', '43', 'notice', '1537948853', '1537948853', null);
INSERT INTO `jz_message_list` VALUES ('35', '555', '666', '43', 'notice', '1537949687', '1537949687', null);
INSERT INTO `jz_message_list` VALUES ('36', '555', '666', '43', 'notice', '1537949731', '1537949731', null);
INSERT INTO `jz_message_list` VALUES ('37', '555', '666', '43', 'notice', '1537950027', '1537950027', null);
INSERT INTO `jz_message_list` VALUES ('38', '555', '666', '43', 'notice', '1537952551', '1537952551', null);
INSERT INTO `jz_message_list` VALUES ('39', '555', '666', '43', 'notice', '1537952609', '1537952609', null);
INSERT INTO `jz_message_list` VALUES ('40', '555', '666', '43', 'notice', '1537952646', '1537952646', null);
INSERT INTO `jz_message_list` VALUES ('41', '555', '666', '43', 'notice', '1537953708', '1537953708', null);
INSERT INTO `jz_message_list` VALUES ('42', '555', '666', '43', 'notice', '1537954094', '1537954094', null);
INSERT INTO `jz_message_list` VALUES ('43', '555', '666', '43', 'notice', '1538009612', '1538009612', null);
INSERT INTO `jz_message_list` VALUES ('44', '阿萨德', '啊飒飒大师', '45', 'audit', '1539140310', '1539140310', null);
INSERT INTO `jz_message_list` VALUES ('45', '阿萨德', '啊飒飒大师', '45', 'audit', '1539140527', '1539140527', null);
INSERT INTO `jz_message_list` VALUES ('53', '666', '傻逼', '45', 'audit', '1539152524', '1539152524', null);
INSERT INTO `jz_message_list` VALUES ('54', '666', '傻逼', '45', 'audit', '1539152586', '1539152586', null);
INSERT INTO `jz_message_list` VALUES ('56', '666', '傻逼', '45', 'audit', '1539152682', '1539152682', null);
INSERT INTO `jz_message_list` VALUES ('57', '666', '傻逼', '45', 'audit', '1539152693', '1539152693', null);
INSERT INTO `jz_message_list` VALUES ('59', '666', '傻逼', '45', 'audit', '1539152781', '1539152781', null);
INSERT INTO `jz_message_list` VALUES ('60', '666', '傻逼', '45', 'audit', '1539152800', '1539152800', null);
INSERT INTO `jz_message_list` VALUES ('61', '666', '傻逼', '45', 'audit', '1539152822', '1539152822', null);
INSERT INTO `jz_message_list` VALUES ('62', '666', '傻逼', '45', 'audit', '1539152870', '1539152870', null);
INSERT INTO `jz_message_list` VALUES ('75', '666', '傻逼', '45', 'audit', '1539153307', '1539153307', null);
INSERT INTO `jz_message_list` VALUES ('89', '批量短信', '大哥我错了', '51', 'papers', '1539159509', '1539159509', null);
INSERT INTO `jz_message_list` VALUES ('90', '批量短信', '大哥我错了', '51', 'papers', '1539159538', '1539159538', null);
INSERT INTO `jz_message_list` VALUES ('91', '批量短信', '大哥我错了', '51', 'papers', '1539159601', '1539159601', null);
INSERT INTO `jz_message_list` VALUES ('92', '批量短信', '大哥我错了', '51', 'papers', '1539159615', '1539159615', null);
INSERT INTO `jz_message_list` VALUES ('93', '批量短信', '大哥我错了', '51', 'papers', '1539159622', '1539159622', null);
INSERT INTO `jz_message_list` VALUES ('94', '批量短信', '大哥我错了', '51', 'papers', '1539159683', '1539159683', null);
INSERT INTO `jz_message_list` VALUES ('95', '批量短信', '大哥我错了', '51', 'papers', '1539159692', '1539159692', null);
INSERT INTO `jz_message_list` VALUES ('96', '批量短信', '大哥我错了', '51', 'papers', '1539159792', '1539159792', null);
INSERT INTO `jz_message_list` VALUES ('97', '阿萨德', '啊飒飒大师', '45', 'audit', '1539160985', '1539160985', null);
INSERT INTO `jz_message_list` VALUES ('98', '阿萨德', '啊飒飒大师', '45', 'audit', '1539161113', '1539161113', null);
INSERT INTO `jz_message_list` VALUES ('99', '阿萨德', '啊飒飒大师', '45', 'audit', '1539161192', '1539161192', null);
INSERT INTO `jz_message_list` VALUES ('100', '阿萨德', '啊飒飒大师', '45', 'audit', '1539161333', '1539161333', null);
INSERT INTO `jz_message_list` VALUES ('101', '待办流程', '待办流程', '43', 'audit', '1539165870', '1539165870', null);
INSERT INTO `jz_message_list` VALUES ('102', '待办流程', '待办流程', '43', 'audit', '1539165939', '1539165939', null);
INSERT INTO `jz_message_list` VALUES ('103', '待办流程', '待办流程', '43', 'audit', '1539165957', '1539165957', null);
INSERT INTO `jz_message_list` VALUES ('104', '待办流程', '待办流程', '43', 'audit', '1539166002', '1539166002', null);
INSERT INTO `jz_message_list` VALUES ('105', '待办流程', '待办流程', '45', 'audit', '1539166142', '1539166142', null);
INSERT INTO `jz_message_list` VALUES ('106', '待办流程', '待办流程', '45', 'audit', '1539166225', '1539166225', null);
INSERT INTO `jz_message_list` VALUES ('107', '待办流程', '待办流程', '45', 'audit', '1539166262', '1539166262', null);
INSERT INTO `jz_message_list` VALUES ('108', '待办流程', '待办流程', '45', 'audit', '1539166276', '1539166276', null);
INSERT INTO `jz_message_list` VALUES ('109', '待办流程', '待办流程', '45', 'audit', '1539166461', '1539166461', null);
INSERT INTO `jz_message_list` VALUES ('110', '待办流程', '待办流程', '45', 'audit', '1539166476', '1539166476', null);
INSERT INTO `jz_message_list` VALUES ('111', '待办流程', '待办流程', '45', 'audit', '1539219071', '1539219071', null);
INSERT INTO `jz_message_list` VALUES ('112', '待办流程', '待办流程', '45', 'audit', '1539219107', '1539219107', null);
INSERT INTO `jz_message_list` VALUES ('113', '待办流程', '待办流程', '45', 'audit', '1539219182', '1539219182', null);
INSERT INTO `jz_message_list` VALUES ('114', '待办流程', '待办流程', '45', 'audit', '1539219352', '1539219352', null);
INSERT INTO `jz_message_list` VALUES ('115', '待办流程', '待办流程', '45', 'audit', '1539219384', '1539219384', null);
INSERT INTO `jz_message_list` VALUES ('116', '待办流程', '待办流程', '45', 'audit', '1539219429', '1539219429', null);
INSERT INTO `jz_message_list` VALUES ('117', '待办流程', '待办流程', '45', 'audit', '1539219492', '1539219492', null);
INSERT INTO `jz_message_list` VALUES ('118', '待办流程', '待办流程', '45', 'audit', '1539219605', '1539219605', null);
INSERT INTO `jz_message_list` VALUES ('119', '待办流程', '待办流程', '45', 'audit', '1539219901', '1539219901', null);
INSERT INTO `jz_message_list` VALUES ('120', '待办流程', '待办流程', '45', 'audit', '1539221043', '1539221043', null);
INSERT INTO `jz_message_list` VALUES ('121', '待办流程', '待办流程', '45', 'audit', '1539221583', '1539221583', null);
INSERT INTO `jz_message_list` VALUES ('122', '待办流程', '待办流程', '51', 'audit', '1539221860', '1539221860', null);
INSERT INTO `jz_message_list` VALUES ('123', '待办流程', '待办流程', '45', 'audit', '1539226596', '1539226596', null);
INSERT INTO `jz_message_list` VALUES ('126', '待办流程', '待办流程', '43', 'audit', '1539227209', '1539227209', null);
INSERT INTO `jz_message_list` VALUES ('129', '待办流程', '待办流程', '45', 'audit', '1539228029', '1539228029', null);
INSERT INTO `jz_message_list` VALUES ('130', '待办流程', '待办流程', '45', 'audit', '1539229033', '1539229033', null);
INSERT INTO `jz_message_list` VALUES ('131', '待办流程', '待办流程', '45', 'audit', '1539229281', '1539229281', null);
INSERT INTO `jz_message_list` VALUES ('132', '待办流程', '待办流程', '48', 'audit', '1539229342', '1539229342', null);
INSERT INTO `jz_message_list` VALUES ('133', '待办流程', '待办流程', '45', 'audit', '1539229573', '1539229573', null);
INSERT INTO `jz_message_list` VALUES ('134', '待办流程', '待办流程', '52', 'audit', '1539235872', '1539235872', null);
INSERT INTO `jz_message_list` VALUES ('135', '待办流程', '待办流程', '45', 'audit', '1539239800', '1539239800', null);
INSERT INTO `jz_message_list` VALUES ('137', '待办流程', '待办流程', '45', 'audit', '1539323173', '1539323173', null);
INSERT INTO `jz_message_list` VALUES ('138', '待办流程', '待办流程', '43', 'audit', '1539323273', '1539323273', null);
INSERT INTO `jz_message_list` VALUES ('139', '=-=', '', '51', 'notice', '1539589400', '1539589400', null);
INSERT INTO `jz_message_list` VALUES ('140', '=-=', '', '51', 'notice', '1539589441', '1539589441', null);
INSERT INTO `jz_message_list` VALUES ('141', '=-=', '', '51', 'notice', '1539589643', '1539589643', null);
INSERT INTO `jz_message_list` VALUES ('142', '=-=', '六神', '51', 'notice', '1539589674', '1539589674', null);
INSERT INTO `jz_message_list` VALUES ('143', '=-=', '六神', '51', 'notice', '1539589854', '1539589854', null);
INSERT INTO `jz_message_list` VALUES ('144', '=-=', '六神', '51', 'notice', '1539589859', '1539589859', null);
INSERT INTO `jz_message_list` VALUES ('145', '=-=', '六神', '51', 'notice', '1539589864', '1539589864', null);
INSERT INTO `jz_message_list` VALUES ('146', '=-=', '六神', '51', 'notice', '1539589871', '1539589871', null);
INSERT INTO `jz_message_list` VALUES ('147', '=-=', '六神', '51', 'notice', '1539589927', '1539589927', null);
INSERT INTO `jz_message_list` VALUES ('148', '=-=', '六神', '51', 'notice', '1539589931', '1539589931', null);
INSERT INTO `jz_message_list` VALUES ('149', '=-=', '六神', '51', 'notice', '1539590013', '1539590013', null);
INSERT INTO `jz_message_list` VALUES ('150', '=-=', '六神', '51', 'notice', '1539590156', '1539590156', null);
INSERT INTO `jz_message_list` VALUES ('151', '=-=', '六神', '51', 'notice', '1539590184', '1539590184', null);
INSERT INTO `jz_message_list` VALUES ('152', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590210', '1539590210', null);
INSERT INTO `jz_message_list` VALUES ('153', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590281', '1539590281', null);
INSERT INTO `jz_message_list` VALUES ('154', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590413', '1539590413', null);
INSERT INTO `jz_message_list` VALUES ('155', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590626', '1539590626', null);
INSERT INTO `jz_message_list` VALUES ('156', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590630', '1539590630', null);
INSERT INTO `jz_message_list` VALUES ('157', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590723', '1539590723', null);
INSERT INTO `jz_message_list` VALUES ('158', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590745', '1539590745', null);
INSERT INTO `jz_message_list` VALUES ('159', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590853', '1539590853', null);
INSERT INTO `jz_message_list` VALUES ('160', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539590923', '1539590923', null);
INSERT INTO `jz_message_list` VALUES ('161', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539591002', '1539591002', null);
INSERT INTO `jz_message_list` VALUES ('162', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539591232', '1539591232', null);
INSERT INTO `jz_message_list` VALUES ('163', '=-=', 'you can you go, no can no bb', '51', 'notice', '1539591288', '1539591288', null);
INSERT INTO `jz_message_list` VALUES ('165', '待办流程', '待办流程', '45', 'audit', '1539676563', '1539676563', null);
INSERT INTO `jz_message_list` VALUES ('166', '待办流程', '待办流程', '45', 'audit', '1539677706', '1539677706', null);
INSERT INTO `jz_message_list` VALUES ('167', '待办流程', '待办流程', '45', 'audit', '1539679896', '1539679896', null);
INSERT INTO `jz_message_list` VALUES ('171', '待办流程', '待办流程', '46', 'audit', '1539741712', '1539741712', null);
INSERT INTO `jz_message_list` VALUES ('172', '待办流程', '待办流程', '46', 'audit', '1539742568', '1539742568', null);
INSERT INTO `jz_message_list` VALUES ('173', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539743880', '1539743880', null);
INSERT INTO `jz_message_list` VALUES ('174', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539743908', '1539743908', null);
INSERT INTO `jz_message_list` VALUES ('175', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539743973', '1539743973', null);
INSERT INTO `jz_message_list` VALUES ('176', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539744081', '1539744081', null);
INSERT INTO `jz_message_list` VALUES ('177', '待办流程', '待办流程', '46', 'audit', '1539744122', '1539744122', null);
INSERT INTO `jz_message_list` VALUES ('178', '待办流程', '待办流程', '46', 'audit', '1539744140', '1539744140', null);
INSERT INTO `jz_message_list` VALUES ('179', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539744793', '1539744793', null);
INSERT INTO `jz_message_list` VALUES ('180', '待办流程', '待办流程', '45', 'audit', '1539744770', '1539744770', null);
INSERT INTO `jz_message_list` VALUES ('181', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539744909', '1539744909', null);
INSERT INTO `jz_message_list` VALUES ('182', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539744914', '1539744914', null);
INSERT INTO `jz_message_list` VALUES ('183', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539744934', '1539744934', null);
INSERT INTO `jz_message_list` VALUES ('184', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539744937', '1539744937', null);
INSERT INTO `jz_message_list` VALUES ('185', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539744939', '1539744939', null);
INSERT INTO `jz_message_list` VALUES ('186', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539745009', '1539745009', null);
INSERT INTO `jz_message_list` VALUES ('187', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539745023', '1539745023', null);
INSERT INTO `jz_message_list` VALUES ('188', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539745335', '1539745335', null);
INSERT INTO `jz_message_list` VALUES ('189', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539745338', '1539745338', null);
INSERT INTO `jz_message_list` VALUES ('190', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746208', '1539746208', null);
INSERT INTO `jz_message_list` VALUES ('191', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746214', '1539746214', null);
INSERT INTO `jz_message_list` VALUES ('192', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746278', '1539746278', null);
INSERT INTO `jz_message_list` VALUES ('193', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746281', '1539746281', null);
INSERT INTO `jz_message_list` VALUES ('194', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746284', '1539746284', null);
INSERT INTO `jz_message_list` VALUES ('195', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746360', '1539746360', null);
INSERT INTO `jz_message_list` VALUES ('196', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746363', '1539746363', null);
INSERT INTO `jz_message_list` VALUES ('197', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746365', '1539746365', null);
INSERT INTO `jz_message_list` VALUES ('198', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746473', '1539746473', null);
INSERT INTO `jz_message_list` VALUES ('199', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746476', '1539746476', null);
INSERT INTO `jz_message_list` VALUES ('200', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746478', '1539746478', null);
INSERT INTO `jz_message_list` VALUES ('201', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746482', '1539746482', null);
INSERT INTO `jz_message_list` VALUES ('202', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746487', '1539746487', null);
INSERT INTO `jz_message_list` VALUES ('203', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746543', '1539746543', null);
INSERT INTO `jz_message_list` VALUES ('204', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746561', '1539746561', null);
INSERT INTO `jz_message_list` VALUES ('205', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746620', '1539746620', null);
INSERT INTO `jz_message_list` VALUES ('206', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746624', '1539746624', null);
INSERT INTO `jz_message_list` VALUES ('207', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746837', '1539746837', null);
INSERT INTO `jz_message_list` VALUES ('208', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746841', '1539746841', null);
INSERT INTO `jz_message_list` VALUES ('209', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746844', '1539746844', null);
INSERT INTO `jz_message_list` VALUES ('210', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746846', '1539746846', null);
INSERT INTO `jz_message_list` VALUES ('211', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746848', '1539746848', null);
INSERT INTO `jz_message_list` VALUES ('212', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746851', '1539746851', null);
INSERT INTO `jz_message_list` VALUES ('213', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539746914', '1539746914', null);
INSERT INTO `jz_message_list` VALUES ('214', '=-=', 'you can you up, no can no bb', '1', 'notice', '1539747266', '1539747266', null);
INSERT INTO `jz_message_list` VALUES ('215', '=-=', 'you can you up, no can no bb', '1', 'notice', '1539747269', '1539747269', null);
INSERT INTO `jz_message_list` VALUES ('216', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539747285', '1539747285', null);
INSERT INTO `jz_message_list` VALUES ('217', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539747289', '1539747289', null);
INSERT INTO `jz_message_list` VALUES ('218', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756159', '1539756159', null);
INSERT INTO `jz_message_list` VALUES ('219', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756163', '1539756163', null);
INSERT INTO `jz_message_list` VALUES ('220', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756220', '1539756220', null);
INSERT INTO `jz_message_list` VALUES ('221', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756236', '1539756236', null);
INSERT INTO `jz_message_list` VALUES ('222', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756295', '1539756295', null);
INSERT INTO `jz_message_list` VALUES ('223', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756310', '1539756310', null);
INSERT INTO `jz_message_list` VALUES ('224', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756318', '1539756318', null);
INSERT INTO `jz_message_list` VALUES ('225', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756350', '1539756350', null);
INSERT INTO `jz_message_list` VALUES ('226', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539756966', '1539756966', null);
INSERT INTO `jz_message_list` VALUES ('227', '待办流程', '待办流程', '46', 'audit', '1539757064', '1539757064', null);
INSERT INTO `jz_message_list` VALUES ('228', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757063', '1539757063', null);
INSERT INTO `jz_message_list` VALUES ('229', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757197', '1539757197', null);
INSERT INTO `jz_message_list` VALUES ('230', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757213', '1539757213', null);
INSERT INTO `jz_message_list` VALUES ('231', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757217', '1539757217', null);
INSERT INTO `jz_message_list` VALUES ('232', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757228', '1539757228', null);
INSERT INTO `jz_message_list` VALUES ('233', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757274', '1539757274', null);
INSERT INTO `jz_message_list` VALUES ('234', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757297', '1539757297', null);
INSERT INTO `jz_message_list` VALUES ('235', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757300', '1539757300', null);
INSERT INTO `jz_message_list` VALUES ('236', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757309', '1539757309', null);
INSERT INTO `jz_message_list` VALUES ('237', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757326', '1539757326', null);
INSERT INTO `jz_message_list` VALUES ('238', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757339', '1539757339', null);
INSERT INTO `jz_message_list` VALUES ('239', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757426', '1539757426', null);
INSERT INTO `jz_message_list` VALUES ('240', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757431', '1539757431', null);
INSERT INTO `jz_message_list` VALUES ('241', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757451', '1539757451', null);
INSERT INTO `jz_message_list` VALUES ('242', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757528', '1539757528', null);
INSERT INTO `jz_message_list` VALUES ('243', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757535', '1539757535', null);
INSERT INTO `jz_message_list` VALUES ('244', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757542', '1539757542', null);
INSERT INTO `jz_message_list` VALUES ('245', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757736', '1539757736', null);
INSERT INTO `jz_message_list` VALUES ('246', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757786', '1539757786', null);
INSERT INTO `jz_message_list` VALUES ('247', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757794', '1539757794', null);
INSERT INTO `jz_message_list` VALUES ('248', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757817', '1539757817', null);
INSERT INTO `jz_message_list` VALUES ('249', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757901', '1539757901', null);
INSERT INTO `jz_message_list` VALUES ('250', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757940', '1539757940', null);
INSERT INTO `jz_message_list` VALUES ('251', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539757996', '1539757996', null);
INSERT INTO `jz_message_list` VALUES ('252', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539758015', '1539758015', null);
INSERT INTO `jz_message_list` VALUES ('253', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539758045', '1539758045', null);
INSERT INTO `jz_message_list` VALUES ('254', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539758045', '1539758045', null);
INSERT INTO `jz_message_list` VALUES ('255', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539758045', '1539758045', null);
INSERT INTO `jz_message_list` VALUES ('256', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539758045', '1539758045', null);
INSERT INTO `jz_message_list` VALUES ('257', '待办流程', '待办流程', '45', 'audit', '1539760942', '1539760942', null);
INSERT INTO `jz_message_list` VALUES ('258', '待办流程', '待办流程', '45', 'audit', '1539761459', '1539761459', null);
INSERT INTO `jz_message_list` VALUES ('265', '待办流程', '待办流程', '45', 'audit', '1539763347', '1539763347', null);
INSERT INTO `jz_message_list` VALUES ('268', '待办流程', '待办流程', '48', 'audit', '1539765536', '1539765536', null);
INSERT INTO `jz_message_list` VALUES ('269', '待办流程', '待办流程', '48', 'audit', '1539765542', '1539765542', null);
INSERT INTO `jz_message_list` VALUES ('270', '待办流程', '待办流程', '48', 'audit', '1539765614', '1539765614', null);
INSERT INTO `jz_message_list` VALUES ('271', '待办流程', '待办流程', '48', 'audit', '1539765617', '1539765617', null);
INSERT INTO `jz_message_list` VALUES ('272', '待办流程', '待办流程', '45', 'audit', '1539767434', '1539767434', null);
INSERT INTO `jz_message_list` VALUES ('273', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539767546', '1539767546', null);
INSERT INTO `jz_message_list` VALUES ('274', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539767563', '1539767563', null);
INSERT INTO `jz_message_list` VALUES ('275', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539767573', '1539767573', null);
INSERT INTO `jz_message_list` VALUES ('276', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539767842', '1539767842', null);
INSERT INTO `jz_message_list` VALUES ('277', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539767917', '1539767917', null);
INSERT INTO `jz_message_list` VALUES ('278', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539767920', '1539767920', null);
INSERT INTO `jz_message_list` VALUES ('279', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539767928', '1539767928', null);
INSERT INTO `jz_message_list` VALUES ('282', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539827182', '1539827182', null);
INSERT INTO `jz_message_list` VALUES ('283', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539827213', '1539827213', null);
INSERT INTO `jz_message_list` VALUES ('284', '待办流程', '待办流程', '72', 'audit', '1539834357', '1539834357', null);
INSERT INTO `jz_message_list` VALUES ('285', '待办流程', '待办流程', '72', 'audit', '1539834597', '1539834597', null);
INSERT INTO `jz_message_list` VALUES ('286', '待办流程', '待办流程', '72', 'audit', '1539834856', '1539834856', null);
INSERT INTO `jz_message_list` VALUES ('287', '待办流程', '待办流程', '72', 'audit', '1539841250', '1539841250', null);
INSERT INTO `jz_message_list` VALUES ('288', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539841857', '1539841857', null);
INSERT INTO `jz_message_list` VALUES ('289', '待办流程', '待办流程', '72', 'audit', '1539842555', '1539842555', null);
INSERT INTO `jz_message_list` VALUES ('290', '待办流程', '待办流程', '72', 'audit', '1539842566', '1539842566', null);
INSERT INTO `jz_message_list` VALUES ('291', '待办流程', '待办流程', '72', 'audit', '1539842578', '1539842578', null);
INSERT INTO `jz_message_list` VALUES ('292', '待办流程', '待办流程', '72', 'audit', '1539843168', '1539843168', null);
INSERT INTO `jz_message_list` VALUES ('293', '待办流程', '待办流程', '72', 'audit', '1539843174', '1539843174', null);
INSERT INTO `jz_message_list` VALUES ('294', '待办流程', '待办流程', '72', 'audit', '1539843179', '1539843179', null);
INSERT INTO `jz_message_list` VALUES ('295', '待办流程', '待办流程', '72', 'audit', '1539843185', '1539843185', null);
INSERT INTO `jz_message_list` VALUES ('296', '待办流程', '待办流程', '72', 'audit', '1539843696', '1539843696', null);
INSERT INTO `jz_message_list` VALUES ('297', '待办流程', '待办流程', '72', 'audit', '1539843705', '1539843705', null);
INSERT INTO `jz_message_list` VALUES ('298', '待办流程', '待办流程', '72', 'audit', '1539843932', '1539843932', null);
INSERT INTO `jz_message_list` VALUES ('299', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539849601', '1539849601', null);
INSERT INTO `jz_message_list` VALUES ('300', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852421', '1539852421', null);
INSERT INTO `jz_message_list` VALUES ('301', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852519', '1539852519', null);
INSERT INTO `jz_message_list` VALUES ('302', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852663', '1539852663', null);
INSERT INTO `jz_message_list` VALUES ('303', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852665', '1539852665', null);
INSERT INTO `jz_message_list` VALUES ('304', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852668', '1539852668', null);
INSERT INTO `jz_message_list` VALUES ('305', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852671', '1539852671', null);
INSERT INTO `jz_message_list` VALUES ('306', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852708', '1539852708', null);
INSERT INTO `jz_message_list` VALUES ('307', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852752', '1539852752', null);
INSERT INTO `jz_message_list` VALUES ('308', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852923', '1539852923', null);
INSERT INTO `jz_message_list` VALUES ('309', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852945', '1539852945', null);
INSERT INTO `jz_message_list` VALUES ('310', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852949', '1539852949', null);
INSERT INTO `jz_message_list` VALUES ('311', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539852998', '1539852998', null);
INSERT INTO `jz_message_list` VALUES ('312', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539853002', '1539853002', null);
INSERT INTO `jz_message_list` VALUES ('313', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539853051', '1539853051', null);
INSERT INTO `jz_message_list` VALUES ('314', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539853054', '1539853054', null);
INSERT INTO `jz_message_list` VALUES ('315', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539853059', '1539853059', null);
INSERT INTO `jz_message_list` VALUES ('316', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539855175', '1539855175', null);
INSERT INTO `jz_message_list` VALUES ('317', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539855180', '1539855180', null);
INSERT INTO `jz_message_list` VALUES ('318', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539855183', '1539855183', null);
INSERT INTO `jz_message_list` VALUES ('319', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539911471', '1539911471', null);
INSERT INTO `jz_message_list` VALUES ('320', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539911566', '1539911566', null);
INSERT INTO `jz_message_list` VALUES ('321', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539911572', '1539911572', null);
INSERT INTO `jz_message_list` VALUES ('322', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539911575', '1539911575', null);
INSERT INTO `jz_message_list` VALUES ('323', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539911581', '1539911581', null);
INSERT INTO `jz_message_list` VALUES ('326', '待办流程', '待办流程', '72', 'audit', '1539912340', '1539912340', null);
INSERT INTO `jz_message_list` VALUES ('327', '待办流程', '待办流程', '72', 'audit', '1539912383', '1539912383', null);
INSERT INTO `jz_message_list` VALUES ('328', '待办流程', '待办流程', '72', 'audit', '1539914807', '1539914807', null);
INSERT INTO `jz_message_list` VALUES ('329', '待办流程', '待办流程', '72', 'audit', '1539916716', '1539916716', null);
INSERT INTO `jz_message_list` VALUES ('330', '待办流程', '待办流程', '72', 'audit', '1539916771', '1539916771', null);
INSERT INTO `jz_message_list` VALUES ('331', '待办流程', '待办流程', '72', 'audit', '1539917516', '1539917516', null);
INSERT INTO `jz_message_list` VALUES ('332', '待办流程', '待办流程', '72', 'audit', '1539919622', '1539919622', null);
INSERT INTO `jz_message_list` VALUES ('333', '待办流程', '待办流程', '72', 'audit', '1539919722', '1539919722', null);
INSERT INTO `jz_message_list` VALUES ('334', '待办流程', '待办流程', '72', 'audit', '1539919796', '1539919796', null);
INSERT INTO `jz_message_list` VALUES ('335', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539919855', '1539919855', null);
INSERT INTO `jz_message_list` VALUES ('336', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539920539', '1539920539', null);
INSERT INTO `jz_message_list` VALUES ('337', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539920734', '1539920734', null);
INSERT INTO `jz_message_list` VALUES ('338', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539920788', '1539920788', null);
INSERT INTO `jz_message_list` VALUES ('339', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539921161', '1539921161', null);
INSERT INTO `jz_message_list` VALUES ('340', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539922072', '1539922072', null);
INSERT INTO `jz_message_list` VALUES ('341', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539922389', '1539922389', null);
INSERT INTO `jz_message_list` VALUES ('342', '待办流程', '待办流程', '72', 'audit', '1539922467', '1539922467', null);
INSERT INTO `jz_message_list` VALUES ('343', '待办流程', '待办流程', '72', 'audit', '1539922492', '1539922492', null);
INSERT INTO `jz_message_list` VALUES ('344', '待办流程', '待办流程', '72', 'audit', '1539922510', '1539922510', null);
INSERT INTO `jz_message_list` VALUES ('345', '待办流程', '待办流程', '72', 'audit', '1539922550', '1539922550', null);
INSERT INTO `jz_message_list` VALUES ('346', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539927398', '1539927398', null);
INSERT INTO `jz_message_list` VALUES ('347', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539927484', '1539927484', null);
INSERT INTO `jz_message_list` VALUES ('348', '待办流程', '待办流程', '72', 'audit', '1539936953', '1539936953', null);
INSERT INTO `jz_message_list` VALUES ('349', '待办流程', '待办流程', '72', 'audit', '1539937881', '1539937881', null);
INSERT INTO `jz_message_list` VALUES ('350', '待办流程', '待办流程', '48', 'audit', '1539938529', '1539938529', null);
INSERT INTO `jz_message_list` VALUES ('351', '待办流程', '待办流程', '48', 'audit', '1539938579', '1539938579', null);
INSERT INTO `jz_message_list` VALUES ('352', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539938879', '1539938879', null);
INSERT INTO `jz_message_list` VALUES ('353', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539938969', '1539938969', null);
INSERT INTO `jz_message_list` VALUES ('354', '=-=', 'you can you up, no can no bb', '51', 'notice', '1539938974', '1539938974', null);
INSERT INTO `jz_message_list` VALUES ('355', '待办流程', '待办流程', '48', 'audit', '1539938886', '1539938886', null);
INSERT INTO `jz_message_list` VALUES ('356', '待办流程', '待办流程', '48', 'audit', '1539938903', '1539938903', null);
INSERT INTO `jz_message_list` VALUES ('359', '待办流程', '待办流程', '48', 'audit', '1539939038', '1539939038', null);
INSERT INTO `jz_message_list` VALUES ('360', '待办流程', '待办流程', '48', 'audit', '1539939055', '1539939055', null);
INSERT INTO `jz_message_list` VALUES ('361', '待办流程', '待办流程', '46', 'audit', '1539939306', '1539939306', null);

-- ----------------------------
-- Table structure for jz_notice
-- ----------------------------
DROP TABLE IF EXISTS `jz_notice`;
CREATE TABLE `jz_notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(25) NOT NULL COMMENT '公告标题',
  `notice_type` tinyint(1) NOT NULL COMMENT '公告类型',
  `notice_describe` varchar(255) NOT NULL COMMENT '公告描述',
  `notice_note` varchar(255) NOT NULL COMMENT '公告详情',
  `notice_user` int(11) NOT NULL COMMENT '制单人',
  `notice_receive` varchar(255) NOT NULL COMMENT '接收人',
  `notice_file` varchar(25) DEFAULT NULL COMMENT '附件',
  `notice_time` int(11) NOT NULL COMMENT '公告时间',
  `notice_status` int(11) NOT NULL DEFAULT '0' COMMENT '公告状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='//公告';

-- ----------------------------
-- Records of jz_notice
-- ----------------------------
INSERT INTO `jz_notice` VALUES ('1', '测试公告', '67', '测试公告', '测试公告测试公告测试公告', '48', '46,51,48,81,72,43,1,45,52,42,44', '', '1539832602', '0', '1539832649', '1539835261', '1539835261');
INSERT INTO `jz_notice` VALUES ('2', '公告', '67', '公告公告', '公告公告公告公告', '48', '46,48,51,81,72,43,1,45,52', '', '1539836050', '1', '1539836064', '1539836064', null);
INSERT INTO `jz_notice` VALUES ('3', '通知公告', '67', '通知公告通知公告通知公告', '通知公告通知公告通知公告通知公告', '48', '51,46,72,81,48', '', '1539836256', '1', '1539836266', '1539836266', null);

-- ----------------------------
-- Table structure for jz_personnel_base
-- ----------------------------
DROP TABLE IF EXISTS `jz_personnel_base`;
CREATE TABLE `jz_personnel_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '10',
  `coding` varchar(30) DEFAULT NULL COMMENT '编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_personnel_base
-- ----------------------------
INSERT INTO `jz_personnel_base` VALUES ('1', '政治面貌', '0', '1', 'political_status');
INSERT INTO `jz_personnel_base` VALUES ('2', '婚姻状况', '0', '1', 'marital_status');
INSERT INTO `jz_personnel_base` VALUES ('4', '户口类型', '0', '1', 'account_types');
INSERT INTO `jz_personnel_base` VALUES ('5', '员工类型', '0', '1', 'employee_type');
INSERT INTO `jz_personnel_base` VALUES ('6', '职称', '0', '1', 'job_title');
INSERT INTO `jz_personnel_base` VALUES ('7', '岗位', '0', '1', 'post');
INSERT INTO `jz_personnel_base` VALUES ('8', '学历', '0', '1', 'highest_education');
INSERT INTO `jz_personnel_base` VALUES ('17', '学位', '0', '1', 'highest_degree');
INSERT INTO `jz_personnel_base` VALUES ('27', '岗位级别', '0', '1', 'job_level');
INSERT INTO `jz_personnel_base` VALUES ('28', '职称级别', '0', '1', 'title_level');
INSERT INTO `jz_personnel_base` VALUES ('31', 'test', '29', '1', '1');
INSERT INTO `jz_personnel_base` VALUES ('68', '党员', '1', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('69', '民主党派', '1', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('71', '未婚', '2', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('72', '已婚', '2', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('73', '离异', '2', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('74', '丧偶', '2', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('75', '固定期限劳动合同', '3', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('76', '无固定期限劳动合同', '3', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('77', '劳务派遣合同', '3', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('78', '非全日制用工合同', '3', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('79', '本地城镇居民', '4', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('80', '外埠城镇居民', '4', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('81', '本地农村户口', '4', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('82', '外地农村户口', '4', '0', '');
INSERT INTO `jz_personnel_base` VALUES ('90', '临时工', '5', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('91', '合同工', '5', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('92', '正式员工', '5', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('93', '工程师', '6', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('94', '高级工程师', '6', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('95', '助理工程师', '6', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('96', '经济师', '6', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('97', '高级经济师', '6', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('98', '助理经济师', '6', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('99', '管理', '7', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('100', '专业技术', '7', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('101', '工勤技能', '7', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('102', '小学', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('103', '初中', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('104', '中专', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('105', '高中', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('106', '大专', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('107', '本科', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('108', '硕士', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('109', '博士', '8', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('110', '节日福利', '10', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('111', '生日福利', '10', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('112', '无故旷工', '10', '101', '');
INSERT INTO `jz_personnel_base` VALUES ('113', '全勤奖励', '10', '101', '');
INSERT INTO `jz_personnel_base` VALUES ('114', '慰问', '11', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('115', '惩罚', '11', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('116', '奖励', '11', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('117', '身份证', '12', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('118', '毕业证', '12', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('119', '生日关怀', '13', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('120', '节日关怀', '13', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('121', '平调', '14', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('122', '晋升', '14', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('123', '降职', '14', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('124', '金耀科技', '15', '10', 'company_name');
INSERT INTO `jz_personnel_base` VALUES ('125', '学士', '17', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('126', '博士', '17', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('127', '硕士', '17', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('128', '评分项', '19', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('129', '计算项', '19', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('130', '合并项', '19', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('131', '评分项(扣分)', '19', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('132', '自评', '20', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('133', '领导评', '20', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('134', '指定人评', '20', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('135', '男', '24', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('136', '女', '24', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('137', '辞退', '25', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('138', '辞职', '25', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('139', '退休', '25', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('140', '病退', '25', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('141', '自动离职', '25', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('142', '另外找到工作', '26', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('143', '无法胜任工作', '26', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('144', '身体原因', '26', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('145', '年龄到期', '26', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('146', '共青团员', '1', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('151', '群众', '1', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('155', 'test1', '27', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('156', 'test2', '27', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('157', 'test3', '27', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('158', '呵呵', '28', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('159', '嘿嘿', '28', '10', '');
INSERT INTO `jz_personnel_base` VALUES ('160', '哈哈', '28', '10', '');

-- ----------------------------
-- Table structure for jz_personnel_user_basic
-- ----------------------------
DROP TABLE IF EXISTS `jz_personnel_user_basic`;
CREATE TABLE `jz_personnel_user_basic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `openid` varchar(50) DEFAULT '',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `sex` tinyint(1) unsigned DEFAULT '0' COMMENT ' 0 男 1女',
  `birth` int(11) unsigned DEFAULT NULL COMMENT '生日',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '职位id',
  `position_group` int(11) DEFAULT NULL COMMENT '部门职位表关联id',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  `days` smallint(4) unsigned NOT NULL DEFAULT '0' COMMENT '当月连续签到天数',
  `sign_days` smallint(4) unsigned DEFAULT NULL COMMENT '签到的天数',
  `is_on` tinyint(2) unsigned DEFAULT NULL COMMENT '定编 0 在职 1 缺职 2 超编 3 兼职 4',
  `job_number` int(11) DEFAULT NULL COMMENT '工号',
  `login_set` int(1) DEFAULT NULL COMMENT '登录设置（什么方式登录，是否允许登录) 1密码2令牌3禁止登陆',
  `direct_superior` int(11) DEFAULT NULL COMMENT '直接上级',
  `recordid` int(11) DEFAULT NULL COMMENT '档案关联id',
  `order` int(11) DEFAULT NULL COMMENT '显示顺序',
  `work_phone` varchar(20) DEFAULT NULL COMMENT '工作电话',
  `home_telephone` varchar(20) DEFAULT NULL COMMENT '家庭电话',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ',
  `address` varchar(50) DEFAULT NULL COMMENT '出生日期',
  `Job_scheduling` int(1) DEFAULT NULL COMMENT '工作排班 1早班 2 晚班',
  `date_of_birth` int(11) DEFAULT NULL COMMENT '出生日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of jz_personnel_user_basic
-- ----------------------------
INSERT INTO `jz_personnel_user_basic` VALUES ('1', 'admin', '超级管理员', 'onaBNwnrFBrKrICadnPCoaXpAa90', '$2y$10$kTs..4l84k6Fi3Xln0lx4ebt3etqxjw74WHqOg0jF7r.nJIxHKX2C', '498484537@qq.com', '0', '18279021641', '0', '287', '1', '1516090174', '0.00', '0', '0', '1', '1', '5', '0', '0', '1539911751', '1539911751', '2130706433', '100', '1', '1', '10', '0', '112112', '2', '1', '1', '10', '18279021654', '2423424242', '1', '1', '1', '222710400');
INSERT INTO `jz_personnel_user_basic` VALUES ('42', 'zs', '张三', '', '$2y$10$cwGzf2UZhqKSgwSrclCGYei84i45lHUAQouSJ0WFa65NMKts/sqc2', '', '0', '', '0', '0', '1', null, '0.00', '0', '1', '0', null, '8', '0', '0', '1539759218', '1537495356', '2130706433', '100', '1', '0', null, null, '0', '1', '45', null, '0', '', '', '', '', '0', '1537459200');
INSERT INTO `jz_personnel_user_basic` VALUES ('43', 'wzj', '小王', '', '$2y$10$3X2JzT5J0CWlpOBp/YN8kuEuwhX7SFPrbEYG8xAlHufz.s5ERIgAW', '', '0', '17346676450', '0', '0', '0', null, '0.00', '0', '1', '0', null, '4', '0', '0', '1539759224', '1539676686', '2130706433', '100', '1', '0', null, null, '0', '1', '45', null, '0', '', '', '', '', '0', '1537459200');
INSERT INTO `jz_personnel_user_basic` VALUES ('44', 'ww', '王五', '', '$2y$10$CSuhPDuuwclUD4Bs1Pbnh.54vHVlg.ymXNOITap28y0gojtgLzesm', '', '0', '', '0', '0', '0', null, '0.00', '0', '1', '0', null, '7', '0', '0', '1539759233', '1537495536', '2130706433', '100', '1', '0', null, null, '0', '1', '0', null, '0', '', '', '', '', '0', '1537459200');
INSERT INTO `jz_personnel_user_basic` VALUES ('45', '18679199741', '贺建平', '', '$2y$10$a86PNr.tP0/zxXuSHP.57.X1fZAeME2dSsdUmVHt960cR04xChkLy', '957547207@qq.com', '0', '18679199741', '0', '0', '0', null, '0.00', '0', '1', '0', null, '5', '0', '0', '1539759239', '1539743358', '2130706433', '100', '1', '0', null, null, '7', '1', '0', null, '1', '', '', '', '', '0', '1253462400');
INSERT INTO `jz_personnel_user_basic` VALUES ('46', 'liuchen', '刘晨', '', '$2y$10$FIPdLlr9qeR9xxRL3fVqVOs6KasBjrWBO57ktlt95htT6WzYxryWK', '', '0', '15270894381', '0', '0', '0', null, '0.00', '0', '1', '0', null, '9', '0', '0', '1539937017', '1539937017', '2130706433', '100', '1', '0', null, null, '0', '1', '0', null, '0', '', '', '', '', '0', '1537459200');
INSERT INTO `jz_personnel_user_basic` VALUES ('48', 'chenxiao', '陈笑', '', '$2y$10$2nDRDx6HMSD/0QoPL9j3De3GuhCc2ediLqkEd19NglXeYh4Jao0da', '', '0', '13667919872', '0', '0', '0', null, '0.00', '0', '1', '0', null, '9', '0', '0', '1539917337', '1539913013', '2130706433', '100', '1', '0', null, null, '0', '1', '0', null, '0', '', '', '', '', '0', '1537459200');
INSERT INTO `jz_personnel_user_basic` VALUES ('52', 'hjp', '贺建平2', '', '$2y$10$a86PNr.tP0/zxXuSHP.57.X1fZAeME2dSsdUmVHt960cR04xChkLy', '957547207@qq.com', '0', '18679199741', '0', '0', '0', null, '0.00', '0', '1', '0', null, '5', '0', '0', '1539759274', '1539676713', '2130706433', '100', '1', '0', null, null, '7', '1', '0', null, '1', '', '', '', '', '0', '1253462400');
INSERT INTO `jz_personnel_user_basic` VALUES ('51', 'w', '小小王', '', '$2y$10$kTs..4l84k6Fi3Xln0lx4ebt3etqxjw74WHqOg0jF7r.nJIxHKX2C', '', '0', '17346676450', '0', '0', '0', null, '0.00', '0', '0', '0', null, '9', '0', '0', '1539938905', '1539938904', '2130706433', '100', '1', '0', null, null, '0', '1', '0', null, '0', '', '', '', '', '0', '-28800');
INSERT INTO `jz_personnel_user_basic` VALUES ('81', 'test', 'test', '', '$2y$10$a4qp6S6w5JTqz9BUsY1lZuAEywMXqusVAJS094jCGQWFV1Co9pZ6O', '', '0', '', '0', '0', '0', null, '0.00', '0', '0', '0', null, '9', '0', '0', '1539759289', '1539759289', '2130706433', '100', '0', '0', null, null, '0', '1', '0', null, '0', '', '', '', '', '0', '1539532800');
INSERT INTO `jz_personnel_user_basic` VALUES ('72', 'yzf', 'yzf', '', '$2y$10$aHj6INR0CIZL20AMbkna7eQGFrXvulT./jvioDQbvdrKX9xsd56nK', '', '0', '', '0', '0', '0', null, '0.00', '0', '0', '0', null, '9', '0', '0', '1539936145', '1539936145', '2130706433', '100', '1', '0', null, null, '0', '1', '43', null, '0', '', '', '', '', '0', '1539273600');

-- ----------------------------
-- Table structure for jz_personnel_user_record
-- ----------------------------
DROP TABLE IF EXISTS `jz_personnel_user_record`;
CREATE TABLE `jz_personnel_user_record` (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT '这个就是id,因为某些原因不能与用户基础表的主键名同名，所以改为rid',
  `file_number` int(11) DEFAULT NULL COMMENT '档案编号',
  `date_on_board` int(255) DEFAULT NULL COMMENT '入职日期',
  `id_number` char(18) DEFAULT '' COMMENT '身份证号',
  `former_name` varchar(40) DEFAULT '' COMMENT '曾用名',
  `english_name` varchar(40) DEFAULT '' COMMENT '英文名',
  `marital_status` int(1) DEFAULT NULL COMMENT '婚姻状况',
  `work_date` int(11) DEFAULT NULL COMMENT '参加工作日期',
  `job_level` int(1) DEFAULT NULL COMMENT '岗位级别',
  `title_level` int(1) DEFAULT NULL COMMENT '职称级别',
  `highest_education` int(1) DEFAULT NULL COMMENT '最高学历',
  `highest_degree` int(1) DEFAULT NULL COMMENT '最高学位',
  `health_status` varchar(255) DEFAULT '' COMMENT '健康状况',
  `bank` varchar(40) DEFAULT '' COMMENT '银行',
  `social_security_card_number` char(40) DEFAULT '' COMMENT '社保卡号',
  `emergency_contact` char(20) DEFAULT '' COMMENT '紧急联系人',
  `working_state` int(1) DEFAULT NULL COMMENT '在职状态 1在职 2离职 3退休',
  `positive_date` int(11) DEFAULT NULL COMMENT '转正日期',
  `account_types` int(1) DEFAULT NULL COMMENT '户口类型',
  `famous_family` varchar(20) DEFAULT '' COMMENT '民族',
  `country_citizenship` varchar(50) DEFAULT '' COMMENT '国籍',
  `political_status` int(1) DEFAULT NULL COMMENT '政治面貌',
  `post` int(1) DEFAULT NULL COMMENT '岗位',
  `administrative_level` varchar(50) DEFAULT '' COMMENT '行政级别',
  `job_title` int(1) DEFAULT NULL COMMENT '职称',
  `graduated_school` varchar(50) DEFAULT '' COMMENT '毕业学校',
  `major` varchar(50) DEFAULT '' COMMENT '所学专业',
  `height` char(3) DEFAULT '' COMMENT '身高（cm)',
  `bank_account` char(25) DEFAULT '' COMMENT '银行账号',
  `social_security_computer_number` char(40) DEFAULT '' COMMENT '社保电脑号',
  `emergency_contact_phone` char(11) DEFAULT '' COMMENT '紧急联系人电话',
  `employee_type` int(1) DEFAULT NULL COMMENT '员工类型',
  `resignation_date` int(11) DEFAULT NULL COMMENT '离职日期',
  `account_location` varchar(50) DEFAULT '' COMMENT '户口所在地',
  `birthplace` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `passport` char(8) DEFAULT '' COMMENT '护照',
  `political_status_date` int(11) DEFAULT NULL COMMENT '政治面貌取得日期',
  `foreign_language_type` varchar(20) DEFAULT '' COMMENT '外语种类',
  `title_acquisition_date` int(11) DEFAULT NULL COMMENT '职称取得日期',
  `graduation_date` int(11) DEFAULT NULL COMMENT '毕业日期',
  `hobby` varchar(50) DEFAULT '' COMMENT '业余爱好',
  `body_weight` int(3) DEFAULT NULL COMMENT '体重(kg)',
  `provident_fund` char(12) DEFAULT '' COMMENT '公积金号',
  `salary_identification` varchar(10) DEFAULT '' COMMENT '薪资标识',
  `remarks` varchar(255) DEFAULT '' COMMENT '备注',
  `annex` varchar(30) DEFAULT NULL COMMENT '附件',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='用户档案信息表';

-- ----------------------------
-- Records of jz_personnel_user_record
-- ----------------------------
INSERT INTO `jz_personnel_user_record` VALUES ('1', '1', '1536422400', '213131', '1', '1', '3', '1536422400', '3', '1', '3', '2', '1', '112121', '1', '1', '1', '1536422400', '2', '1', '11', '2', '2', '1', '2', '1', '1', '1', '1', '1', '1', '2', '1536422400', '1313', '1', '1', '1536422400', '1', '1536422400', '-28800', '1', '1', '1', '1', 'ifuyfulugiugiuu放松放松', '215,216');
INSERT INTO `jz_personnel_user_record` VALUES ('42', '0', '1537459200', '', '', '', '0', '1537459200', '0', '0', '0', '0', '', '', '', '', '2', '1537459200', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1537459200', '', '', '', '1537459200', '', '1537459200', '1537459200', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('43', '0', '1537459200', '', '', '', '0', '1537459200', '0', '0', '0', '0', '', '', '', '', '1', '1537459200', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1537459200', '', '', '', '1537459200', '', '1537459200', '1537459200', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('44', '0', '1537459200', '', '', '', '0', '1537459200', '0', '0', '0', '0', '', '', '', '', '1', '1537459200', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1537459200', '', '', '', '1537459200', '', '1537459200', '1537459200', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('45', '0', '1537459200', '', '', '', '0', '1537459200', '0', '0', '0', '0', '', '', '', '', '1', '1537459200', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1537459200', '', '', '', '1537459200', '', '1537459200', '1537459200', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('46', '0', '1537459200', '', '', '', '0', '1537459200', '0', '0', '0', '0', '', '', '', '', '1', '1537459200', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1537459200', '', '', '', '1537459200', '', '1537459200', '1537459200', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('48', '0', '1537459200', '', '', '', '0', '1537459200', '0', '0', '0', '0', '', '', '', '', '3', '1537459200', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1537459200', '', '', '', '1537459200', '', '1537459200', '1537459200', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('51', '0', '-28800', '', '', '', '0', '-28800', '0', '0', '0', '0', '', '', '', '', '1', '-28800', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '-28800', '', '', '', '-28800', '', '-28800', '-28800', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('52', '0', '-28800', '', '', '', '0', '-28800', '0', '0', '0', '0', '', '', '', '', '1', '-28800', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '-28800', '', '', '', '-28800', '', '-28800', '-28800', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('72', '0', '1539273600', '', '', '', '0', '1539273600', '0', '0', '0', '0', '', '', '', '', '1', '1539273600', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1539273600', '', '', '', '1539273600', '', '1539273600', '1539273600', '', '0', '', '', '', '');
INSERT INTO `jz_personnel_user_record` VALUES ('81', '0', '1539532800', '', '', '', '0', '1539532800', '0', '0', '0', '0', '', '', '', '', '1', '1539532800', '0', '', '', '0', '0', '', '0', '', '', '', '', '', '', '0', '1539532800', '', '', '', '1539532800', '', '1539532800', '1539532800', '', '0', '', '', '', '');

-- ----------------------------
-- Table structure for jz_position_group
-- ----------------------------
DROP TABLE IF EXISTS `jz_position_group`;
CREATE TABLE `jz_position_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '部门id',
  `position_id` int(11) NOT NULL COMMENT '职位id',
  `number_of_people` int(11) unsigned zerofill DEFAULT '00000000000' COMMENT '定编人数',
  `user_id` varchar(50) NOT NULL COMMENT '关联的用户id，多个以逗号分隔',
  `main_position` int(11) NOT NULL DEFAULT '0' COMMENT '主职或兼职 0主职 1兼职',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `update_time` date DEFAULT NULL,
  `create_time` date DEFAULT NULL COMMENT '任职日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='部门职位';

-- ----------------------------
-- Records of jz_position_group
-- ----------------------------
INSERT INTO `jz_position_group` VALUES ('17', '4', '5', '00000000000', '46', '0', null, '2018-10-10', '2018-09-30');
INSERT INTO `jz_position_group` VALUES ('18', '5', '4', '00000000000', '47', '0', null, '2018-09-30', '2018-09-30');
INSERT INTO `jz_position_group` VALUES ('19', '8', '4', '00000000000', '48', '0', null, '2018-09-30', '2018-09-30');
INSERT INTO `jz_position_group` VALUES ('20', '11', '4', '00000000000', '43', '0', null, '2018-09-30', '2018-09-30');
INSERT INTO `jz_position_group` VALUES ('21', '4', '5', '00000000000', '42', '1', null, '2018-10-10', '2018-09-30');
INSERT INTO `jz_position_group` VALUES ('22', '4', '5', '00000000001', '45', '0', null, '2018-10-10', '2018-10-10');
INSERT INTO `jz_position_group` VALUES ('23', '11', '2', '00000000001', '52', '0', null, '2018-10-10', '2018-10-10');
INSERT INTO `jz_position_group` VALUES ('24', '5', '5', '00000000001', '45', '0', null, '2018-10-10', '2018-10-10');
INSERT INTO `jz_position_group` VALUES ('25', '9', '2', '00000000000', '51', '0', null, '2018-10-12', '2018-10-16');
INSERT INTO `jz_position_group` VALUES ('26', '9', '1', '00000000000', '54', '0', null, '2018-10-12', '2018-10-12');
INSERT INTO `jz_position_group` VALUES ('27', '8', '1', '00000000000', '1', '0', null, '2018-10-19', '2018-10-19');

-- ----------------------------
-- Table structure for jz_project_based_cost
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_based_cost`;
CREATE TABLE `jz_project_based_cost` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '材料总计划',
  `number` varchar(20) NOT NULL COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `maker` int(11) NOT NULL COMMENT '制定人',
  `date` int(11) NOT NULL COMMENT '日期',
  `obj_id` int(11) NOT NULL COMMENT '项目id',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='//物料需求计划';

-- ----------------------------
-- Records of jz_project_based_cost
-- ----------------------------
INSERT INTO `jz_project_based_cost` VALUES ('33', 'JC201809-54101', '第一次大会', '1', '1537113600', '6', '1', '1537174914', '1537235888', '1537235888');
INSERT INTO `jz_project_based_cost` VALUES ('34', 'JC201809-50525', '空间', '1', '1537113600', '8', '1', '1537175276', '1537235884', '1537235884');
INSERT INTO `jz_project_based_cost` VALUES ('35', 'JC201809-50525', '空间', '1', '1537113600', '8', '1', '1537175307', '1537411381', null);
INSERT INTO `jz_project_based_cost` VALUES ('52', 'JC201809-54494', '金耀大厦需求总计划', '1', '1537372800', '8', '1', '1537416516', '1537416516', null);
INSERT INTO `jz_project_based_cost` VALUES ('53', 'JC201809-54494', '金耀大厦需求总计划', '1', '1537372800', '8', '1', '1537416520', '1538201370', null);
INSERT INTO `jz_project_based_cost` VALUES ('54', 'JC201809-10149', '卧室', '1', '1537372800', '8', '1', '1537425274', '1537425274', null);
INSERT INTO `jz_project_based_cost` VALUES ('55', 'JC201810-51501', '123项目的物料需求计划', '46', '1539273600', '46', '1', '1539323135', '1539323135', null);
INSERT INTO `jz_project_based_cost` VALUES ('56', 'JC201810-51541', 'qwe项目的物料需求计划', '46', '1539273600', '49', '1', '1539323180', '1539323180', null);
INSERT INTO `jz_project_based_cost` VALUES ('57', 'JC201810-55995', '啊啊啊', '51', '1539705600', '5', '1', '1539765922', '1539765922', null);

-- ----------------------------
-- Table structure for jz_project_based_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_based_details`;
CREATE TABLE `jz_project_based_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '材料需要明细',
  `cost_id` int(11) NOT NULL COMMENT '总需求计划id',
  `materials_name` int(11) NOT NULL COMMENT '材料id',
  `size` varchar(100) NOT NULL COMMENT '规格型号',
  `unit` varchar(255) NOT NULL COMMENT '单位',
  `amount` varchar(255) NOT NULL COMMENT '总计划量',
  `ps` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='//物料需求计划明细';

-- ----------------------------
-- Records of jz_project_based_details
-- ----------------------------
INSERT INTO `jz_project_based_details` VALUES ('9', '35', '2', 'a', 'q', '122', '', '1537175307', '1537411381', null);
INSERT INTO `jz_project_based_details` VALUES ('10', '35', '8', '123', '123', '', '', '1537176204', '1537411381', null);
INSERT INTO `jz_project_based_details` VALUES ('11', '35', '1', 'a', 'q', '122', '', '1537176363', '1537411381', null);
INSERT INTO `jz_project_based_details` VALUES ('12', '35', '2', '123', '123', '', '', '1537176363', '1537411381', null);
INSERT INTO `jz_project_based_details` VALUES ('15', '52', '11', '1', 'z', '12', '五', '1537416516', '1537416516', null);
INSERT INTO `jz_project_based_details` VALUES ('16', '52', '10', '1', 't', '12', '无', '1537416516', '1537416516', null);
INSERT INTO `jz_project_based_details` VALUES ('17', '53', '11', '无', 'z', '12', '无', '1537416520', '1538201370', null);
INSERT INTO `jz_project_based_details` VALUES ('18', '53', '10', '无', 't', '12', '无', '1537416520', '1538201370', null);
INSERT INTO `jz_project_based_details` VALUES ('19', '55', '8', '123', '123', '100', '', '1539323135', '1539323135', null);
INSERT INTO `jz_project_based_details` VALUES ('20', '55', '5', '12', 'q', '100', '', '1539323135', '1539323135', null);
INSERT INTO `jz_project_based_details` VALUES ('21', '55', '8', '123', '123', '100', '', '1539323135', '1539323135', null);
INSERT INTO `jz_project_based_details` VALUES ('22', '56', '11', '1', 'z', '99', '', '1539323180', '1539323180', null);
INSERT INTO `jz_project_based_details` VALUES ('23', '56', '12', 'DL003号', '台', '100', '', '1539323180', '1539323180', null);
INSERT INTO `jz_project_based_details` VALUES ('24', '56', '1', '0022', 't', '100', '', '1539323180', '1539323180', null);
INSERT INTO `jz_project_based_details` VALUES ('25', '57', '1', '0022', 't', '12', '', '1539765922', '1539765922', null);

-- ----------------------------
-- Table structure for jz_project_compile_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_compile_details`;
CREATE TABLE `jz_project_compile_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_title` varchar(250) NOT NULL COMMENT '工程名称',
  `cost` varchar(255) NOT NULL COMMENT '预计成本',
  `pid` int(11) NOT NULL COMMENT '父级id',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='//成本编制详情';

-- ----------------------------
-- Records of jz_project_compile_details
-- ----------------------------
INSERT INTO `jz_project_compile_details` VALUES ('1', '金耀大厦', '1200', '3', '无', '1537259109', '1537259109', null);
INSERT INTO `jz_project_compile_details` VALUES ('2', '泳池一号', '1200', '4', '无', '1537260056', '1537260140', null);
INSERT INTO `jz_project_compile_details` VALUES ('3', '', '', '5', '', '1537340040', '1537340040', null);
INSERT INTO `jz_project_compile_details` VALUES ('4', '厕所', '1200', '5', '吖', '1537340080', '1537340080', null);
INSERT INTO `jz_project_compile_details` VALUES ('5', '席梦思9', '12000', '6', '无', '1537421817', '1537421826', null);
INSERT INTO `jz_project_compile_details` VALUES ('6', '金耀', '', '7', '', '1537492486', '1537492486', null);
INSERT INTO `jz_project_compile_details` VALUES ('7', '泳池', '12000', '8', '', '1539929830', '1539929830', null);

-- ----------------------------
-- Table structure for jz_project_cost_compile
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_cost_compile`;
CREATE TABLE `jz_project_cost_compile` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成本编制',
  `number` varchar(50) NOT NULL COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '编制名称',
  `maker` varchar(11) NOT NULL COMMENT '制定人',
  `date` int(11) NOT NULL COMMENT '日期',
  `obj_id` int(11) NOT NULL COMMENT '项目id',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='//成本编制';

-- ----------------------------
-- Records of jz_project_cost_compile
-- ----------------------------
INSERT INTO `jz_project_cost_compile` VALUES ('1', 'BZ201809-97565', '金耀泳池', '1', '1537200000', '8', '1', '1537258697', '1537259173', '1537259173');
INSERT INTO `jz_project_cost_compile` VALUES ('2', 'BZ201809-97565', '金耀泳池', '1', '1537200000', '8', '1', '1537258749', '1537259181', '1537259181');
INSERT INTO `jz_project_cost_compile` VALUES ('3', 'BZ201809-97565', '金耀泳池1号', '1', '1537200000', '8', '1', '1537259109', '1537259275', null);
INSERT INTO `jz_project_cost_compile` VALUES ('4', 'BZ201809-56495', '泳池一号', '1', '1537200000', '6', '1', '1537260056', '1537260140', null);
INSERT INTO `jz_project_cost_compile` VALUES ('5', 'BZ201809-49985', '金耀成本', '1', '1537286400', '8', '1', '1537340040', '1537340080', null);
INSERT INTO `jz_project_cost_compile` VALUES ('6', 'BZ201809-50995', '卧室成本', '1', '1537372800', '8', '1', '1537421817', '1537421826', null);
INSERT INTO `jz_project_cost_compile` VALUES ('7', 'BZ201809-54561', '金耀成本', '1', '1537459200', '8', '1', '1537492486', '1537492486', null);
INSERT INTO `jz_project_cost_compile` VALUES ('8', 'BZ201810-50525', '刘晨大项目的成本编制', '51', '1539878400', '5', '1', '1539929830', '1539929830', null);

-- ----------------------------
-- Table structure for jz_project_list
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_list`;
CREATE TABLE `jz_project_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目列表',
  `number` varchar(50) NOT NULL COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '项目名称',
  `start_time` int(11) NOT NULL COMMENT '开始日期',
  `end_time` int(11) NOT NULL COMMENT '结束日期',
  `area` varchar(255) NOT NULL COMMENT '所属区域',
  `address` varchar(255) NOT NULL COMMENT '项目地址',
  `pro_time` int(11) NOT NULL COMMENT '工期',
  `quantities` varchar(255) NOT NULL COMMENT '工程量',
  `obj_cost` varchar(255) NOT NULL COMMENT '工程造价',
  `pre_profit` varchar(255) NOT NULL COMMENT '预计利润',
  `big_const` varchar(255) NOT NULL COMMENT '工程造价金额大写',
  `obj_type` int(2) NOT NULL COMMENT '项目类型',
  `quality` varchar(20) NOT NULL COMMENT '质量等级',
  `leader` int(11) NOT NULL COMMENT '项目跟踪人',
  `part` int(11) NOT NULL COMMENT '所属部门',
  `date` int(11) NOT NULL COMMENT '日期',
  `dev_organization` varchar(200) NOT NULL COMMENT '建设单位',
  `dev_name` int(11) NOT NULL COMMENT '联系人',
  `dev_phone` varchar(11) NOT NULL COMMENT '联系人电话',
  `maker` int(11) NOT NULL COMMENT '立项人',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '状态,-1，审批失败0，审批中 1, 立项,2竣工',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='//项目列表';

-- ----------------------------
-- Records of jz_project_list
-- ----------------------------
INSERT INTO `jz_project_list` VALUES ('1', '1234', '贺建平测试', '1535558400', '1535558400', '2', '2', '0', '2', '2', '2', '2', '2', '-1', '0', '2', '1535558400', '3', '1', '2', '2', '2', '2', '22', '1536731695');
INSERT INTO `jz_project_list` VALUES ('2', '123', '王测试', '1535558400', '1535472000', '2', '2', '2', '2', '2', '2', '2', '2', '2', '0', '2', '1535472000', '2', '1', '2', '2', '2', '2', '1536734908', '1536734908');
INSERT INTO `jz_project_list` VALUES ('3', 'XM201809-55495', '刘晨的大项目1', '1536681600', '1537545600', '南昌', '新建', '2', '212', '1200000', '120000', '壹佰贰拾万', '45', '48', '43', '3', '1536681600', '3', '51', '15210755555', '0', '1', '1536720342', '1539834399', null);
INSERT INTO `jz_project_list` VALUES ('4', 'XM201809-55495', '刘晨的大项目', '1536681600', '1537545600', '南昌', '新建', '0', '212', '120000000000', '120000', '大写', '3', '5', '0', '3', '1536681600', '3', '1', '17776321', '0', '1', '1536721563', '1536731695', null);
INSERT INTO `jz_project_list` VALUES ('5', 'XM201809-55495', '刘晨的大项目5', '1536681600', '1537545600', '南昌', '新建', '0', '212', '120000000000', '120000', '大写', '3', '5', '0', '3', '1536681600', '3', '1', '17776321', '0', '1', '1536721568', '1536731695', null);
INSERT INTO `jz_project_list` VALUES ('60', 'XM201810-57541', '12', '1539619200', '1540569600', '123123', '123123', '13123', '12312312', '12312312', '3123', '壹仟贰佰叁拾壹万贰仟叁佰壹拾贰圆', '44', '47', '72', '8', '1538409600', '1231231', '45', '15879845874', '72', '-1', '1539834597', '1539834597', null);
INSERT INTO `jz_project_list` VALUES ('61', 'XM201810-50975', '777', '1539792000', '1539878400', '777', '777', '77', '77', '777', '77', '柒佰柒拾柒圆', '44', '47', '43', '8', '1539792000', '777', '43', '18679199741', '45', '0', '1539849472', '1539849472', null);
INSERT INTO `jz_project_list` VALUES ('62', 'XM201810-50975', '7777', '1539792000', '1539878400', '777', '777', '77', '77', '777', '77', '柒佰柒拾柒圆', '44', '47', '43', '8', '1539792000', '777', '43', '18679199741', '45', '0', '1539849531', '1539849531', null);
INSERT INTO `jz_project_list` VALUES ('63', 'XM201810-50975', '77771', '1539792000', '1539878400', '777', '777', '77', '77', '777', '77', '柒佰柒拾柒圆', '44', '47', '43', '8', '1539792000', '777', '43', '18679199741', '45', '0', '1539849545', '1539849545', null);
INSERT INTO `jz_project_list` VALUES ('64', 'XM201810-50975', '777711', '1539792000', '1539878400', '777', '777', '77', '77', '777', '77', '柒佰柒拾柒圆', '44', '47', '43', '8', '1539792000', '777', '43', '18679199741', '45', '1', '1539849594', '1539849594', null);

-- ----------------------------
-- Table structure for jz_project_progress_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_progress_details`;
CREATE TABLE `jz_project_progress_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_title` varchar(255) NOT NULL COMMENT '工程名称',
  `start_time` varchar(11) NOT NULL COMMENT '开始时间',
  `end_time` varchar(11) NOT NULL COMMENT '结束时间',
  `pid` int(11) NOT NULL COMMENT '父级id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `amount` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='//项目进度明细';

-- ----------------------------
-- Records of jz_project_progress_details
-- ----------------------------
INSERT INTO `jz_project_progress_details` VALUES ('1', '测试数据啦', '2018-08-29', '2018-08-29', '15', null, '', '', '1537242183', '1539322999', null);
INSERT INTO `jz_project_progress_details` VALUES ('2', '测试', '2018-08-29', '2018-08-29', '15', null, '', '', '1537242356', '1539322999', null);
INSERT INTO `jz_project_progress_details` VALUES ('9', '大泳池1号', '2018-09-18', '2018-09-19', '22', null, '20', 'm2', '1537254040', '1539915005', null);
INSERT INTO `jz_project_progress_details` VALUES ('10', '卡丁车馆1号', '2018-09-18', '2018-09-19', '22', null, '500', 'm2', '1537254040', '1539915005', null);
INSERT INTO `jz_project_progress_details` VALUES ('11', '大泳池2号', '2018-09-18', '2018-09-19', '22', null, '700', 'm2', '1537255194', '1539915005', null);
INSERT INTO `jz_project_progress_details` VALUES ('12', '厕所', '2018-09-20', '2018-09-22', '23', null, '', '', '1537407843', '1539236597', null);
INSERT INTO `jz_project_progress_details` VALUES ('13', '测试', '2018-08-29', '2018-08-29', '15', null, '1000', '', '1539322999', '1539322999', null);
INSERT INTO `jz_project_progress_details` VALUES ('14', '', '', '2018-10-16', '24', null, '', '', '1539652230', '1539652230', null);

-- ----------------------------
-- Table structure for jz_project_progress_plan
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_progress_plan`;
CREATE TABLE `jz_project_progress_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目进度计划',
  `number` varchar(20) NOT NULL COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '计划名称',
  `maker` int(11) NOT NULL COMMENT '制定人',
  `date` int(11) NOT NULL COMMENT '日期',
  `obj_id` int(11) NOT NULL COMMENT '项目名称',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='//项目进度计划';

-- ----------------------------
-- Records of jz_project_progress_plan
-- ----------------------------
INSERT INTO `jz_project_progress_plan` VALUES ('15', 'JD201809-51485', '金耀大厦进度', '1', '1537459200', '3', '1', '1537242183', '1539322999', null);
INSERT INTO `jz_project_progress_plan` VALUES ('22', 'JD201809-10299', '金耀游乐场1号工程', '1', '1537200000', '4', '1', '1537254040', '1539915005', null);
INSERT INTO `jz_project_progress_plan` VALUES ('23', 'JD201809-52100', '金耀大厦', '1', '1537372800', '4', '1', '1537407843', '1539236597', null);
INSERT INTO `jz_project_progress_plan` VALUES ('24', 'JD201810-53974', '12', '51', '1539619200', '47', '1', '1539652230', '1539652237', '1539652237');

-- ----------------------------
-- Table structure for jz_project_quality
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_quality`;
CREATE TABLE `jz_project_quality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `zid` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_project_quality
-- ----------------------------
INSERT INTO `jz_project_quality` VALUES ('1', '21', '12', '1536638656', '1536638656', null);
INSERT INTO `jz_project_quality` VALUES ('2', '21', '12', '1536638656', '1536638656', null);
INSERT INTO `jz_project_quality` VALUES ('3', '21', '12', '1536638726', '1536638726', null);
INSERT INTO `jz_project_quality` VALUES ('4', '21', '12', '1536638726', '1536638726', null);

-- ----------------------------
-- Table structure for jz_project_type
-- ----------------------------
DROP TABLE IF EXISTS `jz_project_type`;
CREATE TABLE `jz_project_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目类型',
  `title` varchar(255) NOT NULL COMMENT '类型名称',
  `zid` int(10) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_project_type
-- ----------------------------
INSERT INTO `jz_project_type` VALUES ('1', '12', '0', '1536548774', '1536558746', '1536558746');
INSERT INTO `jz_project_type` VALUES ('2', '类型一', '12', '1536548872', '1536548872', null);
INSERT INTO `jz_project_type` VALUES ('3', '类型二', '12', '1536562452', '1536562452', null);

-- ----------------------------
-- Table structure for jz_purchase_condetails
-- ----------------------------
DROP TABLE IF EXISTS `jz_purchase_condetails`;
CREATE TABLE `jz_purchase_condetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` int(11) NOT NULL COMMENT '材料名称',
  `size` varchar(25) NOT NULL COMMENT '规格型号',
  `units` varchar(25) NOT NULL COMMENT '单位',
  `amount` int(11) DEFAULT NULL COMMENT '采购数量',
  `prince` double(50,2) DEFAULT '0.00' COMMENT '采购价格',
  `sum` double(50,2) DEFAULT '0.00' COMMENT '小计',
  `con_id` int(11) DEFAULT NULL COMMENT '合同ID',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//合同材料明细';

-- ----------------------------
-- Records of jz_purchase_condetails
-- ----------------------------
INSERT INTO `jz_purchase_condetails` VALUES ('1', '7', 'a', 'q', '1000', '100.00', null, '1', '1537323449', '1537323449', null);
INSERT INTO `jz_purchase_condetails` VALUES ('2', '5', '12', 'q', '1000', '100.00', null, '1', '1537323449', '1537323449', null);

-- ----------------------------
-- Table structure for jz_purchase_contract
-- ----------------------------
DROP TABLE IF EXISTS `jz_purchase_contract`;
CREATE TABLE `jz_purchase_contract` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '合同编号',
  `name` varchar(255) NOT NULL COMMENT '合同名称',
  `contract_type` varchar(255) NOT NULL COMMENT '合同类型',
  `contract_money` decimal(65,2) NOT NULL COMMENT '合同金额',
  `maker` int(11) NOT NULL COMMENT '签订人',
  `big_money` text NOT NULL COMMENT '合同金额大写',
  `obj_id` int(11) NOT NULL COMMENT '项目ID',
  `app_id` int(11) DEFAULT NULL COMMENT '申请人ID',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `pay_type` int(1) NOT NULL COMMENT '付款方式',
  `clear_type` int(1) NOT NULL COMMENT '结算方式',
  `pre_money` decimal(65,2) DEFAULT NULL COMMENT '预付款',
  `bail` decimal(65,2) DEFAULT NULL COMMENT '保证金',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商',
  `date` int(11) DEFAULT NULL COMMENT '日期',
  `file` varchar(25) DEFAULT NULL COMMENT '附件Id',
  `condition` varchar(255) NOT NULL COMMENT '付款条件',
  `item` varchar(255) NOT NULL COMMENT '主要条款',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `det_id` int(11) DEFAULT NULL COMMENT '明细ID',
  `all_sum` decimal(65,2) DEFAULT NULL COMMENT '材料总计',
  `big_sum` text COMMENT '材料总计大写',
  `count` int(11) DEFAULT '0' COMMENT '明细条数',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//物资采购合同';

-- ----------------------------
-- Records of jz_purchase_contract
-- ----------------------------
INSERT INTO `jz_purchase_contract` VALUES ('1', 'CGHT201809-97575', '金耀大厦物资采购合同', '0', '200000.00', '1', '贰拾万', '8', null, '1538236800', '1540915200', '1', '1', '12345.00', '123456.00', '17', '1537286400', '', '大厦完成', '大厦完成', '', null, '200000.00', '贰拾万整', '22', '0', '1537323449', '1537323449', null);

-- ----------------------------
-- Table structure for jz_purchase_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_purchase_details`;
CREATE TABLE `jz_purchase_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` int(11) DEFAULT NULL COMMENT '材料名',
  `size` varchar(25) DEFAULT NULL COMMENT '规格型号',
  `measuring` varchar(25) DEFAULT NULL COMMENT '计量单位',
  `amout` varchar(25) DEFAULT NULL COMMENT '估算量',
  `unit` varchar(25) DEFAULT NULL COMMENT '采购单位',
  `mdate` varchar(25) DEFAULT NULL COMMENT '采购时间',
  `place` varchar(25) DEFAULT NULL COMMENT '采购地点',
  `suppliers` varchar(255) DEFAULT NULL COMMENT '供应商',
  `plan_id` int(11) DEFAULT NULL COMMENT '采购计划ID',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL COMMENT '软删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='//采购计划明细表';

-- ----------------------------
-- Records of jz_purchase_details
-- ----------------------------
INSERT INTO `jz_purchase_details` VALUES ('1', '5', '12', 'q', '1000', '施工部', '1537977600', '江西', '将嘻嘻嘻嘻，信息化可', '16', '1537322976', '1537322976', null);
INSERT INTO `jz_purchase_details` VALUES ('2', '7', 'a', 'q', '1000', '施工部', '1537977600', '江西', '将嘻嘻嘻嘻，信息化可', '16', '1537322976', '1537322976', null);
INSERT INTO `jz_purchase_details` VALUES ('3', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '24', '1539762156', '1539762156', null);
INSERT INTO `jz_purchase_details` VALUES ('4', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '25', '1539762276', '1539762276', null);
INSERT INTO `jz_purchase_details` VALUES ('5', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '26', '1539762860', '1539762860', null);
INSERT INTO `jz_purchase_details` VALUES ('6', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '27', '1539762922', '1539762922', null);
INSERT INTO `jz_purchase_details` VALUES ('7', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '28', '1539763067', '1539763067', null);
INSERT INTO `jz_purchase_details` VALUES ('8', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '29', '1539763167', '1539763167', null);
INSERT INTO `jz_purchase_details` VALUES ('9', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '30', '1539763182', '1539763182', null);
INSERT INTO `jz_purchase_details` VALUES ('10', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '31', '1539763293', '1539763293', null);
INSERT INTO `jz_purchase_details` VALUES ('11', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '32', '1539765536', '1539765536', null);
INSERT INTO `jz_purchase_details` VALUES ('12', '11', '1', 'z', '100', '项目部', '1540483200', '赣江', '沉船打捞队', '33', '1539765542', '1539765542', null);
INSERT INTO `jz_purchase_details` VALUES ('13', '12', 'DL003号', '台', '10', '技术部', '1539705600', '赣江', '', '34', '1539765613', '1539765613', null);
INSERT INTO `jz_purchase_details` VALUES ('14', '12', 'DL003号', '台', '10', '技术部', '1539705600', '赣江', '', '35', '1539765617', '1539765617', null);
INSERT INTO `jz_purchase_details` VALUES ('15', '1', '0022', 't', '100', '项目部', '1539878400', '领秀湖', '', '36', '1539824681', '1539824681', null);
INSERT INTO `jz_purchase_details` VALUES ('16', '3', 'a', 'q', '100', '项目部', '1539878400', '领秀湖', '', '36', '1539824681', '1539824681', null);
INSERT INTO `jz_purchase_details` VALUES ('17', '1', '0022', 't', '100', '项目部', '1539878400', '领秀湖', '', '37', '1539824892', '1539824892', null);
INSERT INTO `jz_purchase_details` VALUES ('18', '3', 'a', 'q', '100', '项目部', '1539878400', '领秀湖', '', '37', '1539824892', '1539824892', null);
INSERT INTO `jz_purchase_details` VALUES ('19', '12', 'DL003号', '台', '10', '项目部', '1540137600', '成都', '成都淅川', '38', '1539938529', '1539938529', null);
INSERT INTO `jz_purchase_details` VALUES ('20', '11', '1', 'z', '111', '咋说的', '1539964800', '12312按时', '奥术大师大所', '39', '1539938886', '1539938886', null);
INSERT INTO `jz_purchase_details` VALUES ('21', '1', '0022', 't', '111', '阿萨德', '1539878400', '啊实打实大', '啊实打实大', '40', '1539939038', '1539939038', null);

-- ----------------------------
-- Table structure for jz_purchase_plan
-- ----------------------------
DROP TABLE IF EXISTS `jz_purchase_plan`;
CREATE TABLE `jz_purchase_plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL COMMENT '物资招标编号',
  `title` varchar(25) NOT NULL COMMENT '物资招标计划名称',
  `obj_id` int(11) NOT NULL COMMENT '项目ID',
  `maker` int(11) NOT NULL COMMENT '申请人',
  `date` int(11) NOT NULL COMMENT '项目日期',
  `file` varchar(25) DEFAULT NULL COMMENT '附件Id',
  `renark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT '0' COMMENT '任务状态',
  `count` int(11) DEFAULT '0' COMMENT '明细条数',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL COMMENT '软删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='//采购计划表';

-- ----------------------------
-- Records of jz_purchase_plan
-- ----------------------------
INSERT INTO `jz_purchase_plan` VALUES ('16', 'CGJH201809-51521', '金耀大厦物资采购计划', '8', '1', '1537286400', '482,', '大厦物资材料计划', '1', '2', '1537322976', '1537322976', null);
INSERT INTO `jz_purchase_plan` VALUES ('24', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539762156', '1539762156', null);
INSERT INTO `jz_purchase_plan` VALUES ('25', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539762276', '1539762276', null);
INSERT INTO `jz_purchase_plan` VALUES ('26', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539762860', '1539762860', null);
INSERT INTO `jz_purchase_plan` VALUES ('27', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539762922', '1539762922', null);
INSERT INTO `jz_purchase_plan` VALUES ('28', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539763067', '1539763067', null);
INSERT INTO `jz_purchase_plan` VALUES ('29', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539763167', '1539763167', null);
INSERT INTO `jz_purchase_plan` VALUES ('30', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539763182', '1539763182', null);
INSERT INTO `jz_purchase_plan` VALUES ('31', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539763293', '1539763293', null);
INSERT INTO `jz_purchase_plan` VALUES ('32', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539765536', '1539765536', null);
INSERT INTO `jz_purchase_plan` VALUES ('33', 'CGJH201810-55569', '九州茗茶物资采购', '5', '48', '1539792000', '', '达瓦自行车吧发VB过他的手', '0', '1', '1539765542', '1539765542', null);
INSERT INTO `jz_purchase_plan` VALUES ('34', 'CGJH201810-56971', '九州茗茶', '3', '48', '1539705600', '', '奥术大师', '0', '1', '1539765613', '1539765613', null);
INSERT INTO `jz_purchase_plan` VALUES ('35', 'CGJH201810-56971', '九州茗茶', '3', '48', '1539705600', '', '奥术大师', '0', '1', '1539765616', '1539765616', null);
INSERT INTO `jz_purchase_plan` VALUES ('36', 'CGJH201810-98505', '采购计划', '5', '48', '1539792000', '', '阿斯蒂芬规划局快乐', '0', '2', '1539824681', '1539824681', null);
INSERT INTO `jz_purchase_plan` VALUES ('37', 'CGJH201810-98505', '采购计划', '5', '48', '1539792000', '', '阿斯蒂芬规划局快乐', '0', '2', '1539824892', '1539824892', null);
INSERT INTO `jz_purchase_plan` VALUES ('38', 'CGJH201810-51525', '小项目采购', '5', '48', '1539878400', '', '爱是打我大无多群无热若', '0', '1', '1539938529', '1539938529', null);
INSERT INTO `jz_purchase_plan` VALUES ('39', 'CGJH201810-97521', '采购', '3', '48', '1539878400', '', '爱上大杀手', '1', '1', '1539938886', '1539938886', null);
INSERT INTO `jz_purchase_plan` VALUES ('40', 'CGJH201810-98101', '萨达', '4', '48', '1539878400', '', '啊实打实大', '-1', '1', '1539939038', '1539939038', null);

-- ----------------------------
-- Table structure for jz_staff
-- ----------------------------
DROP TABLE IF EXISTS `jz_staff`;
CREATE TABLE `jz_staff` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '人员ID',
  `content` varchar(255) NOT NULL COMMENT '去向说明',
  `ctime` varchar(255) DEFAULT NULL COMMENT '开始时间',
  `dtime` varchar(255) DEFAULT NULL COMMENT '结束时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='//人员去向';

-- ----------------------------
-- Records of jz_staff
-- ----------------------------

-- ----------------------------
-- Table structure for jz_step_record
-- ----------------------------
DROP TABLE IF EXISTS `jz_step_record`;
CREATE TABLE `jz_step_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL COMMENT '表单id',
  `add_id` int(11) NOT NULL COMMENT '表单添加成功的id',
  `flow_id` int(11) DEFAULT NULL COMMENT '流程设置id',
  `uid` int(11) NOT NULL COMMENT '发起人',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0审批进行中1审批通过-1审批不通过',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `step` tinyint(255) NOT NULL DEFAULT '0' COMMENT '1开始审批0未审批或审批完',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='记录审批';

-- ----------------------------
-- Records of jz_step_record
-- ----------------------------
INSERT INTO `jz_step_record` VALUES ('90', '15', '47', '12', '45', '1', '1539229281', '1539235872', '0');
INSERT INTO `jz_step_record` VALUES ('94', '15', '51', '12', '45', '1', '1539323173', '1539323173', '0');
INSERT INTO `jz_step_record` VALUES ('95', '15', '52', '12', '45', '1', '1539676481', '1539676481', '0');
INSERT INTO `jz_step_record` VALUES ('96', '15', '53', '12', '45', '1', '1539676562', '1539676562', '0');
INSERT INTO `jz_step_record` VALUES ('97', '15', '54', '12', '45', '1', '1539677705', '1539677705', '0');
INSERT INTO `jz_step_record` VALUES ('98', '15', '55', '12', '45', '1', '1539679896', '1539679896', '0');
INSERT INTO `jz_step_record` VALUES ('102', '29', '8', '19', '46', '1', '1539741712', '1539743616', '0');
INSERT INTO `jz_step_record` VALUES ('103', '29', '9', '19', '46', '1', '1539742568', '1539743838', '0');
INSERT INTO `jz_step_record` VALUES ('104', '29', '10', '19', '46', '1', '1539744122', '1539744140', '0');
INSERT INTO `jz_step_record` VALUES ('105', '15', '56', '12', '45', '1', '1539744769', '1539744769', '0');
INSERT INTO `jz_step_record` VALUES ('106', '47', '1', '24', '46', '0', '1539757064', '1539757064', '0');
INSERT INTO `jz_step_record` VALUES ('107', '15', '57', '12', '45', '0', '1539760942', '1539760942', '0');
INSERT INTO `jz_step_record` VALUES ('108', '15', '58', '12', '45', '-1', '1539761459', '1539761459', '0');
INSERT INTO `jz_step_record` VALUES ('109', '12', '24', '9', '48', '-1', '1539762156', '1539762156', '0');
INSERT INTO `jz_step_record` VALUES ('110', '12', '25', '9', '48', '-1', '1539762276', '1539762276', '0');
INSERT INTO `jz_step_record` VALUES ('111', '12', '26', '9', '48', '-1', '1539762860', '1539762860', '0');
INSERT INTO `jz_step_record` VALUES ('112', '12', '27', '9', '48', '-1', '1539762921', '1539762921', '0');
INSERT INTO `jz_step_record` VALUES ('113', '12', '28', '9', '48', '-1', '1539763067', '1539763067', '0');
INSERT INTO `jz_step_record` VALUES ('114', '12', '29', '9', '48', '-1', '1539763167', '1539763167', '0');
INSERT INTO `jz_step_record` VALUES ('115', '12', '30', '9', '48', '-1', '1539763182', '1539763182', '0');
INSERT INTO `jz_step_record` VALUES ('116', '12', '31', '9', '48', '-1', '1539763293', '1539763293', '0');
INSERT INTO `jz_step_record` VALUES ('117', '12', '32', '9', '48', '-1', '1539765536', '1539765536', '0');
INSERT INTO `jz_step_record` VALUES ('118', '12', '33', '9', '48', '-1', '1539765542', '1539765542', '0');
INSERT INTO `jz_step_record` VALUES ('119', '12', '34', '9', '48', '-1', '1539765613', '1539765613', '0');
INSERT INTO `jz_step_record` VALUES ('120', '12', '35', '9', '48', '-1', '1539765616', '1539765616', '0');
INSERT INTO `jz_step_record` VALUES ('121', '53', '3', null, '51', '0', '1539766548', '1539766548', '0');
INSERT INTO `jz_step_record` VALUES ('122', '53', '4', null, '51', '0', '1539766558', '1539766558', '0');
INSERT INTO `jz_step_record` VALUES ('123', '53', '5', null, '51', '0', '1539766568', '1539766568', '0');
INSERT INTO `jz_step_record` VALUES ('124', '15', '59', '12', '45', '-1', '1539767434', '1539767434', '0');
INSERT INTO `jz_step_record` VALUES ('125', '12', '36', '9', '48', '0', '1539824680', '1539824680', '0');
INSERT INTO `jz_step_record` VALUES ('126', '12', '37', '9', '48', '0', '1539824892', '1539824892', '0');
INSERT INTO `jz_step_record` VALUES ('127', '33', '5', '14', '72', '1', '1539834357', '1539841250', '0');
INSERT INTO `jz_step_record` VALUES ('128', '15', '60', '12', '72', '-1', '1539834597', '1539834597', '0');
INSERT INTO `jz_step_record` VALUES ('129', '33', '6', '14', '72', '1', '1539834856', '1539843168', '0');
INSERT INTO `jz_step_record` VALUES ('130', '39', '1', '18', '72', '0', '1539842526', '1539842526', '0');
INSERT INTO `jz_step_record` VALUES ('131', '43', '1', '16', '72', '1', '1539842554', '1539843174', '0');
INSERT INTO `jz_step_record` VALUES ('132', '44', '1', '17', '72', '1', '1539842566', '1539843179', '0');
INSERT INTO `jz_step_record` VALUES ('133', '42', '1', '15', '72', '1', '1539842577', '1539843185', '0');
INSERT INTO `jz_step_record` VALUES ('134', '39', '2', '18', '72', '0', '1539842672', '1539842672', '0');
INSERT INTO `jz_step_record` VALUES ('135', '39', '5', '18', '72', '1', '1539843696', '1539843705', '0');
INSERT INTO `jz_step_record` VALUES ('137', '29', '11', '19', '72', '0', '1539911932', '1539911932', '0');
INSERT INTO `jz_step_record` VALUES ('138', '29', '12', '19', '72', '0', '1539911945', '1539911945', '0');
INSERT INTO `jz_step_record` VALUES ('139', '47', '2', '24', '72', '0', '1539912339', '1539912339', '0');
INSERT INTO `jz_step_record` VALUES ('140', '47', '3', '24', '72', '0', '1539912382', '1539912382', '0');
INSERT INTO `jz_step_record` VALUES ('141', '47', '4', '24', '72', '0', '1539914807', '1539914807', '0');
INSERT INTO `jz_step_record` VALUES ('142', '29', '13', '19', '72', '0', '1539916716', '1539916716', '0');
INSERT INTO `jz_step_record` VALUES ('143', '29', '14', '19', '72', '0', '1539916770', '1539916770', '0');
INSERT INTO `jz_step_record` VALUES ('144', '47', '5', '24', '72', '0', '1539917515', '1539917515', '0');
INSERT INTO `jz_step_record` VALUES ('145', '29', '15', '19', '72', '0', '1539919622', '1539919622', '0');
INSERT INTO `jz_step_record` VALUES ('146', '47', '6', '24', '72', '0', '1539919721', '1539919721', '0');
INSERT INTO `jz_step_record` VALUES ('147', '47', '7', '24', '72', '0', '1539919796', '1539919796', '0');
INSERT INTO `jz_step_record` VALUES ('148', '47', '8', '24', '72', '0', '1539922467', '1539922467', '0');
INSERT INTO `jz_step_record` VALUES ('149', '47', '9', '24', '72', '0', '1539922491', '1539922491', '0');
INSERT INTO `jz_step_record` VALUES ('150', '47', '10', '24', '72', '0', '1539922510', '1539922510', '0');
INSERT INTO `jz_step_record` VALUES ('151', '47', '11', '24', '72', '0', '1539922550', '1539922550', '0');
INSERT INTO `jz_step_record` VALUES ('152', '47', '12', '24', '72', '0', '1539936953', '1539936953', '0');
INSERT INTO `jz_step_record` VALUES ('153', '29', '16', '19', '72', '0', '1539937881', '1539937881', '0');
INSERT INTO `jz_step_record` VALUES ('154', '12', '38', '9', '48', '1', '1539938529', '1539938938', '1');
INSERT INTO `jz_step_record` VALUES ('155', '12', '39', '9', '48', '1', '1539938885', '1539939172', '1');
INSERT INTO `jz_step_record` VALUES ('156', '12', '40', '9', '48', '-1', '1539939038', '1539939306', '1');
INSERT INTO `jz_step_record` VALUES ('157', '42', '2', '15', '72', '0', '1539940050', '1539940050', '0');
INSERT INTO `jz_step_record` VALUES ('158', '44', '2', '17', '72', '0', '1539942457', '1539942457', '0');

-- ----------------------------
-- Table structure for jz_stock_house
-- ----------------------------
DROP TABLE IF EXISTS `jz_stock_house`;
CREATE TABLE `jz_stock_house` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '仓库名称',
  `code` varchar(50) NOT NULL COMMENT '编号',
  `contact` varchar(16) NOT NULL COMMENT '联系人',
  `phone` varchar(11) NOT NULL COMMENT '联系人电话',
  `address` varchar(50) NOT NULL COMMENT '仓库地址',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '仓库状态1显示0不显示',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `delete_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='仓库';

-- ----------------------------
-- Records of jz_stock_house
-- ----------------------------
INSERT INTO `jz_stock_house` VALUES ('1', '垃圾的一匹的恶心仓库', 'CK201809-49505', '贺建平', '18679199742', '南昌市红谷滩建设大厦10楼', '发生的公司风格的', '0', '1537257044', '1537319177', null);
INSERT INTO `jz_stock_house` VALUES ('2', '无敌吊炸天豪华金装plus仓库', 'CK201809-99495', '王永吉', '15979139546', '南昌市湾里区九洲铭城1栋二楼', '呵呵呵呵呵呵呵呵', '1', '1537258310', '1537425063', null);
INSERT INTO `jz_stock_house` VALUES ('62', '啊实打实大', 'CK201809-51505', '阿萨德阿萨德', '18679199741', '啊实打实大', '啊大大', '1', '1538286497', '1538286497', null);
INSERT INTO `jz_stock_house` VALUES ('63', '审批测试', 'CK201810-57481', '啊实打实', '18679199741', '四方达是多少', '阿萨德撒大', '1', '1539050010', '1539050010', null);

-- ----------------------------
-- Table structure for jz_stock_inandout
-- ----------------------------
DROP TABLE IF EXISTS `jz_stock_inandout`;
CREATE TABLE `jz_stock_inandout` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL COMMENT '入库单号',
  `maker` int(10) NOT NULL COMMENT '制单人',
  `state` tinyint(2) NOT NULL COMMENT '1入库2出库',
  `type` tinyint(3) NOT NULL COMMENT '类型0采购入库1完工入库',
  `supandpos` int(10) NOT NULL COMMENT '供应商或项目id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `money` double(50,2) NOT NULL COMMENT '总价',
  `bigmoney` varchar(255) NOT NULL COMMENT '金额大写',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `delete_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='入库出库';

-- ----------------------------
-- Records of jz_stock_inandout
-- ----------------------------
INSERT INTO `jz_stock_inandout` VALUES ('4', 'RK201809-10148', '45', '1', '1', '40', '啊实打实大', '34.05', '叁拾肆圆伍分', '1537498505', '1537508333', null);
INSERT INTO `jz_stock_inandout` VALUES ('5', '201809-53549', '45', '2', '0', '8', null, '12.63', '壹拾贰圆陆角叁分', '1537516162', '1537516162', null);
INSERT INTO `jz_stock_inandout` VALUES ('6', 'RK201809-97100', '45', '1', '0', '41', '', '9.00', '玖圆', '1537928058', '1537928058', null);
INSERT INTO `jz_stock_inandout` VALUES ('7', 'RK201809-10252', '45', '1', '0', '40', '', '500.00', '伍佰圆', '1537928166', '1537928166', null);
INSERT INTO `jz_stock_inandout` VALUES ('8', 'RK201809-55531', '45', '1', '0', '41', '', '678.21', '陆佰柒拾捌圆贰角壹分', '1537930025', '1537930025', null);
INSERT INTO `jz_stock_inandout` VALUES ('9', 'CK201809-99514', '45', '2', '0', '8', null, '3.00', '叁圆', '1537932670', '1537932670', null);
INSERT INTO `jz_stock_inandout` VALUES ('11', 'CK201809-99525', '45', '2', '0', '8', null, '1.00', '壹圆', '1537933530', '1537933530', null);
INSERT INTO `jz_stock_inandout` VALUES ('12', 'CK201810-55102', '46', '2', '0', '50', null, '400.00', '肆佰圆', '1539328794', '1539328794', null);

-- ----------------------------
-- Table structure for jz_stock_inandout_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_stock_inandout_details`;
CREATE TABLE `jz_stock_inandout_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inandout_id` int(11) NOT NULL COMMENT '出入库id',
  `m_name` int(10) NOT NULL COMMENT '材料id',
  `size` varchar(50) DEFAULT NULL COMMENT '规格',
  `measuring` varchar(50) DEFAULT NULL COMMENT '计量单位',
  `num` double(50,4) NOT NULL COMMENT '入库数量',
  `price` double(50,2) DEFAULT NULL COMMENT '单价',
  `total` double(50,2) DEFAULT NULL COMMENT '总价',
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `delete_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='入库明细';

-- ----------------------------
-- Records of jz_stock_inandout_details
-- ----------------------------
INSERT INTO `jz_stock_inandout_details` VALUES ('1', '4', '12', 'DL003号', '台', '2.1240', '2.00', '4.25', '1537498505', '1537508333', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('2', '4', '11', '1', 'z', '3.0000', '3.00', '9.00', '1537498505', '1537508333', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('3', '4', '13', 'UFC', '台', '4.0000', '5.20', '20.80', '1537508333', '1537508333', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('4', '5', '12', 'DL003号', '台', '2.0000', '3.00', '6.00', '1537516162', '1537516162', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('5', '5', '13', 'UFC', '台', '1.2500', '5.30', '6.63', '1537516162', '1537516162', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('6', '6', '2', '12', 't', '2.0000', '3.00', '6.00', '1537928058', '1537928058', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('7', '6', '14', '100*100', '件', '1.0000', '3.00', '3.00', '1537928058', '1537928058', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('8', '7', '11', '1', 'z', '10.0000', '10.00', '100.00', '1537928166', '1537928166', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('9', '7', '12', 'DL003号', '台', '20.0000', '20.00', '400.00', '1537928166', '1537928166', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('10', '8', '11', '1', 'z', '12.2300', '12.20', '149.21', '1537930025', '1537930025', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('11', '8', '12', 'DL003号', '台', '23.0000', '23.00', '529.00', '1537930025', '1537930025', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('12', '9', '12', 'DL003号', '台', '1.0000', '3.00', '3.00', '1537932670', '1537932670', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('14', '11', '12', 'DL003号', '台', '1.0000', '1.00', '1.00', '1537933530', '1537933530', null);
INSERT INTO `jz_stock_inandout_details` VALUES ('15', '12', '1', '0022', 't', '20.0000', '20.00', '400.00', '1539328794', '1539328794', null);

-- ----------------------------
-- Table structure for jz_sub_condetails
-- ----------------------------
DROP TABLE IF EXISTS `jz_sub_condetails`;
CREATE TABLE `jz_sub_condetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) NOT NULL COMMENT '工作内容',
  `measuring` varchar(25) NOT NULL COMMENT '单位',
  `quantities` varchar(25) NOT NULL COMMENT '工程量',
  `price` decimal(15,2) DEFAULT NULL COMMENT '单价',
  `combined` decimal(25,2) DEFAULT NULL COMMENT '合价',
  `sub_id` int(11) NOT NULL COMMENT '合同ID',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='//分包合同工程清单';

-- ----------------------------
-- Records of jz_sub_condetails
-- ----------------------------
INSERT INTO `jz_sub_condetails` VALUES ('1', '外基工程', '米', '5000', '1000.00', '5000000.00', '3', '1537326200', '1537326200');
INSERT INTO `jz_sub_condetails` VALUES ('2', '外墙工程', '平方米', '5000', '1000.00', '5000000.00', '3', '1537326200', '1537326200');
INSERT INTO `jz_sub_condetails` VALUES ('3', '', '', '', '0.00', '0.00', '7', '1539914686', '1539914686');
INSERT INTO `jz_sub_condetails` VALUES ('4', '', '', '', '0.00', '0.00', '8', '1539914743', '1539914743');

-- ----------------------------
-- Table structure for jz_sub_contract
-- ----------------------------
DROP TABLE IF EXISTS `jz_sub_contract`;
CREATE TABLE `jz_sub_contract` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(25) NOT NULL,
  `title` varchar(25) NOT NULL COMMENT '合同名称',
  `contract_type` int(11) NOT NULL COMMENT '合同类型',
  `contract_money` decimal(65,2) NOT NULL COMMENT '合同金额',
  `maker` int(11) NOT NULL COMMENT '签订人',
  `big_money` varchar(25) NOT NULL COMMENT '合同金额大写',
  `obj_id` int(11) NOT NULL DEFAULT '1' COMMENT '项目ID',
  `clear_type` int(11) DEFAULT NULL COMMENT '结算方式',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `supplier_id` int(11) NOT NULL COMMENT '分包单位ID',
  `pre_money` decimal(15,2) DEFAULT NULL COMMENT '预付款',
  `bail` decimal(15,2) DEFAULT NULL COMMENT '保证金',
  `pay_type` int(11) NOT NULL COMMENT '付款方式',
  `date` int(11) NOT NULL COMMENT '日期',
  `file` int(11) DEFAULT NULL COMMENT '附件ID',
  `item` varchar(255) NOT NULL COMMENT '主要条款',
  `condition` varchar(255) NOT NULL COMMENT '付款条件',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `total` decimal(45,2) DEFAULT NULL COMMENT '金额共计',
  `capital` varchar(255) DEFAULT NULL COMMENT '共计金额大写',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='//分包合同';

-- ----------------------------
-- Records of jz_sub_contract
-- ----------------------------
INSERT INTO `jz_sub_contract` VALUES ('1', 'FBHT201809-57525', '金耀大厦施工分包合同', '0', '10000000.00', '1', '壹仟万', '8', '0', '1537718400', '1542816000', '40', '12354.00', '1354384.00', '2', '1537286400', '0', '完成工程量', '完成工程量', '', '10000000.00', '壹仟万', '0', '1537325942', '1537325942');
INSERT INTO `jz_sub_contract` VALUES ('2', 'FBHT201809-57525', '金耀大厦施工分包合同', '0', '10000000.00', '1', '壹仟万', '8', '0', '1537718400', '1542816000', '40', '12354.00', '1354384.00', '2', '1537286400', '0', '完成工程量', '完成工程量', '', '10000000.00', '壹仟万', '0', '1537325946', '1537325946');
INSERT INTO `jz_sub_contract` VALUES ('3', 'FBHT201809-57525', '金耀大厦施工分包合同', '0', '10000000.00', '1', '壹仟万', '8', '0', '1537718400', '1542816000', '40', '12354.00', '1354384.00', '2', '1537286400', '0', '完成工程量', '完成工程量', '', '10000000.00', '壹仟万', '0', '1537326200', '1537326200');
INSERT INTO `jz_sub_contract` VALUES ('4', 'FBHT201810-57529', 'test', '0', '23242424.00', '72', '肆万贰仟叁佰肆拾贰圆', '5', '1', '1539619200', '1539532800', '40', '23424242.00', '42342.00', '0', '1539619200', '0', '234234234', '2423423', '2342342', '552.00', '伍佰伍拾贰圆', '0', '1539826831', '1539826831');
INSERT INTO `jz_sub_contract` VALUES ('5', 'FBHT201810-57529', 'test1', '0', '23242424.00', '72', '肆万贰仟叁佰肆拾贰圆', '5', '1', '1539619200', '1539532800', '40', '23424242.00', '42342.00', '0', '1539619200', '0', '234234234', '2423423', '2342342', '552.00', '伍佰伍拾贰圆', '0', '1539826847', '1539826847');
INSERT INTO `jz_sub_contract` VALUES ('6', 'FBHT201810-48535', '13123', '0', '12312.00', '72', '壹佰贰拾叁圆', '3', '2', '1538928000', '1539964800', '41', '123.00', '123.00', '2', '1538323200', '0', '12312', '123', '3123', '441.00', '肆佰肆拾壹圆', '0', '1539853614', '1539853614');
INSERT INTO `jz_sub_contract` VALUES ('7', 'FBHT201810-10154', 'test', '0', '24234.00', '72', '贰仟叁佰肆拾贰圆', '5', '2', '1538496000', '1540224000', '40', '2342.00', '2342.00', '1', '1538323200', '0', '234', '234', '234', '0.00', '', '0', '1539914686', '1539914686');
INSERT INTO `jz_sub_contract` VALUES ('8', 'FBHT201810-51555', 'test123', '0', '13213.00', '72', '壹拾贰万叁仟壹佰贰拾叁圆', '4', '0', '1538582400', '1538496000', '40', '12312.00', '123123.00', '0', '1538409600', '0', '1231', '123', '231', '0.00', '', '0', '1539914743', '1539914743');

-- ----------------------------
-- Table structure for jz_sub_details
-- ----------------------------
DROP TABLE IF EXISTS `jz_sub_details`;
CREATE TABLE `jz_sub_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `work` varchar(25) NOT NULL COMMENT '工作内容',
  `measuring` varchar(25) NOT NULL COMMENT '单位',
  `amout` varchar(25) DEFAULT NULL COMMENT '工程量',
  `price` decimal(15,2) DEFAULT NULL COMMENT '单价',
  `plan_id` int(11) NOT NULL COMMENT '计划ID',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//分包计划明细';

-- ----------------------------
-- Records of jz_sub_details
-- ----------------------------
INSERT INTO `jz_sub_details` VALUES ('1', '外基工程', '米', '5000', '100.00', '1', '1537325810', '1537325810');
INSERT INTO `jz_sub_details` VALUES ('2', '外墙工程', '平方米', '5000', '100.00', '1', '1537325810', '1537325810');

-- ----------------------------
-- Table structure for jz_sub_plan
-- ----------------------------
DROP TABLE IF EXISTS `jz_sub_plan`;
CREATE TABLE `jz_sub_plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL COMMENT '计划名称',
  `number` varchar(25) NOT NULL COMMENT '计划编号',
  `obj_id` int(11) NOT NULL COMMENT '项目ID',
  `date` int(11) NOT NULL COMMENT '日期',
  `maker` int(11) NOT NULL COMMENT '申请人ID',
  `renark` varchar(255) DEFAULT NULL COMMENT '备注',
  `file` varchar(25) DEFAULT NULL COMMENT '附件',
  `count` int(11) DEFAULT '0' COMMENT '明细条数',
  `state` int(11) DEFAULT '0' COMMENT '状态',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//分包计划';

-- ----------------------------
-- Records of jz_sub_plan
-- ----------------------------
INSERT INTO `jz_sub_plan` VALUES ('1', '金耀大厦工程分包计划', 'FBJH201809-98525', '8', '1537286400', '1', '', '', '2', '0', '1537325810', '1537325810');

-- ----------------------------
-- Table structure for jz_supplier_basic_mes
-- ----------------------------
DROP TABLE IF EXISTS `jz_supplier_basic_mes`;
CREATE TABLE `jz_supplier_basic_mes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `supplier_name` varchar(255) NOT NULL COMMENT '供应商名称',
  `supplier_type` int(255) DEFAULT NULL COMMENT '供应商类型',
  `supplier_number` varchar(50) DEFAULT NULL COMMENT '供应商编号',
  `supplier_industry` varchar(255) DEFAULT NULL COMMENT '所属行业',
  `supplier_tell` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `supplier_area` varchar(255) DEFAULT NULL COMMENT '所属区域',
  `supplier_email` varchar(255) DEFAULT NULL COMMENT 'emai',
  `supplier_size` varchar(255) DEFAULT NULL COMMENT '规模',
  `supplier_fax` varchar(255) DEFAULT NULL COMMENT '传真',
  `supplier_source` varchar(255) DEFAULT NULL COMMENT '来源',
  `supplier_leader` varchar(255) DEFAULT NULL COMMENT '负责人',
  `supplier_level` varchar(255) DEFAULT NULL COMMENT '供应商等级',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `delete_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='供应商';

-- ----------------------------
-- Records of jz_supplier_basic_mes
-- ----------------------------
INSERT INTO `jz_supplier_basic_mes` VALUES ('17', '理查德供应油漆', '42', '', '1', '0', '1', '', '1', '', '1', '0', '1', '1535363929', '1535364135', null, '1');
INSERT INTO `jz_supplier_basic_mes` VALUES ('40', '爱德华劳务提供公司', '1', '', '1', '0', '1', '', '1', '', '1', '0', '1', '1535363942', '1535364154', null, '1');
INSERT INTO `jz_supplier_basic_mes` VALUES ('41', '罗兰分包有限公司', '1', '', '1', '0', '1', '', '1', '', '1', '0', '1', '1535364054', '1535364180', null, '1');
INSERT INTO `jz_supplier_basic_mes` VALUES ('42', '江西钢材', '42', '12313', '72', '18679199741', '79', '957547207@qq.com', '70', '', '75', '贺建平', '77', '1539933861', '1539933861', null, '1');
INSERT INTO `jz_supplier_basic_mes` VALUES ('43', '江西钢材1', '42', '12313', '72', '18679199741', '79', '95754720@qq.com', '70', '', '75', '贺建平', '77', '1539934146', '1539934146', null, '1');
INSERT INTO `jz_supplier_basic_mes` VALUES ('44', '江西钢材12', '42', '12313', '72', '18679199741', '79', '957547202@qq.com', '70', '', '75', '贺建平', '77', '1539934194', '1539934194', null, '1');
INSERT INTO `jz_supplier_basic_mes` VALUES ('45', '江西钢材123', '42', '12313', '72', '18679199741', '79', '9575472032@qq.com', '70', '', '75', '贺建平', '77', '1539934236', '1539935220', '1539935220', '1');

-- ----------------------------
-- Table structure for jz_supplier_linkman_mes
-- ----------------------------
DROP TABLE IF EXISTS `jz_supplier_linkman_mes`;
CREATE TABLE `jz_supplier_linkman_mes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL COMMENT '供应商id',
  `phone` varchar(50) DEFAULT NULL,
  `qq` int(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL COMMENT '开户银行',
  `bank_account` int(40) DEFAULT NULL COMMENT '银行账号',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户名',
  `index` varchar(255) DEFAULT NULL COMMENT '供应商主页',
  `address` varchar(255) DEFAULT NULL COMMENT '供应商地址',
  `postcode` int(11) DEFAULT NULL COMMENT '邮编',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='供应商联系人信息';

-- ----------------------------
-- Records of jz_supplier_linkman_mes
-- ----------------------------
INSERT INTO `jz_supplier_linkman_mes` VALUES ('22', '36', '0', '0', '', '0', '', '', '', '0', '', '', '1535363641', '1535363641', null);
INSERT INTO `jz_supplier_linkman_mes` VALUES ('23', '37', '0', '0', '', '0', '', '', '', '0', '', '', '1535363775', '1535363775', null);
INSERT INTO `jz_supplier_linkman_mes` VALUES ('24', '38', '0', '0', '', '0', '', '', '', '0', '', '', '1535363802', '1535363802', null);
INSERT INTO `jz_supplier_linkman_mes` VALUES ('25', '39', '0', '0', '', '0', '', '', '', '0', '', '', '1535363929', '1535364135', null);
INSERT INTO `jz_supplier_linkman_mes` VALUES ('26', '40', '0', '0', '', '0', '', '', '', '0', '', '', '1535363942', '1535364154', null);
INSERT INTO `jz_supplier_linkman_mes` VALUES ('27', '41', '0', '0', '', '0', '', '', '', '0', '', '', '1535364054', '1535364180', null);
INSERT INTO `jz_supplier_linkman_mes` VALUES ('28', '45', '18679199741', '0', '', '0', '', '', '', '0', '', '', '1539934236', '1539934236', null);

-- ----------------------------
-- Table structure for jz_system_organization
-- ----------------------------
DROP TABLE IF EXISTS `jz_system_organization`;
CREATE TABLE `jz_system_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(20) NOT NULL COMMENT '部门名称',
  `code` char(8) DEFAULT '' COMMENT '编码',
  `order` int(11) DEFAULT NULL COMMENT '显示顺序',
  `pid` int(11) DEFAULT NULL COMMENT '上级部门',
  `organization_independent` int(1) DEFAULT NULL COMMENT '是否是独立组织',
  `site` varchar(50) DEFAULT NULL COMMENT '地址',
  `zip_code` varchar(6) NOT NULL DEFAULT '' COMMENT '邮编',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_system_organization
-- ----------------------------
INSERT INTO `jz_system_organization` VALUES ('2', '南昌总部', '5', '10', '9', '1', '', '', '18279021641', '11fsf');
INSERT INTO `jz_system_organization` VALUES ('3', '宜春分部', '1', '10', '9', '0', '', '', '11111111111', '');
INSERT INTO `jz_system_organization` VALUES ('4', '市场部', '5', '10', '2', '1', 'test', 'test', '19875848547', 'tset');
INSERT INTO `jz_system_organization` VALUES ('5', '技术部', '2', '10', '2', '0', 'adas', 'fsdf', '15454545453', '');
INSERT INTO `jz_system_organization` VALUES ('6', '营销部', '2', '10', '3', null, null, '', null, null);
INSERT INTO `jz_system_organization` VALUES ('7', '客服部', '2', '10', '3', null, null, '', null, null);
INSERT INTO `jz_system_organization` VALUES ('8', '人事部', '4', '10', '2', null, null, '', null, null);
INSERT INTO `jz_system_organization` VALUES ('9', '金耀科技', '32', null, '0', '1', '', '', null, null);
INSERT INTO `jz_system_organization` VALUES ('11', '测试部门', '', '0', '2', '0', '', '', '15487548754', '');

-- ----------------------------
-- Table structure for jz_system_position
-- ----------------------------
DROP TABLE IF EXISTS `jz_system_position`;
CREATE TABLE `jz_system_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '80',
  `pid` int(10) unsigned NOT NULL COMMENT '上级',
  `prepare_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '编制人数',
  `responsibility` varchar(255) DEFAULT NULL COMMENT '岗位职责',
  `requirements` varchar(255) DEFAULT NULL COMMENT '岗位要求',
  `description` varchar(255) DEFAULT NULL COMMENT '岗位描述',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `delete_time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_system_position
-- ----------------------------
INSERT INTO `jz_system_position` VALUES ('1', '董事长', '0', '0', '岗位职责', '岗位要求', '岗位描述', '0', '0', null);
INSERT INTO `jz_system_position` VALUES ('2', '总经理', '1', '0', '总经理职责', '总经理要求', '总经理描述', '0', '1535614626', null);
INSERT INTO `jz_system_position` VALUES ('3', '技术部经理', '2', '0', '技术部经理岗位职责', '技术部经理岗位要求', '技术部经理岗位描述', '1535609474', '1535609546', '1535609546');
INSERT INTO `jz_system_position` VALUES ('4', '项目经理', '2', '50', '项目经理岗位职责', '项目经理岗位要求', '项目经理岗位描述', '1535614817', '1535705720', null);
INSERT INTO `jz_system_position` VALUES ('5', '技术主管', '4', '2', '技术主管岗位职责', '技术主管岗位要求', '技术主管岗位描述', '1535616383', '1535616383', null);

-- ----------------------------
-- Table structure for jz_task
-- ----------------------------
DROP TABLE IF EXISTS `jz_task`;
CREATE TABLE `jz_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL COMMENT '当前登录用户ID',
  `pid` int(11) DEFAULT '0' COMMENT '父级ID;pid = id;',
  `taskname` varchar(25) NOT NULL COMMENT '任务名称',
  `level` tinyint(1) NOT NULL DEFAULT '2' COMMENT '任务级别；默认为2表示重要；',
  `task_type` varchar(25) DEFAULT '协同任务' COMMENT '任务类型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '任务状态',
  `launch` varchar(255) NOT NULL COMMENT '任务发起人',
  `liable` varchar(255) NOT NULL COMMENT '任务责任人',
  `content` varchar(255) NOT NULL COMMENT '任务内容',
  `operation_id` varchar(255) DEFAULT NULL COMMENT '协办人ID',
  `sketch` varchar(255) DEFAULT NULL COMMENT '任务简述',
  `degree` int(11) DEFAULT '0' COMMENT '任务完成百分比',
  `feedback_id` varchar(255) DEFAULT NULL COMMENT '反馈ID',
  `ctime` varchar(255) NOT NULL COMMENT '任务开始时间',
  `dtime` varchar(255) NOT NULL COMMENT '任务结束时间',
  `ministry_id` int(11) DEFAULT NULL COMMENT '关联部门ID',
  `process_id` int(11) DEFAULT NULL COMMENT '关联流程ID',
  `project_id` int(11) DEFAULT NULL COMMENT '关联项目ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='// 任务表';

-- ----------------------------
-- Records of jz_task
-- ----------------------------
INSERT INTO `jz_task` VALUES ('1', '0', '0', '任务任务任务', '2', '协同任务', '1', '陈', '陈', '任务任务', null, null, '0', null, '1533052800', '1534780800', null, null, null, '2018-08-09 17:32:00', '2018-08-09 17:32:00');
INSERT INTO `jz_task` VALUES ('2', '0', '0', '任务任务任务', '2', '协同任务', '5', '陈', '陈', '任务任务', '', '', '0', '', '1533052800', '1534780800', null, null, null, '2018-08-17 10:18:11', '2018-08-17 10:18:11');
INSERT INTO `jz_task` VALUES ('6', '0', '0', '任务', '4', '协同任务', '3', '陈', '陈', '谁打理发送的雷锋精神砥砺奋进螺丝刀', null, null, '0', null, '2018-08-10 16:24:50', '2018-08-10 14:42:20', '0', '0', '0', '2018-08-17 10:18:10', '2018-08-17 10:18:10');
INSERT INTO `jz_task` VALUES ('7', '0', '0', '任务', '2', '协同任务', '2', '陈', '陈', '谁打理发送的雷锋精神砥砺奋进螺丝刀', null, null, '0', null, '2018-08-10 16:35:55', '2018-08-10 16:35:57', '0', '0', '0', '2018-08-17 10:18:08', '2018-08-17 10:18:08');
INSERT INTO `jz_task` VALUES ('8', '0', '0', '任务', '3', '协同任务', '1', '陈', '陈', '驱蚊器翁群', null, null, '0', null, '2018-08-13 11:46:28', '2018-08-13 11:46:30', '1', '1', '1', '2018-08-13 11:48:39', '2018-08-13 11:48:39');
INSERT INTO `jz_task` VALUES ('9', '0', '0', '任务任务任务', '2', '协同任务', '1', '陈', '陈', '任务任务', '', '', '0', '', '2018-08-13 11:46:28', '2018-08-10 14:42:20', null, null, null, '2018-08-17 11:03:44', '2018-08-17 11:03:44');
INSERT INTO `jz_task` VALUES ('10', '0', '0', '任务任务任务', '2', '协同任务', '5', '陈', '陈', '任务任务', '', '', '0', '', '2018-08-13 11:46:28', '2018-08-10 14:42:20', null, null, null, '2018-08-17 11:03:43', '2018-08-17 11:03:43');
INSERT INTO `jz_task` VALUES ('11', '0', '0', '任务', '4', '协同任务', '3', '陈', '陈', '谁打理发送的雷锋精神砥砺奋进螺丝刀', '', '', '0', '', '2018-08-10 16:24:50', '2018-08-10 14:42:20', '0', '0', '0', '2018-08-17 10:18:10', '2018-08-17 10:18:10');
INSERT INTO `jz_task` VALUES ('12', '0', '0', '任务', '2', '协同任务', '2', '陈', '陈', '谁打理发送的雷锋精神砥砺奋进螺丝刀', '', '', '0', '', '2018-08-10 16:35:55', '2018-08-10 16:35:57', '0', '0', '0', '2018-08-17 10:18:08', '2018-08-17 10:18:08');
INSERT INTO `jz_task` VALUES ('13', '0', '0', '任务', '4', '协同任务', '3', '陈', '陈', '谁打理发送的雷锋精神砥砺奋进螺丝刀', '', '', '0', '', '2018-08-10 16:24:50', '2018-08-10 14:42:20', '0', '0', '0', '2018-08-17 10:18:10', '2018-08-17 10:18:10');

-- ----------------------------
-- Table structure for jz_training
-- ----------------------------
DROP TABLE IF EXISTS `jz_training`;
CREATE TABLE `jz_training` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  `type` varchar(25) NOT NULL COMMENT '培训类型',
  `organizer` varchar(255) NOT NULL COMMENT '主办单位',
  `scope` varchar(25) NOT NULL COMMENT '培训范围',
  `head` int(11) NOT NULL COMMENT '负责人',
  `department` int(11) NOT NULL COMMENT '培训机构',
  `place` varchar(25) NOT NULL COMMENT '培训地点',
  `day` int(11) NOT NULL COMMENT '培训天数',
  `training_cost` double(50,0) NOT NULL COMMENT '培训费用',
  `other_fees` double(50,0) DEFAULT NULL COMMENT '其他费用',
  `number` int(11) DEFAULT NULL COMMENT '课程总数',
  `students` int(11) DEFAULT NULL COMMENT '学员数量',
  `ctime` int(11) NOT NULL COMMENT '开始时间',
  `etime` int(11) NOT NULL COMMENT '结束时间',
  `assessment` varchar(255) DEFAULT NULL COMMENT '评估',
  `content` varchar(255) NOT NULL COMMENT '培训内容',
  `personnel` varchar(255) DEFAULT NULL COMMENT '培训学员',
  `unit` varchar(255) DEFAULT NULL COMMENT '备注',
  `file` varchar(25) DEFAULT NULL COMMENT '附件',
  `status` tinyint(1) DEFAULT '0' COMMENT '0=计划1=项目',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='//培训计划项目';

-- ----------------------------
-- Records of jz_training
-- ----------------------------
INSERT INTO `jz_training` VALUES ('1', '领导力', '领导力', '公司', '公司', '48', '1', '天台', '10', '12300', '0', '0', '0', '1539360000', '1540569600', '阿瓦达朝夕相处', '阿斯顿发送到发生', '', '', '', '1', '1539152249', '1539914580', '1539914580');
INSERT INTO `jz_training` VALUES ('6', '财务与价值创造', '管理能力', '公司内训', '管理层', '48', '1', '公司', '10', '10000', '0', '10', '5', '1539273600', '1540915200', '没你不行招待费如果', '阿瓦达无多下车', '43,1,45,52,42', '阿斯顿法国和1354684', '', '1', '1539309460', '1539324625', null);
INSERT INTO `jz_training` VALUES ('7', '财务转型与管理会计', '管理能力', '公司', '相关财务人员', '48', '1', '公司', '20', '5000', '0', null, null, '1539878400', '1541001600', null, '相关财务', null, '', null, '0', '1539327562', '1539914593', '1539914593');
INSERT INTO `jz_training` VALUES ('8', '创新与变革', '管理能力', '公司', '项目部', '48', '1', '公司', '20', '10000', '0', null, null, '1540137600', '1541779200', null, '管理能力', '46,51,72,43,45,52,42,44', '', null, '1', '1539914681', '1539914681', null);

-- ----------------------------
-- Table structure for jz_training_course
-- ----------------------------
DROP TABLE IF EXISTS `jz_training_course`;
CREATE TABLE `jz_training_course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_title` varchar(255) NOT NULL COMMENT '名称',
  `course_type` varchar(25) NOT NULL COMMENT '课程类型',
  `course_day` int(11) NOT NULL COMMENT '课时',
  `course_price` double(50,0) NOT NULL COMMENT '价格',
  `course_lecturer` int(11) NOT NULL COMMENT '讲师',
  `course_unit` varchar(255) DEFAULT NULL COMMENT '备注',
  `course_file` varchar(25) DEFAULT NULL,
  `course_user` int(11) NOT NULL COMMENT '创建人',
  `course_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//培训课程';

-- ----------------------------
-- Records of jz_training_course
-- ----------------------------
INSERT INTO `jz_training_course` VALUES ('1', '首席人才官（CHO）高级课程管理', '组织与人力资源管理课程', '10', '50000', '1', '', '', '48', '1539100800', '1539160039', '1539240809', null);

-- ----------------------------
-- Table structure for jz_training_department
-- ----------------------------
DROP TABLE IF EXISTS `jz_training_department`;
CREATE TABLE `jz_training_department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(25) NOT NULL COMMENT '名称',
  `department_contact` varchar(25) NOT NULL COMMENT '联系人',
  `department_landline` varchar(25) NOT NULL COMMENT '座机',
  `department_phone` bigint(11) DEFAULT NULL COMMENT '手机',
  `department_email` varchar(25) NOT NULL COMMENT '邮箱',
  `department_code` varchar(25) DEFAULT NULL COMMENT '邮编',
  `department_web` varchar(25) DEFAULT NULL COMMENT '网站',
  `department_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `department_unit` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//培训机构';

-- ----------------------------
-- Records of jz_training_department
-- ----------------------------
INSERT INTO `jz_training_department` VALUES ('1', '人民大学商学院', '三老师', '400-8352-114', '13667919872', '442699841@qq.com', '333333', 'www.jyforyou.com', '江西省', '', '1539237910', '1539238443', null);

-- ----------------------------
-- Table structure for jz_training_detaile
-- ----------------------------
DROP TABLE IF EXISTS `jz_training_detaile`;
CREATE TABLE `jz_training_detaile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `training_name` varchar(255) NOT NULL COMMENT '名称',
  `training_type` varchar(255) NOT NULL COMMENT '类别',
  `training_day` int(11) NOT NULL COMMENT '课时',
  `training_price` double(50,0) NOT NULL COMMENT '价格',
  `training_lecturer` varchar(25) DEFAULT NULL COMMENT '讲师',
  `training_id` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='//培训项目课程';

-- ----------------------------
-- Records of jz_training_detaile
-- ----------------------------
INSERT INTO `jz_training_detaile` VALUES ('1', '1', '组织与人力资源管理课程', '10', '50000', '张三', '6', '1539309460', '1539324625', null);
INSERT INTO `jz_training_detaile` VALUES ('2', '1', '组织与人力资源管理课程', '10', '50000', '张三', '6', '1539324625', '1539324625', null);

-- ----------------------------
-- Table structure for jz_training_lecturer
-- ----------------------------
DROP TABLE IF EXISTS `jz_training_lecturer`;
CREATE TABLE `jz_training_lecturer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lecturer_name` varchar(25) NOT NULL COMMENT '讲师名称',
  `lecturer_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型 0=内部讲师 1=外部讲师',
  `lecturer_title` varchar(25) NOT NULL COMMENT '课程名称',
  `lecturer_phone` bigint(11) NOT NULL COMMENT '电话',
  `lecturer_email` varchar(25) DEFAULT NULL COMMENT '邮箱',
  `lecturer_code` int(11) DEFAULT NULL COMMENT '邮编',
  `lecturer_addtess` varchar(255) DEFAULT NULL COMMENT '地址',
  `lecturer_certificate_n` varchar(25) DEFAULT NULL COMMENT '内部证书',
  `lecturer_certificate_ntime` int(11) DEFAULT NULL COMMENT '内部证书发证日期',
  `lecturer_certificate_w` varchar(25) DEFAULT NULL COMMENT '外部证书',
  `lecturer_certificate_wtime` int(11) DEFAULT NULL COMMENT '外部证书时间',
  `lecturer_unit` varchar(255) DEFAULT NULL COMMENT '备注',
  `lecturer_file` varchar(25) DEFAULT NULL,
  `lecturer_obj` tinyint(1) NOT NULL COMMENT '创建人',
  `lecturer_time` int(11) NOT NULL COMMENT '创建时间',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='//培训讲师';

-- ----------------------------
-- Records of jz_training_lecturer
-- ----------------------------
INSERT INTO `jz_training_lecturer` VALUES ('1', '张三', '0', 'EMBA、MBA及高管教育', '12345678915', '123@q.com', '123456', '撒大洼县', '', '1539187200', '', '1539187200', '说到底', '', '48', '1539187200', '1539223536', '1539226430', null);

-- ----------------------------
-- Table structure for jz_type_all
-- ----------------------------
DROP TABLE IF EXISTS `jz_type_all`;
CREATE TABLE `jz_type_all` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `indentify` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jz_type_all
-- ----------------------------
INSERT INTO `jz_type_all` VALUES ('5', '供应商类型', '0', 'supplier', '1535531342', '1', '1535531342');
INSERT INTO `jz_type_all` VALUES ('6', '支付类型', '0', 'pay', '1535531367', '1', '1535531367');
INSERT INTO `jz_type_all` VALUES ('14', '供应商规模', '0', 'supplier_size', '1535683179', '1', '1535683179');
INSERT INTO `jz_type_all` VALUES ('24', '运输方式', '0', 'transport', '1536042736', '1', '1536042736');
INSERT INTO `jz_type_all` VALUES ('33', '证书类型', '0', 'certificate_type', '1536288014', '1', '1536288014');
INSERT INTO `jz_type_all` VALUES ('34', '一级注册建造师', '33', 'certificate_type', '1536288120', '1', '1536288120');
INSERT INTO `jz_type_all` VALUES ('35', '二级注册建造师', '33', 'certificate_type', '1536291755', '1', '1536291755');
INSERT INTO `jz_type_all` VALUES ('36', '支付宝', '6', 'pay', '1536291755', '1', '1536291755');
INSERT INTO `jz_type_all` VALUES ('41', '微信', '6', 'pay', '1536569334', '1', '1536569334');
INSERT INTO `jz_type_all` VALUES ('42', '刘晨油漆特工', '5', 'supplier', '1536892521', '1', '1536892521');
INSERT INTO `jz_type_all` VALUES ('43', '项目类型', '0', 'project_type', '1537427185', '1', '1537427185');
INSERT INTO `jz_type_all` VALUES ('44', '大项目', '43', 'project_type', '1537427204', '1', '1537427204');
INSERT INTO `jz_type_all` VALUES ('45', '小项目', '43', 'project_type', '1537427216', '1', '1537427216');
INSERT INTO `jz_type_all` VALUES ('46', '项目等级', '0', 'project_grade', '1537427380', '1', '1537427380');
INSERT INTO `jz_type_all` VALUES ('47', '一级', '46', 'project_grade', '1537427399', '1', '1537427399');
INSERT INTO `jz_type_all` VALUES ('48', '二级', '46', 'project_grade', '1537427411', '1', '1537427411');
INSERT INTO `jz_type_all` VALUES ('50', '交货方式', '0', 'finish_type', '1539049110', '1', '1539049110');
INSERT INTO `jz_type_all` VALUES ('51', '海运', '50', 'finish_type', '1539049126', '1', '1539049126');
INSERT INTO `jz_type_all` VALUES ('52', '币种', '0', 'currency', '1539049191', '1', '1539049191');
INSERT INTO `jz_type_all` VALUES ('53', '人民币', '52', 'currency', '1539049226', '1', '1539049226');
INSERT INTO `jz_type_all` VALUES ('54', '合同类型', '0', 'contract_labor', '1539587762', '1', '1539587762');
INSERT INTO `jz_type_all` VALUES ('55', '固定期限劳动合同', '54', 'contract_labor', '1539587795', '1', '1539587795');
INSERT INTO `jz_type_all` VALUES ('56', '无固定期限劳动合同', '54', 'contract_labor', '1539587811', '1', '1539587811');
INSERT INTO `jz_type_all` VALUES ('57', '劳务派遣合同', '54', 'contract_labor', '1539587821', '1', '1539587821');
INSERT INTO `jz_type_all` VALUES ('58', '非全日制用工合同', '54', 'contract_labor', '1539587845', '1', '1539587845');
INSERT INTO `jz_type_all` VALUES ('59', '请假类型', '0', 'leave_type', '1539590500', '1', '1539590500');
INSERT INTO `jz_type_all` VALUES ('60', '产假', '59', 'leave_type', '1539590547', '1', '1539590547');
INSERT INTO `jz_type_all` VALUES ('61', '婚假', '59', 'leave_type', '1539590559', '1', '1539590559');
INSERT INTO `jz_type_all` VALUES ('62', '病假', '59', 'leave_type', '1539590578', '1', '1539590578');
INSERT INTO `jz_type_all` VALUES ('63', '出差', '59', 'leave_type', '1539590592', '1', '1539590592');
INSERT INTO `jz_type_all` VALUES ('64', '事假', '59', 'leave_type', '1539590703', '1', '1539590703');
INSERT INTO `jz_type_all` VALUES ('65', '调休', '59', 'leave_type', '1539590757', '1', '1539590757');
INSERT INTO `jz_type_all` VALUES ('66', '公告类型', '0', 'notice_type', '1539825598', '1', '1539825598');
INSERT INTO `jz_type_all` VALUES ('67', '公司公告', '66', 'notice_type', '1539825615', '1', '1539825615');
INSERT INTO `jz_type_all` VALUES ('70', '大规模', '14', 'supplier_size', '1539928627', '1', '1539928627');
INSERT INTO `jz_type_all` VALUES ('71', '供应商所属行业', '0', 'supplier_industry', '1539929396', '1', '1539929396');
INSERT INTO `jz_type_all` VALUES ('72', '建筑', '71', 'supplier_industry', '1539929422', '1', '1539929422');
INSERT INTO `jz_type_all` VALUES ('73', '钢结构', '71', 'supplier_industry', '1539929441', '1', '1539929441');
INSERT INTO `jz_type_all` VALUES ('74', '供应商来源', '0', 'supplier_source', '1539929501', '1', '1539929501');
INSERT INTO `jz_type_all` VALUES ('75', '互联网', '74', 'supplier_source', '1539929589', '1', '1539929589');
INSERT INTO `jz_type_all` VALUES ('76', '供应商等级', '0', 'supplier_class', '1539929631', '1', '1539929631');
INSERT INTO `jz_type_all` VALUES ('77', '一级', '76', 'supplier_class', '1539929695', '1', '1539929695');
INSERT INTO `jz_type_all` VALUES ('78', '供应商区域', '0', 'supplier_area', '1539929796', '1', '1539929796');
INSERT INTO `jz_type_all` VALUES ('79', '江西', '78', 'supplier_area', '1539929809', '1', '1539929809');

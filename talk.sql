/*
Navicat MySQL Data Transfer

Source Server         : app
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : talk

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-07-06 12:13:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` varchar(255) DEFAULT NULL,
  `to_user` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `from_user` (`from_user`) USING BTREE,
  KEY `to_user` (`to_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '精石为开', '群', 'hi', '1530731140');
INSERT INTO `message` VALUES ('2', '中山', '群', '大家好啊', '1530731186');
INSERT INTO `message` VALUES ('3', '中山', '群', '有什么事情可以商量啊', '1530731201');
INSERT INTO `message` VALUES ('4', '精石为开', '群', '发点红包啊', '1530731212');
INSERT INTO `message` VALUES ('5', '如来', '群', 'hi', '1530731921');
INSERT INTO `message` VALUES ('6', '老子', '群', '大家好', '1530732030');
INSERT INTO `message` VALUES ('7', '如来', '老子', '老子@你好啦', '1530732053');
INSERT INTO `message` VALUES ('8', '如来', '群', 'hi', '1530732215');
INSERT INTO `message` VALUES ('9', '孔明', '群', '大家好啊', '1530732237');
INSERT INTO `message` VALUES ('10', '孔明', '如来', '如来@你不在家吗', '1530732270');
INSERT INTO `message` VALUES ('11', '如来', '群', '大家好', '1530732423');
INSERT INTO `message` VALUES ('12', '孔明', '群', '如来你好啊', '1530732435');
INSERT INTO `message` VALUES ('13', '如来', '土行孙', '土行孙@你在哪里啊', '1530732450');
INSERT INTO `message` VALUES ('14', '如来', '群', '诸位有空闲可来我佛处出家', '1530732601');
INSERT INTO `message` VALUES ('15', '土行孙', '群', 'hi', '1530733481');
INSERT INTO `message` VALUES ('16', '土行孙', '群', 'hi', '1530733584');
INSERT INTO `message` VALUES ('17', '土行孙', '群', 'help', '1530733586');
INSERT INTO `message` VALUES ('18', '土行孙', '群', 'hi', '1530733651');
INSERT INTO `message` VALUES ('19', '土行孙', '群', 'hi', '1530733746');
INSERT INTO `message` VALUES ('20', '土行孙', '群', 'hi', '1530734116');
INSERT INTO `message` VALUES ('21', '土行孙', '群', 'hi', '1530734171');
INSERT INTO `message` VALUES ('22', '孔明', '群', 'hi', '1530734201');
INSERT INTO `message` VALUES ('23', '孔明', '群', '大家好啊', '1530734258');
INSERT INTO `message` VALUES ('24', '如来', '群', 'hi', '1530744318');
INSERT INTO `message` VALUES ('25', '暴君纣王', '群', '有事出班，无事退朝', '1530744371');
INSERT INTO `message` VALUES ('26', '暴君纣王', '群', '来人，传我旨意，宣四镇诸侯见驾', '1530744485');
INSERT INTO `message` VALUES ('27', '奉待官', '群', '遵旨，宣四路诸侯觐见', '1530744506');
INSERT INTO `message` VALUES ('28', '如来', '群', '无道暴君', '1530744559');
INSERT INTO `message` VALUES ('29', '太清真人', '群', 'hi', '1530744744');
INSERT INTO `message` VALUES ('30', '土行孙', '群', '你好啊', '1530744752');
INSERT INTO `message` VALUES ('31', '太清真人', '群', '我很好', '1530744761');
INSERT INTO `message` VALUES ('32', '月殿嫦娥', '群', '大家好啊，我下来了', '1530744806');
INSERT INTO `message` VALUES ('33', '烯豆粉', '群', '有人吗', '1530744845');
INSERT INTO `message` VALUES ('34', '月殿嫦娥', '群', '有的，老表', '1530744854');
INSERT INTO `message` VALUES ('35', '烯豆粉', '群', '哦，大家是做什么的啊', '1530744922');
INSERT INTO `message` VALUES ('36', '烯豆粉', '群', '有没有人捡垃圾的啊', '1530744933');
INSERT INTO `message` VALUES ('37', '月殿嫦娥', '群', '有人不', '1530745036');
INSERT INTO `message` VALUES ('38', '月殿嫦娥', '群', '有的说话啊', '1530745047');
INSERT INTO `message` VALUES ('39', '土行孙', '群', '有的你不要乱叫', '1530745063');
INSERT INTO `message` VALUES ('40', '暴君纣王', '群', '大家在吗', '1530745103');
INSERT INTO `message` VALUES ('41', '暴君纣王', '群', '在的说话啊', '1530745107');
INSERT INTO `message` VALUES ('42', '暴君纣王', '群', '有没有人啊', '1530745128');
INSERT INTO `message` VALUES ('43', '月殿嫦娥', '群', '有的，你不要乱叫', '1530745142');
INSERT INTO `message` VALUES ('44', '土行孙', '群', '这家伙天天瞎叫', '1530745152');
INSERT INTO `message` VALUES ('45', '月殿嫦娥', '群', 'ok', '1530745193');
INSERT INTO `message` VALUES ('46', '月殿嫦娥', '群', '有没有人会吹的', '1530745207');
INSERT INTO `message` VALUES ('47', '月殿嫦娥', '群', '出来吹啊', '1530745209');
INSERT INTO `message` VALUES ('48', '暴君纣王', '群', '没有，你走吧', '1530745219');
INSERT INTO `message` VALUES ('49', '暴君纣王', '群', '不要来这里瞎叫了', '1530745223');
INSERT INTO `message` VALUES ('50', '土行孙', '群', '这家伙费话多的很', '1530745236');
INSERT INTO `message` VALUES ('51', '暴君纣王', '群', 'ok', '1530745299');
INSERT INTO `message` VALUES ('52', '暴君纣王', '群', 'these are some body', '1530745305');
INSERT INTO `message` VALUES ('53', '暴君纣王', '群', 'nice ', '1530745309');
INSERT INTO `message` VALUES ('54', '暴君纣王', '群', 'accommodate', '1530745316');
INSERT INTO `message` VALUES ('55', '暴君纣王', '群', 'assist', '1530745325');
INSERT INTO `message` VALUES ('56', '暴君纣王', '群', 'trumpt', '1530745333');
INSERT INTO `message` VALUES ('57', 'lucy', '群', 'is', '1530745363');
INSERT INTO `message` VALUES ('58', 'lucy', '群', 'it', '1530745368');
INSERT INTO `message` VALUES ('59', 'lucy', '群', 'sdfds', '1530745369');
INSERT INTO `message` VALUES ('60', 'lucy', '群', 'ok', '1530745371');
INSERT INTO `message` VALUES ('61', 'lucy', '群', 'sdfdf', '1530745373');
INSERT INTO `message` VALUES ('62', '月殿嫦娥', '群', '有人吗', '1530745438');
INSERT INTO `message` VALUES ('63', '月殿嫦娥', '群', '没有的话就滚蛋', '1530745444');
INSERT INTO `message` VALUES ('64', '渣渣灰', '群', '还有谁', '1530745626');
INSERT INTO `message` VALUES ('65', '渣渣灰', '群', '有没有人在啊', '1530745630');
INSERT INTO `message` VALUES ('66', '渣渣灰', '群', '没有人的话我就走了', '1530745636');
INSERT INTO `message` VALUES ('67', '渣渣灰', '土行孙', '土行孙@你在做啥', '1530745680');
INSERT INTO `message` VALUES ('68', '渣渣灰', '杰克', '杰克@你有空吗', '1530745697');
INSERT INTO `message` VALUES ('69', '渣渣灰', '群', '都没有人回我的话吗', '1530745706');
INSERT INTO `message` VALUES ('70', '渣渣灰', '群', '靠', '1530745708');
INSERT INTO `message` VALUES ('71', '渣渣灰', '群', '居然没有回答我的问题', '1530745718');
INSERT INTO `message` VALUES ('72', '渣渣灰', '群', '恐怖', '1530745720');
INSERT INTO `message` VALUES ('73', '索尼', '群', '整个群就你费话最多了', '1530745737');
INSERT INTO `message` VALUES ('74', '索尼', '群', '整天一堆费话', '1530745744');
INSERT INTO `message` VALUES ('75', '索尼', '', '@%!#%!@%!@%#@%!#%!', '1530745751');
INSERT INTO `message` VALUES ('76', '索尼', '群', '%&#$&#&%$&', '1530745759');
INSERT INTO `message` VALUES ('77', '渣渣灰', '群', '你在说什么', '1530745767');
INSERT INTO `message` VALUES ('78', '渣渣灰', '群', '能不能好好说话啊', '1530745773');
INSERT INTO `message` VALUES ('79', '渣渣灰', '群', '一天天的', '1530745776');
INSERT INTO `message` VALUES ('80', '渣渣灰', '群', '瞎扯环境', '1530745783');
INSERT INTO `message` VALUES ('81', '渣渣灰', '群', '楏', '1530745785');
INSERT INTO `message` VALUES ('82', 'lucy', '群', 'jjjg', '1530746478');
INSERT INTO `message` VALUES ('83', 'lucy', '群', 'dfsdfs', '1530746633');
INSERT INTO `message` VALUES ('84', 'lucy', '群', 'dsfds', '1530746634');
INSERT INTO `message` VALUES ('85', 'lucy', '群', 'wrwer', '1530746636');
INSERT INTO `message` VALUES ('86', 'lucy', '群', 'hi', '1530746657');
INSERT INTO `message` VALUES ('87', '土行孙', '群', 'ok', '1530746705');
INSERT INTO `message` VALUES ('88', 'lucy', '群', 'hello', '1530746722');
INSERT INTO `message` VALUES ('89', 'lucy', '群', 'lsfdsfsd', '1530746737');
INSERT INTO `message` VALUES ('90', 'lucy', '群', 'llll', '1530746739');
INSERT INTO `message` VALUES ('91', 'lucy', '群', 'sdfddsfdsf', '1530746744');
INSERT INTO `message` VALUES ('92', '土行孙', '群', 'hi', '1530815146');
INSERT INTO `message` VALUES ('93', '土行孙', '群', 'hi', '1530815253');
INSERT INTO `message` VALUES ('94', '元始天尊', '群', '大家好啊', '1530815770');
INSERT INTO `message` VALUES ('95', '元始天尊', '群', '这框架咋样啊', '1530815820');
INSERT INTO `message` VALUES ('96', '土行孙', '群', '[0]', '1530816524');
INSERT INTO `message` VALUES ('97', '土行孙', '群', 'hi', '1530817936');
INSERT INTO `message` VALUES ('98', '土行孙', '群', 'hi', '1530819136');
INSERT INTO `message` VALUES ('99', '元始天尊', '群', 'dsfdsf', '1530820225');
INSERT INTO `message` VALUES ('100', '元始天尊', '群', '以为没有人说话了', '1530820233');
INSERT INTO `message` VALUES ('101', '元始天尊', '群', '现在还有人吗', '1530820237');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `qq` char(20) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `login_time` int(11) DEFAULT NULL,
  `ip` char(50) DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `qq` (`qq`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('22', 'jack', '1111', '1530664277', '1530664277', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('23', '刘备', '2222', '1530671170', '1530671170', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('24', 'tom', '3333', '1530671207', '1530671207', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('25', '张飞', '5555', '1530671275', '1530671275', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('26', '孙大圣', '6666', '1530671291', '1530671291', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('28', 'lucy', '8888', '1530725183', '1530725183', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('29', '中大夫', '9999', '1530725270', '1530725270', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('30', '费仲', '0000', '1530725325', '1530725325', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('31', '首相商容', '1234', '1530725455', '1530725455', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('32', '玉虚宫－普贤真人', '8999', '1530725505', '1530725505', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('33', '太清真人', '4534', '1530725564', '1530725564', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('34', '文殊菩萨', '8763', '1530725595', '1530725595', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('35', '玉虚宫－广成子', '0099', '1530725698', '1530725698', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('36', '月殿嫦娥', '8732', '1530725727', '1530725727', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('37', '元始天尊', '3245', '1530725829', '1530725829', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('38', '暴君纣王', '8324', '1530725853', '1530725853', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('39', '老君', '9342', '1530725976', '1530725976', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('40', '上大夫', '0334', '1530726013', '1530726013', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('41', '土行孙', '0932', '1530727441', '1530727441', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('42', '诛仙阵', '93453', '1530727769', '1530727769', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('43', '万仙阵', '1354141', '1530727814', '1530727814', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('44', '八卦阵', '435235', '1530727843', '1530727843', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('45', '如来', '425235312', '1530728806', '1530728806', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('46', '观音', '466235', '1530728824', '1530728824', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('47', '增广贤文', '6346252', '1530728903', '1530728903', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('48', '普渡大师', '994523', '1530728937', '1530728937', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('49', '礼度贤淑', '436436252', '1530729060', '1530729060', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('50', '闻风而动', '7352526', '1530729073', '1530729073', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('51', '空恨大师', '7347252', '1530729144', '1530729144', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('52', '烯豆粉', '72526', '1530729169', '1530729169', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('53', '和申', '2637215', '1530729252', '1530729252', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('54', '老油条', '573624', '1530730590', '1530730590', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('55', '鹇', '3574252', '1530730605', '1530730605', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('56', '法海', '362526', '1530730791', '1530730791', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('57', '白娘子', '725262', '1530730804', '1530730804', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('58', '仿古', '262351325', '1530730898', '1530730898', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('59', '炉子', '7626235', '1530730911', '1530730911', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('60', '老子', '346262', '1530730941', '1530730941', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('61', '孔子', '2452351', '1530730948', '1530730948', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('62', '孙子', '2535135', '1530730987', '1530730987', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('63', '孔明', '3523513', '1530730998', '1530730998', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('64', '孔明', '325235312', '1530731099', '1530731099', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('65', '精石为开', '626262', '1530731135', '1530731135', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('66', '中山', '74626', '1530731178', '1530731178', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('67', '奉待官', '9322', '1530744442', '1530744442', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('68', '杰克', '251241', '1530745488', '1530745488', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('69', '索尼', '251515', '1530745515', '1530745515', '127.0.0.1', '1');
INSERT INTO `user` VALUES ('70', '渣渣灰', '5151521412', '1530745608', '1530745608', '127.0.0.1', '1');

/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : doubanApi

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 07/05/2017 10:37:17 AM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `hotemoji`
-- ----------------------------
DROP TABLE IF EXISTS `hotemoji`;
CREATE TABLE `hotemoji` (
  `word` varchar(255) NOT NULL,
  `hot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `hotemoji`
-- ----------------------------
BEGIN;
INSERT INTO `hotemoji` VALUES ('变形金刚5', 'true'), ('猪太郎的夏天', 'true'), ('异形：契约', 'true'), ('冈仁波齐', 'true'), ('新木乃伊', null), ('摔跤吧！爸爸', null), ('缉枪', null), ('神奇女侠', null), ('原谅他77次', null);
COMMIT;

-- ----------------------------
--  Table structure for `movielist`
-- ----------------------------
DROP TABLE IF EXISTS `movielist`;
CREATE TABLE `movielist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rating` double(11,1) DEFAULT '8.0',
  `description` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `movielist`
-- ----------------------------
BEGIN;
INSERT INTO `movielist` VALUES ('12', '变形金刚5：最后的骑士', '4.9', '变形金刚随时变形状！！！', '正在热映', 'https://img1.doubanio.com/view/movie_poster_cover/lpst/public/p2462475058.jpg'), ('13', '猪太郎的夏天', '4.9', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2382115780.jpg'), ('14', '异形：契约', '7.4', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2459944375.jpg'), ('15', '冈仁波齐', '7.7', '123', '正在热映', 'https://img1.doubanio.com/view/movie_poster_cover/lpst/public/p2462387248.jpg'), ('16', '新木乃伊', '4.8', '123', '正在热映', 'https://img1.doubanio.com/view/movie_poster_cover/lpst/public/p2459198108.jpg'), ('17', '摔跤吧！爸爸', '9.2', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2457983084.jpg'), ('18', '缉枪', '6.8', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2461747793.jpg'), ('19', '神奇女侠', '7.2', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2460006593.jpg'), ('20', '我不做大哥好多年', '5.2', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2462611862.jpg'), ('21', '原谅他77次', '7.0', '123', '正在热映', 'https://img1.doubanio.com/view/movie_poster_cover/lpst/public/p2464315908.jpg'), ('22', '哆啦A梦：大雄的南极冰冰凉大冒险', '6.6', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2459600525.jpg'), ('23', '重返·狼群', '8.0', '123', '正在热映', 'https://img1.doubanio.com/view/movie_poster_cover/lpst/public/p2461834877.jpg'), ('24', '加勒比海盗5：死无对证', '7.3', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2459723975.jpg'), ('25', '忠爱无言', '7.4', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2459193246.jpg'), ('26', '惊门', '0.0', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2461147410.jpg'), ('27', '吃吃的爱', '6.1', '123', '正在热映', 'https://img1.doubanio.com/view/movie_poster_cover/lpst/public/p2459199108.jpg'), ('28', '我的爸爸是国王', '0.0', '123', '正在热映', 'https://img1.doubanio.com/view/movie_poster_cover/lpst/public/p2460135107.jpg'), ('29', '三只小猪2', '3.8', '123', '正在热映', 'https://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2456603030.jpg'), ('30', '李雷和韩梅梅', '3.0', '123', '正在热映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2461589633.jpg'), ('31', '记忆大师', '7.3', '123', '正在热映', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2455156816.jpg'), ('32', '我是医生', '0.0', '我是医生，谁知道', '即将上映', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2462048588.jpg'), ('33', '逆时营救', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2457209983.jpg'), ('34', '反转人生', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2462483261.jpg'), ('36', '冯梦龙传奇', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2462483594.jpg'), ('37', '乡关何处', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2342307184.jpg'), ('38', '海鹰战警', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2450303611.jpg'), ('39', '血战湘江', '0.0', '123', '即将上映', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2463798689.jpg'), ('40', '再见时光', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2466335295.jpg'), ('41', '明月几时有', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2459666573.jpg'), ('42', '牧野传奇', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2461163100.jpg'), ('43', '与君相恋100次', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2456180010.jpg'), ('44', '神偷奶爸3', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2460388855.jpg'), ('45', '绝世高手', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2462744662.jpg'), ('46', '秘果', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2445394852.jpg'), ('47', '北纬30度之爱', '0.0', '123', '即将上映', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2465956267.jpg'), ('48', '悟空传', '0.0', '123', '即将上映', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p2462120825.jpg'), ('49', '大护法', '0.0', '这是修改的简介', '即将上映', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2460306759.jpg'), ('51', '肖申克的救赎', '9.6', '大家好我是肖申克', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p480747492.jpg'), ('52', '霸王别姬', '9.5', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p1910813120.jpg'), ('53', '这个杀手不太冷', '9.4', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p511118051.jpg'), ('54', '阿甘正传', '9.4', '', 'top250', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p510876377.jpg'), ('55', '美丽人生', '9.5', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p510861873.jpg'), ('56', '千与千寻', '9.2', '', 'top250', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p1910830216.jpg'), ('57', '辛德勒的名单', '9.4', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p492406163.jpg'), ('58', '泰坦尼克号', '9.2', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p457760035.jpg'), ('59', '盗梦空间', '9.2', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p513344864.jpg'), ('60', '机器人总动员', '9.3', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p449665982.jpg'), ('61', '海上钢琴师', '9.2', '', 'top250', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p511146957.jpg'), ('62', '三傻大闹宝莱坞', '9.1', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p579729551.jpg'), ('63', '忠犬八公的故事', '9.2', '', 'top250', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p524964016.jpg'), ('64', '放牛班的春天', '9.2', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p1910824951.jpg'), ('65', '大话西游之大圣娶亲', '9.2', '', 'top250', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p2455050536.jpg'), ('66', '教父', '9.2', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p1853232210.jpg'), ('67', '龙猫', '9.1', '', 'top250', 'http://img3.doubanio.com/view/movie_poster_cover/lpst/public/p1910829638.jpg'), ('68', '楚门的世界', '9.0', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p479682972.jpg'), ('69', '乱世佳人', '9.2', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p1963126880.jpg'), ('70', '天堂电影院', '9.1', '', 'top250', 'http://img7.doubanio.com/view/movie_poster_cover/lpst/public/p1910901025.jpg');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

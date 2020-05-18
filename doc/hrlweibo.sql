/*
Navicat MySQL Data Transfer

Source Server         : learn
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : hrlweibo

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-05-02 22:22:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hrl_comment`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_comment`;
CREATE TABLE `hrl_comment` (
  `commentid` bigint(255) NOT NULL AUTO_INCREMENT,
  `weiboid` bigint(255) DEFAULT NULL,
  `userid` bigint(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `zannum` int(11) DEFAULT NULL,
  `tail` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_comment
-- ----------------------------
INSERT INTO `hrl_comment` VALUES ('1', '1', '48', '武汉奥利给！！！', '2', 'weibo.com', '2019-05-22 00:00:00');
INSERT INTO `hrl_comment` VALUES ('2', '1', '49', '我要吃，我要吃，三大碗！！！热干面', '3142', 'weibo.com', '2020-03-29 00:00:00');
INSERT INTO `hrl_comment` VALUES ('3', '1', '50', '煎饼卷大葱给热干面贺喜。', '44', 'weibo.com', '2020-03-29 00:00:00');
INSERT INTO `hrl_comment` VALUES ('4', '1', '51', '可爱的总会动人', '25433', 'weibo.com', '2020-03-29 00:00:00');
INSERT INTO `hrl_comment` VALUES ('5', '1', '52', '河南烩面发来贺电！', '533', 'weibo.com', '2020-03-29 00:00:00');
INSERT INTO `hrl_comment` VALUES ('6', '1', '53', '细节好评.. 门上还贴着他们上次加油打call的合照', '111', 'weibo.com', '2020-03-29 00:00:00');
INSERT INTO `hrl_comment` VALUES ('7', '1', '54', '湖北多个县市已经连续二十多天无新增病例，偏远的地区更是一个多月没有新增！为服从国家的大局安排，我们一直居家自我隔离！湖北人不是病毒，也不是瘟疫。疫情无情，人有情；请少一些歧视多一分善意。', '1', 'weibo.com', '2020-03-29 15:27:04');
INSERT INTO `hrl_comment` VALUES ('8', '1', '55', '为啥他们天顶盖都被掀开了', '12', 'weibo.com', '2020-04-12 14:23:21');
INSERT INTO `hrl_comment` VALUES ('9', '1', '56', '我加5块钱的芝麻酱', '3', 'weibo.com', '2020-04-12 14:23:24');
INSERT INTO `hrl_comment` VALUES ('10', '1', '57', '广东虾饺发来贺电', '41', 'weibo.com', '2020-04-12 14:23:26');
INSERT INTO `hrl_comment` VALUES ('11', '1', '58', '还想去武汉吃粉！武汉的粉是真心好吃！', '31', 'weibo.com', '2020-04-12 15:01:46');
INSERT INTO `hrl_comment` VALUES ('12', '1', '59', '今年的樱花可能错过了   但是湖北的这个春天却格外的美丽  感谢每一位帮助过湖北的英雄', '21', 'weibo.com', '2020-04-02 20:55:29');
INSERT INTO `hrl_comment` VALUES ('13', '1', '60', '我也要，就是有点干，哈哈哈哈哈哈哈', '21', 'weibo.com', '2020-04-12 21:10:55');
INSERT INTO `hrl_comment` VALUES ('14', '1', '1', 'daaddadadaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '0', 'weibo.com', '2020-04-16 20:51:41');
INSERT INTO `hrl_comment` VALUES ('15', '1', '1', 'da', '0', 'weibo.com', '2020-04-16 20:51:55');
INSERT INTO `hrl_comment` VALUES ('16', '1', '1', 'didi', '0', 'weibo.com', '2020-04-16 20:52:53');
INSERT INTO `hrl_comment` VALUES ('17', '1', '1', 'laotie', '0', 'weibo.com', '2020-04-16 21:01:02');
INSERT INTO `hrl_comment` VALUES ('18', '1', '1', 'heihei', '0', 'weibo.com', '2020-04-16 21:01:18');
INSERT INTO `hrl_comment` VALUES ('19', '1', '1', 'laji', '0', 'weibo.com', '2020-04-16 21:02:32');
INSERT INTO `hrl_comment` VALUES ('20', '1', '1', 'cccc', '0', 'weibo.com', '2020-04-16 21:03:26');
INSERT INTO `hrl_comment` VALUES ('21', '1', '1', 'c', '0', 'weibo.com', '2020-04-16 21:04:45');
INSERT INTO `hrl_comment` VALUES ('22', '1', '1', 'dadadaad', '0', 'weibo.com', '2020-04-18 18:11:10');
INSERT INTO `hrl_comment` VALUES ('23', '1', '1', 'ww', '0', 'weibo.com', '2020-04-24 14:09:30');
INSERT INTO `hrl_comment` VALUES ('24', '1', '1', 'daadadad', '0', null, '2020-05-02 21:44:17');
INSERT INTO `hrl_comment` VALUES ('25', '1', '1', 'daxie', '0', null, '2020-05-02 21:44:34');

-- ----------------------------
-- Table structure for `hrl_comment_reply`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_comment_reply`;
CREATE TABLE `hrl_comment_reply` (
  `crid` bigint(255) NOT NULL AUTO_INCREMENT,
  `commentid` int(11) DEFAULT NULL,
  `cruserid` bigint(255) DEFAULT NULL,
  `crcontent` varchar(255) DEFAULT NULL,
  `crzannum` int(11) DEFAULT NULL,
  `crcreateTime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`crid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_comment_reply
-- ----------------------------
INSERT INTO `hrl_comment_reply` VALUES ('1', '1', '2', '工人拖欠工资的事情不解决下吗？？？是火神山还是雷神山来着？？？？', '111', '2019-05-22 00:00:47.000000');
INSERT INTO `hrl_comment_reply` VALUES ('2', '1', '10', '第一名那个是海外号，明白了,大家直接举报就完事了', '3', '2020-03-29 15:04:22.000000');
INSERT INTO `hrl_comment_reply` VALUES ('3', '1', '7', '回复啦3', '3', '2020-03-29 15:04:25.000000');
INSERT INTO `hrl_comment_reply` VALUES ('4', '2', '7', '回复啦11', '1', '2020-03-29 15:04:27.000000');
INSERT INTO `hrl_comment_reply` VALUES ('5', '2', '7', '回复啦22', '43', '2020-03-29 15:04:30.000000');
INSERT INTO `hrl_comment_reply` VALUES ('6', '3', '7', '回复啦111', '3', '2020-03-29 15:04:35.000000');
INSERT INTO `hrl_comment_reply` VALUES ('7', '1', '1', 'aaaaaa', '0', '2020-04-12 22:16:00.000000');
INSERT INTO `hrl_comment_reply` VALUES ('8', '1', '1', 'aaaaaa', '0', '2020-04-12 22:16:04.000000');
INSERT INTO `hrl_comment_reply` VALUES ('9', '1', '1', 'aa', '0', '2020-04-16 22:37:39.000000');
INSERT INTO `hrl_comment_reply` VALUES ('10', '1', '1', 'aaa', '0', '2020-04-16 22:37:41.000000');
INSERT INTO `hrl_comment_reply` VALUES ('11', '1', '1', 'aaa', '0', '2020-04-16 22:37:43.000000');
INSERT INTO `hrl_comment_reply` VALUES ('12', '1', '1', 'a', '0', '2020-04-16 22:38:25.000000');
INSERT INTO `hrl_comment_reply` VALUES ('13', '1', '1', 'a', '0', '2020-04-16 22:38:27.000000');
INSERT INTO `hrl_comment_reply` VALUES ('14', '1', '1', 'a', '0', '2020-04-16 22:38:30.000000');
INSERT INTO `hrl_comment_reply` VALUES ('15', '1', '1', 'a', '0', '2020-04-16 22:38:33.000000');
INSERT INTO `hrl_comment_reply` VALUES ('16', '1', '1', 'dadaad', '0', '2020-04-18 18:20:54.000000');
INSERT INTO `hrl_comment_reply` VALUES ('17', '1', '1', 'qqq', '0', '2020-04-18 18:21:05.000000');
INSERT INTO `hrl_comment_reply` VALUES ('18', '1', '1', 'q', '0', '2020-04-18 18:21:19.000000');
INSERT INTO `hrl_comment_reply` VALUES ('19', '1', '1', 'd', '0', '2020-04-18 18:27:58.000000');
INSERT INTO `hrl_comment_reply` VALUES ('20', '1', '1', 'cczccccc', '0', '2020-04-18 18:36:07.000000');
INSERT INTO `hrl_comment_reply` VALUES ('21', '1', '1', 'ppp', '0', '2020-04-18 18:37:58.000000');
INSERT INTO `hrl_comment_reply` VALUES ('22', '1', '1', 'eee', '0', '2020-04-18 18:38:15.000000');
INSERT INTO `hrl_comment_reply` VALUES ('23', '1', '1', 'dddd', '0', '2020-04-18 18:39:09.000000');
INSERT INTO `hrl_comment_reply` VALUES ('24', '1', '1', 'eeqeq', '0', '2020-04-18 18:39:24.000000');
INSERT INTO `hrl_comment_reply` VALUES ('25', '1', '1', 'eqeqeqqe', '0', '2020-04-18 18:40:14.000000');
INSERT INTO `hrl_comment_reply` VALUES ('26', '1', '1', 'dasini', '0', '2020-04-18 18:40:31.000000');
INSERT INTO `hrl_comment_reply` VALUES ('27', '23', '1', 'ddd', '0', '2020-04-24 14:09:56.000000');
INSERT INTO `hrl_comment_reply` VALUES ('28', '23', '1', 'haha', '0', '2020-05-02 21:28:23.000000');

-- ----------------------------
-- Table structure for `hrl_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_feedback`;
CREATE TABLE `hrl_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `img6` varchar(255) DEFAULT NULL,
  `submittime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `hrl_find_hotpoint`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_find_hotpoint`;
CREATE TABLE `hrl_find_hotpoint` (
  `weibo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `zhuanfa_num` bigint(20) DEFAULT NULL,
  `like_num` bigint(20) DEFAULT NULL,
  `comment_num` bigint(20) DEFAULT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `is_zhunfa` int(10) DEFAULT NULL,
  `zf_weiboid` bigint(255) DEFAULT NULL,
  `pic1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic4` varchar(255) DEFAULT NULL,
  `pic5` varchar(255) DEFAULT NULL,
  `pic6` varchar(255) DEFAULT NULL,
  `pic7` varchar(255) DEFAULT NULL,
  `pic8` varchar(255) DEFAULT NULL,
  `pic9` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weibo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_find_hotpoint
-- ----------------------------
INSERT INTO `hrl_find_hotpoint` VALUES ('1', '2', '《复仇者联盟4》中[钢铁侠]托尼斯塔克在哄小摩根睡觉前，小摩根跟爸爸钢铁侠无经意间随口说的一句话“我爱你3000遍”在一次采访的节目中，导演罗素兄弟透露，关于钢铁侠在这部电影中的这一句有爱、动人的台词，其实是来自于演员小罗伯特唐尼其中的孩子！(I love you three thousand)...', '1', '25', '1', '1', '0', '0', 'http://wx3.sinaimg.cn/thumbnail/006jjPRTgy1g2qsekvje0j30c809pgm2.jpg', 'http://wx4.sinaimg.cn/thumbnail/006jjPRTgy1g2qsemyvm8j30c80hqabv.jpg', 'http://wx2.sinaimg.cn/thumbnail/006jjPRTgy1g2qsenx79uj30c807zq3m.jpg', 'http://wx2.sinaimg.cn/thumbnail/006jjPRTgy1g2qsenx79uj30c807zq3m.jpg', null, null, null, null, null);
INSERT INTO `hrl_find_hotpoint` VALUES ('2', '1', '【你的话费降了吗？来自移动联通电信的最新证据：真的降了！】前几日，#三大运营商平均日赚约3.7亿元#上了微博热搜，不少网友都感叹三大运营商赚得真是多。最近，随着三大运营商的2019年一季度财报都公布完毕，一直被抱怨“暴利”的运营商们均出现了近年罕见的营收下滑现象，中国移动的甚至出现了净利...', '21', '21', '33', '1', '0', '0', 'http://wx1.sinaimg.cn/thumbnail/624c6377gy1g2qrfk0u06j20xc0ndau0.jpg', 'http://wx3.sinaimg.cn/thumbnail/624c6377gy1g2qrfbq9ohj20hi0c9ta1.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrfcpv60j20hi0bnabl.jpg', 'http://wx3.sinaimg.cn/thumbnail/624c6377gy1g2qrf8sks8j20hi0bbt8y.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrf9wqmoj20hi0au0t2.jpg', 'http://wx4.sinaimg.cn/thumbnail/624c6377gy1g2qrfaqrq0j20g40jhdgz.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrf7tpuuj20hi0bnadq.jpg', null, null);
INSERT INTO `hrl_find_hotpoint` VALUES ('3', '3', '身着黑色西装置身北京四合院，自身气场与场景层次感相衬，内敛稳重成熟帅气。光影之间', '21', '3', '2', '1', '0', '0', 'https://wx3.sinaimg.cn/mw690/682fe515ly1g2i88wb14ij218g1uohdt.jpg', null, null, null, null, null, '', null, null);
INSERT INTO `hrl_find_hotpoint` VALUES ('4', '1', '新王后为“御前侍卫” 匍匐在地接受册封[酷]】泰国王室5月1日宣布，泰王瓦吉拉隆功将与王室卫队的副指挥官苏提达成婚，并正式册封她为王后。但报道并未提及两人具体成婚的日期，而泰王瓦吉拉隆功的加冕大典将于5月4日至6日举行。', '2222', '32', '121', '1', '0', '0', 'http://wx4.sinaimg.cn/thumbnail/006jjPRTgy1g2qsemyvm8j30c80hqabv.jpg', null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_hotpoint` VALUES ('11', '1', '转发这篇微博', null, null, null, '1', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_hotpoint` VALUES ('12', '1', '转发这篇微博', null, null, null, '1', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_hotpoint` VALUES ('13', '1', '转发这篇微博', null, null, null, '1', '1', '12', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `hrl_find_hotsearch`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_find_hotsearch`;
CREATE TABLE `hrl_find_hotsearch` (
  `hotid` bigint(20) NOT NULL,
  `hotdesc` varchar(255) DEFAULT NULL,
  `hottype` int(11) DEFAULT NULL,
  `hotread` bigint(20) DEFAULT NULL,
  `hotattitude` varchar(255) DEFAULT NULL,
  `hotdiscuss` bigint(20) DEFAULT NULL,
  `hothost` varchar(255) DEFAULT NULL,
  `isrecommend` tinyint(1) DEFAULT '2',
  `recommendpage` int(11) DEFAULT NULL,
  `recommendpagepostion` int(1) DEFAULT NULL,
  `recommendcoverimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_find_hotsearch
-- ----------------------------
INSERT INTO `hrl_find_hotsearch` VALUES ('1', '中方坚决反对将中国抗疫污名化', '1', '3517231', '0', null, '人民日报', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('2', '张檬金恩圣公布恋情 ', '2', '3019213', '128151', null, '微博娱乐', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('3', '红魔5G', '3', '2814218', '0', null, '红魔电竞游戏手机', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('4', '特朗普自称战时总统 ', '1', '2617212', '0', null, '观察者网', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('5', '北京又有1例新增境外输入病例 ', '1', '1758111', '0', null, '央视新闻', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('6', '于正 茉莉', '2', '1751638', '0', null, '于正1978', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('7', '湖北清零数据上报员哭了', null, '1751224', '0', null, '小央视频', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('8', '吴宥萱 ', '3', '1405999', '0', null, '吴宥萱', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('9', '	中国军队向伊朗武装力量援助抗疫物资 ', null, '1359477', '0', null, '国防部发布', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('10', '	高云翔涉嫌性侵案宣判 ', '1', '1135525', '0', null, '新浪娱乐', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('11', '	盖茨点赞中国检测和隔离', null, '825900', '0', null, '老板联播', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('12', '	美国人免费检测新冠病毒', '3', '744964', '0', '6808', '新京报我们视频', '1', '4', '3', 'find_center43.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('14', '	菜摊变成了森林 ', null, '641222', '0', null, '扬子晚报', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('15', '	武汉允许无疫情小区居民分批活动', '1', '502396', '0', null, '头条新闻 ', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('16', '澳大利亚对所有外国人实施旅行禁令 ', null, '501025', '0', null, '央视新闻', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('17', '重庆巨响 ', '2', '462129', '0', null, '央视新闻', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('18', '	杭州', '1', '462013', '0', null, '西湖发布', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('19', '	欧洲机场给马云捐赠最高礼遇 ', null, '460777', '0', null, '新浪科技', '1', '3', '2', 'find_center13.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('20', '	凤凰网', '2', '460364', '0', null, '凤凰网 ', '2', null, null, null);
INSERT INTO `hrl_find_hotsearch` VALUES ('21', '第一次看哈利波特的回忆', null, '3131', '0', '7397', '守望好莱坞 ', '1', '1', '1', 'find_center21.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('22', '油菜花拍照', null, '1500', '0', '6808', '全景一哥', '1', '2', '1', 'find_center11.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('23', '耿爽引用投我以木桃报之以琼瑶', null, '675383', '0', '4351', '人民日报', '1', '3', '1', 'find_center31.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('24', '那些你搞不懂的饭圈行为', null, '134234', '0', null, 'Bigger研究所', '1', '4', '1', 'find_center41.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('25', '游戏中你最满意的穿搭', null, '1528', '0', '1899', '电竞榜', '1', '5', '1', 'find_center51.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('26', '香奈儿宣布停产', null, '29', '0', '9947', '新浪新闻客户端', '1', '1', '2', 'find_center12.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('27', '王俊凯时尚先生开年封面花絮', null, null, '0', null, 'ESQUIREfine', '1', '1', '3', 'find_center32.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('28', '巴基斯坦总统说帮中国时没想留后路', null, null, '0', null, '央视新闻', '1', '2', '2', 'find_center22.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('29', '社交卑微型人格', null, null, '0', null, '大脑切片', '1', '2', '3', 'find_center23.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('30', '全球已有8.5亿学生因疫情停课', null, null, '0', null, '中国新闻网', '1', '3', '3', 'find_center33.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('31', '湖北无新增确诊病例', null, null, '0', null, '央视新闻', '1', '4', '2', 'find_center42.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('32', '北京又有1例新增境外输入病例', null, null, '0', null, '头条新闻', '1', '5', '2', 'find_center52.jpg');
INSERT INTO `hrl_find_hotsearch` VALUES ('33', '张檬金恩圣公布恋情', null, null, '0', null, '微博娱乐 ', '1', '5', '3', 'find_center53.jpg');

-- ----------------------------
-- Table structure for `hrl_find_kind`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_find_kind`;
CREATE TABLE `hrl_find_kind` (
  `id` int(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_find_kind
-- ----------------------------
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000001', '找人', 'find_type_findpeople.jpg');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000002', '同城', 'find_type_samecity.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000003', '直播', 'find_type_live.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000004', '电影', 'find_type_movie.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000005', '尤物志', 'find_type_book.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000006', '更多', 'find_type_book.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000007', '赛事', 'find_saishi.jpg');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000008', '红人淘', 'find_type_redpeople.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000009', '财经', 'find_type_caijing.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000010', '音乐', 'find_type_musci.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000011', '节目', 'find_type_jiemu.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000012', '房产', 'find_type_house.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000013', '汽车', 'find_type_car.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000014', '美食', 'find_type_food.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000015', '小游戏', 'find_type_game.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000016', '微公益', 'find_type_gongyi.png');
INSERT INTO `hrl_find_kind` VALUES ('00000000000000000017', '教育', 'find_type_edu.png');

-- ----------------------------
-- Table structure for `hrl_find_local`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_find_local`;
CREATE TABLE `hrl_find_local` (
  `weibo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `zhuanfa_num` bigint(20) DEFAULT NULL,
  `like_num` bigint(20) DEFAULT NULL,
  `comment_num` bigint(20) DEFAULT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `is_zhunfa` int(10) DEFAULT NULL,
  `zf_weiboid` bigint(255) DEFAULT NULL,
  `pic1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic4` varchar(255) DEFAULT NULL,
  `pic5` varchar(255) DEFAULT NULL,
  `pic6` varchar(255) DEFAULT NULL,
  `pic7` varchar(255) DEFAULT NULL,
  `pic8` varchar(255) DEFAULT NULL,
  `pic9` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weibo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_find_local
-- ----------------------------
INSERT INTO `hrl_find_local` VALUES ('1', '2', '《复仇者联盟4》中[钢铁侠]托尼斯塔克在哄小摩根睡觉前，小摩根跟爸爸钢铁侠无经意间随口说的一句话“我爱你3000遍”在一次采访的节目中，导演罗素兄弟透露，关于钢铁侠在这部电影中的这一句有爱、动人的台词，其实是来自于演员小罗伯特唐尼其中的孩子！(I love you three thousand)...', '1', '25', '1', '1', '0', '0', 'http://wx3.sinaimg.cn/thumbnail/006jjPRTgy1g2qsekvje0j30c809pgm2.jpg', 'http://wx4.sinaimg.cn/thumbnail/006jjPRTgy1g2qsemyvm8j30c80hqabv.jpg', 'http://wx2.sinaimg.cn/thumbnail/006jjPRTgy1g2qsenx79uj30c807zq3m.jpg', 'http://wx2.sinaimg.cn/thumbnail/006jjPRTgy1g2qsenx79uj30c807zq3m.jpg', null, null, null, null, null);
INSERT INTO `hrl_find_local` VALUES ('2', '1', '【你的话费降了吗？来自移动联通电信的最新证据：真的降了！】前几日，#三大运营商平均日赚约3.7亿元#上了微博热搜，不少网友都感叹三大运营商赚得真是多。最近，随着三大运营商的2019年一季度财报都公布完毕，一直被抱怨“暴利”的运营商们均出现了近年罕见的营收下滑现象，中国移动的甚至出现了净利...', '21', '21', '33', '1', '0', '0', 'http://wx1.sinaimg.cn/thumbnail/624c6377gy1g2qrfk0u06j20xc0ndau0.jpg', 'http://wx3.sinaimg.cn/thumbnail/624c6377gy1g2qrfbq9ohj20hi0c9ta1.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrfcpv60j20hi0bnabl.jpg', 'http://wx3.sinaimg.cn/thumbnail/624c6377gy1g2qrf8sks8j20hi0bbt8y.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrf9wqmoj20hi0au0t2.jpg', 'http://wx4.sinaimg.cn/thumbnail/624c6377gy1g2qrfaqrq0j20g40jhdgz.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrf7tpuuj20hi0bnadq.jpg', null, null);
INSERT INTO `hrl_find_local` VALUES ('3', '3', '身着黑色西装置身北京四合院，自身气场与场景层次感相衬，内敛稳重成熟帅气。光影之间', '21', '3', '2', '1', '0', '0', 'https://wx3.sinaimg.cn/mw690/682fe515ly1g2i88wb14ij218g1uohdt.jpg', null, null, null, null, null, '', null, null);
INSERT INTO `hrl_find_local` VALUES ('4', '1', '新王后为“御前侍卫” 匍匐在地接受册封[酷]】泰国王室5月1日宣布，泰王瓦吉拉隆功将与王室卫队的副指挥官苏提达成婚，并正式册封她为王后。但报道并未提及两人具体成婚的日期，而泰王瓦吉拉隆功的加冕大典将于5月4日至6日举行。', '2222', '32', '121', '1', '0', '0', 'http://wx4.sinaimg.cn/thumbnail/006jjPRTgy1g2qsemyvm8j30c80hqabv.jpg', null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_local` VALUES ('11', '1', '转发这篇微博', null, null, null, '1', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_local` VALUES ('12', '1', '转发这篇微博', null, null, null, '1', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_local` VALUES ('13', '1', '转发这篇微博', null, null, null, '1', '1', '12', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `hrl_find_supertopic`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_find_supertopic`;
CREATE TABLE `hrl_find_supertopic` (
  `weibo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `zhuanfa_num` bigint(20) DEFAULT NULL,
  `like_num` bigint(20) DEFAULT NULL,
  `comment_num` bigint(20) DEFAULT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `is_zhunfa` int(10) DEFAULT NULL,
  `zf_weiboid` bigint(255) DEFAULT NULL,
  `pic1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic4` varchar(255) DEFAULT NULL,
  `pic5` varchar(255) DEFAULT NULL,
  `pic6` varchar(255) DEFAULT NULL,
  `pic7` varchar(255) DEFAULT NULL,
  `pic8` varchar(255) DEFAULT NULL,
  `pic9` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weibo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_find_supertopic
-- ----------------------------
INSERT INTO `hrl_find_supertopic` VALUES ('1', '2', '《复仇者联盟4》中[钢铁侠]托尼斯塔克在哄小摩根睡觉前，小摩根跟爸爸钢铁侠无经意间随口说的一句话“我爱你3000遍”在一次采访的节目中，导演罗素兄弟透露，关于钢铁侠在这部电影中的这一句有爱、动人的台词，其实是来自于演员小罗伯特唐尼其中的孩子！(I love you three thousand)...', '1', '25', '1', '1', '0', '0', 'http://wx3.sinaimg.cn/thumbnail/006jjPRTgy1g2qsekvje0j30c809pgm2.jpg', 'http://wx4.sinaimg.cn/thumbnail/006jjPRTgy1g2qsemyvm8j30c80hqabv.jpg', 'http://wx2.sinaimg.cn/thumbnail/006jjPRTgy1g2qsenx79uj30c807zq3m.jpg', 'http://wx2.sinaimg.cn/thumbnail/006jjPRTgy1g2qsenx79uj30c807zq3m.jpg', null, null, null, null, null);
INSERT INTO `hrl_find_supertopic` VALUES ('2', '1', '【你的话费降了吗？来自移动联通电信的最新证据：真的降了！】前几日，#三大运营商平均日赚约3.7亿元#上了微博热搜，不少网友都感叹三大运营商赚得真是多。最近，随着三大运营商的2019年一季度财报都公布完毕，一直被抱怨“暴利”的运营商们均出现了近年罕见的营收下滑现象，中国移动的甚至出现了净利...', '21', '21', '33', '1', '0', '0', 'http://wx1.sinaimg.cn/thumbnail/624c6377gy1g2qrfk0u06j20xc0ndau0.jpg', 'http://wx3.sinaimg.cn/thumbnail/624c6377gy1g2qrfbq9ohj20hi0c9ta1.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrfcpv60j20hi0bnabl.jpg', 'http://wx3.sinaimg.cn/thumbnail/624c6377gy1g2qrf8sks8j20hi0bbt8y.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrf9wqmoj20hi0au0t2.jpg', 'http://wx4.sinaimg.cn/thumbnail/624c6377gy1g2qrfaqrq0j20g40jhdgz.jpg', 'http://wx2.sinaimg.cn/thumbnail/624c6377gy1g2qrf7tpuuj20hi0bnadq.jpg', null, null);
INSERT INTO `hrl_find_supertopic` VALUES ('3', '3', '身着黑色西装置身北京四合院，自身气场与场景层次感相衬，内敛稳重成熟帅气。光影之间', '21', '3', '2', '1', '0', '0', 'https://wx3.sinaimg.cn/mw690/682fe515ly1g2i88wb14ij218g1uohdt.jpg', null, null, null, null, null, '', null, null);
INSERT INTO `hrl_find_supertopic` VALUES ('4', '1', '新王后为“御前侍卫” 匍匐在地接受册封[酷]】泰国王室5月1日宣布，泰王瓦吉拉隆功将与王室卫队的副指挥官苏提达成婚，并正式册封她为王后。但报道并未提及两人具体成婚的日期，而泰王瓦吉拉隆功的加冕大典将于5月4日至6日举行。', '2222', '32', '121', '1', '0', '0', 'http://wx4.sinaimg.cn/thumbnail/006jjPRTgy1g2qsemyvm8j30c80hqabv.jpg', null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_supertopic` VALUES ('11', '1', '转发这篇微博', null, null, null, '1', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_supertopic` VALUES ('12', '1', '转发这篇微博', null, null, null, '1', '1', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `hrl_find_supertopic` VALUES ('13', '1', '转发这篇微博', null, null, null, '1', '1', '12', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `hrl_find_topic`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_find_topic`;
CREATE TABLE `hrl_find_topic` (
  `hotid` bigint(20) NOT NULL,
  `hotdesc` varchar(255) DEFAULT NULL,
  `hottype` int(11) DEFAULT NULL,
  `hotread` bigint(20) DEFAULT NULL,
  `hotattitude` varchar(255) DEFAULT NULL,
  `hotdiscuss` bigint(20) DEFAULT NULL,
  `hothost` varchar(255) DEFAULT NULL,
  `hotimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_find_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `hrl_forward`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_forward`;
CREATE TABLE `hrl_forward` (
  `forwardid` bigint(255) NOT NULL AUTO_INCREMENT,
  `userid` bigint(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`forwardid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_forward
-- ----------------------------
INSERT INTO `hrl_forward` VALUES ('1', '35', '转发微博', '2019-05-22 21:31:31');
INSERT INTO `hrl_forward` VALUES ('2', '36', '转发微博', '2020-03-29 13:28:31');
INSERT INTO `hrl_forward` VALUES ('3', '37', '哇！热干面加油', '2020-03-29 03:43:00');
INSERT INTO `hrl_forward` VALUES ('4', '38', '转发微博', '2020-03-29 14:53:00');
INSERT INTO `hrl_forward` VALUES ('5', '39', '转发微博', '2020-03-29 09:42:00');
INSERT INTO `hrl_forward` VALUES ('6', '40', '加油啊！', '2020-03-29 06:33:00');
INSERT INTO `hrl_forward` VALUES ('7', '41', '转发微博', '2020-03-29 15:27:04');
INSERT INTO `hrl_forward` VALUES ('8', '42', '重启！', '2020-04-12 14:23:21');
INSERT INTO `hrl_forward` VALUES ('9', '43', '转发微博', '2020-04-12 14:23:24');
INSERT INTO `hrl_forward` VALUES ('10', '44', '嘿嘿', '2020-04-12 14:23:26');
INSERT INTO `hrl_forward` VALUES ('11', '45', '回去要吃三碗热干面', '2020-04-12 15:01:46');

-- ----------------------------
-- Table structure for `hrl_user`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_user`;
CREATE TABLE `hrl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nick` varchar(100) DEFAULT NULL,
  `headurl` varchar(100) DEFAULT NULL,
  `decs` varchar(100) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `ismember` int(2) NOT NULL DEFAULT '0',
  `isvertify` int(2) DEFAULT '0',
  `follow_count` bigint(20) DEFAULT NULL,
  `fan_count` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_user
-- ----------------------------
INSERT INTO `hrl_user` VALUES ('1', 'test1', '123', '测试号001', 'user_ddd.jpg', '官方测试账号随便点', '1', '1', '1', '682', '341', '2019-05-05 22:10:03');
INSERT INTO `hrl_user` VALUES ('2', 'test2', '123', '播电影', 'user_bodianying.jpg', '电影视频自媒体', '1', '1', '1', '476', '4320000', '2019-05-05 22:30:23');
INSERT INTO `hrl_user` VALUES ('3', 'test3', '123', '撰稿青年', 'user_syqn.jpg', '知名摄影博主', '1', '0', '2', '123', '2410000', '2019-05-05 22:36:53');
INSERT INTO `hrl_user` VALUES ('4', 'test4', '123', '动漫影城', 'user_dmyc.jpg', '知名电影博主', '1', '0', '0', '118', '510000', '2019-05-05 22:39:15');
INSERT INTO `hrl_user` VALUES ('5', 'test5', '123', '最搞笑趣事精选', 'gaoxiao.jpg', '微博知名搞笑帐号', '1', '0', '0', '256', '1100000', '2019-05-03 22:43:54');
INSERT INTO `hrl_user` VALUES ('6', 'test6', '123', '阿干', 'gaoxiao.jpg', '我是测试号0006', '1', '0', '0', '2', '4', '2019-12-18 16:32:30');
INSERT INTO `hrl_user` VALUES ('7', 'test7', '123', 'Alias', 'user7.jpg', '我是测试号0007', '1', '0', '2', '2', '4', '2019-12-18 16:32:33');
INSERT INTO `hrl_user` VALUES ('8', 'test8', '123', '百事通', 'gaoxiao.jpg', '我是测试号0008', '1', '0', '0', '2', '4', '2019-12-18 16:32:35');
INSERT INTO `hrl_user` VALUES ('9', 'test9', '123', '白天', 'gaoxiao.jpg', '我是测试号0009', '1', '0', '0', '2', '4', '2019-12-18 16:32:38');
INSERT INTO `hrl_user` VALUES ('10', 'test10', '123', '扒明星事5', 'user10.jpg', '我是测试号0010', '1', '0', '0', '2', '4', '2019-12-18 16:32:41');
INSERT INTO `hrl_user` VALUES ('11', 'test11', '123', '东京景色', 'gaoxiao.jpg', '我是测试号0011', '1', '0', '0', '2', '4', '2019-12-18 16:32:44');
INSERT INTO `hrl_user` VALUES ('12', 'test12', '123', 'Hrl测试号007', 'gaoxiao.jpg', '我是测试号0012', '1', '0', '0', '2', '4', '2019-12-18 16:32:46');
INSERT INTO `hrl_user` VALUES ('13', 'test13', '123', '央视新闻', 'user_ysxw.jpg', '中央电视台新闻中心官方微博', '1', '1', '0', '2', '12121', '2020-03-23 21:34:10');
INSERT INTO `hrl_user` VALUES ('14', 'test14', '123', '人民日报', 'user_rmrb.jpg', '人民日报法人微博。参与、沟通、记录时代。', '1', '1', '1', '21', '21', '2020-03-25 10:30:15');
INSERT INTO `hrl_user` VALUES ('15', 'test15', '123', '新浪娱乐', 'user_xlyl.jpg', '新浪娱乐为你带来最新鲜的娱乐资讯', '1', '1', '2', '31', '3131', '2020-03-25 11:38:55');
INSERT INTO `hrl_user` VALUES ('16', 'test16', '123', '疆客旅行', 'user_jklx.jpg', '旅游博主 旅行视频自媒体', '1', '0', '1', '31', '3476', '2020-03-26 22:52:07');
INSERT INTO `hrl_user` VALUES ('17', 'test17', '123', '乡村教师代言人-马云', 'user_my.jpg', '马云公益基金会创始人', '1', '0', '0', '21', '7676', '2020-03-26 22:52:10');
INSERT INTO `hrl_user` VALUES ('18', 'test18', '123', '韩剧电影', 'default.jpg', 'test', '1', '0', '0', '2', '32', '2020-04-02 23:16:02');
INSERT INTO `hrl_user` VALUES ('19', 'test19', '123', '记忆', 'default.jpg', 'test', '1', '0', '0', '1', '4', '2020-04-02 23:16:05');
INSERT INTO `hrl_user` VALUES ('20', 'test20', '123', '每日经济新闻', 'user20.jpg', '每日经济新闻官方微博', '1', '0', '2', '21', '54', '2020-04-02 23:16:08');
INSERT INTO `hrl_user` VALUES ('21', 'test21', '123', 'NBA', 'default.jpg', 'test', '1', '0', '0', '2', '5454', '2020-04-02 23:16:10');
INSERT INTO `hrl_user` VALUES ('22', 'test22', '123', '克利夫兰骑士', 'default.jpg', 'test', '1', '0', '0', '1', '54', '2020-04-02 23:16:14');
INSERT INTO `hrl_user` VALUES ('23', 'test23', '123', '全球搞笑排行', 'default.jpg', 'test', '1', '0', '0', '2', '5', '2020-04-02 23:16:18');
INSERT INTO `hrl_user` VALUES ('24', 'test24', '123', '人民网', 'default.jpg', 'test', '1', '0', '0', '3', '4', '2020-04-02 23:16:21');
INSERT INTO `hrl_user` VALUES ('25', 'test25', '123', '苏群', 'user25.jpg', '《篮球先锋报》总编辑 体育视频自媒体', '1', '1', '1', '421', '5421', '2020-04-02 23:16:23');
INSERT INTO `hrl_user` VALUES ('26', 'test26', '123', '中国日报', 'default.jpg', 'test', '1', '0', '0', '56', '6', '2020-04-02 23:16:26');
INSERT INTO `hrl_user` VALUES ('27', 'test27', '123', '洋溢', 'default.jpg', 'test', '1', '0', '0', '7', '786', '2020-04-02 23:16:29');
INSERT INTO `hrl_user` VALUES ('28', 'test28', '123', '新华网', 'default.jpg', 'test', '1', '0', '0', '8', '2', '2020-04-02 23:16:35');
INSERT INTO `hrl_user` VALUES ('29', 'test29', '123', '超人', 'default.jpg', 'test', '1', '0', '0', '61', '54', '2020-04-02 23:16:39');
INSERT INTO `hrl_user` VALUES ('30', 'test30', '123', '搞笑大百科', 'default.jpg', 'test', '1', '0', '0', '3', '32', '2020-04-02 23:16:42');
INSERT INTO `hrl_user` VALUES ('31', 'test31', '123', '大脸猫V·_', 'user31.jpg', '情感博主', '0', '1', '2', '1221', '21', '2020-04-11 17:35:23');
INSERT INTO `hrl_user` VALUES ('32', 'test32', '123', '中国新闻周刊', 'user32.jpg', '中国新闻周刊官方微博', '1', '1', '2', '31', '31', '2020-04-11 18:03:44');
INSERT INTO `hrl_user` VALUES ('33', 'tese33', '123', '最治愈的视频', 'user33.jpg', '知名搞笑幽默博主 搞笑视频自媒体', '1', '1', '1', '2', '33', '2020-04-11 18:12:00');
INSERT INTO `hrl_user` VALUES ('34', 'test34', '123', 'sven_shi', 'user34.jpg', '知名互联网资讯博主', '1', '1', '0', '1', '12', '2020-04-11 18:16:57');
INSERT INTO `hrl_user` VALUES ('35', 'test35', '123', '躁狂的暗暗', 'user35.jpg', '朱一龙超话粉丝大咖', '1', '0', '0', '31', '765', '2020-04-12 16:38:32');
INSERT INTO `hrl_user` VALUES ('36', 'test36', '123', '此人名曰狗血', 'user36.jpg', '知名情感博主', '1', '1', '0', '35', '65', '2020-04-12 16:38:34');
INSERT INTO `hrl_user` VALUES ('37', 'test37', '123', '錦衣夜行焱十一', 'user37.jpg', '知名娱乐博主', '1', '0', '0', '546', '235', '2020-04-12 16:38:37');
INSERT INTO `hrl_user` VALUES ('38', 'test38', '123', '天天向上', 'user38.jpg', '湖南卫视《天天向上》栏目', '1', '1', '2', '765', '67', '2020-04-12 16:38:40');
INSERT INTO `hrl_user` VALUES ('39', 'test39', '123', '娱乐圈小天才', 'user39.jpg', ' 2017十大影响力娱乐博主 微博签约自媒体', '1', '1', '1', '356', '5', '2020-04-12 16:38:44');
INSERT INTO `hrl_user` VALUES ('40', 'test40', '123', '折翼丛林', 'user40.jpg', '科学科普帐号 知名科学科普博主', '1', '0', '2', '364', '685', '2020-04-12 16:38:47');
INSERT INTO `hrl_user` VALUES ('41', 'test41', '123', '同道大叔', 'user41.jpg', '知名星座命理博主', '0', '1', '0', '45', '2', '2020-04-12 16:38:50');
INSERT INTO `hrl_user` VALUES ('42', 'test42', '123', '大脸猫爱吃鱼摆摆', 'user42.jpg', '我要成为你心中的那根刺', '0', '0', '1', '2525', '354', '2020-04-12 16:38:58');
INSERT INTO `hrl_user` VALUES ('43', 'test43', '123', '大王爱吃小小爱', 'user43.jpg', '纵然生活百般刁难，我们也要带着爱坚定前行', '0', '0', '0', '456', '58', '2020-04-12 16:39:01');
INSERT INTO `hrl_user` VALUES ('44', 'test44', '123', '顺丰大当家', 'user44.jpg', '顺丰旗下商品交易平台', '0', '1', '2', '74', '34', '2020-04-12 16:39:04');
INSERT INTO `hrl_user` VALUES ('45', 'test45', '123', '三个人16t995', 'user45.jpg', '搞笑视频自媒体', '1', '0', '0', '346', '354', '2020-04-12 16:39:07');
INSERT INTO `hrl_user` VALUES ('46', 'test46', '123', '----EnEn', 'user46.jpg', '她还没有填写个人简介', '1', '0', '1', '65', '235', '2020-04-12 16:39:09');
INSERT INTO `hrl_user` VALUES ('47', 'test47', '123', '木XX木大九日土申', 'user47.jpg', '大九日土申', '1', '1', '2', '2', '3464', '2020-04-12 16:39:11');
INSERT INTO `hrl_user` VALUES ('48', 'test48', '123', 'TendPain', 'user48.jpg', '我为你翻山越岭 却无心看风景', '1', '1', '0', '21', '64', '2020-04-12 21:08:45');
INSERT INTO `hrl_user` VALUES ('49', 'test49', '123', '歌帝梵桶装', 'user49.jpg', '家里有只柯基！', '1', '0', '2', '32', '646', '2020-04-12 21:08:47');
INSERT INTO `hrl_user` VALUES ('50', 'test50', '123', 'iBingo', 'user50.jpg', '数码博主 头条文章作者', '1', '1', '0', '5435', '6446', '2020-04-12 21:08:50');
INSERT INTO `hrl_user` VALUES ('51', 'test51', '123', '邓伦', 'user51.jpg', '演员', '1', '0', '0', '46', '64', '2020-04-12 21:08:53');
INSERT INTO `hrl_user` VALUES ('52', 'test52', '123', '也许有酒酒', 'user52.jpg', '娱乐博主 北堂墨染超话小主持人 微博原创视频博主', '1', '1', '1', '576', '64', '2020-04-12 21:08:55');
INSERT INTO `hrl_user` VALUES ('53', 'test53', '123', '你库呀', 'user53.jpg', '생각이 많을 땐 마라훠궝이지', '1', '0', '0', '75', '64432', '2020-04-12 21:08:59');
INSERT INTO `hrl_user` VALUES ('54', 'test54', '123', '吃瓜没有圈', 'user54.jpg', '知名娱乐博主', '1', '0', '1', '52', '67', '2020-04-12 21:09:01');
INSERT INTO `hrl_user` VALUES ('55', 'test55', '123', '喜欢现在的你lixian', 'user55.jpg', '娱乐博主 现哥的天现宝宝超话小主持人', '1', '1', '0', '5', '762', '2020-04-12 21:09:05');
INSERT INTO `hrl_user` VALUES ('56', 'test56', '123', '佳佳der馬', 'user56.jpg', '幸福小马。', '1', '0', '2', '324', '64', '2020-04-12 21:09:09');
INSERT INTO `hrl_user` VALUES ('57', 'test57', '123', 'vamos_U', 'user57.jpg', '娱乐博主', '1', '1', '0', '53', '58', '2020-04-12 21:09:11');
INSERT INTO `hrl_user` VALUES ('58', 'test58', '123', '旅行中的荷尔蒙', 'user58.jpg', '维吾尔族，穆斯林', '1', '0', '2', '78', '2348', '2020-04-12 21:09:13');
INSERT INTO `hrl_user` VALUES ('59', 'test59', '123', '魔法兔的荣耀', 'user59.jpg', '为了部落！', '1', '1', '0', '34', null, '2020-04-12 21:09:15');
INSERT INTO `hrl_user` VALUES ('60', 'test60', '123', '转啊转的YYY囧天亮', 'user60.jpg', '梨与橙PD超话主持人', '1', '0', '1', '64', '6464', '2020-04-12 21:09:17');
INSERT INTO `hrl_user` VALUES ('61', 'test61', '123', '精彩段子君', 'user61.jpg', '知名搞笑幽默博主', '1', '1', '1', '31', '423', '2020-04-15 23:04:59');
INSERT INTO `hrl_user` VALUES ('62', 'test62', '123', '奋斗在韩国', 'user62.jpg', '知名本地博主 海外资讯博主（韩国） 资讯视频自媒体', '1', '0', '2', '123', '21', '2020-04-15 23:37:01');
INSERT INTO `hrl_user` VALUES ('63', 'test63', '123', '橘子娱乐', 'user63.jpg', '微博娱乐综艺视频博主 知名娱乐博主', '1', '1', '0', '23', '234', '2020-04-15 23:39:50');
INSERT INTO `hrl_user` VALUES ('64', 'test64', '123', 'CCTV4', 'user64.jpg', 'CCTV-4中文国际频道官方微博', '1', '1', '1', '32', '43', '2020-04-16 00:01:41');
INSERT INTO `hrl_user` VALUES ('65', 'test65', '123', '偶像日报', 'user65.jpg', '偶像日报官方微博', '1', '0', '0', '23', '4', '2020-04-16 00:06:33');
INSERT INTO `hrl_user` VALUES ('66', 'test66', '123', '湖帮', 'user66.jpg', '知名体育博主 体育视频自媒体', '1', '0', '1', '43', '54', '2020-04-16 00:13:39');
INSERT INTO `hrl_user` VALUES ('67', 'test67', '123', '正常人办不出这种事儿', 'user67.jpg', '微博知名博主 搞笑视频自媒体', '1', '0', '0', '32', '42', '2020-04-16 00:15:52');
INSERT INTO `hrl_user` VALUES ('68', 'test68', '123', '译制组长小哈板', 'user68.jpg', '微博原创视频博主 微博译制视频博主', '1', '1', '2', '43', '5', '2020-04-16 00:17:56');
INSERT INTO `hrl_user` VALUES ('69', 'test69', '123', '背着书囊去旅行', 'user69.jpg', '旅游博主 山东电视台《齐鲁风采》栏目组 监制', '1', '0', '2', '42', '12', '2020-04-07 00:25:29');
INSERT INTO `hrl_user` VALUES ('70', 'test70', '123', '华晨宇yu', 'user70.jpg', '歌手，2013快乐男声全国冠军', '1', '1', '1', '43', '13', '2020-04-16 15:18:03');
INSERT INTO `hrl_user` VALUES ('71', 'test71', '123', 'UNINE_李汶翰', 'user71.jpg', 'UNINE队长 UNIQ成员 李汶翰', '1', '1', '1', '31', '534', '2020-04-16 15:22:24');
INSERT INTO `hrl_user` VALUES ('72', 'test72', '123', '火箭少女101_吴宣仪', 'user72.jpg', '火箭少女101成员、宇宙少女成员', '1', '1', '2', '3', '5', '2020-04-16 15:24:32');
INSERT INTO `hrl_user` VALUES ('73', 'test73', '123', 'jjjustin0219', 'user73.jpg', 'NINE PERCENT成员 乐华NEXT成员', '1', '1', '1', '31', '42', '2020-04-16 15:28:41');
INSERT INTO `hrl_user` VALUES ('74', 'test74', '123', '电视剧有翡', 'user74.jpg', '电视剧《有翡》官方微博', '1', '1', '1', '3423', '42', '2020-04-16 15:34:59');
INSERT INTO `hrl_user` VALUES ('75', 'test75', '123', '孟子坤_', 'user75.jpg', '明日之子 人气选手', '1', '1', '2', '31', '42', '2020-04-16 15:41:48');
INSERT INTO `hrl_user` VALUES ('76', 'test76', '123', '韩寒', 'user76.jpg', '作家,赛车手韩寒', '1', '1', '1', '32', '32', '2020-04-16 15:48:55');
INSERT INTO `hrl_user` VALUES ('77', 'test77', '123', '旅游生活头条榜', 'user77.jpg', '旅游博主', '1', '1', '1', '324', '31', '2020-04-16 15:57:09');
INSERT INTO `hrl_user` VALUES ('78', 'test78', '123', '陈小桃momo', 'user78.jpg', '《野萌君》作者', '1', '1', '1', '31', '42', '2020-04-16 16:33:41');
INSERT INTO `hrl_user` VALUES ('79', 'test79', '123', '祖安冲浪指南', 'user79.jpg', '搞笑幽默博主', '1', '1', '2', '43', '31', '2020-04-16 16:43:25');
INSERT INTO `hrl_user` VALUES ('80', 'test80', '123', 'HokieC', 'user80.jpg', '别关注我。', '1', '0', '1', '32', '45', '2020-04-16 17:02:51');
INSERT INTO `hrl_user` VALUES ('81', 'test81', '123', '鹿儿团团', 'user81.jpg', '知名搞笑幽默博主 鹿儿团团超话主持人', '1', '0', '2', '34', '65', '2020-04-16 17:17:57');
INSERT INTO `hrl_user` VALUES ('82', 'test82', '123', '二逼青年这样过 ', 'user82.jpg', '知名搞笑博主', '1', '0', '0', '4', '64', '2020-04-16 17:20:24');

-- ----------------------------
-- Table structure for `hrl_user_follow`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_user_follow`;
CREATE TABLE `hrl_user_follow` (
  `focus_user_id` bigint(20) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suoyin` (`uid`,`focus_user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_user_follow
-- ----------------------------
INSERT INTO `hrl_user_follow` VALUES ('1', '2', '5', '2019-12-17 10:22:56');
INSERT INTO `hrl_user_follow` VALUES ('1', '3', '6', '2019-12-17 10:23:04');
INSERT INTO `hrl_user_follow` VALUES ('2', '1', '23', '2019-12-19 01:40:08');
INSERT INTO `hrl_user_follow` VALUES ('4', '1', '25', '2019-12-19 01:41:00');
INSERT INTO `hrl_user_follow` VALUES ('5', '1', '26', '2019-12-19 01:41:00');
INSERT INTO `hrl_user_follow` VALUES ('7', '1', '28', '2019-12-19 01:41:09');
INSERT INTO `hrl_user_follow` VALUES ('6', '1', '31', '2020-04-26 22:07:28');
INSERT INTO `hrl_user_follow` VALUES ('3', '1', '32', '2020-04-26 22:07:28');
INSERT INTO `hrl_user_follow` VALUES ('80', '1', '42', '2020-04-27 21:19:10');
INSERT INTO `hrl_user_follow` VALUES ('8', '1', '43', '2020-04-27 21:55:12');
INSERT INTO `hrl_user_follow` VALUES ('9', '1', '44', '2020-04-27 21:55:12');
INSERT INTO `hrl_user_follow` VALUES ('10', '1', '45', '2020-04-27 21:55:13');
INSERT INTO `hrl_user_follow` VALUES ('11', '1', '46', '2020-04-27 21:55:13');
INSERT INTO `hrl_user_follow` VALUES ('12', '1', '47', '2020-04-27 21:57:35');
INSERT INTO `hrl_user_follow` VALUES ('13', '1', '48', '2020-04-27 21:57:35');
INSERT INTO `hrl_user_follow` VALUES ('14', '1', '49', '2020-04-27 21:57:36');
INSERT INTO `hrl_user_follow` VALUES ('15', '1', '50', '2020-04-27 21:57:36');
INSERT INTO `hrl_user_follow` VALUES ('16', '1', '51', '2020-04-27 21:57:37');
INSERT INTO `hrl_user_follow` VALUES ('17', '1', '52', '2020-04-27 21:57:37');
INSERT INTO `hrl_user_follow` VALUES ('18', '1', '53', '2020-04-27 21:57:38');
INSERT INTO `hrl_user_follow` VALUES ('1', '11', '54', '2020-04-27 22:13:13');
INSERT INTO `hrl_user_follow` VALUES ('1', '12', '55', '2020-04-27 22:13:15');
INSERT INTO `hrl_user_follow` VALUES ('1', '13', '56', '2020-04-27 22:13:17');
INSERT INTO `hrl_user_follow` VALUES ('1', '14', '57', '2020-04-27 22:13:19');
INSERT INTO `hrl_user_follow` VALUES ('1', '15', '58', '2020-04-27 22:13:22');
INSERT INTO `hrl_user_follow` VALUES ('1', '17', '59', '2020-04-27 22:13:24');
INSERT INTO `hrl_user_follow` VALUES ('1', '16', '60', '2020-04-27 22:13:32');
INSERT INTO `hrl_user_follow` VALUES ('1', '18', '61', '2020-04-27 22:13:34');
INSERT INTO `hrl_user_follow` VALUES ('1', '19', '62', '2020-04-27 22:13:36');
INSERT INTO `hrl_user_follow` VALUES ('1', '20', '63', '2020-04-27 22:13:39');

-- ----------------------------
-- Table structure for `hrl_vedio`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_vedio`;
CREATE TABLE `hrl_vedio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coverimg` varchar(255) DEFAULT NULL,
  `videotime` int(255) DEFAULT NULL,
  `playnum` int(255) DEFAULT NULL,
  `userid` int(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `recommengstr` varchar(255) DEFAULT NULL,
  `type` int(255) DEFAULT NULL,
  `videourl` varchar(255) DEFAULT NULL,
  `zannum` int(11) DEFAULT '0',
  `introduce` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_vedio
-- ----------------------------
INSERT INTO `hrl_vedio` VALUES ('1', 'https://wx3.sinaimg.cn/crop.0.6.1920.1067/b5fde6c1gy1geafbh13xpj21hc0u0u0x.jpg', '70', '102', '16', '旅游 · 旅行攻略', null, '1', null, '0', '去非洲当酋长？闯入非洲草原嗜血的古老部落', '2020-05-01 09:36:23');
INSERT INTO `hrl_vedio` VALUES ('2', 'https://wx4.sinaimg.cn/orj480/0071QmVuly1geak41e0n1j30u00gwx33.jpg', '12', '2', '11', null, '美食日榜最高第22名', '1', null, '0', '吃完会福气满满的水蜜桃福袋冰蛋糕', '2020-05-01 09:36:25');
INSERT INTO `hrl_vedio` VALUES ('3', 'https://wx2.sinaimg.cn/crop.245.0.1429.795/6e9d132dgy1gdnrb3bihoj21hc0m3k60.jpg', '21', '21', '3', '影视 · 影视解说', null, '1', null, '0', '精灵大战矮人，不料旁边突然窜出一大波兽人《霍比特人3》', '2020-05-01 09:36:30');
INSERT INTO `hrl_vedio` VALUES ('4', 'https://wx3.sinaimg.cn/large/e9595b01gy1gdvimyjqcqj20sx0fo40g.jpg', '12', '21', '1', null, '1万点赞', '1', null, '0', '行驶在瑞士小镇格林德瓦，风景简直是美爆', '2020-05-01 09:51:01');
INSERT INTO `hrl_vedio` VALUES ('5', 'https://wx4.sinaimg.cn/large/8f95af28ly1gdit5i490yj21hc0u0wh5.jpg', '3142', '35', '1', null, '点赞飙升', '1', null, '0', '影视剧中令人意难平的角色', '2020-05-01 09:51:03');
INSERT INTO `hrl_vedio` VALUES ('6', 'https://wx2.sinaimg.cn/orj480/006OQjBRly1ge9uocjzuqj31hc0u04na.jpg', '424', '53', '1', '影视 · 影视剪辑', null, '1', null, '0', '拳打洋人脚踢狱霸！这个年轻人为什么如此嚣张？', '2020-05-01 09:51:05');
INSERT INTO `hrl_vedio` VALUES ('7', 'https://wx2.sinaimg.cn/crop.202.0.1941.1080/0074c4zdly1geaf8f9zwpj31t80u0b2a.jpg', '53', '34', '1', null, '6千转发', '1', null, '0', '每口都滑嫩嫩的《尖椒干豆腐》东北厨子教你，包汁芡', '2020-05-01 09:51:07');
INSERT INTO `hrl_vedio` VALUES ('8', 'https://wx3.sinaimg.cn/crop.0.5.1744.969/007Kbox2gy1gdubgywyo8j31cg0r8arc.jpg', '542', '645', '1', null, null, '1', null, '0', '营养丰富香酥可口的蔬菜饼，做法非常简单，连挑食的小朋友都爱吃', '2020-05-01 09:51:09');
INSERT INTO `hrl_vedio` VALUES ('9', 'https://wx1.sinaimg.cn/large/7452d703ly1gdmiljueigj20ru0foq45.jpg', '31', '4', '1', null, '陈乔恩', '1', null, '0', '【陈乔恩 | 东方不败】东方不败的爱情悲歌', '2020-05-01 09:51:13');
INSERT INTO `hrl_vedio` VALUES ('10', 'https://wx2.sinaimg.cn/crop.207.0.1499.834/006lIx7Lly1ge63kmf8wbj31fe0n67wi.jpg', '42', '2', '1', null, '张家辉', '1', null, '0', '张家辉电影混剪，这么燃的节奏我要嗨起来了！', '2020-05-01 09:51:17');
INSERT INTO `hrl_vedio` VALUES ('11', 'https://wx4.sinaimg.cn/crop.0.5.1600.889/7af5dfdely1gdlff1v6yjj218g0p0aw8.jpg', '31', '12', '1', null, null, '1', null, '0', '这里是高颜值西装的正确打开方式！', '2020-05-01 10:00:42');
INSERT INTO `hrl_vedio` VALUES ('12', 'https://wx2.sinaimg.cn/crop.0.6.1921.1068/74f4a76fgy1geaei32h3mj21hd0u04qp.jpg', '42', '342', '1', '购物 · 购物攻略', null, '1', null, '0', '我的2020第一季度超大型购物分享', '2020-05-01 10:00:44');
INSERT INTO `hrl_vedio` VALUES ('13', 'https://wx3.sinaimg.cn/orj480/007wlOVpgy1ge9s8mll6wj30k00b9aai.jpg', '31', '5', '1', '动漫 · 夏目友人', null, '1', null, '0', '夏目友人帐十年混剪丨少年温暖如初', '2020-05-01 10:00:46');
INSERT INTO `hrl_vedio` VALUES ('14', 'https://wx1.sinaimg.cn/large/007WvP7ply1ge9czu3gybj31hc0u00v2.jpg', '432', '65', '1', null, '正能量', '1', null, '0', '印象最深的正能量台词', '2020-05-01 10:00:49');
INSERT INTO `hrl_vedio` VALUES ('15', 'https://wx4.sinaimg.cn/crop.0.80.1090.606/006tzLrmly1gdnj2bxyocj30ua0lcnnr.jpg', '53', '7', '1', null, '小咪', '1', null, '0', '小咪：今天我难得话这么少的', '2020-05-01 10:00:51');
INSERT INTO `hrl_vedio` VALUES ('16', 'https://wx3.sinaimg.cn/orj480/6a5fb16bgy1gcrbqsu43fj21hc0u0b1l.jpg', '64', '4', '1', '旅游 · 旅游景色', null, '1', null, '0', '南非｜厄加勒斯角沉船日落', '2020-05-01 10:00:53');
INSERT INTO `hrl_vedio` VALUES ('17', 'https://wx3.sinaimg.cn/orj480/75d94c5bgy1gch1vrdr8ij20k00p0752.jpg', '1243', '54', '1', null, '旅行', '1', null, '0', '瑞士阿尔卑斯山的神奇滑道，你玩儿过吗？', '2020-05-01 10:00:55');
INSERT INTO `hrl_vedio` VALUES ('18', 'https://wx4.sinaimg.cn/orj480/6bab065aly1gdmhn60cxpj21hc0u0npd.jpg', '654', '32', '1', null, '百万播放', '1', null, '0', '如约而至的春天里，一起看樱花吧', '2020-05-01 10:00:58');
INSERT INTO `hrl_vedio` VALUES ('19', 'https://wx3.sinaimg.cn/crop.0.5.1621.901/52254aa5ly1gcdgg66d97j21910pc1ef.jpg', '75', '13', '1', '美食 · 烹饪教程', null, '1', null, '0', '暄软咸香的葱花饼，不和面不揉面，筷子一搅就好', '2020-05-01 10:01:02');
INSERT INTO `hrl_vedio` VALUES ('20', 'https://wx4.sinaimg.cn/orj480/d3e95e3bly1gdgbmqed5fj21hc0u07wh.jpg', '86', '432', '1', null, null, '1', null, '0', '看四海八荒第一醋王如何被自己气吐血', '2020-05-01 10:01:04');
INSERT INTO `hrl_vedio` VALUES ('21', 'https://wx2.sinaimg.cn/orj480/007hv7zNly1geasj7x9tdj30zk0k077l.jpg', '24', '53454', '1', null, '清平乐', '1', null, '0', '清平乐，徽柔哭了，怀吉安慰', '2020-05-01 10:01:09');
INSERT INTO `hrl_vedio` VALUES ('22', 'https://wx1.sinaimg.cn/crop.0.80.1007.560/ba7eaab5gy1gdzi2296f0j20s00hse81.jpg', '42', '53', '1', null, '陈情令', '1', null, '0', '《陈情令》忘羡菜园子挑粪，魏无羡问蓝忘机阴铁的事', '2020-05-01 10:01:11');
INSERT INTO `hrl_vedio` VALUES ('23', 'https://wx2.sinaimg.cn/crop.0.87.1620.901/ed8ad1degy1ge9jc9jaqij21900u0nl0.jpg', '42', '53', '1', '影视 · 热门影视', null, '1', null, '0', '病娇贴纸妆丨日常丧甜妆容分享', '2020-05-01 10:01:14');
INSERT INTO `hrl_vedio` VALUES ('24', 'https://wx4.sinaimg.cn/orj480/0082pCSOly1gdguftmzkoj31hc0u0tdr.jpg', '64', '65', '1', '娱乐 · 娱乐明星', null, '1', null, '0', '小阿刚化妆台挚爱TOP3！', '2020-05-01 10:01:16');
INSERT INTO `hrl_vedio` VALUES ('25', 'https://wx2.sinaimg.cn/large/007uIP56ly1ge9sfaobvdj30ru0foacn.jpg', '86', '657', '1', null, '动漫', '1', null, '0', '【山坡上的詹姆斯】租房遇到的怪事儿', '2020-05-01 10:01:19');
INSERT INTO `hrl_vedio` VALUES ('26', 'https://wx3.sinaimg.cn/orj480/006DmMgUly1gea0av3kp2j30u00gvwlj.jpg', '97', '86', '1', null, '蜡笔小新', '1', null, '0', '蜡笔小新之小新想长高', '2020-05-01 10:01:22');
INSERT INTO `hrl_vedio` VALUES ('31', 'https://wx1.sinaimg.cn/crop.0.6.1920.1067/7558df23gy1ge9k1iaxjxj21hc0u0hdt.jpg', '31', '5647', '11', null, 'N姓女星冲鸭', '2', null, '0', 'OMG!  N姓女明星宅家日常训练曝光, 通过集训能否实现弯道超车?', '2020-05-01 17:27:28');
INSERT INTO `hrl_vedio` VALUES ('32', 'https://wx1.sinaimg.cn/orj480/64b28eb6ly1geayij0folj20h409kaai.jpg', '42', '8679', '12', null, '角度清奇', '2', null, '0', '谢谢张云龙，从此我看的霸道总裁文的男主都有了脸！', '2020-05-01 17:27:32');
INSERT INTO `hrl_vedio` VALUES ('33', 'https://wx4.sinaimg.cn/crop.0.6.1920.1067/006zFwjoly1geastlmksjj31hc0u04qp.jpg', '5', '543', '13', null, '老外视角', '2', null, '0', '中国小学生一米帽在海外火了，究竟是因为什么？', '2020-05-01 17:27:35');
INSERT INTO `hrl_vedio` VALUES ('34', 'https://wx3.sinaimg.cn/crop.0.4.1280.711/ed97c81bly1geay5ftbzjj20zk0k0ael.jpg', '64', '685', '14', null, '看完心情很复杂', '2', null, '0', '丹姝在大是大非上真的拎得清！对官家是真爱！', '2020-05-01 17:27:38');
INSERT INTO `hrl_vedio` VALUES ('35', 'https://wx4.sinaimg.cn/crop.0.6.1920.1067/ed97c81bly1geb09o8glyj21hc0u0wxo.jpg', '31', '45', '15', null, '粉丝都在看', '2', null, '0', '任敏版徽柔和边程版怀吉的对手戏终于来了！！CP感爆棚！！', '2020-05-01 17:27:40');
INSERT INTO `hrl_vedio` VALUES ('36', 'https://wx1.sinaimg.cn/orj480/006wfM3Igy1geawjpimylj30u00gv0xx.jpg', '53', '76', '16', null, '超好听', '2', null, '0', '安利向《你曾是少年》《阳光总在风雨后》《后来》真真的好好听！！！', '2020-05-01 17:27:42');
INSERT INTO `hrl_vedio` VALUES ('37', 'https://wx4.sinaimg.cn/orj480/978488a1ly1geaymuo3wuj21hc0u07wh.jpg', '764', '69', '17', null, '士为知己者死', '2', null, '0', '“月是云间散客，君是人间绝色”  肖战的眉目可比作诗', '2020-05-01 17:27:45');
INSERT INTO `hrl_vedio` VALUES ('38', 'https://wx4.sinaimg.cn/crop.0.6.1920.1067/006RySjygy1gebj8z88f1j31hc0u0kfw.jpg', '6', '8', '18', null, '不可辜负的美食', '2', null, '0', '厨师长教你：“辣子鸡”的家常做法，不用宽油也能有爱的味道', '2020-05-01 17:27:47');
INSERT INTO `hrl_vedio` VALUES ('39', 'https://wx1.sinaimg.cn/large/67dd74e0gy1geaznrf05hj21hc0u0dh2.jpg', '4456', '6485', '19', null, '人生哲理', '2', null, '0', '生活虐我千百遍，我待生活如初恋！我们都是在深夜里偷偷崩溃过的凡人', '2020-05-01 17:27:50');
INSERT INTO `hrl_vedio` VALUES ('40', 'https://wx2.sinaimg.cn/crop.0.6.1920.1067/006XDIV3gy1gearvo3589j31hc0u0e81.jpg', '42', '879', '20', null, '美味羊肉', '2', null, '0', '深夜吃播重大疑案：我的烤羊肋间肉跑到哪里去了？？？', '2020-05-01 17:27:52');
INSERT INTO `hrl_vedio` VALUES ('41', 'https://wx4.sinaimg.cn/crop.0.4.1146.637/4d69bc6egy1geatfo468yj20vu0jx4qp.jpg', '536', '98', '21', null, '当前最火', '2', null, '0', '黑人抬棺，最强业务员！一天搞死一个！', '2020-05-01 17:27:58');
INSERT INTO `hrl_vedio` VALUES ('42', 'https://wx2.sinaimg.cn/crop.0.0.1924.1070/006jDfN8gy1gebluevoanj31hg0u01ky.jpg', '2', '62', '22', null, '家乡的味道', '2', null, '0', '你们家乡酒席必吃什么？看风味人间四川酒席里的甜烧白', '2020-05-01 17:28:01');
INSERT INTO `hrl_vedio` VALUES ('43', 'https://wx2.sinaimg.cn/large/6927e7a5ly1geax1gv5ajj20np0dc0tn.jpg', '46', '54', '23', null, '天籁之音', '2', null, '0', '大提琴四重奏震撼演绎歌剧魅影《The Phantom of the Opera', '2020-05-01 17:28:04');
INSERT INTO `hrl_vedio` VALUES ('44', 'https://wx4.sinaimg.cn/orj480/005OfFGtgy1gebh0w8xerj30u00gv11w.jpg', '7', '9567', '24', null, '德国人怎么想', '2', null, '0', '德国柏林民众聚集游行示威，抗议社区隔离措措，期间德国警方试图驱赶，但被示威者拿着尺子警告', '2020-05-01 17:28:06');
INSERT INTO `hrl_vedio` VALUES ('45', 'https://wx2.sinaimg.cn/crop.0.6.1920.1067/d7920f04ly1ge9svrm1unj21hc0u0npe.jpg', '24', '70', '25', null, '大口吃肉大碗吃面', '2', null, '0', '猪蹄干筋，五斤肉一锅卤，大sao给新灶开锅，大块肉大盆面吃过瘾', '2020-05-01 17:28:08');
INSERT INTO `hrl_vedio` VALUES ('46', 'https://wx4.sinaimg.cn/orj480/006hPceHly1geb1n7b5nfj30qo0f0ai9.jpg', '564', '34', '26', null, '流量人气明星', '2', null, '0', '张一山挑战鲱鱼罐头，吃完还喝汤，真是娱乐圈一狼人', '2020-05-01 17:28:11');
INSERT INTO `hrl_vedio` VALUES ('47', 'https://wx1.sinaimg.cn/orj480/4d5edb57ly1geaxhsklucj21hc0u0di9.jpg', '8', '549', '27', null, '小学生必看', '2', null, '0', '烧麦听故事！像不像上网课的你们', '2020-05-01 17:28:40');
INSERT INTO `hrl_vedio` VALUES ('48', 'https://wx4.sinaimg.cn/large/bd4e13c2gy1gear4d1pemj20ru0fo787.jpg', '987', '780', '28', null, '最强动漫', '2', null, '0', '逆转裁判又来了', '2020-05-01 17:28:44');
INSERT INTO `hrl_vedio` VALUES ('49', 'https://wx1.sinaimg.cn/orj480/006ZxBTvgy1geblad6njrj30u00gx1an.jpg', '2', '890', '29', null, '介绍古装', '2', null, '0', '古装踩点混剪，亏欠你江山 来年今日 如数奉还', '2020-05-01 17:28:46');
INSERT INTO `hrl_vedio` VALUES ('50', 'https://wx4.sinaimg.cn/orj480/8c75dbcfly1gebulrwo3mj20hs0a1n0a.jpg', '665', '43', '30', null, '我到底粉了个啥', '2', null, '0', '公主懂了，你们听懂了么？ ', '2020-05-01 17:28:49');
INSERT INTO `hrl_vedio` VALUES ('51', 'https://wx3.sinaimg.cn/orj480/0070NmCwly1geaxjxb108j31hc0u0gsr.jpg', '789', '8823', '31', null, '日常被怼', '2', null, '0', '哈哈哈哈哈哈哈哈哈哈哈哈哈王一博想销毁的第不知道多少个视频出现了', '2020-05-01 17:28:51');
INSERT INTO `hrl_vedio` VALUES ('52', 'https://wx1.sinaimg.cn/large/7697cf01ly1geb1yzh1vxj20ru0fo78k.jpg', '654', '2', '32', null, '降低应急响应', '2', null, '0', '中国将在北京举行两会，北京防控从一级响应降为二级', '2020-05-01 17:28:54');
INSERT INTO `hrl_vedio` VALUES ('53', 'https://wx3.sinaimg.cn/crop.0.11.1919.1067/c5a86275gy1ge9t7194s6j21hb0u0e83.jpg', '36', '45', '33', null, '竹鼠兄弟', '2', null, '0', '华农兄弟：给小胖狗洗个澡，顺便给它穿个漂亮的衣服', '2020-05-01 17:28:56');
INSERT INTO `hrl_vedio` VALUES ('54', 'https://wx4.sinaimg.cn/large/6927e7a5ly1geblgyob6cj21hc0u0goo.jpg', '63', '65', '34', null, '心驰神往', '2', null, '0', '10个超棒的创意摄影方案，超酷超厉害！！！！！相机的各种参数设置都已标明', '2020-05-01 17:28:59');
INSERT INTO `hrl_vedio` VALUES ('55', 'https://wx3.sinaimg.cn/crop.0.6.1920.1067/007uq4Bbgy1geaygeft8qj31hc0u0jwi.jpg', '65', '78', '35', null, '百姓故事', '2', null, '0', '一个令人心酸的案件。赌徒丈夫每晚安排不同的男人和妻子发生关系。', '2020-05-01 17:29:01');
INSERT INTO `hrl_vedio` VALUES ('56', 'https://wx2.sinaimg.cn/large/006Vwtq3ly1gebelpjxz5j30zk0k0abq.jpg', '68', '34', '36', null, '有被齁到', '2', null, '0', '巴黎迪士尼乐园为疫情隔离在家的粉丝们发布了官方版灯光烟火秀！', '2020-05-01 17:29:04');
INSERT INTO `hrl_vedio` VALUES ('60', 'https://wx1.sinaimg.cn/orj480/74958b71ly1gec3276585j20tk0gmao5.jpg', '452', null, '40', null, null, '3', null, '212', '这是我写给你们的歌', '2020-05-02 15:35:35');
INSERT INTO `hrl_vedio` VALUES ('61', 'https://wx2.sinaimg.cn/crop.0.6.1920.1067/00705lVnly1gec0lkoxeqj31hc0u00ue.jpg', '4637', null, '41', null, null, '3', null, '4512', '回形针是怎么做视频的', '2020-05-02 15:35:39');
INSERT INTO `hrl_vedio` VALUES ('62', 'https://wx3.sinaimg.cn/orj480/b4917656gy1gec2so8qyzj20ty0gugym.jpg', '364', null, '42', null, null, '3', null, '3425', '人鱼陪你云追剧，今天第一期嘉宾是我的塑料姐妹花陪我一起～', '2020-05-02 15:35:43');
INSERT INTO `hrl_vedio` VALUES ('63', 'https://wx3.sinaimg.cn/orj480/4d5edb57ly1gebzx7zdc2j21hc0u0784.jpg', '467', null, '43', null, null, '3', null, '251', '二人世界', '2020-05-02 15:35:45');
INSERT INTO `hrl_vedio` VALUES ('64', 'https://wx2.sinaimg.cn/orj480/76e1e855gy1gebyxdh436j20u00gwtte.jpg', '664', null, '44', null, null, '3', null, '3256', '炸猪排炸猪排炸猪排！超级爆炸酥脆的炸猪排', '2020-05-02 15:35:48');
INSERT INTO `hrl_vedio` VALUES ('65', 'https://wx2.sinaimg.cn/crop.0.6.1920.1067/006zFwjoly1gebvqdd1ybj31hc0u01kx.jpg', '786', null, '45', null, null, '3', null, '853', '变身成一个机器人，我终于“回”到北京了！跨越7000公里的远程操控', '2020-05-02 15:35:51');
INSERT INTO `hrl_vedio` VALUES ('66', 'https://wx2.sinaimg.cn/crop.0.6.1920.1067/006BFbLtgy1gebzzdl0aej31hc0u0aqf.jpg', '983', null, '46', null, null, '3', null, '517', '茶颜悦色C位评选、一盏灯花式吃播、文和友羞耻小剧场，长沙美食vlog', '2020-05-02 15:35:53');
INSERT INTO `hrl_vedio` VALUES ('67', 'https://wx1.sinaimg.cn/crop.97.0.1722.957/93f8d29dgy1gec05iccbkj21hc0qm482.jpg', '783', null, '47', null, null, '3', null, '637', 'NCT DREAM《Ridin\'》(Ridin\' Ver.)回归初舞台公开！终于等到了啊啊啊啊啊，帅气的弟弟们值得！', '2020-05-02 15:35:55');
INSERT INTO `hrl_vedio` VALUES ('68', 'https://wx2.sinaimg.cn/large/83fae389gy1gec07linbtj20ru0fo0vc.jpg', '964', null, '48', null, null, '3', null, '758', '真实记录：给阿拉斯加犬洗澡到底有多难？', '2020-05-02 15:35:57');
INSERT INTO `hrl_vedio` VALUES ('69', 'https://wx2.sinaimg.cn/orj480/71ddf757ly1gec6plgfxaj21520n4aql.jpg', '973', null, '49', null, null, '3', null, '357', '陈粒超话#陈粒自然环境# ', '2020-05-02 15:35:59');
INSERT INTO `hrl_vedio` VALUES ('70', 'https://wx1.sinaimg.cn/crop.0.6.1920.1067/006Nzevlly1gec8iqp1ecj31hc0u0787.jpg', '475', null, '50', null, null, '3', null, '53', '任嘉伦唯伦特工队成立', '2020-05-02 15:36:03');
INSERT INTO `hrl_vedio` VALUES ('71', 'https://wx4.sinaimg.cn/orj480/0085aTfcly1gebyx3lxcyj31hc0u07qi.jpg', '786', null, '51', null, null, '3', null, '453', '青你2女团舞还能有多难！澳洲小哥苦练一天，你觉得能进A班吗？', '2020-05-02 15:36:05');
INSERT INTO `hrl_vedio` VALUES ('72', 'https://wx3.sinaimg.cn/crop.0.6.1920.1067/0071OJAegy1gebz6nll1fj31hc0u04qp.jpg', '134', null, '52', null, null, '3', null, '174', '不同身材如何搭配才能显瘦显高？', '2020-05-02 15:36:06');
INSERT INTO `hrl_vedio` VALUES ('73', 'https://wx4.sinaimg.cn/orj480/006Eifj0ly1gec3szum27j30hs09swff.jpg', '4896', null, '53', null, null, '3', null, '75', ' 张艺兴回忆《极限挑战》当年被假装摄像大师的黄渤骗，再看这段还是很搞笑', '2020-05-02 15:36:09');
INSERT INTO `hrl_vedio` VALUES ('74', 'https://wx2.sinaimg.cn/crop.0.4.1280.711/ed97c81bly1gec4s1qy0qj20zk0k0gnl.jpg', '7243', null, '54', null, null, '3', null, '196', '#宋仁宗痛失爱子#【《#清平乐#》播至第40-41集！', '2020-05-02 15:36:11');
INSERT INTO `hrl_vedio` VALUES ('75', 'https://wx4.sinaimg.cn/orj480/005zonqQgy1gec41k2unhj30u00gwndt.jpg', '4637', null, '55', null, null, '3', null, '345', '刘雨昕三段舞蹈battle合集\r\nLisa夸刘雨昕 这首歌是为你量身定做的', '2020-05-02 15:36:14');
INSERT INTO `hrl_vedio` VALUES ('76', 'https://wx2.sinaimg.cn/crop.0.5.1611.896/007HJvR8ly1gec35btounj318r0p6do9.jpg', '738', null, '56', null, null, '3', null, '145', null, '2020-05-02 15:36:17');
INSERT INTO `hrl_vedio` VALUES ('77', 'https://wx2.sinaimg.cn/orj480/005OImg1ly1gec3jvr9vyj31hc0u0txp.jpg', '643', null, '57', null, null, '3', null, '7678', null, '2020-05-02 15:36:19');
INSERT INTO `hrl_vedio` VALUES ('78', 'https://wx2.sinaimg.cn/crop.0.6.1920.1067/ed97c81bly1gec61d36fqj21hc0u042s.jpg', '783', null, '58', null, null, '3', null, '7634', null, '2020-05-02 15:36:22');
INSERT INTO `hrl_vedio` VALUES ('79', 'https://wx3.sinaimg.cn/crop.0.6.1920.1067/674dcfb6gy1gebyzuspepj21hc0u07wh.jpg', '647', null, '59', null, null, '3', null, '547', null, '2020-05-02 15:36:25');
INSERT INTO `hrl_vedio` VALUES ('80', 'https://wx4.sinaimg.cn/orj480/dfc0c44ely1gec05w4je3j20u00gvdt5.jpg', '357', null, '60', null, null, '3', null, '736', null, '2020-05-02 15:36:27');
INSERT INTO `hrl_vedio` VALUES ('81', 'https://wx3.sinaimg.cn/crop.0.2.688.383/007xcaqqgy1gecpypl52aj30j50asjwl.jpg', '737', null, '61', null, null, '3', null, '786', null, '2020-05-02 15:36:30');
INSERT INTO `hrl_vedio` VALUES ('82', 'https://wx2.sinaimg.cn/orj480/73977c05ly1gec8fhp05dj21hc0u01kx.jpg', '4537', null, '62', null, null, '3', null, '643', null, '2020-05-02 15:36:33');
INSERT INTO `hrl_vedio` VALUES ('83', 'https://wx1.sinaimg.cn/crop.0.6.1920.1067/c63a37cely1gecs7vbs4tj21hc0u0x6p.jpg', '3574', null, '63', null, null, '3', null, '647', null, '2020-05-02 15:36:35');
INSERT INTO `hrl_vedio` VALUES ('84', 'https://wx2.sinaimg.cn/large/742d19e3gy1gecom68pk3j20no0dcwg3.jpg', '737', null, '64', null, null, '3', null, '463', null, '2020-05-02 15:36:38');

-- ----------------------------
-- Table structure for `hrl_vedio_category`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_vedio_category`;
CREATE TABLE `hrl_vedio_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_vedio_category
-- ----------------------------
INSERT INTO `hrl_vedio_category` VALUES ('1', '推荐');
INSERT INTO `hrl_vedio_category` VALUES ('2', '热门');
INSERT INTO `hrl_vedio_category` VALUES ('3', '小视屏');

-- ----------------------------
-- Table structure for `hrl_weibo`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_weibo`;
CREATE TABLE `hrl_weibo` (
  `weibo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `zhuanfa_num` bigint(20) DEFAULT '0',
  `like_num` bigint(20) DEFAULT '0',
  `comment_num` bigint(20) DEFAULT '0',
  `cat_id` bigint(20) DEFAULT NULL,
  `vediourl` varchar(255) DEFAULT '',
  `tail` varchar(255) DEFAULT '',
  `is_zhunfa` int(10) DEFAULT '0',
  `zf_weiboid` bigint(255) DEFAULT '0',
  `pic1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic4` varchar(255) DEFAULT NULL,
  `pic5` varchar(255) DEFAULT NULL,
  `pic6` varchar(255) DEFAULT NULL,
  `pic7` varchar(255) DEFAULT NULL,
  `pic8` varchar(255) DEFAULT NULL,
  `pic9` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`weibo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_weibo
-- ----------------------------
INSERT INTO `hrl_weibo` VALUES ('1', '14', '【 #热干面醒了:20#！[/9829] 】被按下暂停键的湖北开始重启啦~我们的热干面醒了！[@陈小桃momo:5455345]', '1237', '4351', '4918', '1', '', '', '0', '0', 'https://wx4.sinaimg.cn/mw690/a716fd45ly1gd5stv43s1j20u018z1ky.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('2', '3', '武大樱花 [/127802]  \\n#梦幻樱花薯片:20# ​', '21', '321', '2', '1', '', '高端大气的Android', '0', '0', 'https://ww1.sinaimg.cn/bmiddle/006kLYOwgy1gd62l9l3x0j30rc0q612n.jpg', 'https://ww1.sinaimg.cn/bmiddle/006kLYOwgy1gd62l5kztmj30sg0r70z5.jpg', 'https://ww2.sinaimg.cn/bmiddle/006kLYOwgy1gd62l6tem1j30r00r0jyi.jpg', 'https://ww4.sinaimg.cn/bmiddle/006kLYOwgy1gd62l88uarj30sg0qw7ez.jpg', 'https://ww4.sinaimg.cn/bmiddle/006kLYOwgy1gd62l8xpchj30sg0qu7el.jpg', 'https://ww2.sinaimg.cn/bmiddle/006kLYOwgy1gd62l55whbj30p911uwhw.jpg', 'https://ww2.sinaimg.cn/bmiddle/006kLYOwgy1gd62l4ntc8j30sg0qrn8b.jpg', 'https://ww1.sinaimg.cn/bmiddle/006kLYOwgy1gd62l7jmn7j30sg0ro7en.jpg', 'https://ww4.sinaimg.cn/bmiddle/006kLYOwgy1gd62la7x0rj30sg0qxais.jpg', '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('3', '13', '【中国援助塞尔维亚专家医疗队受到最高礼遇迎接 #塞尔维亚总统亲吻五星红旗#】当地时间3月21日19:30分，中国6人专家医疗队抵达#塞尔维亚#，随着专机带来的有中国政府紧急筹集的十几吨物资，包括呼吸机、口罩、试剂盒等防疫物资。塞尔维亚总统武契奇等多位政府官员在停机坪等候，武契奇与医疗队成员一一碰肘，表示热烈欢迎和由衷感谢。随后，武契奇在五星红旗上献上了他深情的一吻，以示在塞尔维亚困难时期得到中国政府和人民支持与帮助的深深谢意，这一幕使得现场很多人动容。（总台记者张颖）', '34938', '18322', '88913', '1', 'weibo2.mp4', '微博云剪', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('4', '31', '转发这篇微博 [/128514] [/128514] [/128514][/128514]', '31', '31', '31', '1', '', '来自 城南花已开Android', '1', '7', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('5', '2', '《复仇者联盟4》中[/128049]托尼斯塔克在哄小摩根睡觉前，小摩根跟爸爸钢铁侠无经意间随口说的一句话“我爱你3000遍”在一次采访的节目中，导演罗素兄弟透露，关于钢铁侠在这部电影中的这一句有爱、动人的台词，其实是来自于演员小罗伯特唐尼其中的孩子！(I love you three thousand)#我爱你3000遍来自唐尼孩子#。不过钢铁侠，我们爱你3000遍不止', '1', '25', '1', '1', '', '', '0', '0', 'https://ww2.sinaimg.cn/bmiddle/c5f4f0ecgy1g2piwyw3z3j20c809pjyj.jpg', 'https://ww4.sinaimg.cn/bmiddle/c5f4f0ecgy1g2pix22tf0j20c80hq1du.jpg', 'https://ww2.sinaimg.cn/bmiddle/c5f4f0ecgy1g2pix5c2x2j20c807z45v.jpg', '', null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('6', '4', '#童年回忆杀:20#\\n#哆啦A梦:20#：大雄摸了几下肌肉男，自己也变成肌肉男了！', '21', '21', '23', '1', 'weibo3.mp4', '微博网页', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('7', '5', '自拍来了 ​​​​', '31', '43', '43', '30', '', '', '0', null, 'https://wx3.sinaimg.cn/mw690/d60fbcc9ly1gd31vqfjzej22c02c0e81.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('8', '15', '#安家第二部是创业故事# 近日，[@郭涛:1] 在视频中透露#安家有第二部# ，而且下一部是创业故事，阚先生变成了房似锦和徐姑姑的合伙人，“听说徐姑姑和房似锦好像要创业了，那我必须是合伙人啊，下一部就是我们的创业故事”。你期待吗？  [/128518]', '12', '22', '21', '1', '', '', '0', '0', 'https://wx2.sinaimg.cn/mw690/61e7f4aaly1gd2hrr5lvgj20u0160n84.jpg', 'https://wx2.sinaimg.cn/mw690/61e7f4aaly1gd2hrs7ujrj21hc0u01l1.jpg', 'https://wx3.sinaimg.cn/mw690/61e7f4aaly1gd2hrsu6awj20xc0m8ndd.jpg', 'https://wx2.sinaimg.cn/mw690/61e7f4aaly1gd2hrr1waij20hl0qe7ju.jpg', null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('10', '17', '善良是真正的的自信。设身处地，急人所困是真正的强大。\\n今天的世界，充满着各种观点，各种看法，各种杂音，所有的声音我们都可以有不同意见，但是无论国别信仰，任何人不应该对无助民众求生求救的呼声冷嘲热讽、坐看笑话。因为今天的我们同在一片着了火的森林里，一荣未必俱荣，一毁肯定俱毁。这是一场会夺取无数人生命和健康的战争，人类共同面临的是一个隐形却凶狠的敌人。在这场灾难面前，只有合作，互助，团结起来打败它，才是唯一的出路，否则谁也没法笑到最后。相信灾情过后，世界会看到的是善良的中国人、勇敢的中国人和担当的中国人！', '31', '32', '31', '1', '', '微博 weibo.com', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('11', '32', '转发这篇微博', '21', '31', '311', '1', '', '', '1', '35', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('12', '16', '新疆的魅力，你自己来体会\\n#新疆旅游包车#   #新疆旅游攻略# ​​​​', '31', '31', '31', '1', '', 'iPhone 6s Plus', '0', '0', 'https://wx1.sinaimg.cn/mw690/67d691a0ly1gakaih8aj3j20k00g7ad3.jpg', 'https://wx4.sinaimg.cn/mw690/67d691a0ly1gal1lp1keej20hs0b1403.jpg', 'https://wx3.sinaimg.cn/mw690/67d691a0ly1gakair8b4uj20k00dcmyf.jpg', 'https://wx4.sinaimg.cn/mw690/67d691a0ly1gakaikgj6jj21450qo15c.jpg', 'https://wx3.sinaimg.cn/mw690/67d691a0ly1gakalbkm2ej20xc0mbtag.jpg', 'https://wx1.sinaimg.cn/mw690/67d691a0ly1gakaim3oqdj21420qowpb.jpg', 'https://wx1.sinaimg.cn/mw690/67d691a0ly1gakaisyeabj20hs0budgs.jpg', 'https://wx4.sinaimg.cn/mw690/67d691a0ly1gal1i7czxjj20gb0bater.jpg', 'https://wx4.sinaimg.cn/mw690/67d691a0ly1gakais3ljnj20hs0pl0uy.jpg', '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('13', '20', '【#肯尼迪家族又发生悲剧# ：母子失踪5天后，一人遗体被找到】肯尼迪家族又发生一起悲剧，两名家庭成员失踪5日后，其中一人的遗体被找到。\r\n据美国有线电视新闻网报道，这两名家庭成员是41岁的肯尼迪·汤森德·麦基恩（Maeve Kennedy Townsend McKean）和她8岁的儿子吉迪恩（Gideon）。他们最后一次露面是在当地时间4月2日的晚间。马里兰州警方在一份声明中指出，当地时间6日下午5点31分左右，救援队的潜水员在25英尺（7.6米）深的水中发现麦基恩的遗体，目前仍在搜寻吉迪恩的遗体。\r\n麦基恩的祖父是美国前任司法部长罗伯特·肯尼迪。她的丈夫戴维·麦基恩表示，妻子和儿子事发当日在踢球，期间，球落入水中，于是二人乘坐独木舟去取球，不知何故被风或潮汐推入开阔的海湾，导致意外发生。\r\n肯尼迪家族经历过多次悲剧。2019年8月，罗伯特·肯尼迪的外孙女西尔莎（Saoirse Kennedy Hill）疑因“服药过量”去世。《每日邮报》2019年一篇报道曾称，从总统遇刺、战场牺牲到飞机事故，多年来在不寻常的情况下失去了数名家庭成员。\r\n1963年，时任总统约翰·肯尼迪被刺杀。他的弟弟罗伯特·肯尼迪（当时是美国议员、总统候选人）于1968年也被刺杀。家中长兄小约瑟夫在第二次世界大战中阵亡。三人的妹妹凯瑟琳于1948年在飞机事故中不幸丧生。\r\n1984年，罗伯特·肯尼迪之子戴维因过量吸服海洛因而亡；1999年；约翰·肯尼迪之子小约翰·肯尼迪死于飞机失事；1997年，罗伯特·肯尼迪之子迈克尔死于滑雪事故。半个世纪以来，命运多舛的肯尼迪家族令外界叹息。（海外网；ZY）', '898', '423', '643', '1', '', '', '0', '0', 'https://ww4.sinaimg.cn/thumb150/624c6377gy1gdl1qimnoij20lo0c7jvr.jpg', 'https://ww1.sinaimg.cn/thumb150/624c6377gy1gdl1qio92mj20i3090n6t.jpg', null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('14', '34', '【#今天是世界卫生日#，为他们发条微博】没有从天而降的英雄，只有挺身而出的凡人，因为有他们，我们等来了春暖花开！致敬医护，共抗疫情，守护生命的他们，值得我们最好的守护！', '786', '53', '31', '1', '', '', '0', '0', 'https://wx4.sinaimg.cn/mw690/a716fd45ly1gdl2gxuradj20go0t6th5.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('15', '25', '颐和园是我读大学时的后花园，每年这时候，一定要去西堤走一走，吹一下昆明湖的风，看一眼盛放的山桃花。。。憋了两个月，大家也可以到户外走一走啦，感受一下祖国的大好河山，我们已经错过了春节，不要再错过了春天', '797', '75', '675', '1', '', ' iPhone 11 Pro Max', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('29', '80', '刚看到一位网友的评论，觉得挺有意思——“为什么阴谋论如此盛行，是因为阴谋论可以让头脑简单的人觉得自己的头脑不再简单。” ​​​​', '0', '1', '0', '0', '', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('30', '78', '#全国美食为武汉加油:1# 看到大家都在用家乡美食为武汉加油，画一张温暖点的画，相信一切都会好起来的 [/127774][/127774][/127774] #武汉加油:1#', '21', '1', '353', '0', '', ' iPhone客户端', '0', '0', 'https://wx3.sinaimg.cn/mw690/b08f59e9ly1gbet9cn5iuj215o1qhhaj.jpg', null, null, null, null, null, null, null, null, '2020-04-16 16:31:50');
INSERT INTO `hrl_weibo` VALUES ('31', '14', '【#钟南山说希望国庆80周年再给大家讲讲话#[/128151][/128151][/128151]】近日，有媒体公布了钟南山去年在83岁生日会上的一段视频。视频中，钟南山说，“2019年是国庆70周年。希望国庆80周年的时候，能再给大家讲讲话。希望那时不要被抬着上来，现在为止自我感觉还可以。”看视频↓', '242', '42', '24', '0', 'weibo_31.mp4', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('33', '79', '祖 安 理 论 基 础\\n#骂人一定要指名道姓# ​​​​', '21', '4', '32', '0', '', '', '0', '0', 'https://wx2.sinaimg.cn/mw690/0075xgHYly1gdmxbvcl91j30ty0gz0x9.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('34', '77', '有如人间仙境。洪水口村地处“首都屋脊”灵山脚下，百花山国家级自然保护区内。 ​​​​[@老王:1] ', '9775', '888', '13', '0', '', '', '0', '0', 'https://wx3.sinaimg.cn/mw690/6587622bly1gdn75y3pe3j21180l4h8f.jpg', 'https://wx4.sinaimg.cn/mw690/6587622bly1gdn75yifxuj20z00m94j1.jpg', 'https://wx2.sinaimg.cn/mw690/6587622bly1gdn75ys1s0j20ym0ls4ev.jpg', 'https://wx3.sinaimg.cn/mw690/6587622bly1gdn75z7fs1j20w70hrng3.jpg', 'https://wx4.sinaimg.cn/mw690/6587622bly1gdn75zibjsj20zi0ksqko.jpg', 'https://wx2.sinaimg.cn/mw690/6587622bly1gdn760mninj21r51phb2c.jpg', 'https://wx2.sinaimg.cn/mw690/6587622bly1gdn761zpknj22az1jce84.jpg', 'https://wx3.sinaimg.cn/mw690/6587622bly1gdn762ootgj21400qoe81.jpg', 'https://wx3.sinaimg.cn/mw690/6587622bly1gdn763xnl2j22ip1ohu11.jpg', '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('35', '33', '硬核！这不是电影画面，是人民陆军的真实！300米江面瞬间建起一座桥，就是这么了不起！赞！ #奇趣视频##迷惑行为大赏#', '12', '21', '212', '30', 'weibo4.mp4', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('41', '74', '#电视剧有翡#\\n天阔任行，何忧！ ​​​​', '31', '43', '7', '4', '', '新买的iPhone X ', '0', '0', 'https://wx3.sinaimg.cn/mw690/006LO40Dgy1gdn8zmaybsj318x0u0hdu.jpg', 'https://wx2.sinaimg.cn/mw690/006LO40Dgy1gdn8zmleqqj318x0u0kjm.jpg', 'https://wx4.sinaimg.cn/mw690/006LO40Dgy1gdn8zmgr7ij318x0u04qq.jpg', null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('42', '71', '纵容着 喜欢的 讨厌的\\n宠溺的 厌倦的 一个个慢慢黯淡\\n纵容着 任性的 随意的\\n放肆的 轻易的 将所有欢脱倾翻\\n这是歌里我最喜欢的几句歌词。人生如此，圆圆满满，不如小半。一周年快乐，今后也要一起加油啊[/128151][/128151][/128151]', '32', '54', '13', '4', '', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('43', '70', '我的第四张专辑叫做《新世界NEW WORLD》，今天先公开专辑同名单曲《新世界》，算是正式开启新世界的大门。这首歌是我在出道第五年时写的，“五年”对我来说是成长过程中一个重要的时间节点。今年是我出道的第七年，希望你们跟我一起走进真正的新世界，感受新世界的变化。14:07 在网易云音乐可以听歌，专辑剩下的歌也会一首一首的出来，一共8首，每一首我都很喜欢。实体专辑也会很快出来，让你们久等了！', '21', '31', '0', '4', '', '绿洲APP', '0', '0', 'https://wx2.sinaimg.cn/mw690/60da5d47gy3gdmb4yejqgj20wt0wtncd.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('44', '72', '我是你的心中所选[/128153][/128153]', '31', '53', '57', '4', '', 'iPhone 11 Pro Max', '0', '0', 'https://wx4.sinaimg.cn/mw690/006kicK4ly1gdnfr9wsfdj322o340kjm.jpg', 'https://wx1.sinaimg.cn/mw690/006kicK4ly1gdnfrd5q1rj322o340x6q.jpg', 'https://wx2.sinaimg.cn/mw690/006kicK4ly1gdnfrefaiyj322o340qv6.jpg', null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('45', '73', '继续做因为你们而闪耀的月亮，两周年快乐！ ​​', '0', '0', '0', '4', '', '', '0', '0', 'https://wx3.sinaimg.cn/mw690/00682BdMly1gdkfabnn0ej32c0340qvb.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('46', '75', '#孟子坤TRAPPED IN THE LOVE:1##孟子坤:1#\\n        穿过泛白的黑夜，行过荒芜的都市    \\n       带着我一切的挚爱，前往命定的归宿     \\n               冲破阻碍，打破世界    ', '31', '12', '21', '4', '', '', '0', '0', 'https://wx3.sinaimg.cn/mw690/005GQfOkgy1gdsisd5cogj30km0kmaby.jpg', 'https://wx4.sinaimg.cn/mw690/005GQfOkgy1gdsisdfpetj30km0km76f.jpg', 'https://wx2.sinaimg.cn/mw690/005GQfOkgy1gdsiscs01hj30km0kmwgb.jpg', 'https://wx4.sinaimg.cn/mw690/005GQfOkgy1gdsisdtv41j30km0kmjtd.jpg', 'https://wx2.sinaimg.cn/mw690/005GQfOkgy1gdsise7vp1j30km0km409.jpg', 'https://wx3.sinaimg.cn/mw690/005GQfOkgy1gdsisemnsgj30km0kmgni.jpg', 'https://wx1.sinaimg.cn/mw690/005GQfOkgy1gdsiseyjnbj30km0kmtae.jpg', 'https://wx1.sinaimg.cn/mw690/005GQfOkgy1gdsisfcybcj30km0kmdhs.jpg', 'https://wx2.sinaimg.cn/mw690/005GQfOkgy1gdsisfqqssj30km0km409.jpg', '2020-04-16 15:40:46');
INSERT INTO `hrl_weibo` VALUES ('47', '76', '回答大家一些问题吧，我在高中是长跑体育生，不系统练了一两年，但那时候特别讨厌跑步，训练能逃就逃，因为我觉得再怎么跑看着都不快，且表情不帅，当时整体跑步训练水平都不高，我拿过几个区里长跑比赛的名次，退学后自然就放弃了。\r\n\r\n2000年后，我开始职业赛车，就很喜欢，这个看着就很快，都是人类力量的延伸，操纵这些机器，能让你感受到人类身体无法企及的速度和力量。比赛成绩也不错，十年拿了七个总冠军，一度更让我庆幸当年没继续长跑。\r\n\r\n直到去年，连续的电影工作和日常压力，让我重回赛车上的时候觉得有点难。虽然比赛成绩还算不错，但我其实对自己非常失望。后来突然就一直开始掉体重，几个月时间掉了四十多斤，也去医院做了各种检查。那时候突发奇想，觉得可以试试跑步，说不定依然很快呢。（这个地方让我插播一句，若想减肥一定不能不吃，不要节食，特别不好，适得其反）\r\n\r\n第一个五公里我跑了30分钟。我不记得我高中的五公里成绩了，但应该是差了十分钟以上，那天最高心率接近200。我无法接受，一定是表坏了。\r\n\r\n瘸了几天，肌肉没那么酸痛了，我重出江湖，证明了表没坏。\r\n\r\n人一定会退步的，如果没有努力，那这个世界上能和你一起自然增长的应该只剩下各种痛苦。第二次虽然也慢，不过在配速更快的情况下，心率比第一次降低了。这就像残垣里一片叶子，至少让一切看起来还没有那么糟糕。那应该是去年十月份左右，我想在年底前可以做到五公里进20分钟，十公里进40分钟。\r\n\r\n因为工作，我没有那么多时间去训练，睡眠也不是很规律，一个月总跑量只能做到一百公里不到，脚踝的老伤还一直困扰，我非常沮丧，看了各种资料和视频，学着用更科学的方式练习，希望可以让跑量更有效。好在咱们中国人说“年前”，是有周旋余地的，因为我们有元旦，还有春节。我这种不记日子的人还记得一月十八日，时隔二十多年，我十公里又跑进了四十分钟，39分38秒，平均配速3:58。几天后用30分钟的时间又跑了五公里，心率是每分钟110多，一样的用时，平均每分钟心率比三个月前让我崩溃的那一跑慢了将近80下，这就说明你有了很大的提升。体育之美就是你能看到自己努力的结果。生活里，我们虽然需要努力，但很多努力都是没用的，南辕北辙的，甚至越努力越错的，越在意越失去的，科学的运动就会给你正面的回馈。这世上回响太难得了。\r\n\r\n因为我本职是职业车手，为了防止受伤，用过很多跑鞋和装备，包括护膝，肌效贴，是有效，但都比不上自身的有效肌肉增强一分。很多朋友也问我装备，我试过不少跑鞋，出道二十年，最贵的跑车买不起，最好的跑鞋还是可以承担的。现在各个品牌的跑鞋，无论进口或者国产，都很棒，尤其是碳板跑鞋，比我上学那个年代强太多了，只要合脚，买哪个都不会错。但此刻我脚下这双 Nike Alphafly next%就是最强的。我之前用next%和老款%4，碳板推力很大，穿上就是一片新天地，这双最新Alfpafly 就不止是新天地了，是新世界，是速度，稳定和舒适的最好结合。如果你有一定的配速基础，它会让你再进一步。至于日常生活和跑步，我一直是一双无碳板的pegsus turbo 2。\r\n\r\n5公里18分钟多在业余爱好者里还算不错，但有太多太多跑的比我快得多的朋友了。大家知道5000米的世界纪录是多少吗，12分钟多，比我快6分钟。我现在的时间如果再快一分钟，17分40秒，可以到专业国家三级运动员，只是三级，三级之上不是还有两级哦，是还有三级，分别是二级，一级和国家健将级。此刻我可以用3:50的配速（也就是每一公里用时3分50秒）跑十公里，马拉松冠军基普乔格可以用2分50秒的配速跑四十多公里。这个配速下，我连800米都跑不下来，这就是天地之别，敬畏专业，自己才能进步。我依然热爱赛车，依然觉得人类力量和意志的延伸很了不起，我依然期盼操纵机械，去到极限之边界，但人类力量和意志的本身，才是一切的源头。', '31', '5', '34', '4', '', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('52', '54', '#江苏人的健康码#\\n其他省份的人在外地遇到老乡：老乡遇老乡，两眼泪汪汪。\\n江苏人在外地：苏南遇苏北，我不认识你。', '0', '0', '0', '5', '', '', '0', '0', 'https://wx4.sinaimg.cn/mw690/68f96469gy1gdngq2m3tyj205i05i3yv.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('53', '67', '最近哦，天气比较奇怪，这不换季了嘛\r\n我身上发一些痒痒的红疙瘩，我寻思去看看吧！\r\n去附近的小诊所看看，让我拿药，我觉得很好呀！\r\n但那阿姨问我要不要打针？！！？！！？\r\n皮肤痒让我打针？！！？？我震惊', '0', '0', '0', '0', '', '', '0', '0', 'https://wx2.sinaimg.cn/mw690/006FnQZYly1gdle5gumncj3048048q2z.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('55', '82', '#只有学习自带防沉迷系统#每当学习时候的我。 ​​​​\r\n', '0', '0', '0', '5', '', '', '0', '0', 'https://wx3.sinaimg.cn/mw690/6a14bdb4ly1gdna5wi3c2j20j60ltq67.jpg', 'https://wx4.sinaimg.cn/mw690/6a14bdb4ly1gdna5x4agij20hs0dh403.jpg', 'https://wx2.sinaimg.cn/mw690/6a14bdb4ly1gdna5xfm6kj20j60imjw6.jpg', 'https://wx4.sinaimg.cn/mw690/6a14bdb4ly1gdna5xr1qgj20hs0hsta7.jpg', 'https://wx2.sinaimg.cn/mw690/6a14bdb4ly1gdna5wttmvj20j60iyacm.jpg', 'https://wx4.sinaimg.cn/mw690/6a14bdb4ly1gdna5y3onlj20j60fpq65.jpg', 'https://wx3.sinaimg.cn/mw690/6a14bdb4ly1gdna5yebinj20dc0a00t6.jpg', 'https://wx2.sinaimg.cn/mw690/6a14bdb4ly1gdna5yo2lgj20dw0ca759.jpg', 'https://wx4.sinaimg.cn/mw690/6a14bdb4ly1gdna5w7hzvj20hs0hsmzl.jpg', '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('56', '81', '#喝奶茶要小心点欧#\r\n这也太可爱了吧 ', '0', '0', '0', '0', 'weibo_56.mp4', ' 团团圆圆iPhone客户端', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('57', '1', '#来自开学的惊喜#网友高三开学，在自己的座位发现鸟巢哈哈哈哈哈哈哈哈哈哈[笑cry] ​​\r\n', '0', '0', '0', '30', '', '', '0', '0', 'https://wx2.sinaimg.cn/mw690/9eda6dafgy1gdli9a5naqj20om1hctas.jpg', 'https://wx2.sinaimg.cn/mw690/9eda6dafgy1gdli9acityj20ht0zkq47.jpg', 'https://wx4.sinaimg.cn/mw690/9eda6dafgy1gdli9a9pjyj20qo0zkn34.jpg', null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('58', '52', '转发这篇微博', '0', '0', '0', '0', '', '', '1', '57', null, null, null, null, null, null, null, null, null, '2020-04-16 17:14:30');
INSERT INTO `hrl_weibo` VALUES ('106', '1', 'daadaadda[/128513][/128514][@撰稿青年:3]#沙雕日常:32#', '0', '0', '0', '10', null, null, '0', '0', 'IMG_20200405_071246.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('107', '1', 'adadadadaadadadad[@播电影:2][/128515][/128515][/128515]#啊啊啊:51#', '0', '0', '0', '10', null, null, '0', '0', 'IMG_20200405_071246.jpg', null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('111', '1', '10', '0', '1', '0', '10', null, null, '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-09 21:58:57');
INSERT INTO `hrl_weibo` VALUES ('112', '1', '#不可辜负的美食:1#[@播电影:2][@百事通:8][/128516][/128517]jjj', '0', '0', '0', '10', null, null, '0', '0', 'IMG_20200405_071246.jpg', null, null, null, null, null, null, null, null, '2020-04-11 21:31:35');
INSERT INTO `hrl_weibo` VALUES ('113', '1', 'dadaadda[/128516][/128516]#啊啊啊:51#', '0', '0', '0', '10', null, null, '1', '1', null, null, null, null, null, null, null, null, null, '2020-04-11 22:57:56');
INSERT INTO `hrl_weibo` VALUES ('114', '1', 'aadaddaq', '0', '0', '0', '10', null, null, '1', '113', null, null, null, null, null, null, null, null, null, '2020-04-11 23:00:35');
INSERT INTO `hrl_weibo` VALUES ('115', '1', '[@播电影:2][/128515][/128524]zhuanfala   #啊啊啊:51#', '0', '0', '0', '10', null, null, '1', '3', null, null, null, null, null, null, null, null, null, '2020-04-12 10:55:37');
INSERT INTO `hrl_weibo` VALUES ('200', '61', '#你和14岁时的区别:1#如果能回到14岁时，你要做的第一件事是什么?[/128054][/128054][/128054]', '1022', '2225', '1467', '3', '', 'iPhone X ', '0', '0', 'https://wx4.sinaimg.cn/mw690/005Nng7fgy1gdum3rux3cj30dw0dw74o.jpg', null, null, null, null, null, null, null, null, '2020-04-15 23:03:48');
INSERT INTO `hrl_weibo` VALUES ('201', '62', '#韩国疫情:1# 最新韩国新冠肺炎疫情地图', '21', '24', '652', '3', '', '微博 weibo.com', '0', '0', 'https://wx2.sinaimg.cn/mw690/76cf6d7fly1gdu9mq1mhjj20u015p1kx.jpg', null, null, null, null, null, null, null, null, '2020-04-15 23:50:06');
INSERT INTO `hrl_weibo` VALUES ('202', '14', '【福建#福州投放1.5亿元消费券:1#】4月15日，福州市商务局宣布，福州将分期投放总额1.5亿元的消费券，以促进城市消费回补回暖，其中通用消费券1.2亿元，汽车专项补贴3000万元。据悉，福州市首轮预计发放160万份消费券，全体在榕人员（包括域外来榕人员）均可申领，先到先得。消费券使用范围覆盖在福州市行政区范围内的线下全行业实体商家，包括餐饮、商超便利、休闲娱乐等消费场所。（人民日报记者刘晓宇', '43', '542', '12', '3', '', ' 微博 weibo.com', '0', '0', 'https://wx1.sinaimg.cn/mw690/a716fd45ly1gdursp5ph0j20u00mpaoe.jpg', null, null, null, null, null, null, null, null, '2020-04-15 23:50:09');
INSERT INTO `hrl_weibo` VALUES ('203', '63', '#上网课突然卡了:1# 事实证明…高数使人身体分离', '21', '34', '54', '3', '', '', '0', '0', 'https://wx3.sinaimg.cn/mw690/005M7XdTly1gdutjgp5hxj30eq0femyj.jpg', 'https://wx2.sinaimg.cn/mw690/005M7XdTly1gdutjgxh4yj30eq0feabl.jpg', null, null, null, null, null, null, null, '2020-04-15 23:50:11');
INSERT INTO `hrl_weibo` VALUES ('204', '32', '【美国宣布停止资助世卫组织，中方准备多出资补缺？外交部回应】2020年4月15日，外交部发言人赵立坚主持例行记者会，以下为部分实录。#外交部回应中方是否准备出资补缺:1# \\n路透社记者：美方已宣布将停止资助世卫组织，中方是否准备提供更多资金以填补资金缺口？ \\n  赵立坚：中方一贯支持世卫组织在国际抗击疫情方面发挥领导作用。中方已经向世卫组织捐款2000万美元，并将继续向世卫组织提供力所能及的支持和帮助。 #中方向世卫组织捐款2000万美元:1#', '31', '4', '42', '3', '', '', '0', '0', 'https://wx2.sinaimg.cn/mw690/6486a91aly1gdupshdfbzj20dw07g41h.jpg', null, null, null, null, null, null, null, null, '2020-04-15 23:50:14');
INSERT INTO `hrl_weibo` VALUES ('205', '64', '【美国新冠肺炎累计确诊病例超60万 特朗普：美国部分州可能在5月1日前重启经济】 根据美国约翰·霍普金斯大学的统计数据显示，截至北京时间15号早上9点30分，美国累计新冠肺炎确诊病例已超过60万例，达到60万8458例，累计死亡病例为2万5992例。14号，特朗普在发布会上表示，美国部分州可能在5月1日前重启经济。戳视频', '8', '79', '65', '3', 'weibo_205.mp4', '360安全浏览器', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-16 00:02:03');
INSERT INTO `hrl_weibo` VALUES ('206', '65', '《我是余欢水》这三个反派一本正经的搞笑，女主任去色诱余欢水，被一口假茅台呛到破功，这一段真的要笑死我了', '21', '556', '87', '3', '', '', '0', '0', 'https://wx3.sinaimg.cn/mw690/007482UFgy1gdufy0t5xcj30u00e93zu.jpg', 'https://wx1.sinaimg.cn/mw690/007482UFgy1gdufy1mq09j30mz0byt9z.jpg', null, null, null, null, null, null, null, '2020-04-16 00:02:05');
INSERT INTO `hrl_weibo` VALUES ('207', '66', '四年前的今天，Mamba out \\n#科比退役四周年:1# ​​​​', '43', '21', '12', '2', '', 'iPhone客户端', '0', '0', 'https://wx2.sinaimg.cn/mw690/006UBP0wly1gdsk7ymezsj30u011fqe2.jpg', null, null, null, null, null, null, null, null, '2020-04-16 00:02:08');
INSERT INTO `hrl_weibo` VALUES ('208', '67', '#没兴趣的人眼中的男团:1# 哈哈哈真实了', '1', '423', '3', '2', '', '', '0', '0', 'https://wx3.sinaimg.cn/mw690/9077b22dly1gdtg4bfpitj20dn0bydhi.jpg', null, null, null, null, null, null, null, null, '2020-04-16 00:02:10');
INSERT INTO `hrl_weibo` VALUES ('209', '68', '#如果被当成外国人:1# 哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈求你们点开康康，这个我真的笑到飞出去哈哈哈哈哈哈哈哈哈哈', '5', '32', '31', '2', 'weibo_209.mp4', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-16 00:02:13');
INSERT INTO `hrl_weibo` VALUES ('210', '69', '岁月轻逝人不老，风花雪月过一生——大理。 ', '0', '0', '0', '2', '', '即刻笔记 ', '0', '0', 'https://ww1.sinaimg.cn/mw690/005ZWQyIjw1f9x45q2pl4j30k00tmq6b.jpg', 'https://ww1.sinaimg.cn/mw690/005ZWQyIjw1f9x45qdeu0j30k00dcq5c.jpg', 'https://ww1.sinaimg.cn/mw690/005ZWQyIjw1f9x45qgmgxj30k00dcq53.jpg', 'https://ww1.sinaimg.cn/mw690/005ZWQyIjw1f9x45qv7wtj30dw0kumz5.jpg', 'https://ww3.sinaimg.cn/mw690/005ZWQyIjw1f9x45rx99uj30sg0iz0vw.jpg', 'https://ww1.sinaimg.cn/mw690/005ZWQyIjw1f9x45rxih9j30gm0p041s.jpg', 'https://ww1.sinaimg.cn/mw690/005ZWQyIjw1f9x45pyuydj30k00u1grw.jpg', 'https://ww2.sinaimg.cn/mw690/005ZWQyIjw1f9x45rhg52j30m80er78o.jpg', 'https://ww4.sinaimg.cn/mw690/005ZWQyIjw1f9x45s8m14j30xc0mejyn.jpg', '2020-04-16 00:02:16');
INSERT INTO `hrl_weibo` VALUES ('211', '21', '一边是老百姓高唱社会主义好，由衷感到社会主义是战胜疫情的法宝；一边是有人偷偷摸摸在私有化，化公为私，窃国为私。\\n真是：明修社会主义的康庄大道，暗通资本主义的私有小路。', '0', '0', '0', '2', '', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-16 00:02:18');
INSERT INTO `hrl_weibo` VALUES ('212', '44', '训练生：坤制作人好！\\n你们好：蔡徐坤！\\n青春有你2的字幕君可以扣工资了[/127773][/127773][/127773]', '0', '0', '0', '2', '', '', '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-16 00:02:21');
INSERT INTO `hrl_weibo` VALUES ('213', '1', '[/128515][/128515][/128515][/128516][/128516]', '0', '0', '0', '10', null, null, '0', '0', null, null, null, null, null, null, null, null, null, '2020-04-16 00:11:14');
INSERT INTO `hrl_weibo` VALUES ('214', '1', 'dadaaddada[@撰稿青年:3]dadaad[/128514][/128524][/128525][/128525][/128525]#随手拍春天:53#adaadaddadadadada', '0', '0', '0', '10', null, null, '0', '0', 'IMG_20200405_071245.jpg', null, null, null, null, null, null, null, null, '2020-04-18 18:55:40');

-- ----------------------------
-- Table structure for `hrl_weibo_topic`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_weibo_topic`;
CREATE TABLE `hrl_weibo_topic` (
  `topicid` bigint(20) NOT NULL,
  `topictype` int(11) DEFAULT NULL,
  `topicdesc` varchar(255) DEFAULT NULL,
  `topicread` bigint(20) DEFAULT NULL,
  `topicdiscuss` bigint(20) DEFAULT NULL,
  `topichost` varchar(255) DEFAULT NULL,
  `topicattitude` int(11) DEFAULT NULL,
  `topicimg` varchar(255) DEFAULT NULL,
  `topicintro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_weibo_topic
-- ----------------------------
INSERT INTO `hrl_weibo_topic` VALUES ('1', '1', '不可辜负的美食', null, '32211', null, null, 'topic1.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('2', '1', '自制美食', null, '32', null, null, 'topic2.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('3', '1', '吃货在这里', null, '12143', null, null, 'topic3.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('4', '1', '好好吃饭', null, '3121', null, null, 'topic4.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('5', '1', '美食分享', null, '2', null, null, 'topic5.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('6', '1', '一人食', null, '313', null, null, 'topic6.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('7', '1', '下午茶', null, '54', null, null, 'topic7.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('8', '1', '吃吃吃', null, '1', null, null, 'topic8.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('9', '1', '厨艺教程', null, '239', null, null, 'topic9.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('10', '1', '早餐打卡', null, '954', null, null, 'topic10.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('11', '2', '今天穿什么', null, '324', null, null, 'topic11.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('12', '2', '时尚穿搭', null, '54', null, null, 'topic12.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('13', '2', '美妆生活', null, '78', null, null, 'topic13.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('14', '2', '每日穿搭', null, '7', null, null, 'topic14.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('15', '2', '日常妆容', null, '45', null, null, 'topic15.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('16', '2', '不潮不出街', null, '778', null, null, 'topic16.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('17', '2', '口红试色', null, '54', null, null, 'topic17.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('18', '2', '发型攻略', null, '2', null, null, 'topic18.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('19', '2', '今日妆容', null, '45', null, null, 'topic19.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('20', '2', '搭技巧指南', null, '783', null, null, 'topic20.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('21', '3', '鬼灭之刃', null, '7', null, null, 'topic21.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('22', '3', '海贼王', null, '713', null, null, 'topic22.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('23', '3', '动漫头像', null, '9', null, null, 'topic23.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('24', '3', '万圣街', null, '7', null, null, 'topic24.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('25', '3', '名侦探柯南', null, '37', null, null, 'topic25.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('26', '3', '蜡笔小新', null, '45', null, null, 'topic26.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('27', '3', '魔道祖师', null, '644', null, null, 'topic27.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('28', '3', '火影忍者', null, '8', null, null, 'topic28.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('29', '3', '海绵宝宝', null, null, null, null, 'topic29.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('30', '3', 'bl漫画', null, '45', null, null, 'topic30.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('31', '4', '迷惑行为大赏', null, '64', null, null, 'topic31.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('32', '4', '沙雕日常', null, '5445', null, null, 'topic32.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('33', '4', '搞笑幽默', null, '24', null, null, 'topic33.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('34', '4', '拯救不开心', null, '54', null, null, 'topic34.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('35', '4', '今天有啥好笑的', null, '464', null, null, 'topic35.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('36', '4', '走心视频', null, '5', null, null, 'topic36.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('37', '4', '今日最佳', null, '464', null, null, 'topic37.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('38', '4', '一句冷幽默', null, '46', null, null, 'topic38.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('39', '4', '迷之尴尬', null, '78', null, null, 'topic39.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('40', '4', '轻松一刻', null, '64', null, null, 'topic40.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('41', '5', '遇见美好', null, '57131', null, null, 'topic41.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('42', '5', '带着微博去旅行', null, '7', null, null, 'topic42.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('43', '5', '爱上这座城', null, '4', null, null, 'topic43.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('44', '5', '不止旅行', null, '1313', null, null, 'topic44.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('45', '5', '自然风光', null, '13', null, null, 'topic45.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('46', '5', '说走就走的旅行', null, '44', null, null, 'topic46.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('47', '5', '周末去哪儿', null, '541', null, null, 'topic47.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('48', '5', '日本旅行', null, '13', null, null, 'topic48.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('49', '5', '网红打卡胜地', null, '763', null, null, 'topic49.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('50', '5', '旅游攻略', null, '317', null, null, 'topic50.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('51', '0', '第一次删掉好友是因为什么', '7', '745', null, null, 'topic51.jpg', '小伙伴们你第一次删掉好友是因为什么?带上话题一起聊聊吧');
INSERT INTO `hrl_weibo_topic` VALUES ('52', '0', '如何走到互删好友这一步的', '76', '231', null, null, 'topic52.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('53', '0', '随手拍春天', '543', '423', null, null, 'topic53.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('54', '0', '你眼中的春天是什么颜色', '7', '5', null, null, 'topic54.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('55', '0', '延期开学在家的大学生', '314', '13', null, null, 'topic55.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('56', '0', '学校如果再不开学', '54', '3', null, null, 'topic56.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('57', '0', '你的专业在古代的称呼', '3', '13', null, null, 'topic57.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('58', '0', '你的专业能在古代做什么', '21', '12', null, null, 'topic58.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('59', '0', '全国网友统一的网名', '3', '3', null, null, 'topic59.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('60', '0', '你取过最沙雕的网名', '13', '12', null, null, 'topic60.jpg', null);
INSERT INTO `hrl_weibo_topic` VALUES ('61', '6', '小时候深信不疑的谎话', '213', '43', null, null, 'topic61.jpg', '小时候爸爸妈妈糊弄过你什么，你当时深信不疑。大赛模式已开启，带话题参与讨论');
INSERT INTO `hrl_weibo_topic` VALUES ('62', '6', '你见过最惊险的寺庙', '13', '13', null, null, 'topic62.jpg', '一根柱子撑起一座寺庙，建在悬崖洞穴之中的悬空寺');
INSERT INTO `hrl_weibo_topic` VALUES ('63', '6', '全国统一的床单', '79', '53', null, null, 'topic63.jpg', '哈哈哈哈哈，传说每个人家里都有过一条这样的床单，你有见过吗？');
INSERT INTO `hrl_weibo_topic` VALUES ('64', '7', '如果你长期不换头像', '849', '64', null, null, 'topic64.jpg', '如果你长期不换头像,会有什么样子的后果？快来讨论吧');
INSERT INTO `hrl_weibo_topic` VALUES ('65', '7', '复旦学霸的神仙笔记', '13', '45', null, null, 'topic65.jpg', '清晰严谨的构图、可爱有趣的手绘、细心标注的重点…复旦学子的网课笔记');
INSERT INTO `hrl_weibo_topic` VALUES ('66', '7', '你和发小的关系怎么样了', '3', '6', null, null, 'topic66.jpg', '你有从小一起长大的朋友吗？你们后来因为生活圈子不同分开了还是亲密依旧？');

-- ----------------------------
-- Table structure for `hrl_weibo_topictype`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_weibo_topictype`;
CREATE TABLE `hrl_weibo_topictype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_weibo_topictype
-- ----------------------------
INSERT INTO `hrl_weibo_topictype` VALUES ('0', '热门');
INSERT INTO `hrl_weibo_topictype` VALUES ('1', '美食');
INSERT INTO `hrl_weibo_topictype` VALUES ('2', '时尚美妆');
INSERT INTO `hrl_weibo_topictype` VALUES ('3', '动漫');
INSERT INTO `hrl_weibo_topictype` VALUES ('4', '搞笑');
INSERT INTO `hrl_weibo_topictype` VALUES ('5', '旅游');
INSERT INTO `hrl_weibo_topictype` VALUES ('6', '火热参与');
INSERT INTO `hrl_weibo_topictype` VALUES ('7', '正在热议');

-- ----------------------------
-- Table structure for `hrl_zan`
-- ----------------------------
DROP TABLE IF EXISTS `hrl_zan`;
CREATE TABLE `hrl_zan` (
  `zanid` bigint(255) NOT NULL AUTO_INCREMENT,
  `weiboid` bigint(255) DEFAULT NULL,
  `userid` bigint(255) DEFAULT NULL,
  `tail` varchar(255) DEFAULT NULL,
  `createtime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`zanid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hrl_zan
-- ----------------------------
INSERT INTO `hrl_zan` VALUES ('57', '3', '1', '12', '2020-04-24 10:48:17.000000');
INSERT INTO `hrl_zan` VALUES ('59', '52', '1', '21', '2020-04-24 10:48:19.000000');
INSERT INTO `hrl_zan` VALUES ('60', '4', '1', '21', '2020-04-24 10:48:23.000000');
INSERT INTO `hrl_zan` VALUES ('61', '111', '1', '21', '2020-04-24 10:48:25.000000');
INSERT INTO `hrl_zan` VALUES ('69', '1', '1', '', '2020-04-24 11:20:32.000000');
INSERT INTO `hrl_zan` VALUES ('70', '10', '1', '', '2020-04-24 11:20:56.000000');

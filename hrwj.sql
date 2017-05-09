/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hrwj

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-10 13:55:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `uid` int(255) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `costprice` varchar(255) DEFAULT NULL,
  `num` int(255) DEFAULT NULL,
  `srcSimg` varchar(999) DEFAULT NULL,
  `srcBimg` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', 'img/pro1_1.jpg', '【全国配送】居康JFF019M单功能腰带', '79', '微电脑控制处理器，自动调节及手动调节，高级进口PVC面料，内置电动机提供强大动力，独有大幅度水平移动运动方式，双向运动按摩，多个部位可使用，功能强大，腰带内有四个通风口用来调节热量。4键，无加热', 'ele', '', '255', 'img/1.jpg?img/2.jpg?img/3.jpg?img/4.jpg?img/5.jpg?', 'img/eleBimg_1.jpg?img/eleBimg_2.jpg?img/eleBimg_3.jpg?img/eleBimg_4.jpg?img/eleBimg_5.jpg?');
INSERT INTO `goodlist` VALUES ('2', 'img/pro1_2.jpg', '【全国配送】奔腾（POVOS）PE1080/PW510手持家用挂烫机', '89', '一体成型，玲珑机身，强大内核，轻松去皱纹又护衣,提升品质生活', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('3', 'img/pro1_3.jpg', '【全国配送】美的（Midea） YGJ15D1家用九孔烫头四挡调节蒸汽挂烫机 家用挂式熨斗', '239', '美的家用挂式熨斗，家用九孔烫头四挡调节蒸汽挂烫机，品质保证', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg');
INSERT INTO `goodlist` VALUES ('4', 'img/pro1_4.jpg', '【全国配送】居康JFF088CM-1塑身机', '498', '是老人、小孩、长期伏案工作的白领以及爱美女士的首选机型', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('5', 'img/pro1_5.jpg', '【全国配送】奔腾（POVOS)PJ1012蒸脸器美容仪补水保湿', '89', '奔腾电器提升品质生活', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('6', 'img/pro1_6.jpg', '【全国配送】奔腾PR5022电卷发棒神器不伤发陶瓷梨花头卷发器大卷烫发器两用', '69', '奔腾电器提升品质生活', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('7', 'img/pro1_7.jpg', '【全国配送】 TOUCHBeauty  去黑头清洁毛孔电动洁面仪毛孔', '69', '【全国配送，部分地区不到】 ', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('8', 'img/pro1_8.jpg', '【全国配送】奔腾电吹风机PH9022I大功率专业吹风机 2200W恒温负离子冷热风', '79', '奔腾电器提升品质生活', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('9', 'img/pro1_9.jpg', '【全国配送】奔腾（POVOS）PW619电吹风', '93', '发丝顺滑，盈亮富有弹性', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('10', 'img/pro1_10.jpg', '【全国配送】 TOUCHBeauty  经络刷 美体摩羯按摩 魔蝎刷 五行筋络硅胶瘦腿瘦身减肥精油美容', '39', '【全国配送，部分地区不到】 ', 'ele', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('11', 'img/life1.jpg', '中国黄金 足金吊坠 活力太阳花黄金吊坠项坠 DZ0625032 2.72g', '952', '简约甜美 彰显魅力', 'life', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('12', 'img/life2.jpg', '中国黄金 足金手链 磨砂圆珠手链SL1225008 4.62g', '1617', '福珠福泽 气质高雅', 'life', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('13', 'img/life3.jpg', '中国黄金 足金耳钉 洋紫荆花朵黄金耳饰ED0430003 3.22g', '1127', '做工精巧 彰显魅力', 'life', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('14', 'img/life4.jpg', '中国黄金 Au9999投资金条G00000001 2g', '611', '投资 保值', 'life', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('15', 'img/life5.jpg', '中国黄金 足金吊坠 闪亮星星黄金吊坠DZL07004G 1.7g', '595', '时尚简约 精致优雅', 'life', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('16', 'img/eatlist_1.jpg', '海南小台芒 3斤装', '48', '顺丰配送', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('17', 'img/eatlist_2.jpg', '湖北伦晚脐橙(中果) 3斤装', '38', '色泽诱人，清香扑鼻，颗粒饱满，香甜化渣', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('18', 'img/eatlist_3.jpg', '辽宁丹东草莓 3斤装 （顺丰冷链配送）真空包装', '88', '辽宁丹东草莓 3斤装 （顺丰冷链配送）真空包装', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('19', 'img/eatlist_4.jpg', '【全国配送】泰国山竹 约3斤重', '128', '国水果皇后，抢新鲜“打飞的”而来。只取5A级及以上油竹果，接近女孩拳头大小，给你超满足香甜水嫩。壳薄肉厚，入口即化，清润入心。与榴莲搭配，堪称绝配“夫妻档”。', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('20', 'img/eatlist_5.jpg', '【全国配送】海南牛奶红心木瓜 4斤装', '29', '果肉鲜红，瓜皮薄，切开后肉软汁多，一股清香', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('21', 'img/eatlist_6.jpg', '【全国配送】广西百香果 10个装', '39', '个头均匀饱满，鲜甜浓香。', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('22', 'img/eatlist_7.jpg', '【全国配送】越南青香芒果 3斤装', '36', '色泽翡绿，果肉金黄灿灿，果香四溢，风味独特，味甜果香，清甜爽口，果肉细腻，肉甜爽口。', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('23', 'img/eatlist_8.jpg', '【全国配送】新西兰小南瓜 2个装 （约重3.8-4.2斤）', '49', '香甜粉糯，板栗味道的小小南瓜', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('24', 'img/eatlist_9.jpg', '【全国配送】广西茂谷柑 3斤装', '49', '【全国配送】广西茂谷柑 3斤装', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');
INSERT INTO `goodlist` VALUES ('25', 'img/eatlist_10.jpg', '【全国配送】台湾释迦 2个装', '76', '香甜可口，汁多味浓', 'eat', null, '255', 'img/thumb/1_1.jpg?img/thumb/1_2.jpg?img/thumb/1_3.jpg?img/thumb/1_4.jpg?img/thumb/1_1.jpg', 'img/big/1_1.jpg?img/big/1_2.jpg?img/big/1_3.jpg?img/big/1_4.jpg?img/big/1_1.jpg');

-- ----------------------------
-- Table structure for newgiftlist
-- ----------------------------
DROP TABLE IF EXISTS `newgiftlist`;
CREATE TABLE `newgiftlist` (
  `uid` int(11) NOT NULL,
  `countryurl` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `tagimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newgiftlist
-- ----------------------------
INSERT INTO `newgiftlist` VALUES ('1', 'img/France.png', 'img/newgif_1.jpg', '法国|直邮', '\r\n【香港直邮】哑光雾感光泽，丰唇显色，持久保湿。唇蜜状态，上唇呈现哑光质地，雾感光泽。成分中添加特殊蜡成分和荷荷巴油，如墨水般轻薄柔滑的服帖嘴唇，具有优秀的保湿度。', 'CHANEL香奈儿魅力哑光唇露#154酒红色 6ml', '299', 'img/floor_tag.png');
INSERT INTO `newgiftlist` VALUES ('2', 'img/Korea.png', 'img/newgif_2.jpg', '韩国|保税', '\r\n2017新版，敏感肌可用！高浓度玻尿酸成分和维生素B5，结合当下明星挚爱的医美水光针疗法，将水分“一针”锁入肌肤，轻松润成透嫩婴儿般的肌肤，孕妇可用。AHC专用贴心设计，背面温度测试帖冰镇片刻变成绿色后使用面膜效果更佳！', 'AHC高效水合B5玻尿酸面膜（升级版）27ml*5片', '109', 'img/floor_tag.png');
INSERT INTO `newgiftlist` VALUES ('3', 'img/Japan.png', 'img/newgif_3.jpg', '日本|直邮', '\r\n【日本直邮】日本小众品牌anello所出品的背包，上学上班都可以背，帅气个性的迷彩时尚感十足。大开口一目了然，双肩带可调节，顶部带提手，采用帆布面料，结实耐磨，实用有范', '日本潮牌anello涤纶帆布迷你双肩包AT-B0197B-CAM 深迷彩', '329', 'img/floor_tag.png');
INSERT INTO `newgiftlist` VALUES ('4', 'img/Japan.png', 'img/newgif_4.jpg', '日本|直邮', '\r\n人气日立美容仪N4000，温热效果的作用下，能打开毛孔，通过导出清洁功能，使毛孔里面的脏东西吸出，从而使下一步保湿效果更显著；温热清洁模式、温热保湿模式、温热面膜模式、制冷模式4大模式任选。清洁保湿缩毛孔一步到位；使用后肌肤的水分含量是只涂沫化妆水的1.3倍，晚上使用后，第二天皮肤也非常水润~', 'Hitachi/日立 N4000美容仪 洁面仪 离子美容仪 洗脸仪', '1999', 'img/floor_tag.png');

-- ----------------------------
-- Table structure for popular
-- ----------------------------
DROP TABLE IF EXISTS `popular`;
CREATE TABLE `popular` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `costPrice` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `countryurl` varchar(255) DEFAULT NULL,
  `tagimg` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of popular
-- ----------------------------
INSERT INTO `popular` VALUES ('1', 'img/popular_1.jpg', 'Swarovski 施华洛世奇 Swan 小号黑色仿水晶黑天鹅项链链坠 5204133', '￥599.00', '￥850.00', '奥地利|直邮', 'img/Austria.png', 'img/floor_tag.png', '\r\n【香港直邮】经典款天鹅高贵，优雅，美丽和品位。阿尔卑斯山脚下的水晶王国，用一个多世纪的时间解密水晶制造的奥义，精确切割，全球超模米兰达可儿代言，璀璨光芒耀世。');
INSERT INTO `popular` VALUES ('2', 'img/popular_2.jpg', '雪肌精精华防晒啫喱SPF50+/PA++++ 80g', '￥189.00', '', '日本|保税', 'img/Japan.png', 'img/floor_tag.png', '\r\nSPF50+/PA++++超强防晒指数，再火辣的太阳也不怕。添加草本精粹，更养肤。物理+化学防晒，有效阻隔UVA及UVB。质地清爽水润，易推开，不泛白，后续妆容服帖。');
INSERT INTO `popular` VALUES ('3', 'img/popular_3.jpg', 'JAYJUN红玫瑰精华水光保湿面膜 25ml*10片', '￥99', '', '韩国|保税', 'img/Korea.png', 'img/floor_tag.png', '\r\n来自保加利亚的鲜活玫瑰纯露，富含玫瑰天然保湿因子，具有强效保湿锁水的功效，使肌肤水润嫩滑，长期使用，具有抗氧化、舒缓、调理肌肤的功效！');
INSERT INTO `popular` VALUES ('4', 'img/popular_4.jpg', '澳大利亚澳佳宝天然叶酸500 90粒', '￥75', '', '日本|保税', 'img/Japan.png', 'img/floor_tag.png', '\r\n富含多种营养素；含20多种中药维生素、7种矿物质及欧米茄-3、脂肪酸；帮助宝宝吸收营养和发育。');
INSERT INTO `popular` VALUES ('5', 'img/popular_5.jpg', 'DHC纯橄榄药用唇膏 1.5g', '￥45', '', '日本|保税', 'img/Japan.png', 'img/floor_tag.png', '\r\n主要成分是橄榄精华油，配以芦荟精华、甘草诱导体、维生素E等。使用与唇部粘膜构造相近的天然成分，与双唇自然融合，形成薄薄的保护膜，涂抹一次即可长久保持滋润与光泽。预防粗糙与皲裂，减少唇纹，并改善脱皮现象。涂抹时无厚重感，清爽不粘腻。');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `uid` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `costPrice` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `countryurl` varchar(255) DEFAULT NULL,
  `contry` varchar(255) DEFAULT NULL,
  `pricedot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('1', '德国 Merci蜜思 多种口味精选巧克力400g', '蜜思是德国久负盛名的巧克力品牌，精美包装与丰富的口感，让人感到它是一份恰当而又富含深意的礼物；内含7种不同口味的巧克力，满足您味蕾的需求。', '￥66', '￥98.00', 'img/shop_sale1.jpg', 'img/Germany.png', '德国|保税', '.60');
INSERT INTO `sale` VALUES ('2', '德国Brita碧然德 Marella系列 3.5L 1壶1芯(蓝色）', '摸着良心推荐！现在水质污染问题那么严重，烧水壶永远积着厚厚的一层水垢，可是BRITA会让一切变得不一样！来自德国的滤水专家，简洁完美的设计，让尖端科技如此平易近人。为了身体健康喝出健康水，入手这个吧！', '￥149', '￥169.90', 'img/shop_sale2.jpg', 'img/Germany.png', '德国|保税', '.00');
INSERT INTO `sale` VALUES ('3', '资生堂丝蓓绮紫椿套装(洗发水500ml+护发素500ml)', '日本. 去屑止痒，山茶花配方        适合油性发质，天然精油调和配方（鼠尾草）馥郁奶泡以吸附头皮与秀鬓的方式蔓延开来，细心清除头皮与毛发的各角落污垢。高纯度山茶花油精油配方，微凉的洗后感。薄荷醇成分配方，止头皮屑、止头皮痒。', '￥78', '￥99.00', 'img/shop_sale2.jpg', 'img/Japan.png', '日本|保税', '.90');
INSERT INTO `sale` VALUES ('4', '【四包】GOO.N 大王男宝宝拉拉裤 L44片（适用9-14kg）', '绵柔随身，随身所动。', '￥399', '￥436.00', 'img/shop_sale4.jpg', 'img/Japan.png', '日本|保税', '.00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (null, 'laooo', '111111', '13111111111');
INSERT INTO `user` VALUES (null, 'LAOWANG', '111111', '13111111111');
INSERT INTO `user` VALUES (null, 'laolla', '111111', '13111111111');
INSERT INTO `user` VALUES (null, 'laoll', '111111', '13111111111');
SET FOREIGN_KEY_CHECKS=1;

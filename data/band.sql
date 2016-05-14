/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : band

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2015-02-12 00:37:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of albums
-- ----------------------------
INSERT INTO `albums` VALUES ('1', 'Le Pop', '2008', 'Propeller Recordings', 'Studio');
INSERT INTO `albums` VALUES ('2', 'A Kiss Before You Go', '2011', 'Propeller Recordings', 'Studio');
INSERT INTO `albums` VALUES ('3', 'A Kiss Before You Go: Live in Hamburg', '2012', 'Universal Music Group', 'Live');

-- ----------------------------
-- Table structure for instruments
-- ----------------------------
DROP TABLE IF EXISTS `instruments`;
CREATE TABLE `instruments` (
  `song_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instruments
-- ----------------------------
INSERT INTO `instruments` VALUES ('1', '1', 'trumpet');
INSERT INTO `instruments` VALUES ('1', '2', 'keyboard');
INSERT INTO `instruments` VALUES ('1', '3', 'accordion');
INSERT INTO `instruments` VALUES ('1', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('2', '1', 'trumpet');
INSERT INTO `instruments` VALUES ('2', '2', 'drums');
INSERT INTO `instruments` VALUES ('2', '3', 'guitar');
INSERT INTO `instruments` VALUES ('2', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('3', '1', 'drums');
INSERT INTO `instruments` VALUES ('3', '1', 'ukalele');
INSERT INTO `instruments` VALUES ('3', '2', 'banjo');
INSERT INTO `instruments` VALUES ('3', '3', 'bass balalaika');
INSERT INTO `instruments` VALUES ('3', '4', 'keyboards');
INSERT INTO `instruments` VALUES ('4', '1', 'drums');
INSERT INTO `instruments` VALUES ('4', '2', 'ukalele');
INSERT INTO `instruments` VALUES ('4', '3', 'accordion');
INSERT INTO `instruments` VALUES ('4', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('5', '1', 'drums');
INSERT INTO `instruments` VALUES ('5', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('5', '3', 'guitar');
INSERT INTO `instruments` VALUES ('5', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('6', '1', 'xylophone');
INSERT INTO `instruments` VALUES ('6', '2', 'guitar');
INSERT INTO `instruments` VALUES ('6', '3', 'keyboards');
INSERT INTO `instruments` VALUES ('6', '4', 'mandolin');
INSERT INTO `instruments` VALUES ('7', '1', 'drums');
INSERT INTO `instruments` VALUES ('7', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('7', '3', 'guitar');
INSERT INTO `instruments` VALUES ('7', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('8', '1', 'trumpet');
INSERT INTO `instruments` VALUES ('8', '1', 'drums');
INSERT INTO `instruments` VALUES ('8', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('8', '3', 'accordion');
INSERT INTO `instruments` VALUES ('8', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('9', '1', 'xylophone');
INSERT INTO `instruments` VALUES ('9', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('9', '3', 'bass balalaika');
INSERT INTO `instruments` VALUES ('9', '4', 'accordion');
INSERT INTO `instruments` VALUES ('10', '1', 'guitar');
INSERT INTO `instruments` VALUES ('10', '1', 'harmonica');
INSERT INTO `instruments` VALUES ('10', '2', 'bass balalaika');
INSERT INTO `instruments` VALUES ('10', '3', 'mandolin');
INSERT INTO `instruments` VALUES ('10', '4', 'banjo');
INSERT INTO `instruments` VALUES ('11', '1', 'bass balalaika');
INSERT INTO `instruments` VALUES ('11', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('11', '3', 'accordion');
INSERT INTO `instruments` VALUES ('11', '4', 'drums');
INSERT INTO `instruments` VALUES ('12', '1', 'bass balalaika');
INSERT INTO `instruments` VALUES ('12', '2', 'accordion');
INSERT INTO `instruments` VALUES ('12', '3', 'keyboards');
INSERT INTO `instruments` VALUES ('12', '4', 'mandolin');
INSERT INTO `instruments` VALUES ('13', '1', 'drums');
INSERT INTO `instruments` VALUES ('13', '2', 'guitar');
INSERT INTO `instruments` VALUES ('13', '2', 'plastic kazoo');
INSERT INTO `instruments` VALUES ('13', '3', 'mandolin');
INSERT INTO `instruments` VALUES ('13', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('14', '1', 'drums');
INSERT INTO `instruments` VALUES ('14', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('14', '3', 'keyboards');
INSERT INTO `instruments` VALUES ('14', '4', 'accordion');
INSERT INTO `instruments` VALUES ('15', '1', 'guitar');
INSERT INTO `instruments` VALUES ('15', '2', 'bass balalaika');
INSERT INTO `instruments` VALUES ('15', '3', 'xylophone');
INSERT INTO `instruments` VALUES ('15', '3', 'accordion');
INSERT INTO `instruments` VALUES ('15', '3', 'harmonica');
INSERT INTO `instruments` VALUES ('15', '4', 'mandolin');
INSERT INTO `instruments` VALUES ('15', '4', 'drums');
INSERT INTO `instruments` VALUES ('16', '1', 'washboard');
INSERT INTO `instruments` VALUES ('16', '2', 'ukalele');
INSERT INTO `instruments` VALUES ('16', '3', 'banjo');
INSERT INTO `instruments` VALUES ('16', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('17', '1', 'drums');
INSERT INTO `instruments` VALUES ('17', '2', 'guitar');
INSERT INTO `instruments` VALUES ('17', '3', 'keyboards');
INSERT INTO `instruments` VALUES ('17', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('18', '1', 'keyboards');
INSERT INTO `instruments` VALUES ('18', '2', 'banjo');
INSERT INTO `instruments` VALUES ('18', '3', 'keyboards');
INSERT INTO `instruments` VALUES ('18', '4', 'xylophone');
INSERT INTO `instruments` VALUES ('19', '1', 'banjo');
INSERT INTO `instruments` VALUES ('19', '2', 'bass balalaika');
INSERT INTO `instruments` VALUES ('19', '3', 'mandolin');
INSERT INTO `instruments` VALUES ('19', '4', 'drums');
INSERT INTO `instruments` VALUES ('19', '4', 'accordion');
INSERT INTO `instruments` VALUES ('20', '1', 'keyboards');
INSERT INTO `instruments` VALUES ('20', '2', 'drums');
INSERT INTO `instruments` VALUES ('20', '3', 'guitar');
INSERT INTO `instruments` VALUES ('20', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('21', '1', 'trumpet');
INSERT INTO `instruments` VALUES ('21', '1', 'keyboards');
INSERT INTO `instruments` VALUES ('21', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('21', '3', 'banjo');
INSERT INTO `instruments` VALUES ('21', '4', 'xylophone');
INSERT INTO `instruments` VALUES ('21', '4', 'mandoline');
INSERT INTO `instruments` VALUES ('22', '1', 'guitar');
INSERT INTO `instruments` VALUES ('22', '2', 'drums');
INSERT INTO `instruments` VALUES ('22', '3', 'banjo');
INSERT INTO `instruments` VALUES ('22', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('23', '1', 'domra');
INSERT INTO `instruments` VALUES ('23', '2', 'ukalele');
INSERT INTO `instruments` VALUES ('23', '3', 'mandolin');
INSERT INTO `instruments` VALUES ('23', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('24', '1', 'drums');
INSERT INTO `instruments` VALUES ('24', '2', 'guitar');
INSERT INTO `instruments` VALUES ('24', '3', 'keyboards');
INSERT INTO `instruments` VALUES ('24', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('25', '1', 'drums');
INSERT INTO `instruments` VALUES ('26', '1', 'drums');
INSERT INTO `instruments` VALUES ('26', '2', 'guitar');
INSERT INTO `instruments` VALUES ('26', '3', 'banjo');
INSERT INTO `instruments` VALUES ('26', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('27', '1', 'drums');
INSERT INTO `instruments` VALUES ('27', '2', 'guitar');
INSERT INTO `instruments` VALUES ('27', '3', 'banjo');
INSERT INTO `instruments` VALUES ('27', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('28', '1', 'drums');
INSERT INTO `instruments` VALUES ('28', '2', 'bass balalaika');
INSERT INTO `instruments` VALUES ('28', '3', 'guitar');
INSERT INTO `instruments` VALUES ('28', '4', 'mandolin');
INSERT INTO `instruments` VALUES ('29', '1', 'drums');
INSERT INTO `instruments` VALUES ('29', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('29', '3', 'guitar');
INSERT INTO `instruments` VALUES ('29', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('30', '1', 'drums');
INSERT INTO `instruments` VALUES ('30', '2', 'keyboards');
INSERT INTO `instruments` VALUES ('30', '3', 'guitar');
INSERT INTO `instruments` VALUES ('30', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('31', '1', 'drums');
INSERT INTO `instruments` VALUES ('31', '2', 'guitar');
INSERT INTO `instruments` VALUES ('31', '3', 'ukalele');
INSERT INTO `instruments` VALUES ('31', '4', 'bass balalaika');
INSERT INTO `instruments` VALUES ('32', '1', 'guitar');
INSERT INTO `instruments` VALUES ('32', '2', 'banjo');
INSERT INTO `instruments` VALUES ('32', '3', 'drums');
INSERT INTO `instruments` VALUES ('32', '4', 'bass balalaika');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('1', 'Solveig', 'Heilo');
INSERT INTO `members` VALUES ('2', 'Marianne', 'Sveen');
INSERT INTO `members` VALUES ('3', 'Anne-Marit', 'Bergheim');
INSERT INTO `members` VALUES ('4', 'Turid', 'Jorgensen');

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `album_id` int(11) DEFAULT NULL,
  `market` varchar(255) DEFAULT NULL,
  `gross` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('1', 'United States', '168749', '1', '2012');
INSERT INTO `sales` VALUES ('1', 'United States', '32954', '2', '2012');
INSERT INTO `sales` VALUES ('1', 'United States', '251121', '3', '2012');
INSERT INTO `sales` VALUES ('1', 'United States', '363829', '4', '2012');
INSERT INTO `sales` VALUES ('2', 'Canada', '184522', '1', '2012');
INSERT INTO `sales` VALUES ('2', 'Canada', '292388', '2', '2012');
INSERT INTO `sales` VALUES ('2', 'Canada', '78796', '3', '2012');
INSERT INTO `sales` VALUES ('2', 'Canada', '338903', '4', '2012');
INSERT INTO `sales` VALUES ('3', 'Australia', '292641', '1', '2012');
INSERT INTO `sales` VALUES ('3', 'Australia', '291500', '2', '2012');
INSERT INTO `sales` VALUES ('3', 'Australia', '10554', '3', '2012');
INSERT INTO `sales` VALUES ('3', 'Australia', '308090', '4', '2012');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '443511', '1', '2012');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '128087', '2', '2012');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '268424', '3', '2012');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '36764', '4', '2012');
INSERT INTO `sales` VALUES ('2', 'United States', '274280', '1', '2012');
INSERT INTO `sales` VALUES ('2', 'United States', '125018', '2', '2012');
INSERT INTO `sales` VALUES ('2', 'United States', '219715', '3', '2012');
INSERT INTO `sales` VALUES ('2', 'United States', '446653', '4', '2012');
INSERT INTO `sales` VALUES ('3', 'Canada', '134972', '1', '2012');
INSERT INTO `sales` VALUES ('3', 'Canada', '407828', '2', '2012');
INSERT INTO `sales` VALUES ('3', 'Canada', '52977', '3', '2012');
INSERT INTO `sales` VALUES ('3', 'Canada', '51668', '4', '2012');
INSERT INTO `sales` VALUES ('1', 'Australia', '398563', '1', '2012');
INSERT INTO `sales` VALUES ('1', 'Australia', '185056', '2', '2012');
INSERT INTO `sales` VALUES ('1', 'Australia', '303844', '3', '2012');
INSERT INTO `sales` VALUES ('1', 'Australia', '183978', '4', '2012');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '60721', '1', '2012');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '217333', '2', '2012');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '18195', '3', '2012');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '186594', '4', '2012');
INSERT INTO `sales` VALUES ('3', 'United States', '45303', '1', '2012');
INSERT INTO `sales` VALUES ('3', 'United States', '216571', '2', '2012');
INSERT INTO `sales` VALUES ('3', 'United States', '166941', '3', '2012');
INSERT INTO `sales` VALUES ('3', 'United States', '226084', '4', '2012');
INSERT INTO `sales` VALUES ('1', 'Canada', '236551', '1', '2012');
INSERT INTO `sales` VALUES ('1', 'Canada', '495591', '2', '2012');
INSERT INTO `sales` VALUES ('1', 'Canada', '175989', '3', '2012');
INSERT INTO `sales` VALUES ('1', 'Canada', '205919', '4', '2012');
INSERT INTO `sales` VALUES ('2', 'Australia', '349693', '1', '2012');
INSERT INTO `sales` VALUES ('2', 'Australia', '196713', '2', '2012');
INSERT INTO `sales` VALUES ('2', 'Australia', '474653', '3', '2012');
INSERT INTO `sales` VALUES ('2', 'Australia', '175371', '4', '2012');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '476435', '1', '2012');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '259296', '2', '2012');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '202836', '3', '2012');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '489697', '4', '2012');
INSERT INTO `sales` VALUES ('1', 'United States', '149305', '1', '2013');
INSERT INTO `sales` VALUES ('1', 'United States', '82906', '2', '2013');
INSERT INTO `sales` VALUES ('1', 'United States', '274638', '3', '2013');
INSERT INTO `sales` VALUES ('1', 'United States', '48994', '4', '2013');
INSERT INTO `sales` VALUES ('2', 'Canada', '496802', '1', '2013');
INSERT INTO `sales` VALUES ('2', 'Canada', '319892', '2', '2013');
INSERT INTO `sales` VALUES ('2', 'Canada', '225125', '3', '2013');
INSERT INTO `sales` VALUES ('2', 'Canada', '492356', '4', '2013');
INSERT INTO `sales` VALUES ('3', 'Australia', '236344', '1', '2013');
INSERT INTO `sales` VALUES ('3', 'Australia', '288372', '2', '2013');
INSERT INTO `sales` VALUES ('3', 'Australia', '92769', '3', '2013');
INSERT INTO `sales` VALUES ('3', 'Australia', '434079', '4', '2013');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '295195', '1', '2013');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '411839', '2', '2013');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '331576', '3', '2013');
INSERT INTO `sales` VALUES ('1', 'United Kingdom', '41450', '4', '2013');
INSERT INTO `sales` VALUES ('2', 'United States', '286694', '1', '2013');
INSERT INTO `sales` VALUES ('2', 'United States', '158543', '2', '2013');
INSERT INTO `sales` VALUES ('2', 'United States', '421800', '3', '2013');
INSERT INTO `sales` VALUES ('2', 'United States', '462425', '4', '2013');
INSERT INTO `sales` VALUES ('3', 'Canada', '146484', '1', '2013');
INSERT INTO `sales` VALUES ('3', 'Canada', '339410', '2', '2013');
INSERT INTO `sales` VALUES ('3', 'Canada', '133695', '3', '2013');
INSERT INTO `sales` VALUES ('3', 'Canada', '288165', '4', '2013');
INSERT INTO `sales` VALUES ('1', 'Australia', '388367', '1', '2013');
INSERT INTO `sales` VALUES ('1', 'Australia', '296131', '2', '2013');
INSERT INTO `sales` VALUES ('1', 'Australia', '198212', '3', '2013');
INSERT INTO `sales` VALUES ('1', 'Australia', '378245', '4', '2013');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '46755', '1', '2013');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '164035', '2', '2013');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '111143', '3', '2013');
INSERT INTO `sales` VALUES ('2', 'United Kingdom', '94922', '4', '2013');
INSERT INTO `sales` VALUES ('3', 'United States', '20570', '1', '2013');
INSERT INTO `sales` VALUES ('3', 'United States', '342942', '2', '2013');
INSERT INTO `sales` VALUES ('3', 'United States', '351221', '3', '2013');
INSERT INTO `sales` VALUES ('3', 'United States', '132758', '4', '2013');
INSERT INTO `sales` VALUES ('1', 'Canada', '369821', '1', '2013');
INSERT INTO `sales` VALUES ('1', 'Canada', '104622', '2', '2013');
INSERT INTO `sales` VALUES ('1', 'Canada', '172532', '3', '2013');
INSERT INTO `sales` VALUES ('1', 'Canada', '15530', '4', '2013');
INSERT INTO `sales` VALUES ('2', 'Australia', '327881', '1', '2013');
INSERT INTO `sales` VALUES ('2', 'Australia', '250967', '2', '2013');
INSERT INTO `sales` VALUES ('2', 'Australia', '439772', '3', '2013');
INSERT INTO `sales` VALUES ('2', 'Australia', '106255', '4', '2013');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '394054', '1', '2013');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '446651', '2', '2013');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '277529', '3', '2013');
INSERT INTO `sales` VALUES ('3', 'United Kingdom', '496588', '4', '2013');

-- ----------------------------
-- Table structure for songs
-- ----------------------------
DROP TABLE IF EXISTS `songs`;
CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songs
-- ----------------------------
INSERT INTO `songs` VALUES ('1', 'Overture');
INSERT INTO `songs` VALUES ('2', 'A Bar In Amsterdam');
INSERT INTO `songs` VALUES ('3', 'Demon Kitty Rag');
INSERT INTO `songs` VALUES ('4', 'Tea With Cinnamon');
INSERT INTO `songs` VALUES ('5', 'Hey Ho on the Devil\'s Back');
INSERT INTO `songs` VALUES ('6', 'Wading in Deeper');
INSERT INTO `songs` VALUES ('7', 'Le Pop');
INSERT INTO `songs` VALUES ('8', 'Der Kapitan');
INSERT INTO `songs` VALUES ('9', 'Virginia Clemm');
INSERT INTO `songs` VALUES ('10', 'Play My Darling, Play');
INSERT INTO `songs` VALUES ('11', 'To the Sea');
INSERT INTO `songs` VALUES ('12', 'Mother Superior');
INSERT INTO `songs` VALUES ('13', 'Ain\'t no Thang');
INSERT INTO `songs` VALUES ('14', 'A Kiss Before You Go');
INSERT INTO `songs` VALUES ('15', 'I Will Dance (When I Walk Away)');
INSERT INTO `songs` VALUES ('16', 'Cherry Pie');
INSERT INTO `songs` VALUES ('17', 'Land of Confusion');
INSERT INTO `songs` VALUES ('18', 'Lady Marlene');
INSERT INTO `songs` VALUES ('19', 'Rock-Paper-Scissors');
INSERT INTO `songs` VALUES ('20', 'Cocktails and Ruby Slippers');
INSERT INTO `songs` VALUES ('21', 'Soviet Trumpeter');
INSERT INTO `songs` VALUES ('22', 'Loathsome M');
INSERT INTO `songs` VALUES ('23', 'Shepherd\'s Song');
INSERT INTO `songs` VALUES ('24', 'Gypsy Flee');
INSERT INTO `songs` VALUES ('25', 'God\'s Great Dust Storm');
INSERT INTO `songs` VALUES ('26', 'Ouch');
INSERT INTO `songs` VALUES ('27', 'Listening to the World');
INSERT INTO `songs` VALUES ('28', 'Johnny Blowtorch');
INSERT INTO `songs` VALUES ('29', 'Flash');
INSERT INTO `songs` VALUES ('30', 'Driving After You');
INSERT INTO `songs` VALUES ('31', 'My Own Tune');
INSERT INTO `songs` VALUES ('32', 'Badlands');

-- ----------------------------
-- Table structure for stage_positions
-- ----------------------------
DROP TABLE IF EXISTS `stage_positions`;
CREATE TABLE `stage_positions` (
  `song_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `stage_position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stage_positions
-- ----------------------------
INSERT INTO `stage_positions` VALUES ('1', '1', 'back');
INSERT INTO `stage_positions` VALUES ('1', '2', 'left');
INSERT INTO `stage_positions` VALUES ('1', '3', 'center');
INSERT INTO `stage_positions` VALUES ('1', '4', 'right');
INSERT INTO `stage_positions` VALUES ('2', '1', 'center');
INSERT INTO `stage_positions` VALUES ('2', '2', 'back');
INSERT INTO `stage_positions` VALUES ('2', '3', 'left');
INSERT INTO `stage_positions` VALUES ('2', '4', 'right');
INSERT INTO `stage_positions` VALUES ('3', '1', 'back');
INSERT INTO `stage_positions` VALUES ('3', '2', 'right');
INSERT INTO `stage_positions` VALUES ('3', '3', 'center');
INSERT INTO `stage_positions` VALUES ('3', '4', 'left');
INSERT INTO `stage_positions` VALUES ('4', '1', 'back');
INSERT INTO `stage_positions` VALUES ('4', '2', 'center');
INSERT INTO `stage_positions` VALUES ('4', '3', 'left');
INSERT INTO `stage_positions` VALUES ('4', '4', 'right');
INSERT INTO `stage_positions` VALUES ('5', '1', 'back');
INSERT INTO `stage_positions` VALUES ('5', '2', 'left');
INSERT INTO `stage_positions` VALUES ('5', '3', 'center');
INSERT INTO `stage_positions` VALUES ('5', '4', 'right');
INSERT INTO `stage_positions` VALUES ('6', '1', 'center');
INSERT INTO `stage_positions` VALUES ('6', '2', 'center');
INSERT INTO `stage_positions` VALUES ('6', '3', 'left');
INSERT INTO `stage_positions` VALUES ('6', '4', 'right');
INSERT INTO `stage_positions` VALUES ('7', '1', 'back');
INSERT INTO `stage_positions` VALUES ('7', '2', 'left');
INSERT INTO `stage_positions` VALUES ('7', '3', 'center');
INSERT INTO `stage_positions` VALUES ('7', '4', 'right');
INSERT INTO `stage_positions` VALUES ('8', '1', 'back');
INSERT INTO `stage_positions` VALUES ('8', '2', 'left');
INSERT INTO `stage_positions` VALUES ('8', '3', 'center');
INSERT INTO `stage_positions` VALUES ('8', '4', 'right');
INSERT INTO `stage_positions` VALUES ('9', '1', 'center');
INSERT INTO `stage_positions` VALUES ('9', '2', 'left');
INSERT INTO `stage_positions` VALUES ('9', '3', 'right');
INSERT INTO `stage_positions` VALUES ('9', '4', 'left');
INSERT INTO `stage_positions` VALUES ('10', '1', 'center');
INSERT INTO `stage_positions` VALUES ('10', '2', 'center');
INSERT INTO `stage_positions` VALUES ('10', '3', 'center');
INSERT INTO `stage_positions` VALUES ('10', '4', 'center');
INSERT INTO `stage_positions` VALUES ('11', '1', 'right');
INSERT INTO `stage_positions` VALUES ('11', '2', 'left');
INSERT INTO `stage_positions` VALUES ('11', '3', 'center');
INSERT INTO `stage_positions` VALUES ('11', '4', 'back');
INSERT INTO `stage_positions` VALUES ('12', '1', 'right');
INSERT INTO `stage_positions` VALUES ('12', '2', 'center');
INSERT INTO `stage_positions` VALUES ('12', '3', 'left');
INSERT INTO `stage_positions` VALUES ('12', '4', 'center');
INSERT INTO `stage_positions` VALUES ('13', '1', 'back');
INSERT INTO `stage_positions` VALUES ('13', '2', 'center');
INSERT INTO `stage_positions` VALUES ('13', '3', 'left');
INSERT INTO `stage_positions` VALUES ('13', '4', 'right');
INSERT INTO `stage_positions` VALUES ('14', '1', 'back');
INSERT INTO `stage_positions` VALUES ('14', '2', 'left');
INSERT INTO `stage_positions` VALUES ('14', '3', 'left');
INSERT INTO `stage_positions` VALUES ('14', '4', 'center');
INSERT INTO `stage_positions` VALUES ('15', '1', 'center');
INSERT INTO `stage_positions` VALUES ('15', '2', 'right');
INSERT INTO `stage_positions` VALUES ('15', '3', 'left');
INSERT INTO `stage_positions` VALUES ('15', '4', 'back');
INSERT INTO `stage_positions` VALUES ('16', '1', 'center');
INSERT INTO `stage_positions` VALUES ('16', '2', 'center');
INSERT INTO `stage_positions` VALUES ('16', '3', 'left');
INSERT INTO `stage_positions` VALUES ('16', '4', 'right');
INSERT INTO `stage_positions` VALUES ('17', '1', 'back');
INSERT INTO `stage_positions` VALUES ('17', '2', 'center');
INSERT INTO `stage_positions` VALUES ('17', '3', 'left');
INSERT INTO `stage_positions` VALUES ('17', '4', 'right');
INSERT INTO `stage_positions` VALUES ('18', '1', 'left');
INSERT INTO `stage_positions` VALUES ('18', '2', 'right');
INSERT INTO `stage_positions` VALUES ('18', '3', 'left');
INSERT INTO `stage_positions` VALUES ('18', '4', 'center');
INSERT INTO `stage_positions` VALUES ('19', '1', 'center');
INSERT INTO `stage_positions` VALUES ('19', '2', 'right');
INSERT INTO `stage_positions` VALUES ('19', '3', 'left');
INSERT INTO `stage_positions` VALUES ('19', '4', 'back');
INSERT INTO `stage_positions` VALUES ('20', '1', 'left');
INSERT INTO `stage_positions` VALUES ('20', '2', 'back');
INSERT INTO `stage_positions` VALUES ('20', '3', 'center');
INSERT INTO `stage_positions` VALUES ('20', '4', 'right');
INSERT INTO `stage_positions` VALUES ('21', '1', 'left');
INSERT INTO `stage_positions` VALUES ('21', '2', 'left');
INSERT INTO `stage_positions` VALUES ('21', '3', 'left');
INSERT INTO `stage_positions` VALUES ('21', '4', 'center');
INSERT INTO `stage_positions` VALUES ('22', '1', 'left');
INSERT INTO `stage_positions` VALUES ('22', '2', 'back');
INSERT INTO `stage_positions` VALUES ('22', '3', 'center');
INSERT INTO `stage_positions` VALUES ('22', '4', 'right');
INSERT INTO `stage_positions` VALUES ('23', '1', 'center');
INSERT INTO `stage_positions` VALUES ('23', '2', 'center');
INSERT INTO `stage_positions` VALUES ('23', '3', 'center');
INSERT INTO `stage_positions` VALUES ('23', '4', 'center');
INSERT INTO `stage_positions` VALUES ('24', '1', 'back');
INSERT INTO `stage_positions` VALUES ('24', '2', 'center');
INSERT INTO `stage_positions` VALUES ('24', '3', 'left');
INSERT INTO `stage_positions` VALUES ('24', '4', 'right');
INSERT INTO `stage_positions` VALUES ('25', '1', 'back');
INSERT INTO `stage_positions` VALUES ('25', '2', 'center');
INSERT INTO `stage_positions` VALUES ('25', '3', 'left');
INSERT INTO `stage_positions` VALUES ('25', '4', 'right');
INSERT INTO `stage_positions` VALUES ('26', '1', 'back');
INSERT INTO `stage_positions` VALUES ('26', '2', 'center');
INSERT INTO `stage_positions` VALUES ('26', '3', 'left');
INSERT INTO `stage_positions` VALUES ('26', '4', 'right');
INSERT INTO `stage_positions` VALUES ('27', '1', 'back');
INSERT INTO `stage_positions` VALUES ('27', '2', 'center');
INSERT INTO `stage_positions` VALUES ('27', '3', 'left');
INSERT INTO `stage_positions` VALUES ('27', '4', 'right');
INSERT INTO `stage_positions` VALUES ('28', '1', 'back');
INSERT INTO `stage_positions` VALUES ('28', '2', 'right');
INSERT INTO `stage_positions` VALUES ('28', '3', 'left');
INSERT INTO `stage_positions` VALUES ('28', '4', 'center');
INSERT INTO `stage_positions` VALUES ('29', '1', 'back');
INSERT INTO `stage_positions` VALUES ('29', '2', 'left');
INSERT INTO `stage_positions` VALUES ('29', '3', 'center');
INSERT INTO `stage_positions` VALUES ('29', '4', 'right');
INSERT INTO `stage_positions` VALUES ('30', '1', 'back');
INSERT INTO `stage_positions` VALUES ('30', '2', 'left');
INSERT INTO `stage_positions` VALUES ('30', '3', 'center');
INSERT INTO `stage_positions` VALUES ('30', '4', 'right');
INSERT INTO `stage_positions` VALUES ('31', '1', 'back');
INSERT INTO `stage_positions` VALUES ('31', '2', 'left');
INSERT INTO `stage_positions` VALUES ('31', '3', 'center');
INSERT INTO `stage_positions` VALUES ('31', '4', 'right');
INSERT INTO `stage_positions` VALUES ('32', '1', 'center');
INSERT INTO `stage_positions` VALUES ('32', '2', 'left');
INSERT INTO `stage_positions` VALUES ('32', '3', 'back');
INSERT INTO `stage_positions` VALUES ('32', '4', 'right');

-- ----------------------------
-- Table structure for tracklists
-- ----------------------------
DROP TABLE IF EXISTS `tracklists`;
CREATE TABLE `tracklists` (
  `album_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tracklists
-- ----------------------------
INSERT INTO `tracklists` VALUES ('1', '1', '1');
INSERT INTO `tracklists` VALUES ('1', '2', '2');
INSERT INTO `tracklists` VALUES ('1', '3', '3');
INSERT INTO `tracklists` VALUES ('1', '4', '4');
INSERT INTO `tracklists` VALUES ('1', '5', '5');
INSERT INTO `tracklists` VALUES ('1', '6', '6');
INSERT INTO `tracklists` VALUES ('1', '7', '7');
INSERT INTO `tracklists` VALUES ('1', '8', '8');
INSERT INTO `tracklists` VALUES ('1', '9', '9');
INSERT INTO `tracklists` VALUES ('1', '10', '10');
INSERT INTO `tracklists` VALUES ('1', '11', '11');
INSERT INTO `tracklists` VALUES ('1', '12', '12');
INSERT INTO `tracklists` VALUES ('1', '13', '13');
INSERT INTO `tracklists` VALUES ('2', '1', '14');
INSERT INTO `tracklists` VALUES ('2', '2', '15');
INSERT INTO `tracklists` VALUES ('2', '3', '16');
INSERT INTO `tracklists` VALUES ('2', '4', '17');
INSERT INTO `tracklists` VALUES ('2', '5', '18');
INSERT INTO `tracklists` VALUES ('2', '6', '19');
INSERT INTO `tracklists` VALUES ('2', '7', '20');
INSERT INTO `tracklists` VALUES ('2', '8', '21');
INSERT INTO `tracklists` VALUES ('2', '9', '22');
INSERT INTO `tracklists` VALUES ('2', '10', '23');
INSERT INTO `tracklists` VALUES ('2', '11', '24');
INSERT INTO `tracklists` VALUES ('2', '12', '25');
INSERT INTO `tracklists` VALUES ('3', '1', '14');
INSERT INTO `tracklists` VALUES ('3', '2', '26');
INSERT INTO `tracklists` VALUES ('3', '3', '3');
INSERT INTO `tracklists` VALUES ('3', '4', '15');
INSERT INTO `tracklists` VALUES ('3', '5', '11');
INSERT INTO `tracklists` VALUES ('3', '6', '19');
INSERT INTO `tracklists` VALUES ('3', '7', '18');
INSERT INTO `tracklists` VALUES ('3', '8', '16');
INSERT INTO `tracklists` VALUES ('3', '9', '12');
INSERT INTO `tracklists` VALUES ('3', '10', '17');
INSERT INTO `tracklists` VALUES ('3', '11', '22');
INSERT INTO `tracklists` VALUES ('3', '12', '20');
INSERT INTO `tracklists` VALUES ('3', '13', '2');
INSERT INTO `tracklists` VALUES ('3', '14', '5');
INSERT INTO `tracklists` VALUES ('3', '15', '8');
INSERT INTO `tracklists` VALUES ('3', '16', '7');
INSERT INTO `tracklists` VALUES ('3', '17', '25');
INSERT INTO `tracklists` VALUES ('3', '18', '13');
INSERT INTO `tracklists` VALUES ('3', '19', '24');

-- ----------------------------
-- Table structure for vocals
-- ----------------------------
DROP TABLE IF EXISTS `vocals`;
CREATE TABLE `vocals` (
  `song_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vocals
-- ----------------------------
INSERT INTO `vocals` VALUES ('2', '1', 'lead');
INSERT INTO `vocals` VALUES ('2', '3', 'chorus');
INSERT INTO `vocals` VALUES ('2', '4', 'chorus');
INSERT INTO `vocals` VALUES ('3', '2', 'lead');
INSERT INTO `vocals` VALUES ('4', '1', 'chorus');
INSERT INTO `vocals` VALUES ('4', '2', 'lead');
INSERT INTO `vocals` VALUES ('4', '3', 'chorus');
INSERT INTO `vocals` VALUES ('4', '4', 'chorus');
INSERT INTO `vocals` VALUES ('5', '2', 'lead');
INSERT INTO `vocals` VALUES ('5', '1', 'chorus');
INSERT INTO `vocals` VALUES ('5', '3', 'chorus');
INSERT INTO `vocals` VALUES ('5', '4', 'chorus');
INSERT INTO `vocals` VALUES ('6', '4', 'lead');
INSERT INTO `vocals` VALUES ('6', '1', 'lead');
INSERT INTO `vocals` VALUES ('7', '4', 'lead');
INSERT INTO `vocals` VALUES ('7', '2', 'lead');
INSERT INTO `vocals` VALUES ('7', '3', 'chorus');
INSERT INTO `vocals` VALUES ('8', '1', 'chorus');
INSERT INTO `vocals` VALUES ('8', '2', 'chorus');
INSERT INTO `vocals` VALUES ('8', '3', 'chorus');
INSERT INTO `vocals` VALUES ('8', '4', 'chorus');
INSERT INTO `vocals` VALUES ('9', '1', 'lead');
INSERT INTO `vocals` VALUES ('9', '3', 'chorus');
INSERT INTO `vocals` VALUES ('10', '3', 'lead');
INSERT INTO `vocals` VALUES ('10', '1', 'chorus');
INSERT INTO `vocals` VALUES ('10', '2', 'chorus');
INSERT INTO `vocals` VALUES ('11', '1', 'chorus');
INSERT INTO `vocals` VALUES ('11', '2', 'chorus');
INSERT INTO `vocals` VALUES ('11', '3', 'lead');
INSERT INTO `vocals` VALUES ('11', '4', 'chorus');
INSERT INTO `vocals` VALUES ('12', '1', 'chorus');
INSERT INTO `vocals` VALUES ('12', '2', 'chorus');
INSERT INTO `vocals` VALUES ('12', '3', 'chorus');
INSERT INTO `vocals` VALUES ('12', '4', 'lead');
INSERT INTO `vocals` VALUES ('13', '2', 'lead');
INSERT INTO `vocals` VALUES ('13', '1', 'chorus');
INSERT INTO `vocals` VALUES ('13', '3', 'chorus');
INSERT INTO `vocals` VALUES ('14', '4', 'lead');
INSERT INTO `vocals` VALUES ('15', '1', 'lead');
INSERT INTO `vocals` VALUES ('15', '2', 'chorus');
INSERT INTO `vocals` VALUES ('15', '3', 'chorus');
INSERT INTO `vocals` VALUES ('15', '4', 'chorus');
INSERT INTO `vocals` VALUES ('16', '1', 'shared');
INSERT INTO `vocals` VALUES ('16', '2', 'shared');
INSERT INTO `vocals` VALUES ('16', '3', 'chorus');
INSERT INTO `vocals` VALUES ('16', '4', 'chorus');
INSERT INTO `vocals` VALUES ('17', '2', 'lead');
INSERT INTO `vocals` VALUES ('18', '3', 'lead');
INSERT INTO `vocals` VALUES ('19', '1', 'lead');
INSERT INTO `vocals` VALUES ('19', '3', 'chorus');
INSERT INTO `vocals` VALUES ('20', '3', 'lead');
INSERT INTO `vocals` VALUES ('20', '4', 'chorus');
INSERT INTO `vocals` VALUES ('20', '1', 'chorus');
INSERT INTO `vocals` VALUES ('21', '1', 'lead');
INSERT INTO `vocals` VALUES ('21', '4', 'chorus');
INSERT INTO `vocals` VALUES ('22', '1', 'chorus');
INSERT INTO `vocals` VALUES ('22', '2', 'shared');
INSERT INTO `vocals` VALUES ('22', '3', 'chorus');
INSERT INTO `vocals` VALUES ('22', '4', 'lead');
INSERT INTO `vocals` VALUES ('23', '1', 'chorus');
INSERT INTO `vocals` VALUES ('23', '2', 'lead');
INSERT INTO `vocals` VALUES ('23', '3', 'chorus');
INSERT INTO `vocals` VALUES ('23', '4', 'chorus');
INSERT INTO `vocals` VALUES ('24', '1', 'chorus');
INSERT INTO `vocals` VALUES ('24', '2', 'chorus');
INSERT INTO `vocals` VALUES ('24', '3', 'chorus');
INSERT INTO `vocals` VALUES ('24', '4', 'chorus');
INSERT INTO `vocals` VALUES ('25', '1', 'chorus');
INSERT INTO `vocals` VALUES ('25', '2', 'lead');
INSERT INTO `vocals` VALUES ('25', '3', 'chorus');
INSERT INTO `vocals` VALUES ('25', '4', 'chorus');
INSERT INTO `vocals` VALUES ('26', '2', 'lead');
INSERT INTO `vocals` VALUES ('26', '1', 'chorus');
INSERT INTO `vocals` VALUES ('26', '3', 'chorus');
INSERT INTO `vocals` VALUES ('26', '4', 'chorus');
INSERT INTO `vocals` VALUES ('27', '4', 'lead');
INSERT INTO `vocals` VALUES ('28', '4', 'lead');
INSERT INTO `vocals` VALUES ('28', '3', 'chorus');
INSERT INTO `vocals` VALUES ('29', '3', 'lead');
INSERT INTO `vocals` VALUES ('29', '4', 'chorus');
INSERT INTO `vocals` VALUES ('30', '2', 'lead');
INSERT INTO `vocals` VALUES ('31', '3', 'shared');
INSERT INTO `vocals` VALUES ('31', '4', 'shared');
INSERT INTO `vocals` VALUES ('31', '4', 'rap');
INSERT INTO `vocals` VALUES ('32', '1', 'shared');
INSERT INTO `vocals` VALUES ('32', '2', 'shared');

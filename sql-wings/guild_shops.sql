-- MariaDB dump 10.17  Distrib 10.5.6-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: topaz
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for table `guild_shops`
--

DROP TABLE IF EXISTS `guild_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_shops` (
  `guildid` smallint(5) unsigned NOT NULL,
  `itemid` smallint(5) unsigned NOT NULL,
  `min_price` int(10) unsigned NOT NULL DEFAULT 0,
  `max_price` int(10) unsigned NOT NULL DEFAULT 0,
  `max_quantity` smallint(5) unsigned NOT NULL DEFAULT 0,
  `daily_increase` smallint(5) unsigned NOT NULL DEFAULT 0,
  `initial_quantity` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`guildid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guild_shops`
--

LOCK TABLES `guild_shops` WRITE;
/*!40000 ALTER TABLE `guild_shops` DISABLE KEYS */;
INSERT INTO `guild_shops` VALUES (60418,474,21000,21000,255,255,255),
    (60418,475,21000,21000,255,255,255),
    (60418,476,21000,21000,255,255,255),
    (60418,477,21000,21000,255,255,255),
    (60418,478,21000,21000,255,255,255),
    (60418,479,21000,21000,255,255,255),
    (60418,480,21000,21000,255,255,255),
    (60418,481,21000,21000,255,255,255),
    (60425,621,21,40,64,24,24),
    (60425,622,36,55,64,24,24),
    (60425,636,97,369,64,24,24),
    (60425,637,1640,4880,24,0,0),
    (60425,638,138,851,64,24,24),
    (60425,912,192,360,24,0,0),
    (60425,914,1125,6300,64,24,24),
    (60425,920,1084,5899,48,24,24),
    (60425,922,300,300,24,0,0),
    (60425,925,1312,3952,24,0,0),
    (60425,928,1014,2307,24,0,0),
    (60425,929,1125,6900,24,0,0),
    (60425,931,10000,19520,12,0,0),
    (60425,932,1020,1080,12,0,0),
    (60425,933,600,3168,36,12,12),
    (60425,943,534,1177,24,0,0),
    (60425,947,3360,21862,12,0,0),
    (60425,951,90,312,64,24,24),
    (60425,1108,573,3213,48,24,24),
    (60425,1109,930,4563,12,0,0),
    (60425,2131,75,250,99,99,99),
    (60425,4112,682,728,12,0,0),
    (60425,4116,3375,7560,12,0,0),
    (60425,4128,3624,17201,12,0,0),
    (60425,4148,1200,1377,12,0,0),
    (60425,4150,1945,9549,12,0,0),
    (60425,4151,880,2944,12,0,0),
    (60425,4154,2000,13300,12,0,0),
    (60425,4162,5250,13300,12,0,0),
    (60425,4164,1050,6832,12,0,0),
    (60425,4165,900,5712,12,0,0),
    (60425,4166,750,2080,12,0,0),
    (60425,4171,750,2080,12,0,0),
    (60425,4443,28,153,48,24,24),
    (60425,18228,114,114,64,24,24),
    (60425,18232,114,114,64,24,24),
    (60425,18236,21,21,64,24,24),
    (60425,2316,6,7,64,64,64),
    (5262,621,21,40,48,0,0),
    (5262,622,36,155,64,24,24),
    (5262,636,97,369,64,24,24),
    (5262,637,1640,4880,24,0,0),
    (5262,638,138,851,64,24,24),
    (5262,912,192,360,64,0,0),
    (5262,914,1125,6300,64,24,24),
    (5262,920,1084,5899,48,24,24),
    (5262,922,300,300,24,0,0),
    (5262,925,1312,3952,24,0,0),
    (5262,928,1014,2307,24,0,0),
    (5262,929,1125,6900,24,0,0),
    (5262,931,10000,19520,12,0,0),
    (5262,932,1020,1080,12,0,0),
    (5262,933,600,3168,36,12,12),
    (5262,943,534,1177,24,0,0),
    (5262,947,3360,21862,12,0,0),
    (5262,951,90,312,64,24,24),
    (5262,1108,573,3213,48,24,24),
    (5262,1109,930,4563,12,0,0),
    (5262,2131,75,250,99,99,99),
    (5262,4112,682,728,12,0,0),
    (5262,4116,3375,7560,12,0,0),
    (5262,4128,3624,17201,12,0,0),
    (5262,4148,1200,1377,12,0,0),
    (5262,4150,1945,9549,12,0,0),
    (5262,4151,880,2944,12,0,0),
    (5262,4154,2000,13300,12,0,0),
    (5262,4162,5250,13300,12,0,0),
    (5262,4164,1050,6832,12,0,0),
    (5262,4165,900,5712,12,0,0),
    (5262,4166,750,2080,12,0,0),
    (5262,4171,750,2080,12,0,0),
    (5262,4443,28,153,48,24,24),
    (5262,18228,114,114,64,24,24),
    (5262,18232,114,114,64,24,24),
    (5262,18236,21,21,64,24,24),
    (514,864,72,288,64,24,24),
    (514,880,70,349,64,24,24),
    (514,882,150,760,64,24,24),
    (514,888,90,90,64,24,24),
    (514,881,1723,11398,48,24,24),
    (514,2130,75,250,99,99,99),
    (514,12455,5728,32079,4,0,0),
    (514,17319,3,21,297,0,0),
    (60430,825,480,640,64,24,24),
    (60430,818,159,768,64,24,24),
    (60430,839,173,870,64,24,24),
    (60430,835,187,830,64,24,24),
    (60430,824,240,240,64,24,24),
    (60430,817,45,45,64,24,24),
    (60430,2287,2700,17280,24,6,12),
    (60430,819,750,790,64,24,24),
    (60430,833,15,15,64,24,24),
    (60430,834,200,200,64,24,24),
    (60430,832,675,675,64,24,24),
    (60430,822,1800,3400,64,24,24),
    (60430,2128,75,250,99,99,99),
    (60430,2173,405,748,64,24,24),
    (60430,2145,75,75,64,24,24),
    (516,816,592,3865,64,24,24),
    (516,817,45,240,64,24,24),
    (516,818,144,768,64,24,24),
    (516,819,850,4200,64,24,24),
    (516,820,2700,12528,64,24,24),
    (516,822,585,4760,64,24,24),
    (516,823,13338,109440,64,24,24),
    (516,824,240,1344,64,24,24),
    (516,825,480,2944,64,24,24),
    (516,832,675,4500,64,24,24),
    (516,833,15,18,64,24,24),
    (516,835,187,1130,64,24,24),
    (5152,816,812,3865,48,24,24),
    (5152,817,45,240,64,24,24),
    (5152,818,144,768,64,24,24),
    (5152,819,850,4200,24,0,0),
    (5152,820,2700,12528,48,0,0),
    (5152,822,585,4760,48,24,24),
    (5152,824,240,1344,64,24,24),
    (5152,825,480,2944,64,24,24),
    (5152,833,15,18,64,24,24),
    (5152,835,187,1000,64,24,24),
    (5152,826,12840,12840,64,24,24),
    (5152,832,675,4500,64,24,24),
    (5152,834,79,200,64,24,24),
    (5152,839,172,870,64,24,24),
    (5152,2128,75,250,99,99,99),
    (5152,2145,75,180,64,24,24),
    (5152,12856,936,936,20,0,0),
    (530,4571,75,460,64,24,24),
    (530,4491,150,696,64,24,24),
    (530,4468,60,208,64,24,24),
    (530,4412,412,1118,64,24,24),
    (530,4390,39,198,64,24,24),
    (530,4389,43,153,64,24,24),
    (530,4380,437,1091,64,24,24),
    (530,4378,45,268,64,24,24),
    (530,4367,36,238,64,24,24),
    (530,4366,18,100,64,24,24),
    (530,4363,33,200,64,24,24),
    (530,2112,530,540,64,24,24),
    (530,2111,525,530,64,24,24),
    (530,2110,457,530,64,24,24),
    (530,1840,1500,2800,64,24,24),
    (530,1590,536,992,64,24,24),
    (530,1555,1061,1854,64,24,24),
    (530,1554,431,754,64,24,24),
    (530,629,36,220,64,24,24),
    (530,628,195,572,64,24,24),
    (530,625,66,334,64,24,24),
    (530,622,36,220,64,24,24),
    (530,621,21,40,64,24,24),
    (530,620,45,276,84,36,36),
    (530,618,21,42,64,24,24),
    (530,616,60,368,64,24,24),
    (530,614,60,361,64,24,24),
    (530,612,45,194,64,24,24),
    (530,611,30,60,64,24,24),
    (530,610,45,252,64,24,24),
    (518,4384,5250,13790,48,0,0),
    (518,4385,261,261,48,0,0),
    (518,4399,2520,2520,48,0,0),
    (518,4426,195,296,48,0,0),
    (518,4451,3400,16000,48,0,0),
    (518,4461,4050,6048,48,0,0),
    (518,4479,1350,1350,48,0,0),
    (518,4483,520,1248,48,0,0),
    (518,4485,900,1200,48,0,0),
    (518,4500,24,76,64,0,0),
    (518,17382,9657,9657,20,5,5),
    (518,17383,1980,1980,30,10,10),
    (518,17387,4077,4077,20,5,10),
    (518,17388,934,934,30,10,10),
    (518,17399,2394,2394,20,6,12),
    (5182,4384,5250,13790,48,0,0),
    (5182,4385,261,261,48,0,0),
    (5182,4399,2520,2520,48,0,0),
    (5182,4426,195,296,48,0,0),
    (5182,4451,3400,16000,48,0,0),
    (5182,4461,4050,6048,48,0,0),
    (5182,4479,1350,1350,48,0,0),
    (5182,4483,520,1248,48,0,0),
    (5182,4485,900,1200,48,0,0),
    (5182,4500,24,76,64,0,0),
    (5182,17382,9657,9657,20,5,5),
    (5182,17383,1980,1980,30,10,10),
    (5182,17387,4077,4077,20,5,10),
    (5182,17388,934,934,30,10,10),
    (5182,17399,2394,2394,20,6,12),
    (519,624,24,39,64,24,24),
    (519,4314,300,300,64,24,24),
    (519,4317,120,237,64,24,24),
    (519,4318,3375,3375,64,24,24),
    (519,4385,115,115,64,24,24),
    (519,4399,1350,1350,64,24,24),
    (519,4443,9,32,64,24,24),
    (519,4484,2100,2100,64,24,24),
    (519,4485,900,1200,64,24,24),
    (519,17382,7081,8369,20,5,5),
    (519,17388,766,906,30,10,20),
    (517,4443,28,134,64,24,24),
    (517,4472,30,65,64,24,24),
    (517,16992,52,294,124,48,48),
    (517,16993,52,52,124,48,48),
    (517,16994,52,52,124,0,0),
    (517,16996,52,52,124,48,48),
    (517,16997,52,52,124,48,48),
    (517,16998,38,38,124,48,48),
    (517,16999,52,52,124,48,48),
    (517,17000,52,52,124,48,48),
    (517,17380,25740,25740,20,0,0),
    (517,17382,9657,9657,20,5,5),
    (517,17383,1980,1980,30,10,10),
    (517,17387,4077,4077,20,0,0),
    (517,17388,934,934,30,0,0),
    (517,17389,332,332,30,0,0),
    (517,17390,145,145,30,0,0),
    (517,17391,44,44,30,10,20),
    (517,17392,213,213,124,0,0),
    (517,17393,213,213,124,0,0),
    (517,17394,220,220,124,0,0),
    (517,17395,8,9,400,100,200),
    (517,17396,3,8,400,100,200),
    (517,17399,2394,2394,20,6,12),
    (517,17404,540,540,20,6,12),
    (517,17405,540,540,20,6,12),
    (517,17407,270,270,20,6,12),
    (525,2177,36,224,500,200,200),
    (525,2180,36,224,500,200,200),
    (525,2182,36,224,500,200,200),
    (525,2183,36,224,500,200,200),
    (525,5449,92,136,64,0,0),
    (525,5450,282,600,48,0,0),
    (525,17387,4077,4077,20,5,10),
    (525,17395,8,9,400,100,200),
    (525,17399,2394,2394,20,6,12),
    (525,17400,691,691,20,6,12),
    (525,17407,270,270,20,6,12),
    (524,2177,36,224,500,200,200),
    (524,2180,36,224,500,200,200),
    (524,2182,36,224,500,200,200),
    (524,2183,36,224,500,200,200),
    (524,5449,92,136,64,0,0),
    (524,5450,282,600,48,0,0),
    (524,17387,4077,4077,20,5,10),
    (524,17395,8,9,400,100,200),
    (524,17399,2394,2394,20,6,12),
    (524,17400,691,691,20,6,12),
    (524,17407,270,270,20,6,12),
    (523,4403,336,336,64,0,0),
    (523,4480,282,600,48,0,0),
    (523,4485,900,1200,24,0,0),
    (523,17387,4077,4077,20,5,10),
    (523,17395,8,9,400,100,200),
    (523,17399,2394,2394,20,5,15),
    (523,17400,691,691,20,6,12),
    (523,17407,270,270,20,6,12),
    (522,4403,336,336,64,0,0),
    (522,4480,282,600,48,0,0),
    (522,4485,900,1200,24,0,0),
    (522,17387,4077,4077,20,5,10),
    (522,17395,8,9,400,100,200),
    (522,17399,2394,2394,20,5,15),
    (522,17400,691,691,20,6,12),
    (522,17407,270,270,20,6,12),
    (521,624,47,158,64,0,0),
    (521,4385,235,737,64,0,0),
    (521,4399,1350,1350,48,0,0),
    (521,4451,3000,18080,48,0,0),
    (521,4483,509,509,64,0,0),
    (521,17387,4077,4077,20,5,10),
    (521,17395,8,9,400,100,200),
    (521,17399,2394,2394,20,5,15),
    (521,17400,691,691,20,6,12),
    (521,17407,270,270,20,6,12),
    (520,624,47,158,64,0,0),
    (520,4385,235,737,64,0,0),
    (520,4399,1350,1350,48,0,0),
    (520,4451,3000,18080,48,0,0),
    (520,4483,509,509,64,0,0),
    (520,17387,4077,4077,20,5,10),
    (520,17395,8,9,400,100,200),
    (520,17399,2394,2394,20,5,15),
    (520,17400,691,691,20,6,12),
    (520,17407,270,270,20,6,12),
    (60426,5449,92,136,64,0,0),
    (60426,5447,21,128,64,24,24),
    (60426,5453,4560,5952,48,0,0),
    (60426,5454,5130,25920,48,0,0),
    (60426,4472,30,65,64,24,24),
    (60426,16992,52,294,198,48,64),
    (60426,16993,52,52,124,48,64),
    (60426,16994,52,52,124,48,64),
    (60426,16996,52,52,124,48,64),
    (60426,16997,52,52,124,48,64),
    (60426,16998,38,38,124,48,48),
    (60426,16999,52,52,124,48,48),
    (60426,17000,52,52,124,48,48),
    (60426,17380,25740,25740,20,5,5),
    (60426,17382,9657,9657,20,5,5),
    (60426,17383,1980,1980,30,10,10),
    (60426,17387,4077,4077,20,5,10),
    (60426,17388,934,934,30,10,10),
    (60426,17389,332,332,30,10,15),
    (60426,17390,145,145,30,10,15),
    (60426,17391,44,44,30,10,20),
    (60426,17392,213,213,124,48,48),
    (60426,17393,213,213,124,48,48),
    (60426,17394,220,220,124,48,18),
    (60426,17395,8,9,400,100,200),
    (60426,17396,3,8,400,100,200),
    (60426,17399,2394,2394,20,6,12),
    (60426,17404,540,540,20,6,12),
    (60426,17405,540,540,20,6,12),
    (60426,17407,270,270,20,6,12),
    (60429,640,9,128,128,64,64),
    (60429,642,595,620,24,0,0),
    (60429,644,1500,9200,24,0,0),
    (60429,650,760,4179,12,0,0),
    (60429,736,315,2125,24,12,12),
    (60429,737,2400,14400,12,0,0),
    (60429,769,1288,6328,48,16,32),
    (60429,770,1288,6328,48,16,32),
    (60429,771,1288,6328,48,16,32),
    (60429,772,1288,6328,48,16,32),
    (60429,773,1288,6328,48,16,32),
    (60429,774,1288,6328,48,16,32),
    (60429,775,1288,6328,48,16,32),
    (60429,776,1288,6328,48,16,32),
    (60429,2143,75,250,99,99,99),
    (60429,2144,75,242,48,12,12),
    (5272,640,9,128,128,64,64),
    (5272,642,595,620,24,12,12),
    (5272,644,1500,9200,24,12,12),
    (5272,650,760,4179,12,0,0),
    (5272,736,315,2125,24,12,12),
    (5272,737,2400,14400,12,0,0),
    (5272,769,1288,6328,48,16,32),
    (5272,770,1288,6328,48,16,32),
    (5272,771,1288,6328,48,16,32),
    (5272,772,1288,6328,48,16,32),
    (5272,773,1288,6328,48,16,32),
    (5272,774,1288,6328,48,16,32),
    (5272,775,1288,6328,48,16,32),
    (5272,776,1288,6328,48,16,32),
    (5272,2143,75,250,99,99,99),
    (5272,2144,75,242,48,12,12),
    (5272,1588,20400,20400,255,255,255),
    (528,640,9,36,128,64,64),
    (528,642,595,620,24,0,0),
    (528,644,1500,9200,24,0,0),
    (528,650,760,4179,12,0,0),
    (528,736,315,2125,24,12,12),
    (528,737,2400,14400,12,0,0),
    (528,769,1288,6328,48,16,32),
    (528,770,1288,6328,48,16,32),
    (528,771,1288,6328,48,16,32),
    (528,772,1288,6328,48,16,32),
    (528,773,1288,6328,48,16,32),
    (528,774,1288,6328,48,16,32),
    (528,775,1288,6328,48,16,32),
    (528,776,1288,6328,48,16,32),
    (528,2143,75,250,99,99,99),
    (528,2144,75,242,48,12,12),
    (529,505,62,349,24,8,24),
    (529,695,120,184,64,24,24),
    (529,853,2155,12875,24,8,24),
    (529,854,2650,3304,24,8,24),
    (529,856,45,276,24,8,24),
    (529,858,483,1161,48,24,24),
    (529,859,937,4750,48,24,24),
    (529,861,1312,8050,48,24,24),
    (529,863,2700,11088,48,24,24),
    (529,1116,15504,27360,12,0,0),
    (529,2129,75,250,99,99,99),
    (529,4509,9,23,200,50,50),
    (529,13192,837,1224,64,0,0),
    (529,632,1575,4320,48,24,24),
    (531,640,9,36,124,48,24),
    (531,641,30,66,124,48,24),
    (531,643,675,981,124,48,24),
    (531,644,2000,10000,64,12,12),
    (531,2143,75,250,99,99,99),
    (531,2144,75,242,124,48,100),
    (532,640,9,20,124,48,24),
    (532,641,30,66,124,48,24),
    (532,643,675,1224,124,48,24),
    (532,660,61,423,48,24,24),
    (532,672,72,440,48,24,24),
    (60427,640,9,20,124,48,24),
    (60427,641,30,66,124,48,24),
    (60427,643,675,1224,124,48,24),
    (60427,660,61,423,48,24,24),
    (60427,672,72,440,48,24,24),
    (5332,640,9,44,124,48,24),
    (5332,641,30,66,124,48,24),
    (5332,643,675,3825,124,48,24),
    (5332,2143,75,250,99,99,99),
    (5332,2144,75,242,164,48,50),
    (60417,16896,517,592,20,10,20),
    (60417,16900,1404,1608,20,7,15),
    (60417,16960,3121,3575,20,5,10),
    (60417,16974,224510,224510,20,0,0),
    (60417,16975,11583,13266,20,5,10),
    (60417,16966,1836,2103,20,10,20),
    (60417,16982,4752,15760,20,0,0),
    (60417,16987,12253,14033,20,5,10),
    (60417,17265,25372,62175,20,5,10),
    (60417,17301,29,87,297,99,99),
    (60417,12456,552,858,20,10,20),
    (60417,12457,3272,5079,20,7,15),
    (60417,12458,8972,13927,20,5,10),
    (60417,13111,20061,29942,20,5,10),
    (60417,12584,833,1294,20,10,20),
    (60417,12585,4931,7654,20,7,15),
    (60417,12586,13266,14850,20,5,10),
    (60417,12712,458,712,20,10,20),
    (60417,12713,2713,4212,20,7,15),
    (60417,12714,2713,8316,20,5,10),
    (60417,12840,666,1034,20,10,20),
    (60417,12841,2713,6133,20,7,15),
    (60417,12842,10805,12096,20,5,10),
    (60417,12968,424,660,20,10,20),
    (60417,12969,2528,3924,20,7,15),
    (60417,12970,11071,12393,20,5,10),
    (60420,16896,517,592,20,10,20),
    (60420,16919,2728,3125,20,7,15),
    (60420,16975,11583,13266,20,5,10),
    (60420,16988,14676,16808,20,7,15),
    (60420,12456,552,858,20,10,20),
    (60420,12457,3272,5079,20,7,15),
    (60420,13111,20061,29942,20,5,10),
    (60420,13088,43890,52440,20,0,0),
    (60420,12584,833,1294,20,10,20),
    (60420,12585,4931,7654,20,7,15),
    (60420,12712,458,712,20,10,20),
    (60420,12713,2713,4212,20,7,15),
    (60420,12840,666,1034,20,10,20),
    (60420,12968,424,660,20,10,20),
    (60420,12969,2528,3924,20,7,15),
    (60420,16405,104,225,20,0,0),
    (60420,17314,7333,7446,15,0,0),
    (60423,16406,14428,34214,20,0,0),
    (60423,16411,11746,21322,20,0,0),
    (60423,16419,45760,76416,20,0,0),
    (60423,16896,517,592,20,10,20),
    (60423,16917,4226,4226,20,7,15),
    (60423,16900,1404,1608,20,7,15),
    (60423,16919,2728,3125,20,7,15),
    (60423,16960,3121,3575,20,7,15),
    (60423,16975,11583,13266,20,5,10),
    (60423,16966,1836,2103,20,10,20),
    (60423,16982,4752,15760,20,5,10),
    (60423,16987,12253,14033,20,5,10),
    (60423,16988,14676,16808,20,0,0),
    (60423,17802,189945,464059,20,0,0),
    (60423,16871,183516,404395,20,0,0),
    (60423,17259,72144,158976,20,0,0),
    (60423,17301,29,87,297,99,99),
    (60423,17302,347,993,297,0,0),
    (60423,17303,7333,10120,297,0,0),
    (60423,17285,101745,101745,20,0,0),
    (60423,17314,7333,7446,15,0,0),
    (60423,17320,7,10,297,0,0),
    (60423,17322,81,187,297,0,0),
    (60423,17340,58,436,297,0,0),
    (60419,704,96,149,48,24,24),
    (60419,657,4690,21000,12,0,0),
    (60419,4928,1561,1747,30,6,12),
    (60419,4934,1561,1747,30,6,12),
    (60419,4937,1561,1747,30,6,12),
    (60419,4943,1561,1747,30,6,12),
    (60419,4878,4000,4500,7,0,0),
    (60419,4879,4000,4500,7,0,0),
    (60419,4880,4000,4500,7,0,0),
    (60419,1554,431,512,64,24,24),
    (60419,1555,1061,1259,64,24,24),
    (60419,1590,536,700,64,24,24),
    (60419,1475,579,1188,64,24,24),
    (60419,4876,4000,4500,7,0,0),
    (60419,4877,4000,4500,7,0,0),
    (60419,1164,30,120,2970,0,0),
    (60419,4874,4000,4500,7,0,0),
    (60419,5164,1945,2854,64,24,24),
    (60419,1652,233,250,64,24,24),
    (60419,5236,509,525,64,24,24),
    (534,688,12,30,36,12,12),
    (534,693,640,1622,36,12,12),
    (534,695,120,184,36,12,12),
    (534,696,330,686,36,12,12),
    (534,698,93,182,36,12,12),
    (534,1021,312,500,64,24,24),
    (534,1657,75,250,99,99,99),
    (5132,688,15,28,24,12,24),
    (5132,689,27,59,24,12,24),
    (5132,690,1723,10938,24,12,24),
    (5132,691,45,276,24,12,24),
    (5132,693,640,3586,24,12,24),
    (5132,694,2119,2811,24,12,24),
    (5132,695,120,132,24,12,24),
    (5132,696,330,699,24,12,24),
    (5132,697,528,930,24,12,24),
    (5132,698,72,122,24,12,24),
    (5132,699,4740,24016,24,12,24),
    (5132,700,9075,19844,24,12,24),
    (5132,701,6615,37044,24,12,24),
    (5132,702,9600,23040,24,12,24),
    (5132,704,96,230,24,12,24),
    (5132,705,7,18,12,4,12),
    (5132,706,27,151,12,4,12),
    (5132,707,1723,9651,12,4,12),
    (5132,708,45,276,12,4,12),
    (5132,710,2119,6104,12,4,12),
    (5132,712,120,256,12,4,12),
    (5132,713,330,836,12,4,12),
    (5132,714,607,2559,12,4,12),
    (5132,715,72,441,12,4,12),
    (5132,716,4740,23257,12,4,12),
    (5132,1657,75,250,99,99,99),
    (60425,2309,963,1080,12,4,4),
    (60428,688,12,30,24,12,12),
    (60428,689,27,59,24,12,12),
    (60428,690,1401,10295,24,12,12),
    (60428,691,45,192,24,12,12),
    (60428,693,640,3925,24,12,12),
    (60428,694,2119,4182,24,12,12),
    (60428,695,120,184,24,12,12),
    (60428,696,330,686,24,12,12),
    (60428,697,528,930,24,12,12),
    (60428,698,72,86,24,12,12),
    (60428,699,4740,24016,24,12,12),
    (60428,700,9075,19844,24,12,12),
    (60428,701,6615,18345,24,12,12),
    (60428,702,9600,45568,24,12,12),
    (60428,704,96,248,24,12,12),
    (60428,705,7,18,12,4,12),
    (60428,706,27,165,12,4,12),
    (60425,2154,11115,12000,1,1,1),
    (60428,708,45,276,12,4,12),
    (60428,710,2119,6104,12,4,12),
    (60428,712,120,256,12,4,12),
    (60428,713,330,1672,12,4,12),
    (60428,714,607,2559,12,4,12),
    (60428,715,72,215,12,4,12),
    (60428,716,4740,26544,12,4,12),
    (60421,12456,552,858,20,10,20),
    (60421,12457,3272,5079,20,7,15),
    (60421,12458,8972,13927,20,5,10),
    (60421,13111,20061,29942,20,5,10),
    (60421,12584,833,1294,20,10,20),
    (60421,12585,4931,7654,20,7,15),
    (60421,12586,13266,14850,20,5,10),
    (60421,12712,458,712,20,10,20),
    (60421,12713,2713,4212,20,7,15),
    (60421,12714,2713,8316,20,5,10),
    (60421,12840,666,1034,20,10,20),
    (60421,12841,3951,6133,20,7,15),
    (60421,12842,10805,12096,20,5,10),
    (60421,12968,424,660,20,10,20),
    (60421,12969,2528,3924,20,7,15),
    (60421,12970,11071,12393,20,5,10),
    (60422,4928,1561,1747,30,6,12),
    (60422,4931,1561,1747,30,6,12),
    (60422,4934,1561,1747,30,6,12),
    (60422,4937,1561,1747,30,6,12),
    (60422,4940,1561,1747,30,6,12),
    (60422,4943,1561,1747,30,6,12),
    (60424,704,96,149,375,75,150),
    (60424,915,2700,16120,165,33,165),
    (60424,1134,810,2095,255,48,100),
    (60424,1155,436,645,165,33,165),
    (60424,657,4690,21000,165,33,65),
    (60424,1472,369,369,255,48,100),
    (60424,1554,431,512,255,48,100),
    (60424,1555,1061,1259,255,48,100),
    (60424,1590,536,700,255,48,100),
    (60424,1475,579,1188,255,48,100),
    (60424,5164,1945,2854,255,48,100),
    (60424,1652,233,250,255,48,100),
    (60424,5235,1284,1350,255,48,100),
    (60431,16896,517,592,20,10,20),
    (60431,16917,4226,4226,20,7,15),
    (60431,16900,1404,1608,20,7,15),
    (60431,16919,2728,3125,20,7,15),
    (60431,16960,3121,3575,20,5,10),
    (60431,16975,11583,13266,20,5,10),
    (60431,16966,1836,2103,20,10,20),
    (60431,16982,4752,15760,20,0,10),
    (60431,17301,29,87,2970,594,1188),
    (60431,17302,347,993,2970,594,1188),
    (60431,17340,58,436,8910,0,3564),
    (60431,12456,552,858,20,10,20),
    (60431,12457,3272,5079,20,7,15),
    (60431,12458,8972,13927,20,5,10),
    (60431,12584,833,1294,20,10,20),
    (60431,12585,4931,7654,20,7,15),
    (60431,12586,13266,14850,20,5,10),
    (60431,12712,458,712,20,10,20),
    (60431,12713,2713,4212,20,7,15),
    (60431,12714,2713,8316,20,5,10),
    (60431,12840,666,1034,20,10,20),
    (60431,12841,2713,6133,20,7,15),
    (60431,12842,10805,12096,20,5,10),
    (60431,12968,424,660,20,10,20),
    (60431,12969,2528,3924,20,7,15),
    (60431,12970,11071,12393,20,5,10),
    (60431,704,96,149,375,75,150),
    (60431,915,2700,16120,165,33,165),
    (60431,1134,810,2095,255,48,100),
    (60431,1155,436,645,165,33,165),
    (60431,657,4690,21000,165,33,65),
    (60431,1415,55147,55147,165,33,65),
    (60431,1472,369,369,255,48,100),
    (60431,1554,431,512,255,48,100),
    (60431,1555,1061,1259,255,48,100),
    (60431,1590,536,700,255,48,100),
    (60431,1475,579,1188,255,48,100),
    (60431,5164,1945,2854,255,48,100),
    (60431,1652,233,250,255,48,100),
    (60431,5235,1284,1350,255,48,100),
    (60419,4875,4000,4500,7,0,0);
/*!40000 ALTER TABLE `guild_shops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-12 20:57:35

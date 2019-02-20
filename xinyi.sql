-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-03-18 05:35:03
-- 服务器版本： 5.5.42
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xinyi`
--

-- --------------------------------------------------------

--
-- 表的结构 `fz_access`
--

CREATE TABLE `fz_access` (
  `role_id` smallint(6) UNSIGNED NOT NULL,
  `node_id` smallint(6) UNSIGNED NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_access`
--

INSERT INTO `fz_access` (`role_id`, `node_id`, `level`, `module`) VALUES
(19, 123, 1, NULL),
(19, 122, 1, NULL),
(19, 121, 1, NULL),
(19, 120, 1, NULL),
(19, 119, 1, NULL),
(19, 118, 1, NULL),
(19, 117, 1, NULL),
(19, 116, 1, NULL),
(19, 124, 1, NULL),
(19, 114, 1, NULL),
(19, 113, 1, NULL),
(19, 112, 1, NULL),
(19, 111, 1, NULL),
(19, 110, 1, NULL),
(19, 109, 1, NULL),
(19, 108, 1, NULL),
(19, 107, 1, NULL),
(19, 106, 1, NULL),
(19, 105, 1, NULL),
(19, 104, 1, NULL),
(19, 103, 1, NULL),
(19, 102, 1, NULL),
(19, 101, 1, NULL),
(19, 100, 1, NULL),
(19, 99, 1, NULL),
(19, 98, 1, NULL),
(19, 97, 1, NULL),
(19, 96, 1, NULL),
(19, 95, 1, NULL),
(20, 93, 1, NULL),
(20, 94, 1, NULL),
(20, 95, 1, NULL),
(20, 109, 1, NULL),
(20, 110, 1, NULL),
(20, 111, 1, NULL),
(20, 116, 1, NULL),
(20, 117, 1, NULL),
(20, 118, 1, NULL),
(20, 119, 1, NULL),
(20, 120, 1, NULL),
(20, 121, 1, NULL),
(20, 122, 1, NULL),
(20, 123, 1, NULL),
(21, 114, 1, NULL),
(21, 113, 1, NULL),
(21, 112, 1, NULL),
(21, 95, 1, NULL),
(21, 94, 1, NULL),
(21, 93, 1, NULL),
(21, 124, 1, NULL),
(19, 94, 1, NULL),
(19, 93, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fz_cart`
--

CREATE TABLE `fz_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `addtime` int(11) NOT NULL,
  `addIP` int(11) NOT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fz_node`
--

CREATE TABLE `fz_node` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) UNSIGNED DEFAULT NULL,
  `pid` smallint(6) UNSIGNED NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_node`
--

INSERT INTO `fz_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`) VALUES
(93, 'Admin', NULL, 1, '后台应用', NULL, 0, 1),
(94, 'Index', NULL, 1, '后台主页', NULL, 93, 2),
(95, 'index', NULL, 1, '后台主页页面', NULL, 94, 3),
(96, 'Role', NULL, 1, '角色管理', NULL, 93, 2),
(97, 'index', NULL, 1, '角色管理页面', NULL, 96, 3),
(98, 'add', NULL, 1, '添加管理角色', NULL, 96, 3),
(99, 'del', NULL, 1, '删除管理角色', NULL, 96, 3),
(100, 'status', NULL, 1, '改变角色状态', NULL, 96, 3),
(101, 'Node', NULL, 1, '节点管理', NULL, 93, 2),
(102, 'index', NULL, 1, '节点管理页面', NULL, 101, 3),
(103, 'add', NULL, 1, '添加网站节点', NULL, 101, 3),
(104, 'del', NULL, 1, '删除网站节点', NULL, 101, 3),
(105, 'edit', NULL, 1, '修改网站节点', NULL, 101, 3),
(106, 'Access', NULL, 1, '权限设置', NULL, 93, 2),
(107, 'index', NULL, 1, '权限设置页面', NULL, 106, 3),
(108, 'setAccess', NULL, 1, '设置角色权限', NULL, 106, 3),
(109, 'Verify', NULL, 1, '申述用户权限', NULL, 93, 2),
(110, 'index', NULL, 1, '申核用户权限页面', NULL, 109, 3),
(111, 'verify', NULL, 1, '申核用户权限', NULL, 109, 3),
(112, 'Product', NULL, 1, '商品管理', NULL, 93, 2),
(113, 'index', NULL, 1, '商品管理页面', NULL, 112, 3),
(114, 'add', NULL, 1, '添加商品', NULL, 112, 3),
(116, 'Attr', NULL, 1, '商品属性', NULL, 93, 2),
(117, 'index', NULL, 1, '商品属性页面', NULL, 116, 3),
(118, 'add', NULL, 1, '添加商品属性', NULL, 116, 3),
(119, 'del', NULL, 1, '删除商品属性', NULL, 116, 3),
(120, 'Type', NULL, 1, '商品分类', NULL, 93, 2),
(121, 'index', NULL, 1, '商品分类页面', NULL, 120, 3),
(122, 'add', NULL, 1, '添加商品分类', NULL, 120, 3),
(123, 'del', NULL, 1, '删除商品分类', NULL, 120, 3),
(124, 'find', NULL, 1, '查找商品', NULL, 112, 3),
(125, 'Home', NULL, 1, '前台应用', NULL, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fz_pattr`
--

CREATE TABLE `fz_pattr` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_pattr`
--

INSERT INTO `fz_pattr` (`id`, `name`, `color`) VALUES
(47, '热销', '#FF0000'),
(48, '包邮', '#2F9F00'),
(49, '7天退货', '#0000FF'),
(51, '8折', '#FF00FF');

-- --------------------------------------------------------

--
-- 表的结构 `fz_product`
--

CREATE TABLE `fz_product` (
  `id` int(11) UNSIGNED NOT NULL,
  `ptype_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `describe` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `shopcount` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `shopname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_product`
--

INSERT INTO `fz_product` (`id`, `ptype_id`, `name`, `price`, `describe`, `addtime`, `shopcount`, `shop_id`, `shopname`) VALUES
(57, 28, '宏碁V5-552G笔记本', 2988, '宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑宏碁 V5-552G四核独显笔记本电脑', 1462902306, 0, 26, '华翔宏基专卖店'),
(58, 29, '宏基超薄显示器', 1088, '宏基超薄显示器', 1462902496, 0, 26, '华翔宏基专卖店'),
(59, 26, '华硕P8H61PLUS', 279, 'Asus/华硕P8H61PLUS电脑主板LGA1155主板拼H61M H67 全国包邮 ', 1463146784, 0, 26, '华翔宏基专卖店'),
(60, 26, '技嘉 B85M-D3V-A', 429, 'Gigabyte/技嘉 B85M-D3V-A台式机B85电脑主板支持I3 4170 I5 4590 ', 1463149497, 0, 26, '华翔宏基专卖店'),
(61, 26, '技嘉 GA-F2A78M-DS2 FM2', 379, 'Gigabyte/技嘉 GA-F2A78M-DS2 FM2+主板 全固态电容 支持FM2 FM2+ ', 1463149609, 0, 26, '华翔宏基专卖店'),
(62, 26, '七彩虹 C.H81M V23', 259, 'Colorful/七彩虹 C.H81M V23 升级为V24 全固态小主板 支持G3260 全日系 固态电容\r\n', 1463149744, 0, 26, '华翔宏基专卖店'),
(63, 26, '华擎科技 Z170 Pro4S 1151', 699, 'ASROCK/华擎科技 Z170 Pro4S 1151主板 6400T非K版超频 十项供电 顺丰包邮 数字供 电，大板 双卡交火\r\n', 1463149857, 0, 26, '华翔宏基专卖店'),
(64, 27, '精影 GTX650 1G', 388, '精影 GTX650 1G高端电脑显卡D5高频比R7-350 HD6850强 促销抢购! 高频高性能 稳定低功耗 高性价比\r\n', 1463150057, 0, 26, '华翔宏基专卖店');

-- --------------------------------------------------------

--
-- 表的结构 `fz_product_imgurl`
--

CREATE TABLE `fz_product_imgurl` (
  `product_id` int(11) NOT NULL,
  `imgurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_product_imgurl`
--

INSERT INTO `fz_product_imgurl` (`product_id`, `imgurl`) VALUES
(52, '/UpLoads/product/images/2016-05-05/572a4eb87c6b7.jpg'),
(53, '/UpLoads/product/images/2016-05-05/572a50593da2c.jpg'),
(54, '/UpLoads/product/images/2016-05-05/572b1172825e0.jpg'),
(55, '/UpLoads/product/images/2016-05-05/572b1b8b3e74e.jpg'),
(56, '/UpLoads/product/images/2016-05-05/572b1bcbf30c5.jpg'),
(57, '/UpLoads/product/images/2016-05-11/57321e2280412.jpg'),
(58, '/UpLoads/product/images/2016-05-11/57321ee01f896.jpg'),
(59, '/UpLoads/product/images/2016-05-13/5735d9208ec5d.png'),
(60, '/UpLoads/product/images/2016-05-13/5735e3b9cfb9a.jpg'),
(61, '/UpLoads/product/images/2016-05-13/5735e4296426e.jpg'),
(62, '/UpLoads/product/images/2016-05-13/5735e4b016716.jpg'),
(63, '/UpLoads/product/images/2016-05-13/5735e521489b5.jpg'),
(64, '/UpLoads/product/images/2016-05-13/5735e5e96ecce.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `fz_product_pattr`
--

CREATE TABLE `fz_product_pattr` (
  `product_id` int(11) DEFAULT NULL,
  `pattr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_product_pattr`
--

INSERT INTO `fz_product_pattr` (`product_id`, `pattr_id`) VALUES
(57, 49),
(57, 47),
(58, 47),
(58, 48),
(58, 49),
(58, 51),
(65, 49),
(59, 47),
(59, 48),
(59, 51),
(60, 48),
(60, 51),
(61, 47),
(61, 49),
(62, 47),
(62, 48),
(62, 49),
(63, 47),
(63, 48),
(63, 51),
(64, 47),
(64, 48);

-- --------------------------------------------------------

--
-- 表的结构 `fz_ptype`
--

CREATE TABLE `fz_ptype` (
  `id` int(11) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `ptype_name` varchar(20) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_ptype`
--

INSERT INTO `fz_ptype` (`id`, `pid`, `ptype_name`, `order`) VALUES
(26, 0, '主板', 100),
(27, 0, '显卡', 100),
(28, 0, '笔记本', 100),
(29, 0, '显示器', 100),
(30, 0, '内存条', 100),
(31, 0, '网络设备', 100);

-- --------------------------------------------------------

--
-- 表的结构 `fz_role`
--

CREATE TABLE `fz_role` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) UNSIGNED DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_role`
--

INSERT INTO `fz_role` (`id`, `name`, `pid`, `status`, `remark`) VALUES
(19, 'admin', NULL, 1, '超级管理员'),
(20, 'HQ', NULL, 1, '总店管理员'),
(21, 'ST', NULL, 1, '分店管理员');

-- --------------------------------------------------------

--
-- 表的结构 `fz_role_user`
--

CREATE TABLE `fz_role_user` (
  `role_id` mediumint(9) UNSIGNED DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_role_user`
--

INSERT INTO `fz_role_user` (`role_id`, `user_id`) VALUES
(20, '18'),
(19, '19'),
(20, '20'),
(21, '21'),
(21, '24'),
(21, '22'),
(21, '25'),
(21, '26'),
(21, '27'),
(21, '28'),
(21, '29'),
(21, '30');

-- --------------------------------------------------------

--
-- 表的结构 `fz_shop`
--

CREATE TABLE `fz_shop` (
  `id` int(11) UNSIGNED NOT NULL,
  `shopname` varchar(255) NOT NULL,
  `peoplename` varchar(20) NOT NULL,
  `loginword` varchar(255) NOT NULL,
  `peoplephone` varchar(11) NOT NULL,
  `shopphone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL,
  `regIP` varchar(255) NOT NULL,
  `countshop` bigint(11) DEFAULT NULL,
  `countmoney` bigint(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `describe` text NOT NULL,
  `lock` tinyint(1) DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_shop`
--

INSERT INTO `fz_shop` (`id`, `shopname`, `peoplename`, `loginword`, `peoplephone`, `shopphone`, `address`, `regtime`, `regIP`, `countshop`, `countmoney`, `level`, `token`, `describe`, `lock`, `type`) VALUES
(18, 'flyzebra', 'flyzebra', '10e208ffd957f5488f795e555f483af8', '13520989725', '13520989725', '广西桂林资源县', 1462386990, '192.168.1.88', NULL, NULL, NULL, NULL, '总店管理号。', 1, 0),
(19, 'admin', 'admin', '10e208ffd957f5488f795e555f483af8', '13520989725', '13520989725', '1', 1462388077, '192.168.1.88', NULL, NULL, NULL, NULL, '1', 1, 0),
(20, 'hq', 'hq', '10e208ffd957f5488f795e555f483af8', '13520989725', '13520989725', 'hq', 1462388281, '192.168.1.88', NULL, NULL, NULL, NULL, 'hq', 1, 0),
(21, 'st', 'st', '10e208ffd957f5488f795e555f483af8', '13520989725', '13520989725', 'st', 1462388307, '192.168.1.88', NULL, NULL, NULL, NULL, 'st', 1, 0),
(26, '华翔宏基专卖店', '张三', '10e208ffd957f5488f795e555f483af8', '13912345678', '13912345678', '1391234567813912345678139123456781391234567813912', 1462814854, '192.168.1.88', NULL, NULL, NULL, NULL, '139123456781391234567813912345678139123456781391234', 1, 1),
(27, '卓越联想品牌店', '李四', '10e208ffd957f5488f795e555f483af8', '13912345678', '13912345678', '13912345678139123456781391234567813912345678139123', 1462814942, '192.168.1.88', NULL, NULL, NULL, NULL, '1391234567813912345678139123456781391234567813', 1, 1),
(28, '联想笔记本专卖店', '王五', '10e208ffd957f5488f795e555f483af8', '13812345678', '13812345678', '1381234567813812345678138123456781381234567813812345678', 1462817151, '192.168.1.88', NULL, NULL, NULL, NULL, '138123456781381234567813812345678138123456', 1, 1),
(29, '新艺华硕专卖店旗舰店', '赵六', '10e208ffd957f5488f795e555f483af8', '13512345678', '13512345678', '1351234567813512345678135123456781351234567813512345678', 1462871674, '192.168.1.88', NULL, NULL, NULL, NULL, '13512345678135123456781351234567813512345678135123456781351234567813512345678', 1, 1),
(30, '飞马Dell专卖店', '飞马', '10e208ffd957f5488f795e555f483af8', '13612345678', '13612345678', '13612345678136123456781361234567813612345678', 1462871887, '192.168.1.88', NULL, NULL, NULL, NULL, '13612345678136123456781361234567813612345678136123456781361234567813612345678', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fz_shop_home`
--

CREATE TABLE `fz_shop_home` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `show` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_shop_home`
--

INSERT INTO `fz_shop_home` (`shop_id`, `show`) VALUES
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fz_shop_imgurl`
--

CREATE TABLE `fz_shop_imgurl` (
  `shop_id` int(11) NOT NULL,
  `imgurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_shop_imgurl`
--

INSERT INTO `fz_shop_imgurl` (`shop_id`, `imgurl`) VALUES
(26, '/UpLoads/shop/images/2016-05-10/5730c886e6755.jpg'),
(27, '/UpLoads/shop/images/2016-05-10/5730c8dec92b0.jpg'),
(28, '/UpLoads/shop/images/2016-05-10/5730d17fd3fee.jpg'),
(29, '/UpLoads/shop/images/2016-05-10/5731a67a6e31e.jpg'),
(30, '/UpLoads/shop/images/2016-05-10/5731a74f58058.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `fz_shop_log`
--

CREATE TABLE `fz_shop_log` (
  `shop_id` int(11) NOT NULL,
  `loginIP` varchar(32) NOT NULL,
  `logintime` int(11) NOT NULL DEFAULT '0',
  `gps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_shop_log`
--

INSERT INTO `fz_shop_log` (`shop_id`, `loginIP`, `logintime`, `gps`) VALUES
(18, '192.168.1.88', 1462855612, NULL),
(18, '192.168.1.88', 1462870725, NULL),
(18, '192.168.1.88', 1462871038, NULL),
(18, '192.168.1.88', 1462871164, NULL),
(18, '192.168.1.88', 1462871165, NULL),
(26, '192.168.1.88', 1462899294, NULL),
(26, '192.168.1.88', 1462899305, NULL),
(18, '192.168.1.88', 1462899314, NULL),
(26, '192.168.1.88', 1462899355, NULL),
(26, '192.168.1.88', 1462900958, NULL),
(18, '192.168.1.88', 1462901013, NULL),
(26, '192.168.1.88', 1462902179, NULL),
(18, '192.168.1.88', 1462902416, NULL),
(26, '192.168.1.88', 1462902432, NULL),
(26, '192.168.1.88', 1463039178, NULL),
(26, '192.168.1.88', 1463062535, NULL),
(18, '192.168.1.88', 1463063644, NULL),
(18, '192.168.1.88', 1463120986, NULL),
(18, '192.168.1.88', 1463127837, NULL),
(26, '192.168.1.88', 1463146379, NULL),
(26, '192.168.1.88', 1463337194, NULL),
(18, '192.168.1.88', 1463337202, NULL),
(26, '192.168.1.88', 1463380320, NULL),
(18, '192.168.1.88', 1463926825, NULL),
(18, '192.168.1.88', 1466081243, NULL),
(18, '192.168.1.88', 1466228749, NULL),
(18, '192.168.1.88', 1466262514, NULL),
(18, '192.168.1.88', 1468335507, NULL),
(18, '192.168.1.88', 1494329341, NULL),
(18, '192.168.1.188', 1521349635, NULL),
(18, '192.168.1.188', 1521349655, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fz_user`
--

CREATE TABLE `fz_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `loginname` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) NOT NULL,
  `loginword` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `loginwith` varchar(10) DEFAULT NULL,
  `pictureurl` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `logincount` int(11) NOT NULL,
  `regtime` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `lock` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_user`
--

INSERT INTO `fz_user` (`id`, `loginname`, `nickname`, `loginword`, `telephone`, `openid`, `loginwith`, `pictureurl`, `address`, `level`, `logincount`, `regtime`, `token`, `lock`) VALUES
(112, 'flyzebra', 'flyzebra', '10e208ffd957f5488f795e555f483af8', NULL, NULL, NULL, NULL, NULL, 10, 56, 1462379129, NULL, 1),
(113, 'flyzebraa', 'flyzebraa', '10e208ffd957f5488f795e555f483af8', NULL, NULL, NULL, NULL, NULL, 1, 1, 1462384698, NULL, 1),
(114, NULL, 'FlyZebra', NULL, NULL, '7DDCD68540AA1B4D3C02FF65D8A0935F', 'QQ', 'http://q.qlogo.cn/qqapp/1105211644/7DDCD68540AA1B4D3C02FF65D8A0935F/100', NULL, 10, 57, 1462392826, NULL, 1),
(115, NULL, '尋找紅葉', NULL, NULL, '252027078', 'BAIDU', 'http://himg.bdimg.com/sys/portraitn/item/5a70e5b08be689bee7b485e89189214f.jpg', NULL, 12, 93, 1462392844, NULL, 1),
(116, 'ff', 'ff', '83be264eb452fcf0a1c322f2c7cbf987', NULL, NULL, NULL, NULL, NULL, 3, 6, 1462642658, NULL, 1),
(117, NULL, '宇翔科技', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '2035EB7D382C45688D1AB390F199F9D2', 'QQ', 'http://q.qlogo.cn/qqapp/1105211644/2035EB7D382C45688D1AB390F199F9D2/100', NULL, 9, 46, 1462644768, NULL, 1),
(118, 'tsy', 'tsy', 'b5d2099e49bdb07b8176dff5e23b3c14', NULL, NULL, NULL, NULL, NULL, 11, 73, 1463055990, NULL, 1),
(119, 'tyty', 'tyty', 'b5d2099e49bdb07b8176dff5e23b3c14', NULL, NULL, NULL, NULL, NULL, 8, 33, 1463227403, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fz_user_car`
--

CREATE TABLE `fz_user_car` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `addtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fz_user_copy`
--

CREATE TABLE `fz_user_copy` (
  `id` int(11) UNSIGNED NOT NULL,
  `loginname` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) NOT NULL,
  `loginword` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `loginwith` varchar(10) DEFAULT NULL,
  `pictureurl` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `logincount` int(11) NOT NULL,
  `regtime` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `lock` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_user_copy`
--

INSERT INTO `fz_user_copy` (`id`, `loginname`, `nickname`, `loginword`, `telephone`, `openid`, `loginwith`, `pictureurl`, `address`, `level`, `logincount`, `regtime`, `token`, `lock`) VALUES
(112, 'flyzebra', 'flyzebra', '10e208ffd957f5488f795e555f483af8', NULL, NULL, NULL, NULL, NULL, 10, 56, 1462379129, NULL, 1),
(113, 'flyzebraa', 'flyzebraa', '10e208ffd957f5488f795e555f483af8', NULL, NULL, NULL, NULL, NULL, 1, 1, 1462384698, NULL, 1),
(114, NULL, 'FlyZebra', NULL, NULL, '7DDCD68540AA1B4D3C02FF65D8A0935F', 'QQ', 'http://q.qlogo.cn/qqapp/1105211644/7DDCD68540AA1B4D3C02FF65D8A0935F/100', NULL, 10, 57, 1462392826, NULL, 1),
(115, NULL, '尋找紅葉', NULL, NULL, '252027078', 'BAIDU', 'http://himg.bdimg.com/sys/portraitn/item/5a70e5b08be689bee7b485e89189214f.jpg', NULL, 12, 93, 1462392844, NULL, 1),
(116, 'ff', 'ff', '83be264eb452fcf0a1c322f2c7cbf987', NULL, NULL, NULL, NULL, NULL, 3, 6, 1462642658, NULL, 1),
(117, NULL, '宇翔科技', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '2035EB7D382C45688D1AB390F199F9D2', 'QQ', 'http://q.qlogo.cn/qqapp/1105211644/2035EB7D382C45688D1AB390F199F9D2/100', NULL, 9, 46, 1462644768, NULL, 1),
(118, 'tsy', 'tsy', 'b5d2099e49bdb07b8176dff5e23b3c14', NULL, NULL, NULL, NULL, NULL, 11, 73, 1463055990, NULL, 1),
(119, 'tyty', 'tyty', 'b5d2099e49bdb07b8176dff5e23b3c14', NULL, NULL, NULL, NULL, NULL, 8, 33, 1463227403, NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `fz_user_log`
--

CREATE TABLE `fz_user_log` (
  `user_id` int(11) NOT NULL,
  `loginIP` varchar(32) NOT NULL,
  `logintime` int(11) NOT NULL,
  `gps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_user_log`
--

INSERT INTO `fz_user_log` (`user_id`, `loginIP`, `logintime`, `gps`) VALUES
(112, '192.168.1.88', 1462379129, NULL),
(112, '192.168.1.88', 1462381561, NULL),
(112, '192.168.1.88', 1462381873, NULL),
(112, '192.168.1.88', 1462382000, NULL),
(112, '192.168.1.88', 1462382067, NULL),
(112, '192.168.1.88', 1462382107, NULL),
(112, '192.168.1.88', 1462382116, NULL),
(112, '192.168.1.88', 1462382250, NULL),
(112, '192.168.1.88', 1462383068, NULL),
(112, '192.168.1.88', 1462383080, NULL),
(112, '192.168.1.88', 1462383203, NULL),
(112, '192.168.1.88', 1462383208, NULL),
(112, '192.168.1.88', 1462383275, NULL),
(112, '192.168.1.88', 1462383310, NULL),
(112, '192.168.1.88', 1462383404, NULL),
(112, '192.168.1.88', 1462384471, NULL),
(113, '192.168.1.88', 1462384698, NULL),
(112, '192.168.1.88', 1462436330, NULL),
(115, '192.168.1.105', 1462636116, NULL),
(115, '192.168.1.105', 1462636569, NULL),
(115, '192.168.1.105', 1462638400, NULL),
(115, '192.168.1.105', 1462638415, NULL),
(115, '192.168.1.105', 1462638437, NULL),
(115, '192.168.1.105', 1462638547, NULL),
(115, '192.168.1.105', 1462638591, NULL),
(115, '192.168.1.105', 1462638608, NULL),
(115, '192.168.1.105', 1462639984, NULL),
(115, '192.168.1.105', 1462642638, NULL),
(116, '192.168.1.105', 1462642658, NULL),
(116, '192.168.1.105', 1462643677, NULL),
(114, '192.168.1.105', 1462643687, NULL),
(114, '192.168.1.105', 1462643707, NULL),
(116, '192.168.1.105', 1462643722, NULL),
(116, '192.168.1.105', 1462643882, NULL),
(114, '192.168.1.105', 1462643923, NULL),
(114, '192.168.1.105', 1462643929, NULL),
(114, '192.168.1.105', 1462644574, NULL),
(114, '192.168.1.105', 1462644638, NULL),
(114, '192.168.1.105', 1462644647, NULL),
(114, '192.168.1.105', 1462644674, NULL),
(114, '192.168.1.105', 1462644710, NULL),
(115, '192.168.1.105', 1462644738, NULL),
(115, '192.168.1.105', 1462644749, NULL),
(115, '192.168.1.105', 1462644754, NULL),
(117, '192.168.1.105', 1462644768, NULL),
(116, '192.168.1.105', 1462644872, NULL),
(116, '192.168.1.105', 1462645351, NULL),
(117, '192.168.1.105', 1462645363, NULL),
(117, '192.168.1.105', 1462645375, NULL),
(117, '192.168.1.105', 1462645592, NULL),
(117, '192.168.1.105', 1462653702, NULL),
(117, '192.168.1.105', 1462683891, NULL),
(117, '192.168.1.105', 1462691821, NULL),
(117, '192.168.1.105', 1462701610, NULL),
(117, '192.168.1.105', 1462701881, NULL),
(117, '192.168.1.105', 1462702014, NULL),
(117, '192.168.1.105', 1462702854, NULL),
(117, '192.168.1.105', 1462703582, NULL),
(117, '192.168.1.105', 1462703609, NULL),
(117, '192.168.1.105', 1462703928, NULL),
(117, '192.168.1.105', 1462703965, NULL),
(117, '192.168.1.105', 1462704003, NULL),
(117, '192.168.1.105', 1462704062, NULL),
(117, '192.168.1.105', 1462705214, NULL),
(117, '192.168.1.105', 1462705455, NULL),
(117, '192.168.1.105', 1462716437, NULL),
(117, '192.168.1.105', 1462717249, NULL),
(117, '192.168.1.105', 1462718674, NULL),
(117, '192.168.1.105', 1462718720, NULL),
(117, '192.168.1.105', 1462718919, NULL),
(117, '192.168.1.105', 1462719153, NULL),
(117, '192.168.1.105', 1462719513, NULL),
(117, '192.168.1.105', 1462725445, NULL),
(117, '192.168.1.105', 1462783214, NULL),
(117, '192.168.1.105', 1462793501, NULL),
(117, '192.168.1.105', 1462794686, NULL),
(117, '192.168.1.105', 1462794711, NULL),
(117, '192.168.1.105', 1462795640, NULL),
(117, '192.168.1.105', 1462798778, NULL),
(117, '192.168.1.105', 1462812393, NULL),
(117, '192.168.1.105', 1462812596, NULL),
(117, '192.168.1.105', 1462812800, NULL),
(117, '192.168.1.105', 1462812918, NULL),
(117, '192.168.1.105', 1462813635, NULL),
(115, '192.168.1.105', 1462813694, NULL),
(115, '192.168.1.105', 1462859183, NULL),
(115, '192.168.1.105', 1462873631, NULL),
(115, '192.168.1.105', 1462874227, NULL),
(115, '192.168.1.105', 1462874791, NULL),
(115, '192.168.1.105', 1462875466, NULL),
(115, '192.168.1.105', 1462875511, NULL),
(115, '192.168.1.105', 1462875530, NULL),
(115, '192.168.1.105', 1462875666, NULL),
(115, '192.168.1.105', 1462875926, NULL),
(115, '192.168.1.105', 1462876170, NULL),
(115, '192.168.1.105', 1462876216, NULL),
(117, '192.168.1.105', 1463055885, NULL),
(117, '192.168.1.105', 1463055961, NULL),
(118, '192.168.1.105', 1463055990, NULL),
(118, '192.168.1.105', 1463057803, NULL),
(118, '192.168.1.105', 1463059265, NULL),
(118, '192.168.1.105', 1463059426, NULL),
(118, '192.168.1.105', 1463059824, NULL),
(118, '192.168.1.105', 1463059917, NULL),
(118, '192.168.1.105', 1463061938, NULL),
(118, '192.168.1.105', 1463062255, NULL),
(118, '192.168.1.105', 1463062366, NULL),
(118, '192.168.1.105', 1463062466, NULL),
(118, '192.168.1.105', 1463062693, NULL),
(118, '192.168.1.105', 1463062799, NULL),
(118, '192.168.1.105', 1463063003, NULL),
(118, '192.168.1.105', 1463063218, NULL),
(118, '192.168.1.105', 1463063319, NULL),
(118, '192.168.1.105', 1463063506, NULL),
(118, '192.168.1.105', 1463063789, NULL),
(118, '192.168.1.105', 1463063937, NULL),
(118, '192.168.1.105', 1463063991, NULL),
(118, '192.168.1.105', 1463064050, NULL),
(118, '192.168.1.105', 1463064474, NULL),
(118, '192.168.1.105', 1463065025, NULL),
(118, '192.168.1.105', 1463065466, NULL),
(118, '192.168.1.105', 1463065489, NULL),
(118, '192.168.1.105', 1463065948, NULL),
(118, '192.168.1.105', 1463065962, NULL),
(118, '192.168.1.105', 1463065977, NULL),
(118, '192.168.1.105', 1463066003, NULL),
(118, '192.168.1.105', 1463067759, NULL),
(118, '192.168.1.105', 1463069517, NULL),
(118, '192.168.1.105', 1463071182, NULL),
(118, '192.168.1.105', 1463073300, NULL),
(118, '192.168.1.105', 1463117814, NULL),
(118, '192.168.1.105', 1463118837, NULL),
(118, '192.168.1.105', 1463118877, NULL),
(118, '192.168.1.105', 1463119907, NULL),
(118, '192.168.1.105', 1463121048, NULL),
(118, '192.168.1.105', 1463121450, NULL),
(118, '192.168.1.105', 1463122154, NULL),
(118, '192.168.1.105', 1463124426, NULL),
(118, '192.168.1.105', 1463124497, NULL),
(118, '192.168.1.105', 1463124703, NULL),
(118, '192.168.1.105', 1463125825, NULL),
(118, '192.168.1.105', 1463127486, NULL),
(118, '192.168.1.105', 1463127552, NULL),
(118, '192.168.1.105', 1463127578, NULL),
(118, '192.168.1.105', 1463127744, NULL),
(118, '192.168.1.105', 1463127910, NULL),
(118, '192.168.1.105', 1463127992, NULL),
(118, '192.168.1.105', 1463128150, NULL),
(118, '192.168.1.105', 1463129210, NULL),
(118, '192.168.1.105', 1463129379, NULL),
(118, '192.168.1.105', 1463129478, NULL),
(118, '192.168.1.105', 1463129581, NULL),
(118, '192.168.1.105', 1463129761, NULL),
(118, '192.168.1.105', 1463130136, NULL),
(118, '192.168.1.105', 1463130164, NULL),
(118, '192.168.1.105', 1463130341, NULL),
(118, '192.168.1.105', 1463130600, NULL),
(118, '192.168.1.105', 1463130707, NULL),
(118, '192.168.1.105', 1463131024, NULL),
(118, '192.168.1.105', 1463131152, NULL),
(118, '192.168.1.105', 1463131217, NULL),
(118, '192.168.1.105', 1463131529, NULL),
(118, '192.168.1.105', 1463131780, NULL),
(118, '192.168.1.105', 1463131843, NULL),
(118, '192.168.1.105', 1463132001, NULL),
(118, '192.168.1.105', 1463132032, NULL),
(118, '192.168.1.105', 1463132103, NULL),
(118, '192.168.1.105', 1463132268, NULL),
(118, '192.168.1.105', 1463132370, NULL),
(118, '192.168.1.105', 1463132503, NULL),
(118, '192.168.1.105', 1463132633, NULL),
(117, '192.168.1.105', 1463158561, NULL),
(117, '192.168.1.105', 1463158580, NULL),
(117, '192.168.1.105', 1463158597, NULL),
(117, '192.168.1.105', 1463158930, NULL),
(117, '192.168.1.105', 1463158999, NULL),
(115, '192.168.1.105', 1463159089, NULL),
(115, '192.168.1.105', 1463159114, NULL),
(115, '192.168.1.105', 1463159375, NULL),
(115, '192.168.1.105', 1463159537, NULL),
(115, '192.168.1.105', 1463159709, NULL),
(115, '192.168.1.105', 1463159761, NULL),
(115, '192.168.1.105', 1463160048, NULL),
(115, '192.168.1.105', 1463160394, NULL),
(115, '192.168.1.105', 1463160654, NULL),
(115, '192.168.1.105', 1463160844, NULL),
(115, '192.168.1.105', 1463161449, NULL),
(115, '192.168.1.105', 1463161518, NULL),
(115, '192.168.1.105', 1463161584, NULL),
(115, '192.168.1.105', 1463161687, NULL),
(115, '192.168.1.105', 1463162601, NULL),
(115, '192.168.1.105', 1463168996, NULL),
(115, '192.168.1.105', 1463169033, NULL),
(115, '192.168.1.105', 1463197217, NULL),
(115, '192.168.1.105', 1463197277, NULL),
(115, '192.168.1.105', 1463197468, NULL),
(115, '192.168.1.105', 1463202042, NULL),
(115, '192.168.1.105', 1463202707, NULL),
(115, '192.168.1.105', 1463203925, NULL),
(115, '192.168.1.105', 1463206311, NULL),
(115, '192.168.1.105', 1463208996, NULL),
(115, '192.168.1.105', 1463218119, NULL),
(115, '192.168.1.105', 1463218128, NULL),
(115, '192.168.1.105', 1463218676, NULL),
(115, '192.168.1.105', 1463218797, NULL),
(115, '192.168.1.105', 1463218873, NULL),
(115, '192.168.1.105', 1463219009, NULL),
(115, '192.168.1.105', 1463219063, NULL),
(115, '192.168.1.105', 1463219653, NULL),
(115, '192.168.1.105', 1463220188, NULL),
(115, '192.168.1.105', 1463220338, NULL),
(115, '192.168.1.105', 1463220482, NULL),
(115, '192.168.1.105', 1463220571, NULL),
(115, '192.168.1.105', 1463223075, NULL),
(115, '192.168.1.105', 1463223375, NULL),
(115, '192.168.1.105', 1463223410, NULL),
(115, '192.168.1.105', 1463223439, NULL),
(115, '192.168.1.105', 1463223774, NULL),
(115, '192.168.1.105', 1463223997, NULL),
(115, '192.168.1.105', 1463224435, NULL),
(115, '192.168.1.105', 1463225079, NULL),
(115, '192.168.1.105', 1463226578, NULL),
(115, '192.168.1.105', 1463226824, NULL),
(115, '192.168.1.105', 1463226832, NULL),
(115, '192.168.1.105', 1463226853, NULL),
(115, '192.168.1.105', 1463227153, NULL),
(115, '192.168.1.105', 1463227171, NULL),
(117, '192.168.1.105', 1463227184, NULL),
(112, '192.168.1.105', 1463227238, NULL),
(112, '192.168.1.105', 1463227263, NULL),
(112, '192.168.1.105', 1463227305, NULL),
(112, '192.168.1.105', 1463227328, NULL),
(112, '192.168.1.105', 1463227360, NULL),
(112, '192.168.1.105', 1463227380, NULL),
(119, '192.168.1.105', 1463227403, NULL),
(119, '192.168.1.105', 1463227422, NULL),
(119, '192.168.1.105', 1463228161, NULL),
(119, '192.168.1.105', 1463228196, NULL),
(119, '192.168.1.105', 1463228228, NULL),
(119, '192.168.1.105', 1463228299, NULL),
(119, '192.168.1.105', 1463228330, NULL),
(119, '192.168.1.105', 1463228631, NULL),
(119, '192.168.1.105', 1463229157, NULL),
(119, '192.168.1.105', 1463230653, NULL),
(119, '192.168.1.105', 1463230964, NULL),
(119, '192.168.1.105', 1463230984, NULL),
(119, '192.168.1.105', 1463231412, NULL),
(119, '192.168.1.105', 1463231542, NULL),
(119, '192.168.1.105', 1463231781, NULL),
(119, '192.168.1.105', 1463232382, NULL),
(119, '192.168.1.105', 1463232521, NULL),
(119, '192.168.1.105', 1463232801, NULL),
(119, '192.168.1.105', 1463232885, NULL),
(119, '192.168.1.105', 1463232954, NULL),
(119, '192.168.1.105', 1463233126, NULL),
(119, '192.168.1.105', 1463233157, NULL),
(119, '192.168.1.105', 1463233255, NULL),
(119, '192.168.1.105', 1463233809, NULL),
(119, '192.168.1.105', 1463234504, NULL),
(119, '192.168.1.105', 1463234516, NULL),
(119, '192.168.1.105', 1463234570, NULL),
(119, '192.168.1.105', 1463235243, NULL),
(119, '192.168.1.105', 1463235995, NULL),
(119, '192.168.1.105', 1463236097, NULL),
(119, '192.168.1.105', 1463236165, NULL),
(119, '192.168.1.105', 1463236276, NULL),
(119, '192.168.1.105', 1463236533, NULL),
(114, '192.168.1.105', 1463236614, NULL),
(114, '192.168.1.105', 1463236937, NULL),
(114, '192.168.1.105', 1463242771, NULL),
(112, '192.168.1.88', 1463245811, NULL),
(114, '192.168.1.105', 1463245900, NULL),
(112, '192.168.1.88', 1463246030, NULL),
(112, '192.168.1.88', 1463246186, NULL),
(112, '192.168.1.88', 1463246213, NULL),
(112, '192.168.1.88', 1463246339, NULL),
(114, '192.168.1.105', 1463246351, NULL),
(114, '192.168.1.105', 1463246359, NULL),
(112, '192.168.1.88', 1463246381, NULL),
(112, '192.168.1.88', 1463246395, NULL),
(112, '192.168.1.88', 1463246449, NULL),
(112, '192.168.1.88', 1463246682, NULL),
(112, '192.168.1.88', 1463246775, NULL),
(112, '192.168.1.88', 1463246839, NULL),
(112, '192.168.1.88', 1463246965, NULL),
(112, '192.168.1.88', 1463246981, NULL),
(112, '192.168.1.88', 1463247004, NULL),
(112, '192.168.1.88', 1463247023, NULL),
(112, '192.168.1.88', 1463247046, NULL),
(112, '192.168.1.88', 1463247133, NULL),
(112, '192.168.1.88', 1463247214, NULL),
(114, '192.168.1.105', 1463247361, NULL),
(114, '192.168.1.105', 1463247371, NULL),
(114, '192.168.1.105', 1463250533, NULL),
(114, '192.168.1.105', 1463250723, NULL),
(114, '192.168.1.105', 1463250951, NULL),
(114, '192.168.1.105', 1463251027, NULL),
(114, '192.168.1.105', 1463251086, NULL),
(114, '192.168.1.105', 1463251144, NULL),
(114, '192.168.1.105', 1463277686, NULL),
(114, '192.168.1.105', 1463277753, NULL),
(112, '192.168.1.88', 1463279765, NULL),
(112, '192.168.1.88', 1463279912, NULL),
(114, '192.168.1.105', 1463279982, NULL),
(114, '192.168.1.105', 1463280067, NULL),
(114, '192.168.1.105', 1463280098, NULL),
(114, '192.168.1.105', 1463280492, NULL),
(114, '192.168.1.105', 1463280626, NULL),
(112, '192.168.1.88', 1463280704, NULL),
(112, '192.168.1.88', 1463281017, NULL),
(112, '192.168.1.88', 1463281074, NULL),
(112, '192.168.1.88', 1463281153, NULL),
(114, '192.168.1.105', 1463281243, NULL),
(112, '192.168.1.88', 1463281299, NULL),
(114, '192.168.1.105', 1463281311, NULL),
(112, '192.168.1.88', 1463281351, NULL),
(114, '192.168.1.105', 1463281526, NULL),
(114, '192.168.1.105', 1463281596, NULL),
(112, '192.168.1.88', 1463282162, NULL),
(112, '192.168.1.88', 1463282260, NULL),
(112, '192.168.1.88', 1463282512, NULL),
(112, '192.168.1.88', 1463282618, NULL),
(112, '192.168.1.88', 1463282697, NULL),
(112, '192.168.1.88', 1463282785, NULL),
(114, '192.168.1.105', 1463282844, NULL),
(114, '192.168.1.105', 1463284093, NULL),
(114, '192.168.1.105', 1463284251, NULL),
(114, '192.168.1.105', 1463284355, NULL),
(114, '192.168.1.105', 1463286034, NULL),
(114, '192.168.1.105', 1463286194, NULL),
(114, '192.168.1.105', 1463287077, NULL),
(114, '192.168.1.105', 1463287266, NULL),
(114, '192.168.1.105', 1463288123, NULL),
(114, '192.168.1.105', 1463288452, NULL),
(114, '192.168.1.105', 1463291157, NULL),
(114, '192.168.1.105', 1463292627, NULL),
(114, '192.168.1.105', 1463292656, NULL),
(114, '192.168.1.105', 1463301487, NULL),
(114, '192.168.1.105', 1463308124, NULL),
(114, '192.168.1.105', 1463312644, NULL),
(114, '192.168.1.105', 1463319647, NULL),
(114, '192.168.1.105', 1463322407, NULL),
(115, '192.168.1.105', 1463477354, NULL),
(115, '192.168.1.105', 1463477464, NULL),
(115, '192.168.1.105', 1463477528, NULL),
(115, '192.168.1.105', 1463477602, NULL),
(115, '192.168.1.105', 1463477617, NULL),
(115, '192.168.1.105', 1463477800, NULL),
(115, '192.168.1.105', 1463477872, NULL),
(115, '192.168.1.105', 1463477934, NULL),
(115, '192.168.1.105', 1463477951, NULL),
(115, '192.168.1.105', 1463478186, NULL),
(115, '192.168.1.105', 1463479911, NULL),
(115, '192.168.1.105', 1463481011, NULL),
(112, '192.168.1.88', 1468028383, NULL),
(112, '192.168.1.88', 1468028415, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fz_welcome`
--

CREATE TABLE `fz_welcome` (
  `id` int(10) UNSIGNED NOT NULL,
  `imageurl` varchar(255) NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fz_welcome`
--

INSERT INTO `fz_welcome` (`id`, `imageurl`, `show`) VALUES
(35, '/UpLoads/welcome/images/2016-05-10/5730befdbf790.jpg', 1),
(36, '/UpLoads/welcome/images/2016-05-10/5730bf15ca8cf.jpg', 1),
(37, '/UpLoads/welcome/images/2016-05-10/5730bf3d625df.jpg', 1),
(38, '/UpLoads/welcome/images/2016-05-10/5730bf4ba287f.jpg', 1),
(40, '/UpLoads/welcome/images/2016-05-10/5730bf8944e8b.jpg', 1),
(41, '/UpLoads/welcome/images/2016-05-10/573169d431643.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fz_access`
--
ALTER TABLE `fz_access`
  ADD KEY `groupId` (`role_id`),
  ADD KEY `nodeId` (`node_id`);

--
-- Indexes for table `fz_cart`
--
ALTER TABLE `fz_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fz_node`
--
ALTER TABLE `fz_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`),
  ADD KEY `pid` (`pid`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `fz_pattr`
--
ALTER TABLE `fz_pattr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fz_product`
--
ALTER TABLE `fz_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fz_ptype`
--
ALTER TABLE `fz_ptype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `fz_role`
--
ALTER TABLE `fz_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `fz_role_user`
--
ALTER TABLE `fz_role_user`
  ADD KEY `group_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `fz_shop`
--
ALTER TABLE `fz_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fz_shop_home`
--
ALTER TABLE `fz_shop_home`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `fz_user`
--
ALTER TABLE `fz_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fz_user_copy`
--
ALTER TABLE `fz_user_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fz_welcome`
--
ALTER TABLE `fz_welcome`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `fz_cart`
--
ALTER TABLE `fz_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `fz_node`
--
ALTER TABLE `fz_node`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- 使用表AUTO_INCREMENT `fz_pattr`
--
ALTER TABLE `fz_pattr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- 使用表AUTO_INCREMENT `fz_product`
--
ALTER TABLE `fz_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- 使用表AUTO_INCREMENT `fz_ptype`
--
ALTER TABLE `fz_ptype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- 使用表AUTO_INCREMENT `fz_role`
--
ALTER TABLE `fz_role`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- 使用表AUTO_INCREMENT `fz_shop`
--
ALTER TABLE `fz_shop`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `fz_user`
--
ALTER TABLE `fz_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- 使用表AUTO_INCREMENT `fz_user_copy`
--
ALTER TABLE `fz_user_copy`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- 使用表AUTO_INCREMENT `fz_welcome`
--
ALTER TABLE `fz_welcome`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

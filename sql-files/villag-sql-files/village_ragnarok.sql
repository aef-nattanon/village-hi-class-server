-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 06:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `village_ragnarok`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_reg_num`
--

CREATE TABLE `acc_reg_num` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_reg_str`
--

CREATE TABLE `acc_reg_str` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `achievement`
--

CREATE TABLE `achievement` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id` bigint(11) UNSIGNED NOT NULL,
  `count1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `rewarded` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atcommandlog`
--

CREATE TABLE `atcommandlog` (
  `atcommand_id` mediumint(9) UNSIGNED NOT NULL,
  `atcommand_date` datetime NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `auction_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `buynow` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hours` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barter`
--

CREATE TABLE `barter` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `index` smallint(5) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bonus_script`
--

CREATE TABLE `bonus_script` (
  `char_id` int(11) UNSIGNED NOT NULL,
  `script` text NOT NULL,
  `tick` bigint(20) NOT NULL DEFAULT 0,
  `flag` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `icon` smallint(3) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branchlog`
--

CREATE TABLE `branchlog` (
  `branch_id` mediumint(9) UNSIGNED NOT NULL,
  `branch_date` datetime NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyingstores`
--

CREATE TABLE `buyingstores` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(10) UNSIGNED NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `limit` int(10) UNSIGNED NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyingstore_items`
--

CREATE TABLE `buyingstore_items` (
  `buyingstore_id` int(10) UNSIGNED NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_inventory`
--

CREATE TABLE `cart_inventory` (
  `id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashlog`
--

CREATE TABLE `cashlog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','$') NOT NULL DEFAULT 'S',
  `cash_type` enum('O','K','C') NOT NULL DEFAULT 'O',
  `amount` int(11) NOT NULL DEFAULT 0,
  `map` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `char`
--

CREATE TABLE `char` (
  `char_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_num` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `base_level` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `job_level` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `base_exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `job_exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `str` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `agi` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `vit` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `int` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `dex` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `luk` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `pow` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sta` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `wis` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `spl` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `con` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `crt` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_ap` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ap` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status_point` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_point` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `trait_point` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `option` int(11) NOT NULL DEFAULT 0,
  `karma` tinyint(3) NOT NULL DEFAULT 0,
  `manner` smallint(6) NOT NULL DEFAULT 0,
  `party_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pet_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `homun_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `elemental_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `hair_color` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clothes_color` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `body` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `weapon` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `shield` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `head_top` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `head_mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `head_bottom` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `robe` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `last_map` varchar(11) NOT NULL DEFAULT '',
  `last_x` smallint(4) UNSIGNED NOT NULL DEFAULT 53,
  `last_y` smallint(4) UNSIGNED NOT NULL DEFAULT 111,
  `last_instanceid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `save_map` varchar(11) NOT NULL DEFAULT '',
  `save_x` smallint(4) UNSIGNED NOT NULL DEFAULT 53,
  `save_y` smallint(4) UNSIGNED NOT NULL DEFAULT 111,
  `partner_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `online` tinyint(2) NOT NULL DEFAULT 0,
  `father` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mother` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `child` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `fame` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rename` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delete_date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `moves` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `font` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `uniqueitem_counter` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sex` enum('M','F') NOT NULL,
  `hotkey_rowshift` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `hotkey_rowshift2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `clan_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `title_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `show_equip` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `inventory_slots` smallint(6) NOT NULL DEFAULT 100,
  `body_direction` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `disable_call` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `charlog`
--

CREATE TABLE `charlog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` datetime NOT NULL,
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT 0,
  `char_num` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(23) NOT NULL DEFAULT '',
  `str` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `agi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `int` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `dex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `luk` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint(4) NOT NULL DEFAULT 0,
  `hair_color` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `char_configs`
--

CREATE TABLE `char_configs` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `char_reg_num`
--

CREATE TABLE `char_reg_num` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `char_reg_str`
--

CREATE TABLE `char_reg_str` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `char_reg_str`
--

INSERT INTO `char_reg_str` (`char_id`, `key`, `index`, `value`) VALUES
(150003, 'lastwarp$', 0, 'prontera');

-- --------------------------------------------------------

--
-- Table structure for table `chatlog`
--

CREATE TABLE `chatlog` (
  `id` bigint(20) NOT NULL,
  `time` datetime NOT NULL,
  `type` enum('O','W','P','G','M','C') NOT NULL DEFAULT 'O',
  `type_id` int(11) NOT NULL DEFAULT 0,
  `src_charid` int(11) NOT NULL DEFAULT 0,
  `src_accountid` int(11) NOT NULL DEFAULT 0,
  `src_map` varchar(11) NOT NULL DEFAULT '',
  `src_map_x` smallint(4) NOT NULL DEFAULT 0,
  `src_map_y` smallint(4) NOT NULL DEFAULT 0,
  `dst_charname` varchar(25) NOT NULL DEFAULT '',
  `message` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clan`
--

CREATE TABLE `clan` (
  `clan_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT '',
  `master` varchar(24) NOT NULL DEFAULT '',
  `mapname` varchar(24) NOT NULL DEFAULT '',
  `max_member` smallint(6) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `clan`
--

INSERT INTO `clan` (`clan_id`, `name`, `master`, `mapname`, `max_member`) VALUES
(1, 'Swordman Clan', 'Raffam Oranpere', 'prontera', 500),
(2, 'Arcwand Clan', 'Devon Aire', 'geffen', 500),
(3, 'Golden Mace Clan', 'Berman Aire', 'prontera', 500),
(4, 'Crossbow Clan', 'Shaam Rumi', 'payon', 500);

-- --------------------------------------------------------

--
-- Table structure for table `clan_alliance`
--

CREATE TABLE `clan_alliance` (
  `clan_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `opposition` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `alliance_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `clan_alliance`
--

INSERT INTO `clan_alliance` (`clan_id`, `opposition`, `alliance_id`, `name`) VALUES
(1, 0, 3, 'Golden Mace Clan'),
(2, 0, 3, 'Golden Mace Clan'),
(2, 1, 4, 'Crossbow Clan'),
(3, 0, 1, 'Swordman Clan'),
(3, 0, 2, 'Arcwand Clan'),
(3, 0, 4, 'Crossbow Clan'),
(4, 0, 3, 'Golden Mace Clan'),
(4, 1, 2, 'Arcwand Clan');

-- --------------------------------------------------------

--
-- Table structure for table `db_roulette`
--

CREATE TABLE `db_roulette` (
  `index` int(11) NOT NULL DEFAULT 0,
  `level` smallint(5) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `flag` smallint(5) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `db_roulette`
--

INSERT INTO `db_roulette` (`index`, `level`, `item_id`, `amount`, `flag`) VALUES
(0, 1, 675, 1, 1),
(1, 1, 671, 1, 0),
(2, 1, 678, 1, 0),
(3, 1, 604, 1, 0),
(4, 1, 522, 1, 0),
(5, 1, 12609, 1, 0),
(6, 1, 12523, 1, 0),
(7, 1, 985, 1, 0),
(8, 1, 984, 1, 0),
(9, 2, 675, 1, 1),
(10, 2, 671, 1, 0),
(11, 2, 603, 1, 0),
(12, 2, 608, 1, 0),
(13, 2, 607, 1, 0),
(14, 2, 12522, 1, 0),
(15, 2, 6223, 1, 0),
(16, 2, 6224, 1, 0),
(17, 3, 675, 1, 1),
(18, 3, 671, 1, 0),
(19, 3, 12108, 1, 0),
(20, 3, 617, 1, 0),
(21, 3, 12514, 1, 0),
(22, 3, 7444, 1, 0),
(23, 3, 969, 1, 0),
(24, 4, 675, 1, 1),
(25, 4, 671, 1, 0),
(26, 4, 616, 1, 0),
(27, 4, 12516, 1, 0),
(28, 4, 22777, 1, 0),
(29, 4, 6231, 1, 0),
(30, 5, 671, 1, 1),
(31, 5, 12246, 1, 0),
(32, 5, 12263, 1, 0),
(33, 5, 12831, 1, 0),
(34, 5, 6235, 1, 0),
(35, 6, 671, 1, 1),
(36, 6, 12766, 1, 0),
(37, 6, 6234, 1, 0),
(38, 6, 6233, 1, 0),
(39, 7, 671, 1, 1),
(40, 7, 6233, 1, 0),
(41, 7, 6233, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elemental`
--

CREATE TABLE `elemental` (
  `ele_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `mode` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `atk1` mediumint(6) UNSIGNED NOT NULL DEFAULT 0,
  `atk2` mediumint(6) UNSIGNED NOT NULL DEFAULT 0,
  `matk` mediumint(6) UNSIGNED NOT NULL DEFAULT 0,
  `aspd` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `def` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `mdef` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `flee` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `hit` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `life_time` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedinglog`
--

CREATE TABLE `feedinglog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_class` smallint(11) NOT NULL,
  `type` enum('P','H','O') NOT NULL,
  `intimacy` int(11) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `map` varchar(11) NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `char_id` int(11) NOT NULL DEFAULT 0,
  `friend_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_acc_reg_num`
--

CREATE TABLE `global_acc_reg_num` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_acc_reg_str`
--

CREATE TABLE `global_acc_reg_str` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild`
--

CREATE TABLE `guild` (
  `guild_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `connect_member` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `max_member` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `average_lv` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `next_exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_point` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `emblem_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `emblem_data` blob DEFAULT NULL,
  `last_master_change` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_alliance`
--

CREATE TABLE `guild_alliance` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `opposition` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `alliance_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_castle`
--

CREATE TABLE `guild_castle` (
  `castle_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `economy` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `defense` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `triggerE` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `triggerD` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nextTime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `payTime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `createTime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleC` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG6` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG7` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_emblems`
--

CREATE TABLE `guild_emblems` (
  `world_name` varchar(32) NOT NULL,
  `guild_id` int(11) UNSIGNED NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_data` blob DEFAULT NULL,
  `version` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_expulsion`
--

CREATE TABLE `guild_expulsion` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_member`
--

CREATE TABLE `guild_member` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_position`
--

CREATE TABLE `guild_position` (
  `guild_id` int(9) UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_mode` tinyint(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_skill`
--

CREATE TABLE `guild_skill` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv` tinyint(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_storage`
--

CREATE TABLE `guild_storage` (
  `id` int(10) UNSIGNED NOT NULL,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_storage_log`
--

CREATE TABLE `guild_storage_log` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 1,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homunculus`
--

CREATE TABLE `homunculus` (
  `homun_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `prev_class` mediumint(9) NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT 0,
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `intimacy` int(12) NOT NULL DEFAULT 0,
  `hunger` smallint(4) NOT NULL DEFAULT 0,
  `str` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `agi` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `vit` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `int` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `dex` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `luk` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) NOT NULL DEFAULT 0,
  `max_sp` int(11) NOT NULL DEFAULT 0,
  `skill_point` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alive` tinyint(2) NOT NULL DEFAULT 1,
  `rename_flag` tinyint(2) NOT NULL DEFAULT 0,
  `vaporize` tinyint(2) NOT NULL DEFAULT 0,
  `autofeed` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotkey`
--

CREATE TABLE `hotkey` (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `itemskill_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_lvl` tinyint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interlog`
--

CREATE TABLE `interlog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `favorite` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `equip_switch` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ipbanlist`
--

CREATE TABLE `ipbanlist` (
  `list` varchar(15) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL,
  `rtime` datetime NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT 0,
  `state` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expiration_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `logincount` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `lastlogin` datetime DEFAULT NULL,
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `character_slots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vip_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `old_group` tinyint(3) NOT NULL DEFAULT 0,
  `web_auth_token` varchar(17) DEFAULT NULL,
  `web_auth_token_enabled` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`, `state`, `unban_time`, `expiration_time`, `logincount`, `lastlogin`, `last_ip`, `birthdate`, `character_slots`, `pincode`, `pincode_change`, `vip_time`, `old_group`, `web_auth_token`, `web_auth_token_enabled`) VALUES
(1, 'villageid', 'villagepass', 'S', 'athena@athena.com', 0, 0, 0, 0, 34, '2024-07-07 11:29:26', '127.0.0.1', NULL, 0, '', 0, 0, 0, NULL, 0),
(2000000, '111111', '111111', 'M', '', 99, 0, 0, 0, 6, '2024-07-06 17:46:14', '127.0.0.1', NULL, 0, '', 0, 0, 0, NULL, 0),
(2000001, '222222', '222222', 'M', '', 99, 0, 0, 0, 65, '2024-07-06 18:53:09', '127.0.0.1', NULL, 0, '', 0, 0, 0, NULL, 0),
(2000002, '333333', '333333', 'M', '', 0, 0, 0, 0, 5, '2024-07-06 18:04:42', '127.0.0.1', NULL, 0, '', 0, 0, 0, NULL, 0),
(2000003, '444444', '444444', 'M', '', 0, 0, 0, 0, 0, NULL, '', NULL, 0, '', 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loginlog`
--

CREATE TABLE `loginlog` (
  `time` datetime NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user` varchar(23) NOT NULL DEFAULT '',
  `rcode` tinyint(4) NOT NULL DEFAULT 0,
  `log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `loginlog`
--

INSERT INTO `loginlog` (`time`, `ip`, `user`, `rcode`, `log`) VALUES
('2024-06-30 13:39:59', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 13:40:00', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 13:54:48', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 13:54:49', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 13:54:59', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 13:55:09', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 13:55:42', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 13:55:43', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 13:55:53', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 13:58:34', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 13:58:35', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 13:59:42', '127.0.0.1', '111111', 100, 'login ok'),
('2024-06-30 14:02:23', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 14:02:24', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 14:03:14', '127.0.0.1', '111111', 100, 'login ok'),
('2024-06-30 14:11:33', '127.0.0.1', '111111', 100, 'login ok'),
('2024-06-30 14:16:54', '127.0.0.1', '222222', 100, 'login ok'),
('2024-06-30 15:24:19', '127.0.0.1', '222222', 100, 'login ok'),
('2024-06-30 15:27:21', '127.0.0.1', '222222', 100, 'login ok'),
('2024-06-30 15:37:23', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 15:37:24', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 15:38:19', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 15:38:20', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 15:38:32', '127.0.0.1', '222222', 100, 'login ok'),
('2024-06-30 16:03:07', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 16:03:08', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 16:03:20', '127.0.0.1', '222222', 100, 'login ok'),
('2024-06-30 16:06:53', '127.0.0.1', '222222', 100, 'login ok'),
('2024-06-30 18:54:15', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-06-30 18:54:16', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-06-30 18:54:43', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 10:59:45', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-01 10:59:46', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-01 11:01:03', '127.0.0.1', '111111', 100, 'login ok'),
('2024-07-01 11:01:35', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 11:55:25', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 12:00:44', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-01 12:00:45', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-01 12:03:33', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 16:46:15', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 17:15:11', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-01 17:15:12', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-01 17:15:37', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 17:15:46', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 17:16:14', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 17:16:58', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 17:19:46', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 19:36:49', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 19:38:33', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 19:40:36', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-01 19:43:40', '127.0.0.1', '222222', 1, 'Incorrect Password.'),
('2024-07-01 19:43:42', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-02 11:40:20', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-02 11:40:21', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-02 11:56:18', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-02 11:56:19', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-02 11:57:00', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-02 12:33:55', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-02 12:44:47', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-02 12:56:13', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-02 15:54:47', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-02 15:54:49', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-02 15:59:26', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-02 18:00:28', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-03 11:32:33', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-03 11:32:34', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-03 11:32:48', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-03 11:58:22', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-03 11:58:23', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-03 12:27:12', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-03 12:28:45', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-03 12:36:27', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-03 12:38:10', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-03 14:45:55', '127.0.0.1', '333333', 0, 'Unregistered ID.'),
('2024-07-03 14:47:22', '127.0.0.1', '333333', 100, 'login ok'),
('2024-07-03 16:09:25', '127.0.0.1', '333333', 100, 'login ok'),
('2024-07-03 19:56:01', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-03 19:56:02', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-03 19:56:18', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-04 15:30:30', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-04 15:30:31', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-04 15:30:45', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-04 15:34:12', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-04 15:35:27', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-04 15:36:36', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 10:49:19', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-05 10:49:20', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-05 10:49:55', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 16:49:18', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-05 16:49:19', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-05 16:49:39', '127.0.0.1', '111111', 100, 'login ok'),
('2024-07-05 16:49:56', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 18:56:51', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-05 18:56:52', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-05 18:57:10', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 19:00:05', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 19:01:13', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 19:28:33', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-05 19:28:34', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-05 19:28:56', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 19:35:38', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-05 19:38:29', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 10:55:35', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 10:55:36', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 10:55:52', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 11:38:29', '127.0.0.1', '333333', 100, 'login ok'),
('2024-07-06 13:53:27', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 13:53:28', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 13:53:44', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 14:15:18', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 14:15:19', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 14:15:33', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 16:02:24', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 16:02:25', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 16:02:38', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 16:03:03', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 16:03:05', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 16:03:13', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 16:04:01', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 16:04:03', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 16:04:17', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 16:05:28', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 16:05:29', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 16:05:41', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 16:06:38', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 16:06:39', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 16:06:48', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 16:14:29', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 16:14:30', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 16:15:43', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 16:15:44', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 16:15:55', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 17:36:27', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 17:36:29', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 17:37:18', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 17:46:14', '127.0.0.1', '111111', 100, 'login ok'),
('2024-07-06 17:53:19', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-06 17:53:20', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-06 17:53:35', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 17:58:36', '127.0.0.1', '333333', 100, 'login ok'),
('2024-07-06 17:59:41', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:00:06', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:00:47', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:01:40', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:04:42', '127.0.0.1', '333333', 100, 'login ok'),
('2024-07-06 18:13:08', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:13:55', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:42:48', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:52:03', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-06 18:53:09', '127.0.0.1', '222222', 100, 'login ok'),
('2024-07-07 11:20:57', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-07 11:20:58', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121'),
('2024-07-07 11:29:25', '0.0.0.0', 'login server', 100, 'login server started'),
('2024-07-07 11:29:26', '127.0.0.1', 'villageid', 100, 'charserver - Village Hi-Class@127.0.0.1:6121');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(500) NOT NULL DEFAULT '',
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` smallint(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_attachments`
--

CREATE TABLE `mail_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapreg`
--

CREATE TABLE `mapreg` (
  `varname` varchar(32) CHARACTER SET tis620 COLLATE tis620_bin NOT NULL,
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Dumping data for table `mapreg`
--

INSERT INTO `mapreg` (`varname`, `index`, `value`) VALUES
('$ttnames$', 8, 'RS125'),
('$ttnames$', 7, 'Breezy Havana'),
('$ttnames$', 6, 'Chris'),
('$ttnames$', 5, 'Kafra Jasmine'),
('$ttnames$', 4, 'Aragham'),
('$ttnames$', 3, 'Antonio'),
('$ttnames$', 2, 'Hollgrehenn'),
('$ttnames$', 1, 'RS125'),
('$ttnames$', 0, 'Breezy Havana'),
('$timezonestring$', 0, '^FF0000GMT^000000'),
('$arn_acotopn$', 0, 'Default'),
('$arn_pritopn90$', 0, 'Default'),
('$arn_pritopn80$', 0, 'Default'),
('$arn_pritopn70$', 0, 'Default'),
('$arn_pritopn60$', 0, 'Default'),
('$arn_acotop', 0, '480'),
('$arn_pritop90', 0, '480'),
('$arn_pritop80', 0, '480'),
('$arn_pritop70', 0, '480'),
('$arn_pritop60', 0, '480'),
('$ttnames$', 9, 'Breezy Havana'),
('$ttnames$', 10, 'Nari'),
('$ttnames$', 11, 'Senorita Sylvia'),
('$ttnames$', 12, 'Joo Jahk'),
('$ttnames$', 13, 'RS125'),
('$ttranks', 0, '999999'),
('$top_60min', 0, '6'),
('$top_80min', 0, '8'),
('$top_50min', 0, '5'),
('$top_ptmin', 0, '10'),
('$top_70min', 0, '7');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `nameid` int(10) UNSIGNED NOT NULL,
  `price` int(11) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `flag` tinyint(2) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memo`
--

CREATE TABLE `memo` (
  `memo_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `map` varchar(11) NOT NULL DEFAULT '',
  `x` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `y` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mercenary`
--

CREATE TABLE `mercenary` (
  `mer_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `kill_counter` int(11) NOT NULL,
  `life_time` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mercenary_owner`
--

CREATE TABLE `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT 0,
  `arch_calls` int(11) NOT NULL DEFAULT 0,
  `arch_faith` int(11) NOT NULL DEFAULT 0,
  `spear_calls` int(11) NOT NULL DEFAULT 0,
  `spear_faith` int(11) NOT NULL DEFAULT 0,
  `sword_calls` int(11) NOT NULL DEFAULT 0,
  `sword_faith` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_configs`
--

CREATE TABLE `merchant_configs` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `store_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mvplog`
--

CREATE TABLE `mvplog` (
  `mvp_id` mediumint(9) UNSIGNED NOT NULL,
  `mvp_date` datetime NOT NULL,
  `kill_char_id` int(11) NOT NULL DEFAULT 0,
  `monster_id` smallint(6) NOT NULL DEFAULT 0,
  `prize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mvpexp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `map` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npclog`
--

CREATE TABLE `npclog` (
  `npc_id` mediumint(9) UNSIGNED NOT NULL,
  `npc_date` datetime NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `mes` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `party_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT '',
  `exp` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `item` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `leader_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `leader_char` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_bookings`
--

CREATE TABLE `party_bookings` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `char_name` varchar(23) NOT NULL,
  `purpose` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `assist` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `damagedealer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `healer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `tanker` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `minimum_level` smallint(5) UNSIGNED NOT NULL,
  `maximum_level` smallint(5) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `pet_id` int(11) UNSIGNED NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `level` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `egg_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `intimate` smallint(9) UNSIGNED NOT NULL DEFAULT 0,
  `hungry` smallint(9) UNSIGNED NOT NULL DEFAULT 0,
  `rename_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `incubate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `autofeed` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `picklog`
--

CREATE TABLE `picklog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','$','F','Y','Z','Q','H','J','W','0','1','2','3') NOT NULL DEFAULT 'P',
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 1,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `map` varchar(11) NOT NULL DEFAULT '',
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `quest_id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1','2') NOT NULL DEFAULT '0',
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `count2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `count3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `nameid` int(10) UNSIGNED NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sc_data`
--

CREATE TABLE `sc_data` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `type` smallint(11) UNSIGNED NOT NULL,
  `tick` bigint(20) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT 0,
  `val2` int(11) NOT NULL DEFAULT 0,
  `val3` int(11) NOT NULL DEFAULT 0,
  `val4` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skillcooldown`
--

CREATE TABLE `skillcooldown` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `skill` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `tick` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skill_homunculus`
--

CREATE TABLE `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_configs`
--

CREATE TABLE `user_configs` (
  `world_name` varchar(32) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendings`
--

CREATE TABLE `vendings` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(10) UNSIGNED NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vending_items`
--

CREATE TABLE `vending_items` (
  `vending_id` int(10) UNSIGNED NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL,
  `cartinventory_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zenylog`
--

CREATE TABLE `zenylog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `src_id` int(11) NOT NULL DEFAULT 0,
  `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','K','J','X','0','2') NOT NULL DEFAULT 'S',
  `amount` int(11) NOT NULL DEFAULT 0,
  `map` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=tis620 COLLATE=tis620_thai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_reg_num`
--
ALTER TABLE `acc_reg_num`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `acc_reg_str`
--
ALTER TABLE `acc_reg_str`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `achievement`
--
ALTER TABLE `achievement`
  ADD PRIMARY KEY (`char_id`,`id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `atcommandlog`
--
ALTER TABLE `atcommandlog`
  ADD PRIMARY KEY (`atcommand_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`auction_id`);

--
-- Indexes for table `barter`
--
ALTER TABLE `barter`
  ADD PRIMARY KEY (`name`,`index`);

--
-- Indexes for table `bonus_script`
--
ALTER TABLE `bonus_script`
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `branchlog`
--
ALTER TABLE `branchlog`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `buyingstores`
--
ALTER TABLE `buyingstores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyingstore_items`
--
ALTER TABLE `buyingstore_items`
  ADD PRIMARY KEY (`buyingstore_id`,`index`);

--
-- Indexes for table `cart_inventory`
--
ALTER TABLE `cart_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `cashlog`
--
ALTER TABLE `cashlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `char`
--
ALTER TABLE `char`
  ADD PRIMARY KEY (`char_id`),
  ADD UNIQUE KEY `name_key` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `party_id` (`party_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `online` (`online`);

--
-- Indexes for table `charlog`
--
ALTER TABLE `charlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `char_configs`
--
ALTER TABLE `char_configs`
  ADD PRIMARY KEY (`world_name`,`account_id`,`char_id`);

--
-- Indexes for table `char_reg_num`
--
ALTER TABLE `char_reg_num`
  ADD PRIMARY KEY (`char_id`,`key`,`index`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `char_reg_str`
--
ALTER TABLE `char_reg_str`
  ADD PRIMARY KEY (`char_id`,`key`,`index`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `chatlog`
--
ALTER TABLE `chatlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `src_accountid` (`src_accountid`),
  ADD KEY `src_charid` (`src_charid`);

--
-- Indexes for table `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`clan_id`);

--
-- Indexes for table `clan_alliance`
--
ALTER TABLE `clan_alliance`
  ADD PRIMARY KEY (`clan_id`,`alliance_id`),
  ADD KEY `alliance_id` (`alliance_id`);

--
-- Indexes for table `db_roulette`
--
ALTER TABLE `db_roulette`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `elemental`
--
ALTER TABLE `elemental`
  ADD PRIMARY KEY (`ele_id`);

--
-- Indexes for table `feedinglog`
--
ALTER TABLE `feedinglog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`char_id`,`friend_id`);

--
-- Indexes for table `global_acc_reg_num`
--
ALTER TABLE `global_acc_reg_num`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `global_acc_reg_str`
--
ALTER TABLE `global_acc_reg_str`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `guild`
--
ALTER TABLE `guild`
  ADD PRIMARY KEY (`guild_id`,`char_id`),
  ADD UNIQUE KEY `guild_id` (`guild_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `guild_alliance`
--
ALTER TABLE `guild_alliance`
  ADD PRIMARY KEY (`guild_id`,`alliance_id`),
  ADD KEY `alliance_id` (`alliance_id`);

--
-- Indexes for table `guild_castle`
--
ALTER TABLE `guild_castle`
  ADD PRIMARY KEY (`castle_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_emblems`
--
ALTER TABLE `guild_emblems`
  ADD PRIMARY KEY (`world_name`,`guild_id`);

--
-- Indexes for table `guild_expulsion`
--
ALTER TABLE `guild_expulsion`
  ADD PRIMARY KEY (`guild_id`,`name`);

--
-- Indexes for table `guild_member`
--
ALTER TABLE `guild_member`
  ADD PRIMARY KEY (`guild_id`,`char_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `guild_position`
--
ALTER TABLE `guild_position`
  ADD PRIMARY KEY (`guild_id`,`position`);

--
-- Indexes for table `guild_skill`
--
ALTER TABLE `guild_skill`
  ADD PRIMARY KEY (`guild_id`,`id`);

--
-- Indexes for table `guild_storage`
--
ALTER TABLE `guild_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_storage_log`
--
ALTER TABLE `guild_storage_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `homunculus`
--
ALTER TABLE `homunculus`
  ADD PRIMARY KEY (`homun_id`);

--
-- Indexes for table `hotkey`
--
ALTER TABLE `hotkey`
  ADD PRIMARY KEY (`char_id`,`hotkey`);

--
-- Indexes for table `interlog`
--
ALTER TABLE `interlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `ipbanlist`
--
ALTER TABLE `ipbanlist`
  ADD PRIMARY KEY (`list`,`btime`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `web_auth_token_key` (`web_auth_token`),
  ADD KEY `name` (`userid`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_attachments`
--
ALTER TABLE `mail_attachments`
  ADD PRIMARY KEY (`id`,`index`);

--
-- Indexes for table `mapreg`
--
ALTER TABLE `mapreg`
  ADD PRIMARY KEY (`varname`,`index`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`name`,`nameid`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`memo_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `mercenary`
--
ALTER TABLE `mercenary`
  ADD PRIMARY KEY (`mer_id`);

--
-- Indexes for table `mercenary_owner`
--
ALTER TABLE `mercenary_owner`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexes for table `merchant_configs`
--
ALTER TABLE `merchant_configs`
  ADD PRIMARY KEY (`world_name`,`account_id`,`char_id`,`store_type`);

--
-- Indexes for table `mvplog`
--
ALTER TABLE `mvplog`
  ADD PRIMARY KEY (`mvp_id`);

--
-- Indexes for table `npclog`
--
ALTER TABLE `npclog`
  ADD PRIMARY KEY (`npc_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`party_id`);

--
-- Indexes for table `party_bookings`
--
ALTER TABLE `party_bookings`
  ADD PRIMARY KEY (`world_name`,`account_id`,`char_id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pet_id`);

--
-- Indexes for table `picklog`
--
ALTER TABLE `picklog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`char_id`,`quest_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`nameid`);

--
-- Indexes for table `sc_data`
--
ALTER TABLE `sc_data`
  ADD PRIMARY KEY (`char_id`,`type`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexes for table `skillcooldown`
--
ALTER TABLE `skillcooldown`
  ADD PRIMARY KEY (`char_id`,`skill`);

--
-- Indexes for table `skill_homunculus`
--
ALTER TABLE `skill_homunculus`
  ADD PRIMARY KEY (`homun_id`,`id`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `user_configs`
--
ALTER TABLE `user_configs`
  ADD PRIMARY KEY (`world_name`,`account_id`);

--
-- Indexes for table `vendings`
--
ALTER TABLE `vendings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vending_items`
--
ALTER TABLE `vending_items`
  ADD PRIMARY KEY (`vending_id`,`index`);

--
-- Indexes for table `zenylog`
--
ALTER TABLE `zenylog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atcommandlog`
--
ALTER TABLE `atcommandlog`
  MODIFY `atcommand_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT for table `auction`
--
ALTER TABLE `auction`
  MODIFY `auction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branchlog`
--
ALTER TABLE `branchlog`
  MODIFY `branch_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_inventory`
--
ALTER TABLE `cart_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashlog`
--
ALTER TABLE `cashlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `char`
--
ALTER TABLE `char`
  MODIFY `char_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150006;

--
-- AUTO_INCREMENT for table `charlog`
--
ALTER TABLE `charlog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `chatlog`
--
ALTER TABLE `chatlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clan`
--
ALTER TABLE `clan`
  MODIFY `clan_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `elemental`
--
ALTER TABLE `elemental`
  MODIFY `ele_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedinglog`
--
ALTER TABLE `feedinglog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild`
--
ALTER TABLE `guild`
  MODIFY `guild_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_storage`
--
ALTER TABLE `guild_storage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_storage_log`
--
ALTER TABLE `guild_storage_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homunculus`
--
ALTER TABLE `homunculus`
  MODIFY `homun_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interlog`
--
ALTER TABLE `interlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000004;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mail_attachments`
--
ALTER TABLE `mail_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
  MODIFY `memo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mercenary`
--
ALTER TABLE `mercenary`
  MODIFY `mer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mvplog`
--
ALTER TABLE `mvplog`
  MODIFY `mvp_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npclog`
--
ALTER TABLE `npclog`
  MODIFY `npc_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `party_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `pet_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `picklog`
--
ALTER TABLE `picklog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zenylog`
--
ALTER TABLE `zenylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

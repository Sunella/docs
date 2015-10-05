-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2015 at 08:28 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_assets`
--

CREATE TABLE IF NOT EXISTS `yn1jm_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `yn1jm_assets`
--

INSERT INTO `yn1jm_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 139, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 100, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 101, 104, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 105, 106, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 107, 108, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 109, 110, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 111, 112, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 113, 116, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 117, 120, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 121, 122, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 102, 103, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 118, 119, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 114, 115, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 123, 124, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 125, 126, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 127, 128, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 129, 130, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 131, 132, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 133, 134, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 40, 41, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 44, 45, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 46, 47, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 52, 53, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 60, 61, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 62, 63, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 64, 65, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 66, 67, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 1, 135, 136, 1, 'com_contushdvideoshare', 'contushdvideoshare', '{}'),
(55, 18, 70, 71, 2, 'com_modules.module.87', 'Video Category', ''),
(56, 18, 72, 73, 2, 'com_modules.module.88', 'Featured Videos', ''),
(57, 18, 74, 75, 2, 'com_modules.module.89', 'Popular Videos', ''),
(58, 18, 76, 77, 2, 'com_modules.module.90', 'Recent Videos', ''),
(59, 18, 78, 79, 2, 'com_modules.module.91', 'Random Videos', ''),
(60, 18, 80, 81, 2, 'com_modules.module.92', 'Related Videos', ''),
(61, 18, 82, 83, 2, 'com_modules.module.93', 'Search Videos', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 18, 84, 85, 2, 'com_modules.module.94', 'Video Share Player', ''),
(63, 18, 86, 87, 2, 'com_modules.module.95', 'Video Share Category Module', ''),
(64, 18, 88, 89, 2, 'com_modules.module.96', 'Video Share RSS Module', ''),
(65, 18, 90, 91, 2, 'com_modules.module.97', 'Videoplus Banner', ''),
(66, 18, 92, 93, 2, 'com_modules.module.98', 'Videoplus Categories', ''),
(67, 18, 94, 95, 2, 'com_modules.module.99', 'Videoplus Header', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 18, 96, 97, 2, 'com_modules.module.100', 'Komento Activities', '{}'),
(69, 18, 98, 99, 2, 'com_modules.module.101', 'Komento Comments', '{}'),
(70, 1, 137, 138, 1, 'com_komento', 'com_komento', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_associations`
--

CREATE TABLE IF NOT EXISTS `yn1jm_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_banners`
--

CREATE TABLE IF NOT EXISTS `yn1jm_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_banner_clients`
--

CREATE TABLE IF NOT EXISTS `yn1jm_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `yn1jm_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_categories`
--

CREATE TABLE IF NOT EXISTS `yn1jm_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `yn1jm_categories`
--

INSERT INTO `yn1jm_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_contact_details`
--

CREATE TABLE IF NOT EXISTS `yn1jm_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_content`
--

CREATE TABLE IF NOT EXISTS `yn1jm_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `yn1jm_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `yn1jm_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_content_rating`
--

CREATE TABLE IF NOT EXISTS `yn1jm_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_content_types`
--

CREATE TABLE IF NOT EXISTS `yn1jm_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `yn1jm_content_types`
--

INSERT INTO `yn1jm_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `yn1jm_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_extensions`
--

CREATE TABLE IF NOT EXISTS `yn1jm_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10026 ;

--
-- Dumping data for table `yn1jm_extensions`
--

INSERT INTO `yn1jm_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"COM_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"13","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"87844a47cd170fd4e748526d25aa7855"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":"","filename":"mod_weblinks"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `yn1jm_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.4","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(801, 'pkg_weblinks', 'package', 'pkg_weblinks', '', 0, 1, 1, 0, '{"name":"pkg_weblinks","type":"package","creationDate":"December 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"PKG_WEBLINKS_XML_DESCRIPTION","group":"","filename":"pkg_weblinks"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'contushdvideoshare', 'component', 'com_contushdvideoshare', '', 1, 1, 0, 0, '{"name":"Contus HD Video Share","type":"component","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Contus HD Video Share","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'Video Category', 'module', 'mod_hdvideosharecategories', '', 0, 1, 0, 0, '{"name":"Video Category","type":"module","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Video Category Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Featured Videos', 'module', 'mod_hdvideosharefeatured', '', 0, 1, 0, 0, '{"name":"Featured Videos","type":"module","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Featured Videos Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Popular Videos', 'module', 'mod_hdvideosharepopular', '', 0, 1, 0, 0, '{"name":"Popular Videos","type":"module","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Popular Videos Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'Recent Videos', 'module', 'mod_hdvideosharerecent', '', 0, 1, 0, 0, '{"name":"Recent Videos","type":"module","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Recent Videos Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Random Videos', 'module', 'mod_hdvideosharerandom', '', 0, 1, 0, 0, '{"name":"Random Videos","type":"module","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Random Videos Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Related Videos', 'module', 'mod_hdvideosharerelated', '', 0, 1, 0, 0, '{"name":"Related Videos","type":"module","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Related Videos Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Search Videos', 'module', 'mod_hdvideosharesearch', '', 0, 1, 0, 0, '{"name":"Search Videos","type":"module","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Search Videos Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Video Share Player', 'module', 'mod_videoshare', '', 0, 1, 0, 0, '{"name":"Video Share Player","type":"module","creationDate":"June 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Video Share Player Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":"","player_width":"300","player_height":"306","volume":"34","showPlaylist":"0","playlistOpen":"0","skinAutohide":"0","autoplay":"1","timer":"1","zoom":"0","share":"0","fullscreen":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'Video Share Category Module', 'module', 'mod_hdvideosharecategory', '', 0, 1, 0, 0, '{"name":"Video Share Category Module","type":"module","creationDate":"June 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"Category Module for Contus HD Video Share","group":""}', '{"moduleclass_sfx":"","catid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Video Share RSS Module', 'module', 'mod_hdvideosharerss', '', 0, 1, 0, 0, '{"name":"Video Share RSS Module","type":"module","creationDate":"June 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"3.6","description":"RSS Module for Contus HD Video Share<br \\/><br \\/><div style=\\"text-align:left !important;\\"><strong> How to use RSS feeds?<\\/strong><br \\/><br \\/>Mentioned below are the appropriate URLs to get RSS Feeds for:<br><br>\\n\\t\\t\\t    Popular Videos - <strong>http:\\/\\/example.com\\/index.php?option=com_contushdvideoshare&view=rss&type=popular<\\/strong><br><br>\\n\\t\\t\\t    Featured Videos - <strong>http:\\/\\/example.com\\/index.php?option=com_contushdvideoshare&view=rss&type=featured<\\/strong><br><br>\\n\\t\\t\\t   \\tRecent Videos - <strong>http:\\/\\/example.com\\/index.php?option=com_contushdvideoshare&view=rss&type=recent<\\/strong><br><br>\\n\\t\\t\\t    Any particular category - <strong>http:\\/\\/example.com\\/index.php?option=com_contushdvideoshare&view=rss&type=category&catid=14<\\/strong><br><br><\\/div>","group":""}', '{"moduleclass_sfx":"","rsstype":"0","catid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'HVS Article Plugin', 'plugin', 'hvsarticle', 'content', 0, 1, 1, 0, '{"name":"HVS Article Plugin","type":"plugin","creationDate":"March 2014","author":"Apptha","copyright":"Copyright (C) 2013 Powered by Apptha","authorEmail":"assist@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"1.2","description":"\\n<div style=\\"text-align:left !important;\\"> Steps to Configure Plugin:<br \\/>1. You can use this plugin with Joomla Article and K2 Component...<br \\/>2. This plugin includes the following Attributes<br \\/>* videoid<br \\/>* height<br \\/>* width<br \\/>* autoplay<br \\/>* categoryid<br \\/>* playlistautoplay<br \\/>* type<br \\/>3. Below are the sample formats for plugin shortcode<br \\/>1.[hdvs videoid=1 categoryid=1 width=700 height=300 autoplay=true playlistautoplay=true]<br \\/>2.[hdvs videoid=2 width=700 height=300]<br \\/>3.[hdvs type=pop] or [hdvs type=pop width=700 height=300] or [hdvs type=pop width=700 height=300 autoplay=true playlistautoplay=true]<br \\/>4.[hdvs type=rec] or [hdvs type=rec width=700 height=300] or [hdvs type=rec width=700 height=300 autoplay=true playlistautoplay=true]<br \\/>5.[hdvs type=fea] or [hdvs type=fea width=700 height=300] 0r [hdvs type=fea width=700 height=300 autoplay=true playlistautoplay=true]<br \\/>Different combinations can be used as mentioned above<br \\/><\\/div>\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'Videoplus Banner', 'module', 'mod_VideoPlusBanner', '', 0, 1, 0, 0, '{"name":"Videoplus Banner","type":"module","creationDate":"September 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"2.1","description":"Videoplus Banner module for videoplus template","group":""}', '{"moduleclass_sfx":"","volume":"34","showPlaylist":"0","playlistOpen":"0","skinAutohide":"0","playlist_autoplay":"0","autoplay":"1","timer":"1","zoom":"0","share":"0","fullscreen":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'Videoplus Categories', 'module', 'mod_VideoPlusCategories', '', 0, 1, 0, 0, '{"name":"Videoplus Categories","type":"module","creationDate":"September 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"2.1","description":"Videoplus Categories module for videoplus template","group":""}', '{"moduleclass_sfx":"","catLimit":"4","videoLimit":"2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'Videoplus Header', 'module', 'mod_VideoPlusHeader', '', 0, 1, 0, 0, '{"name":"Videoplus Header","type":"module","creationDate":"September 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"support@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"2.1","description":"Videoplus Header module for videoplus template","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'Videoplus', 'template', 'videoplus', '', 0, 1, 1, 0, '{"name":"Videoplus","type":"template","creationDate":"September 2014","author":"Apptha","copyright":"Copyright (C) 2014 Powered by Apptha","authorEmail":"assist@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"2.1","description":"\\n        \\n        <style>\\n        table.adminform th{padding:0px;}\\n        <\\/style>\\n        <div style=\\"\\/* Opera 11.10+ *\\/\\n        background: -o-linear-gradient(top, rgba(255,255,255,1), rgba(232,232,232,1));\\n\\n        \\/* Firefox 3.6+ *\\/\\n        background: -moz-linear-gradient(top, rgba(255,255,255,1), rgba(232,232,232,1));\\n\\n        \\/* Chrome 7+ & Safari 5.03+ *\\/\\n        background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgba(255,255,255,1)), color-stop(1, rgba(232,232,232,1)));\\n\\n        \\/* IE5.5 - IE7 *\\/\\n        filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#FFFFFFFF,EndColorStr=#FFE8E8E8);\\n\\n        \\/* IE8 *\\/\\n        -ms-filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=#FFFFFFFF,EndColorStr=#FFE8E8E8);\\">\\n        <div style=\\"float: left; margin:10px 10px 10px 10px;\\">\\n                <a href=\\"http:\\/\\/www.apptha.com\\/\\" target=\\"_blank\\">\\n                    <img src=\\"..\\/templates\\/videoplus\\/images\\/apptha.jpg\\" alt=\\"Apptha! Videoplus\\" align=\\"left\\" \\/>\\n                <\\/a>\\n            <\\/div>\\n            <div style=\\"clear:both;\\"><\\/div>\\n        <p style=\\"font-style:normal;font-size:13px;font-weight:normal;\\">Videoplus is a premium joomla template suitable for building a video sharing website. The template has an attractive banner with slideshow effect.<\\/p>\\n            <div style=\\"margin-left:10px;padding-bottom:10px;\\">\\n                <a target=\\"_blank\\" href=\\"https:\\/\\/docs.google.com\\/viewer?url=https:\\/\\/www.apptha.com\\/downloadable\\/download\\/sample\\/sample_id\\/50\\/Video Plus\\">Click here to download the documentation<\\/a><br\\/>\\n            <\\/div>\\n            <\\/div>\\n     \\n\\t","group":""}', '{"logo":"","facebook_url":"","twitter_url":"","googleplus_url":"","book_marking":"1","Fb_app_id":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'VideoplusPackage', 'package', 'pkg_VideoplusPackage', '', 0, 1, 1, 0, '{"name":"Videoplus Package","type":"package","creationDate":"March 2014","author":"Apptha","copyright":"","authorEmail":"assist@apptha.com","authorUrl":"http:\\/\\/www.apptha.com","version":"2.1","description":"Videoplus Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'com_komento', 'component', 'com_komento', '', 1, 1, 0, 0, '{"name":"com_komento","type":"component","creationDate":"Jan 2012","author":"Stack Ideas","copyright":"Copyright 2012 Stack Ideas. All rights reserved","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"2.0.5","description":"\\n\\t\\tKomento is a Joomla! comment component.\\n\\t","group":"","filename":"komento"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Content - Komento', 'plugin', 'komento', 'content', 0, 1, 1, 0, '{"name":"Content - Komento","type":"plugin","creationDate":"01\\/01\\/2012","author":"StackIdeas","copyright":"Copyright (C) 2012 StackIdeas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0","description":"This plugin adds a discussion\\/comment interface at the bottom of the article","group":"","filename":"komento"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'System - Komento', 'plugin', 'komento', 'system', 0, 1, 1, 0, '{"name":"System - Komento","type":"plugin","creationDate":"07\\/01\\/2012","author":"StackIdeas","copyright":"Copyright (C) 2012 StackIdeas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0","description":"This plugin adds a discussion\\/comment interface at the bottom of the article","group":"","filename":"komento"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'User - Komento Users', 'plugin', 'komentousers', 'user', 0, 1, 1, 0, '{"name":"User - Komento Users","type":"plugin","creationDate":"February 2012","author":"StackIdeas","copyright":"Copyright 2012 StackIdeas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0.0","description":"Komento user plugin. This plugin is responsible to delete user''s related records.","group":"","filename":"komentousers"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Komento Activities', 'module', 'mod_komento_activities', '', 0, 1, 0, 0, '{"name":"Komento Activities","type":"module","creationDate":"May 2012","author":"StackIdeas","copyright":"Copyright 2009 - 2012 Stack Ideas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0.4","description":"Display activities from Komento","group":"","filename":"mod_komento_activities"}', '{"limit":"5","component":"all","includelikes":"1","includecomments":"1","includereplies":"1","showcomment":"1","maxcommentlength":"100","maxtitlelength":"30","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'Komento Comments', 'module', 'mod_komento_comments', '', 0, 1, 0, 0, '{"name":"Komento Comments","type":"module","creationDate":"May 2012","author":"StackIdeas","copyright":"Copyright 2009 - 2012 Stack Ideas. All rights reserved.","authorEmail":"support@stackideas.com","authorUrl":"http:\\/\\/www.stackideas.com","version":"1.0.7","description":"Display comments from Komento","group":"","filename":"mod_komento_comments"}', '{"limit":"5","component":"all","filter":"all","category":"","articleId":"","userId":"","sort":"latest","random":"0","filtersticked":"0","showtitle":"1","showcomponent":"1","showavatar":"1","showauthor":"1","maxcommentlength":"100","maxtitlelength":"30","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'HVS Komento', 'plugin', 'HVSkomento', 'system', 0, 1, 1, 0, '{"name":"HVS Komento","type":"plugin","creationDate":"July 2013","author":"Apptha","copyright":"Copyright (C) 2011 Powered by Apptha","authorEmail":"assist@apptha.com","authorUrl":"www.apptha.com","version":"1.0","description":"This plugin is to support Komento commenting system in Contus HD Video Share component.","group":"","filename":"HVSkomento"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_filters`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yn1jm_finder_taxonomy`
--

INSERT INTO `yn1jm_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_terms`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_finder_terms_common`
--

INSERT INTO `yn1jm_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_finder_types`
--

CREATE TABLE IF NOT EXISTS `yn1jm_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_ads`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) NOT NULL,
  `adsname` varchar(255) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `postvideopath` varchar(255) NOT NULL,
  `home` int(11) NOT NULL,
  `targeturl` varchar(255) NOT NULL,
  `clickurl` varchar(255) NOT NULL,
  `impressionurl` varchar(255) NOT NULL,
  `impressioncounts` int(11) NOT NULL DEFAULT '0',
  `clickcounts` int(11) NOT NULL DEFAULT '0',
  `adsdesc` varchar(500) NOT NULL,
  `typeofadd` varchar(50) NOT NULL,
  `imaaddet` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_category`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `seo_category` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `yn1jm_hdflv_category`
--

INSERT INTO `yn1jm_hdflv_category` (`id`, `member_id`, `category`, `seo_category`, `parent_id`, `ordering`, `lft`, `rgt`, `published`) VALUES
(1, 0, 'Speeches', 'Speeches', 0, 1, 23, 24, -2),
(2, 0, 'Interviews', 'Interviews', 0, 2, 11, 12, -2),
(3, 0, 'Talk Shows', 'Talk-Shows-', 0, 3, 25, 26, -2),
(4, 0, 'News & Info', 'News-Info', 0, 4, 17, 18, -2),
(5, 0, 'Documentary', 'Documentary', 0, 5, 7, 8, -2),
(6, 0, 'Travel', 'Travel', 0, 6, 31, 32, -2),
(7, 0, 'Cooking', 'Cooking', 0, 7, 5, 6, -2),
(8, 0, 'Music', 'Music', 0, 8, 15, 16, -2),
(9, 0, 'Trailers', 'Trailers', 0, 9, 27, 28, -2),
(10, 0, 'Religious', 'Religious', 0, 10, 21, 22, -2),
(11, 0, 'TV Serials & Shows', 'TV-Serials-Shows', 0, 11, 33, 34, -2),
(12, 0, 'Greetings', 'Greetings', 0, 12, 9, 10, -2),
(13, 0, 'Comedy', 'Comedy', 0, 13, 3, 4, -2),
(14, 0, 'Actors', 'Actors', 0, 14, 1, 2, -2),
(15, 0, 'Marketing Videos', 'marketing-videos', 0, 15, 13, 14, 1),
(16, 0, 'Presales', 'presales', 0, 16, 19, 20, 1),
(17, 0, 'Training Material ', 'training-material-', 0, 17, 29, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_comments`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `yn1jm_hdflv_comments`
--

INSERT INTO `yn1jm_hdflv_comments` (`id`, `parentid`, `videoid`, `name`, `email`, `subject`, `message`, `created`, `published`) VALUES
(6, 0, 7, 'admin', '', '', 'Testing!', '2015-09-18 09:35:10', 1),
(7, 6, 7, 'Anon', '', '', 'Try out komento as well', '2015-09-18 11:31:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_googlead`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_googlead` (
  `id` int(2) NOT NULL,
  `code` text NOT NULL,
  `showoption` tinyint(1) NOT NULL,
  `closeadd` int(6) NOT NULL,
  `reopenadd` tinytext NOT NULL,
  `publish` int(1) NOT NULL,
  `ropen` int(6) NOT NULL,
  `showaddc` tinyint(1) NOT NULL DEFAULT '0',
  `showaddm` tinyint(4) NOT NULL DEFAULT '0',
  `showaddp` tinyint(4) NOT NULL DEFAULT '0',
  `imaaddet` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_hdflv_googlead`
--

INSERT INTO `yn1jm_hdflv_googlead` (`id`, `code`, `showoption`, `closeadd`, `reopenadd`, `publish`, `ropen`, `showaddc`, `showaddm`, `showaddp`, `imaaddet`) VALUES
(1, '', 1, 10, '0', 0, 10, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_player_settings`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_player_settings` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) NOT NULL,
  `player_colors` longtext NOT NULL,
  `player_icons` longtext NOT NULL,
  `player_values` longtext NOT NULL,
  `uploadmaxsize` int(10) NOT NULL,
  `logopath` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yn1jm_hdflv_player_settings`
--

INSERT INTO `yn1jm_hdflv_player_settings` (`id`, `published`, `player_colors`, `player_icons`, `player_values`, `uploadmaxsize`, `logopath`) VALUES
(1, 1, 'a:18:{s:21:"sharepanel_up_BgColor";s:0:"";s:23:"sharepanel_down_BgColor";s:0:"";s:19:"sharepaneltextColor";s:0:"";s:15:"sendButtonColor";s:0:"";s:19:"sendButtonTextColor";s:0:"";s:9:"textColor";s:0:"";s:11:"skinBgColor";s:0:"";s:13:"seek_barColor";s:6:"873E8D";s:15:"buffer_barColor";s:0:"";s:13:"skinIconColor";s:0:"";s:11:"pro_BgColor";s:6:"333333";s:15:"playButtonColor";s:0:"";s:17:"playButtonBgColor";s:0:"";s:17:"playerButtonColor";s:6:"873E8D";s:19:"playerButtonBgColor";s:0:"";s:19:"relatedVideoBgColor";s:0:"";s:15:"scroll_barColor";s:0:"";s:14:"scroll_BgColor";s:0:"";}', 'a:27:{s:8:"autoplay";s:1:"0";s:17:"playlist_autoplay";s:1:"0";s:13:"playlist_open";s:1:"1";s:13:"skin_autohide";s:1:"1";s:10:"fullscreen";s:1:"1";s:4:"zoom";s:1:"0";s:5:"timer";s:1:"1";s:7:"showTag";s:1:"1";s:8:"shareurl";s:1:"1";s:11:"emailenable";s:1:"1";s:14:"login_page_url";s:0:"";s:12:"embedVisible";s:1:"0";s:15:"progressControl";s:1:"1";s:11:"skinvisible";s:1:"0";s:9:"hddefault";s:1:"0";s:12:"imageDefault";s:1:"0";s:14:"enabledownload";s:1:"1";s:10:"prerollads";s:1:"0";s:11:"postrollads";s:1:"0";s:6:"imaads";s:1:"0";s:13:"volumecontrol";s:1:"1";s:7:"adsSkip";s:1:"0";s:10:"midrollads";s:1:"0";s:8:"midbegin";s:0:"";s:9:"midrandom";s:1:"0";s:11:"midadrotate";s:1:"0";s:17:"googleana_visible";s:1:"0";}', 'a:26:{s:6:"buffer";s:1:"3";s:5:"width";s:3:"700";s:6:"height";s:3:"500";s:11:"normalscale";s:1:"1";s:15:"fullscreenscale";s:1:"1";s:6:"volume";s:2:"50";s:8:"nrelated";i:8;s:10:"ffmpegpath";s:13:"C:\\ffmpeg\\bin";s:12:"skin_opacity";s:1:"1";s:13:"subTitleColor";s:0:"";s:15:"subTitleBgColor";s:0:"";s:18:"subTitleFontFamily";s:0:"";s:16:"subTitleFontSize";s:0:"";s:10:"stagecolor";s:6:"000000";s:10:"licensekey";s:0:"";s:7:"logourl";s:0:"";s:9:"logoalpha";s:3:"100";s:9:"logoalign";s:2:"TR";s:15:"adsSkipDuration";s:0:"";s:10:"imaadbegin";s:2:"10";s:17:"googleanalyticsID";s:0:"";s:8:"midbegin";s:0:"";s:11:"midinterval";s:0:"";s:14:"related_videos";s:1:"2";s:16:"relatedVideoView";s:4:"side";s:14:"login_page_url";s:0:"";}', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_site_settings`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_site_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) NOT NULL,
  `thumbview` longtext NOT NULL,
  `homethumbview` longtext NOT NULL,
  `sidethumbview` longtext NOT NULL,
  `dispenable` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yn1jm_hdflv_site_settings`
--

INSERT INTO `yn1jm_hdflv_site_settings` (`id`, `published`, `thumbview`, `homethumbview`, `sidethumbview`, `dispenable`) VALUES
(1, 1, 'a:24:{s:9:"featurrow";s:1:"3";s:9:"featurcol";s:1:"4";s:9:"recentrow";s:1:"3";s:9:"recentcol";s:1:"4";s:11:"categoryrow";s:1:"3";s:11:"categorycol";s:1:"4";s:10:"popularrow";s:1:"3";s:10:"popularcol";s:1:"4";s:9:"searchrow";s:1:"3";s:9:"searchcol";s:1:"4";s:10:"relatedrow";s:1:"3";s:10:"relatedcol";s:1:"4";s:11:"featurwidth";s:2:"20";s:11:"recentwidth";s:2:"20";s:13:"categorywidth";s:2:"20";s:12:"popularwidth";s:2:"20";s:11:"searchwidth";s:2:"20";s:12:"relatedwidth";s:2:"20";s:15:"memberpagewidth";s:2:"20";s:13:"memberpagerow";s:1:"3";s:13:"memberpagecol";s:1:"4";s:10:"myvideorow";s:1:"4";s:10:"myvideocol";s:1:"2";s:12:"myvideowidth";s:2:"20";}', 'a:15:{s:16:"homepopularvideo";s:1:"1";s:19:"homepopularvideorow";s:1:"1";s:19:"homepopularvideocol";s:1:"4";s:17:"homefeaturedvideo";s:1:"1";s:20:"homefeaturedvideorow";s:1:"1";s:20:"homefeaturedvideocol";s:1:"4";s:15:"homerecentvideo";s:1:"1";s:18:"homerecentvideorow";s:1:"1";s:18:"homerecentvideocol";s:1:"4";s:21:"homepopularvideoorder";s:1:"1";s:22:"homefeaturedvideoorder";s:1:"2";s:20:"homerecentvideoorder";s:1:"3";s:21:"homepopularvideowidth";s:2:"20";s:22:"homefeaturedvideowidth";s:2:"20";s:20:"homerecentvideowidth";s:2:"20";}', 'a:12:{s:19:"sidepopularvideorow";s:1:"3";s:19:"sidepopularvideocol";s:1:"1";s:20:"sidefeaturedvideorow";s:1:"2";s:20:"sidefeaturedvideocol";s:1:"1";s:19:"siderelatedvideorow";s:1:"3";s:19:"siderelatedvideocol";s:1:"1";s:18:"siderecentvideorow";s:1:"3";s:18:"siderecentvideocol";s:1:"1";s:18:"siderandomvideorow";s:1:"3";s:18:"siderandomvideocol";s:1:"1";s:20:"sidecategoryvideorow";s:1:"3";s:20:"sidecategoryvideocol";s:1:"1";}', 'a:22:{s:11:"allowupload";s:1:"1";s:12:"adminapprove";s:1:"1";s:10:"user_login";s:1:"1";s:14:"ratingscontrol";s:1:"1";s:13:"viewedconrtol";s:1:"1";s:11:"reportvideo";s:1:"0";s:14:"categoryplayer";s:1:"0";s:10:"homeplayer";s:1:"1";s:10:"limitvideo";s:3:"100";s:10:"seo_option";s:1:"1";s:14:"upload_methods";s:18:"Upload,Youtube,URL";s:17:"language_settings";s:11:"English.php";s:9:"disqusapi";s:0:"";s:11:"facebookapi";s:0:"";s:7:"comment";s:1:"0";s:8:"amazons3";s:1:"0";s:12:"amazons3name";s:0:"";s:12:"amazons3link";s:0:"";s:17:"amazons3accesskey";s:0:"";s:28:"amazons3accesssecretkey_area";s:0:"";s:12:"facebooklike";s:1:"0";s:11:"rssfeedicon";s:1:"0";}');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_upload`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_upload` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `seotitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `rate` int(11) NOT NULL,
  `rateduser` longtext NOT NULL,
  `ratecount` int(11) NOT NULL,
  `times_viewed` int(11) NOT NULL,
  `videos` varchar(255) CHARACTER SET utf8 NOT NULL,
  `filepath` varchar(10) CHARACTER SET utf8 NOT NULL,
  `videourl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `thumburl` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '30258.jpg',
  `previewurl` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '30258.jpg',
  `hdurl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `home` int(11) NOT NULL,
  `playlistid` int(11) NOT NULL,
  `duration` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ordering` int(11) NOT NULL,
  `streamerpath` varchar(255) CHARACTER SET utf8 NOT NULL,
  `streameroption` varchar(255) CHARACTER SET utf8 NOT NULL,
  `postrollads` tinyint(4) NOT NULL,
  `prerollads` tinyint(4) NOT NULL,
  `midrollads` tinyint(4) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `targeturl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `download` tinyint(4) NOT NULL,
  `prerollid` int(11) NOT NULL,
  `postrollid` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `addedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `usergroupid` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tags` text CHARACTER SET utf8 NOT NULL,
  `useraccess` int(11) NOT NULL DEFAULT '0',
  `islive` tinyint(1) NOT NULL DEFAULT '0',
  `imaads` int(11) NOT NULL DEFAULT '0',
  `embedcode` longtext NOT NULL,
  `subtitle1` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subtitle2` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subtile_lang2` text CHARACTER SET utf8 NOT NULL,
  `subtile_lang1` text CHARACTER SET utf8 NOT NULL,
  `amazons3` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_user`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_user` (
  `member_id` int(11) NOT NULL,
  `allowupload` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_hdflv_user`
--

INSERT INTO `yn1jm_hdflv_user` (`member_id`, `allowupload`) VALUES
(543, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_hdflv_video_category`
--

CREATE TABLE IF NOT EXISTS `yn1jm_hdflv_video_category` (
  `vid` int(11) NOT NULL,
  `catid` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yn1jm_hdflv_video_category`
--

INSERT INTO `yn1jm_hdflv_video_category` (`vid`, `catid`) VALUES
(1, '9'),
(2, '14'),
(3, '5'),
(4, '5'),
(5, '5'),
(6, '11'),
(7, '5'),
(8, '2'),
(9, '8'),
(10, '2'),
(11, '3'),
(12, '4'),
(13, '4'),
(14, '5'),
(15, '5'),
(16, '15'),
(17, '17'),
(18, '16'),
(19, '17'),
(20, '16'),
(21, '15'),
(22, '15');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_acl`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_acl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) NOT NULL,
  `component` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `rules` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `komento_acl_content_type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `yn1jm_komento_acl`
--

INSERT INTO `yn1jm_komento_acl` (`id`, `cid`, `component`, `type`, `rules`) VALUES
(1, '1', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(2, '9', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(3, '2', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(4, '6', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":true,"delete_own_attachment":true,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(5, '7', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":true,"delete_own_attachment":true,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":true,"delete_all_comment":true,"publish_all_comment":true,"unpublish_all_comment":true,"stick_all_comment":true,"delete_all_attachment":true}'),
(6, '3', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(7, '4', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(8, '5', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":true,"unpublish_all_comment":true,"stick_all_comment":true,"delete_all_attachment":false}'),
(9, '8', 'com_content', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":true,"report_comment":true,"share_comment":true,"reply_comment":true,"upload_attachment":true,"download_attachment":true,"edit_own_comment":true,"delete_own_comment":true,"delete_own_attachment":true,"author_edit_comment":true,"author_delete_comment":true,"author_publish_comment":true,"author_unpublish_comment":true,"author_stick_comment":true,"author_delete_attachment":true,"edit_all_comment":true,"delete_all_comment":true,"publish_all_comment":true,"unpublish_all_comment":true,"stick_all_comment":true,"delete_all_attachment":true}'),
(10, '1', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(11, '9', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(12, '6', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(13, '7', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(14, '2', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(15, '3', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(16, '4', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(17, '5', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}'),
(18, '8', 'com_contushdvideoshare', 'usergroup', '{"read_comment":true,"read_others_comment":true,"read_stickies":true,"read_lovies":true,"add_comment":true,"like_comment":false,"report_comment":false,"share_comment":true,"reply_comment":false,"upload_attachment":false,"download_attachment":true,"edit_own_comment":false,"delete_own_comment":false,"delete_own_attachment":false,"author_edit_comment":false,"author_delete_comment":false,"author_publish_comment":false,"author_unpublish_comment":false,"author_stick_comment":false,"author_delete_attachment":false,"edit_all_comment":false,"delete_all_comment":false,"publish_all_comment":false,"unpublish_all_comment":false,"stick_all_comment":false,"delete_all_attachment":false}');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_actions`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_actions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL,
  `action_by` bigint(20) unsigned NOT NULL DEFAULT '0',
  `actioned` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `komento_actions` (`type`,`comment_id`,`action_by`),
  KEY `komento_actions_comment_id` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_activities`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `yn1jm_komento_activities`
--

INSERT INTO `yn1jm_komento_activities` (`id`, `type`, `comment_id`, `uid`, `created`, `published`) VALUES
(1, 'comment', 1, 544, '2015-10-05 03:21:46', 1),
(2, 'comment', 2, 543, '2015-10-05 03:23:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_captcha`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_captcha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `response` varchar(5) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_comments`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `component` varchar(255) NOT NULL,
  `cid` bigint(20) unsigned NOT NULL,
  `comment` text,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `ip` varchar(255) DEFAULT '',
  `created_by` bigint(20) unsigned DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) unsigned DEFAULT '0',
  `modified` datetime DEFAULT '0000-00-00 00:00:00',
  `deleted_by` bigint(20) unsigned DEFAULT '0',
  `deleted` datetime DEFAULT '0000-00-00 00:00:00',
  `flag` tinyint(1) DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime DEFAULT '0000-00-00 00:00:00',
  `sticked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) DEFAULT '0',
  `parent_id` int(11) unsigned DEFAULT '0',
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `depth` int(11) unsigned NOT NULL DEFAULT '0',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text,
  `params` text,
  `ratings` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `komento_threaded` (`component`,`cid`,`published`,`lft`,`rgt`),
  KEY `komento_threaded_reverse` (`component`,`cid`,`published`,`rgt`),
  KEY `komento_module_comments` (`component`,`cid`,`published`,`created`),
  KEY `komento_backend` (`parent_id`,`created`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `yn1jm_komento_comments`
--

INSERT INTO `yn1jm_komento_comments` (`id`, `component`, `cid`, `comment`, `name`, `title`, `email`, `url`, `ip`, `created_by`, `created`, `modified_by`, `modified`, `deleted_by`, `deleted`, `flag`, `published`, `publish_up`, `publish_down`, `sticked`, `sent`, `parent_id`, `lft`, `rgt`, `depth`, `latitude`, `longitude`, `address`, `params`, `ratings`) VALUES
(1, 'com_contushdvideoshare', 20, ':o', 'Sunella', '', 'email@email.com', '', '::1', 544, '2015-10-05 03:21:46', 0, '2015-10-05 03:21:46', 0, '0000-00-00 00:00:00', 0, 1, '2015-10-05 03:21:46', '0000-00-00 00:00:00', 0, 0, 0, 1, 2, 0, '', '', '', NULL, 0),
(2, 'com_contushdvideoshare', 20, '[code type="xml"]Just testing![/code]', 'Super User', '', 'sunella.fernando@ifsworld.com', '', '::1', 543, '2015-10-05 03:23:34', 0, '2015-10-05 03:23:34', 0, '0000-00-00 00:00:00', 0, 1, '2015-10-05 03:23:34', '0000-00-00 00:00:00', 0, 0, 0, 3, 4, 0, '', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_configs`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_configs` (
  `component` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_komento_configs`
--

INSERT INTO `yn1jm_komento_configs` (`component`, `params`) VALUES
('com_komento_comments_columns', '{"column_comment":1,"column_published":1,"column_sticked":1,"column_link":1,"column_edit":1,"column_component":1,"column_article":1,"column_date":1,"column_author":1,"column_id":1}'),
('com_komento_pending_columns', '{"column_comment":1,"column_published":1,"column_link":1,"column_edit":1,"column_component":1,"column_article":1,"column_date":1,"column_author":1,"column_id":1}'),
('com_komento_reports_columns', '{"column_comment":1,"column_published":1,"column_link":1,"column_edit":1,"column_component":1,"column_article":1,"column_date":1,"column_author":1,"column_id":1}'),
('com_komento', '{"profile_enable":"1","profile_tab_comments":"1","profile_tab_activities":"1","profile_tab_popular":"1","profile_tab_sticked":"1","profile_activities_comments":"1","profile_activities_replies":"1","profile_activities_likes":"1","name_type":"default","layout_avatar_integration":"gravatar","layout_phpbb_path":"","layout_phpbb_url":"","enable_schema":"1","database_clearcaptchaonpageload":"0","enable_inline_reply":"1","enable_ajax_permalink":"1","enable_ajax_load_list":"0","enable_ajax_load_stickies":"1","enforce_live_stickies":"1","enable_ajax_load_lovies":"1","enforce_live_lovies":"1","enable_shorten_link":"1","parent_preload":"0","enable_js_form_validation":"1","enable_live_form_validation":"1","enable_admin_mode":"0","enable_warning_messages":"1","enable_language_fallback":"1","disable_mailq":"0","komento_environment":"static","komento_mode":"compressed"}'),
('com_content', '{"enable_komento":1,"disable_komento_on_tmpl_component":"0","allowed_categories_mode":"0","allowed_categories":"0","enable_orphanitem_convert":"1","orphanitem_ownership":"0","enable_login_form":"1","login_provider":"joomla","enable_moderation":"1","requires_moderation":"1","subscription_auto":"0","subscription_confirmation":"0","enable_ratings":"1","enable_rss":"1","rss_max_items":"10","pagebreak_load":"last","antispam_akismet":"0","antispam_akismet_key":"","antispam_akismet_trackback":"","antispam_flood_control":"0","antispam_flood_interval":"10","antispam_min_length_enable":"0","antispam_min_length":"10","antispam_max_length_enable":"0","antispam_max_length":"300","filter_word":"0","filter_word_text":"","antispam_captcha_enable":"0","antispam_captcha_type":"0","show_captcha":"1","antispam_recaptcha_ssl":"","antispam_recaptcha_public_key":"","antispam_recaptcha_private_key":"","antispam_recaptcha_theme":"","antispam_recaptcha_lang":"","layout_theme":"wireframe","enable_responsive":"1","tabbed_comments":"1","max_threaded_level":"5","enable_threaded":"1","thread_indentation":"60","show_sort_buttons":"1","default_sort":"oldest","load_previous":"1","max_comments_per_page":"10","layout_template_override":"1","layout_component_override":"1","layout_inherit_kuro_css":"1","layout_css_admin":"kmt-comment-item-admin","layout_css_author":"kmt-comment-item-author","layout_css_registered":"kmt-comment-item-registered","layout_css_public":"kmt-comment-item-public","enable_lapsed_time":"1","layout_avatar_enable":"1","enable_guest_link":"1","enable_permalink":"1","enable_share":"1","enable_likes":"1","enable_reply":"1","enable_report":"1","enable_location":"1","enable_info":"1","enable_syntax_highlighting":"1","enable_id":"0","enable_reply_reference":"1","enable_rank_bar":"1","name_type":"default","guest_label":"1","auto_hyperlink":"1","links_nofollow":"0","datetime_permalink":"0","date_format":"l, M j Y g:i:sa","allow_video":"1","bbcode_video_width":"350","bbcode_video_height":"350","max_image_width":"300","max_image_height":"300","layout_frontpage_comment":"1","layout_frontpage_readmore":"1","layout_frontpage_readmore_use_joomla":"0","layout_frontpage_hits":"1","layout_frontpage_alignment":"right","layout_frontpage_preview":"1","preview_count":"3","preview_sort":"latest","preview_sticked_only":"0","preview_parent_only":"1","preview_comment_length":"300","form_editor":"bbcode","form_position":"0","form_toggle_button":"0","autohide_form_notification":"1","form_show_moderate_message":"1","scroll_to_comment":"1","show_location":"1","enable_bbcode":"1","enable_subscription":"1","show_tnc":"1","tnc_text":"Before submitting the comment, you agree that:\\n\\na. To accept full responsibility for the comment that you submit.\\nb. To use this function only for lawful purposes.\\nc. Not to post defamatory, abusive, offensive, racist, sexist, threatening, vulgar, obscene, hateful or otherwise inappropriate comments, or to post comments which will constitute a criminal offense or give rise to civil liability.\\nd. Not to post or make available any material which is protected by copyright, trade mark or other proprietary right without the express permission of the owner of the copyright, trade mark or any other proprietary right.\\ne. To evaluate for yourself the accuracy of any opinion, advice or other content.","show_name":"1","show_email":"1","show_website":"1","require_name":"1","require_email":"0","require_website":"0","enable_email_regex":"1","email_regex":["%5CS%2B%40%5CS%2B"],"enable_website_regex":"1","website_regex":["%28http%3A%2F%2F%7Cftp%3A%2F%2F%7Cwww%29%5CS%2B"],"bbcode_bold":"1","bbcode_italic":"1","bbcode_underline":"1","bbcode_link":"1","bbcode_picture":"1","bbcode_video":"1","bbcode_bulletlist":"1","bbcode_numericlist":"1","bbcode_bullet":"1","bbcode_quote":"1","bbcode_code":"1","bbcode_clean":"1","bbcode_smile":"1","bbcode_happy":"1","bbcode_surprised":"1","bbcode_tongue":"1","bbcode_unhappy":"1","bbcode_wink":"1","smileycode":[],"smileypath":[],"layout_avatar_integration":"gravatar","use_komento_profile":"1","easysocial_profile_popbox":"0","gravatar_default_avatar":"mm","layout_phpbb_path":"","layout_phpbb_url":"","share_facebook":"1","share_twitter":"1","share_googleplus":"0","share_linkedin":"0","share_tumblr":"0","share_digg":"0","share_delicious":"0","share_reddit":"0","share_stumbleupon":"0","enable_conversation_bar":"1","conversation_bar_include_guest":"0","conversation_bar_max_authors":"10","enable_stickies":"1","max_stickies":"5","enable_lovies":"1","minimum_likes_lovies":"0","max_lovies":"5","syntaxhighlighter_theme":"default","notification_sendmailonpageload":"1","notification_sendmailinhtml":"1","notification_enable":"1","notification_event_new_comment":"1","notification_event_new_reply":"1","notification_event_new_pending":"1","notification_event_reported_comment":"1","notification_to_admins":"1","notification_to_author":"1","notification_to_subscribers":"1","notification_to_usergroup_comment":"0","notification_to_usergroup_reply":"0","notification_to_usergroup_pending":"0","notification_to_usergroup_reported":"0","notification_es_enable":"0","notification_es_event_new_comment":"0","notification_es_event_new_reply":"0","notification_es_event_new_like":"0","notification_es_to_author":"0","notification_es_to_usergroup_comment":"0","notification_es_to_usergroup_reply":"0","notification_es_to_usergroup_like":"0","notification_es_to_participant":"0","activities_comment":"1","activities_reply":"1","activities_like":"1","jomsocial_enable_comment":"0","jomsocial_enable_reply":"0","jomsocial_enable_like":"0","jomsocial_comment_length":"250","jomsocial_enable_userpoints":"0","enable_aup":"0","enable_discuss_points":"0","enable_discuss_log":"0","enable_easysocial_points":"0","enable_easysocial_badges":"0","enable_easysocial_stream_comment":"0","enable_easysocial_stream_like":"0","enable_easysocial_sync_comment":"0","enable_easysocial_sync_like":"0","upload_enable":"1","upload_path":"","attachment_layout":"icon","upload_allowed_extension":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,rar,txt,xcf,xls,zip","upload_max_size":"2","upload_max_file":"3","upload_image_preview":"1","upload_image_fancybox":"1","upload_image_overlay":"1","trigger_method":"component","enable_live_notification":"1","live_notification_interval":"30"}'),
('com_contushdvideoshare', '{"enable_komento":"1","disable_komento_on_tmpl_component":"0","allowed_categories_mode":"0","enable_orphanitem_convert":"1","orphanitem_ownership":"0","enable_login_form":"1","login_provider":"joomla","enable_moderation":"1","requires_moderation":["1"],"subscription_auto":"0","subscription_confirmation":"0","antispam_akismet":"0","antispam_akismet_key":"","antispam_akismet_trackback":"0","antispam_flood_control":"0","antispam_flood_interval":"10","antispam_min_length_enable":"0","antispam_min_length":"10","antispam_max_length_enable":"0","antispam_max_length":"300","filter_word":"0","filter_word_text":"","blacklist_ip":"","antispam_captcha_enable":"0","antispam_captcha_type":"0","show_captcha":["1"],"antispam_recaptcha_ssl":"0","antispam_recaptcha_public_key":"","antispam_recaptcha_private_key":"","antispam_recaptcha_theme":"clean","antispam_recaptcha_lang":"en","layout_theme":"kuro","enable_responsive":"1","tabbed_comments":"1","max_threaded_level":"5","enable_threaded":"1","thread_indentation":"60","show_sort_buttons":"1","default_sort":"oldest","load_previous":"0","max_comments_per_page":"10","layout_template_override":"1","layout_component_override":"1","layout_inherit_kuro_css":"1","layout_css_admin":"kmt-comment-item-admin","layout_css_registered":"kmt-comment-item-registered","layout_css_author":"kmt-comment-item-author","layout_css_public":"kmt-comment-item-public","name_type":"default","guest_label":"1","auto_hyperlink":"1","links_nofollow":"0","datetime_permalink":"0","date_format":"l, M j Y g:i:sa","max_image_width":"300","max_image_height":"300","allow_video":"0","bbcode_video_width":"350","bbcode_video_height":"350","layout_frontpage_comment":"1","layout_frontpage_readmore":"1","layout_frontpage_hits":"1","layout_frontpage_alignment":"right","enable_lapsed_time":"1","layout_avatar_enable":"1","enable_guest_link":"1","enable_permalink":"1","enable_share":"1","enable_likes":"1","enable_reply":"1","enable_report":"1","enable_location":"1","enable_info":"1","enable_syntax_highlighting":"1","enable_id":"0","enable_reply_reference":"1","enable_rank_bar":"1","enable_live_notification":"1","live_notification_interval":"30","form_position":"0","form_toggle_button":"0","autohide_form_notification":"1","form_show_moderate_message":"1","scroll_to_comment":"1","show_location":"1","enable_bbcode":"1","enable_subscription":"1","show_tnc":["1"],"tnc_text":"Before submitting the comment, you agree that:\\r\\n\\r\\na. To accept full responsibility for the comment that you submit.\\r\\nb. To use this function only for lawful purposes.\\r\\nc. Not to post defamatory, abusive, offensive, racist, sexist, threatening, vulgar, obscene, hateful or otherwise inappropriate comments, or to post comments which will constitute a criminal offense or give rise to civil liability.\\r\\nd. Not to post or make available any material which is protected by copyright, trade mark or other proprietary right without the express permission of the owner of the copyright, trade mark or any other proprietary right.\\r\\ne. To evaluate for yourself the accuracy of any opinion, advice or other content.","show_name":"1","show_email":"1","show_website":"1","require_name":"1","require_email":"0","require_website":"0","enable_email_regex":"1","email_regex":["%5CS%2B%40%5CS%2B"],"enable_website_regex":"1","website_regex":["%28http%3A%2F%2F%7Cftp%3A%2F%2F%7Cwww%29%5CS%2B"],"layout_avatar_integration":"gravatar","use_komento_profile":"1","easysocial_profile_popbox":"0","gravatar_default_avatar":"mm","layout_phpbb_path":"","layout_phpbb_url":"","bbcode_bold":"1","bbcode_italic":"1","bbcode_underline":"1","bbcode_link":"1","bbcode_picture":"1","bbcode_video":"1","bbcode_bulletlist":"1","bbcode_numericlist":"1","bbcode_bullet":"1","bbcode_quote":"1","bbcode_code":"1","bbcode_clean":"1","bbcode_smile":"1","bbcode_happy":"1","bbcode_surprised":"1","bbcode_tongue":"1","bbcode_unhappy":"1","bbcode_wink":"1","smileycode":[],"smileypath":[],"share_facebook":"1","share_twitter":"1","share_googleplus":"0","share_linkedin":"0","share_tumblr":"0","share_digg":"0","share_delicious":"0","share_reddit":"0","share_stumbleupon":"0","enable_conversation_bar":"1","conversation_bar_max_authors":"10","conversation_bar_include_guest":"0","enable_stickies":"1","max_stickies":"5","enable_lovies":"1","minimum_likes_lovies":"0","max_lovies":"5","syntaxhighlighter_theme":"default","notification_enable":"1","notification_sendmailonpageload":"1","notification_sendmailinhtml":"1","notification_event_new_comment":"1","notification_event_new_reply":"1","notification_event_new_pending":"1","notification_event_reported_comment":"1","notification_to_author":"1","notification_to_subscribers":"1","activities_comment":"1","activities_reply":"1","activities_like":"1","trigger_method":"component","target":"com_contushdvideoshare","tnc":"","allowed_categories":[],"notification_to_usergroup_comment":[],"notification_to_usergroup_reply":[],"notification_to_usergroup_pending":[],"notification_to_usergroup_reported":[],"notification_es_to_usergroup_comment":[],"notification_es_to_usergroup_reply":[],"notification_es_to_usergroup_like":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_hashkeys`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_hashkeys` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `key` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_ipfilter`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_ipfilter` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `component` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `rules` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `komento_ipfilter` (`component`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_mailq`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailfrom` varchar(255) DEFAULT NULL,
  `fromname` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'text',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `komento_mailq_status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yn1jm_komento_mailq`
--

INSERT INTO `yn1jm_komento_mailq` (`id`, `mailfrom`, `fromname`, `recipient`, `subject`, `body`, `created`, `type`, `status`) VALUES
(1, 'sunella.fernando@ifsworld.com', 'Sample', 'email@email.com', 'A new comment is posted (checking default image)', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n<title></title>\n</head>\n\n<body style="margin:0;padding:0;background:#ddd;">\n	<div style="width:100%;background:#ddd;margin:0;padding:50px 0 80px;color:#798796;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;">\n\n	<center style="display:block;padding:30px 0">\n		<table cellpadding="0" cellspacing="0" border="0" style="width:590px;background:#fff;border:1px solid #b5bbc1;border-bottom-color:#9ba3ab;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;">\n			<tbody>\n				<tr>\n					<td style="padding:20px;border-bottom:1px solid #b5bbc1;;background:#f5f5f5;border-radius:3px 3px 0 0;-moz-border-radius:3px 3px 0 0;-webkit-border-radius:3px 3px 0 0;">\n						Good day Sunella,\n						<br /><br />\n						A new comment is posted on:						<br />\n						<a href="http://localhost/joom32/index.php/component/contushdvideoshare/player/16/20" style="font-weight:bold;color:#477fda;text-decoration:none;font-size:16px;line-height:20px">checking default image</a>\n						<br />\n						<br />\n						Below is a snippet from the comment that has been posted.					</td>\n				</tr>\n				<tr>\n					<td style="padding:15px 20px;line-height:1.5;color:#555;font-family:''Lucida Grande'',Tahoma,Arial;font-size:12px;text-align:left">\n						<div style="display:inline-block;width:100%;padding-bottom:20px;">\n							<img src="http://www.gravatar.com/avatar/81594c224457690f2c7443e70a126bea?s=100&amp;d=mm" width="50" style="float:left;width:50px;height:auto;border-radius:3px;-moz-border-radius:3px;-webkit-border-radius:3px;" />\n							<div style="margin-left:60px">\n								<span style="font-weight:bold;color:#477fda;text-decoration:none">Super User</span>\n								<span style="color:#999">- Posted on Monday, Oct 5 2015 3:23:34am</span>\n								<div style="font-size:12px;margin-top:3px;">\n									Just testing!								</div>\n							</div>\n						</div>\n\n						<div style="color:#555;clear:both;border-top:1px solid #ddd;padding:20px 0 10px">\n							<a href="http://localhost/joom32/index.php/component/contushdvideoshare/player/16/20#kmt-2" target="_blank" style="display:inline-block;padding:5px 15px;background:#fc0;border:1px solid #caa200;border-bottom-color:#977900;color:#534200;text-shadow:0 1px 0 #ffe684;font-weight:bold;box-shadow:inset 0 1px 0 #ffe064;-moz-box-shadow:inset 0 1px 0 #ffe064;-webkit-box-shadow:inset 0 1px 0 #ffe064;border-radius:2px;moz-border-radius:2px;-webkit-border-radius:2px;text-decoration:none!important">\n								View Comment &nbsp; &raquo;							</a>\n						</div>\n					</td>\n				</tr>\n			</tbody>\n		</table>\n\n			</center>\n\n	</div>\n</body>\n</html>\n', '2015-10-05 03:23:34', 'html', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_subscription`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_subscription` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `component` varchar(255) NOT NULL,
  `cid` bigint(20) unsigned NOT NULL,
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `komento_subscription` (`type`,`component`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_komento_uploads`
--

CREATE TABLE IF NOT EXISTS `yn1jm_komento_uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `filename` text NOT NULL,
  `hashname` text NOT NULL,
  `path` text,
  `created` datetime NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT '0',
  `published` tinyint(1) NOT NULL,
  `mime` text NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_languages`
--

CREATE TABLE IF NOT EXISTS `yn1jm_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yn1jm_languages`
--

INSERT INTO `yn1jm_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_menu`
--

CREATE TABLE IF NOT EXISTS `yn1jm_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Dumping data for table `yn1jm_menu`
--

INSERT INTO `yn1jm_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 97, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 45, 46, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 47, 48, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 49, 50, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 51, 52, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_contushdvideoshare&view=player', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(120, 'main', 'COM_HDVIDEOSHARE', 'com-hdvideoshare', '', 'com-hdvideoshare', 'index.php?option=com_contushdvideoshare', 'component', 0, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/hdvideoshare.png', 0, '', 53, 70, 0, '', 1),
(121, 'main', 'COM_HDVIDEOSHARE_MEMBER_VIDEOS', 'com-hdvideoshare-member-videos', '', 'com-hdvideoshare/com-hdvideoshare-member-videos', 'index.php?option=com_contushdvideoshare&layout=adminvideos', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/membervideos.png', 0, '', 54, 55, 0, '', 1),
(122, 'main', 'COM_HDVIDEOSHARE_MEMBER_DETAILS', 'com-hdvideoshare-member-details', '', 'com-hdvideoshare/com-hdvideoshare-member-details', 'index.php?option=com_contushdvideoshare&layout=memberdetails', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/memberdetails.png', 0, '', 56, 57, 0, '', 1),
(123, 'main', 'COM_HDVIDEOSHARE_ADMIN_VIDEOS', 'com-hdvideoshare-admin-videos', '', 'com-hdvideoshare/com-hdvideoshare-admin-videos', 'index.php?option=com_contushdvideoshare&layout=adminvideos&user=admin', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/adminvideos.png', 0, '', 58, 59, 0, '', 1),
(124, 'main', 'COM_HDVIDEOSHARE_CATEGORY', 'com-hdvideoshare-category', '', 'com-hdvideoshare/com-hdvideoshare-category', 'index.php?option=com_contushdvideoshare&layout=category', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/iconcategory.png', 0, '', 60, 61, 0, '', 1),
(125, 'main', 'COM_HDVIDEOSHARE_PLAYER_SETTINGS', 'com-hdvideoshare-player-settings', '', 'com-hdvideoshare/com-hdvideoshare-player-settings', 'index.php?option=com_contushdvideoshare&layout=settings', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/playersettings.png', 0, '', 62, 63, 0, '', 1),
(126, 'main', 'COM_HDVIDEOSHARE_SITE_SETTINGS', 'com-hdvideoshare-site-settings', '', 'com-hdvideoshare/com-hdvideoshare-site-settings', 'index.php?option=com_contushdvideoshare&layout=sitesettings', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/sitesettings.png', 0, '', 64, 65, 0, '', 1),
(127, 'main', 'COM_HDVIDEOSHARE_GOOGLE_ADSENSE', 'com-hdvideoshare-google-adsense', '', 'com-hdvideoshare/com-hdvideoshare-google-adsense', 'index.php?option=com_contushdvideoshare&layout=googlead', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/googleadsense.png', 0, '', 66, 67, 0, '', 1),
(128, 'main', 'COM_HDVIDEOSHARE_ADS', 'com-hdvideoshare-ads', '', 'com-hdvideoshare/com-hdvideoshare-ads', 'index.php?option=com_contushdvideoshare&layout=ads', 'component', 0, 120, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_contushdvideoshare/assets/ads.png', 0, '', 68, 69, 0, '', 1),
(129, 'mainmenu', 'Public Videos', 'docmentary', '', 'docmentary', 'index.php?option=com_contushdvideoshare&view=category&catid=5', 'component', 0, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(130, 'mainmenu', 'Video Options', '2015-09-18-11-25-48', '', '2015-09-18-11-25-48', 'http://localhost/joom32/index.php/myvideos', 'url', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 15, 16, 0, '*', 0),
(131, 'mainmenu', 'Upload', '2015-09-18-11-26-26', '', '2015-09-18-11-26-26', 'http://localhost/joom32/index.php/videoupload', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 21, 22, 0, '*', 0),
(132, 'mainmenu', 'My Videos', '2015-09-21-04-19-14', '', '2015-09-21-04-19-14', 'http://localhost/joom32/index.php/myvideos', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 17, 18, 0, '*', 0),
(133, 'mainmenu', 'Profile', '2015-09-21-05-12-27', '', '2015-09-21-05-12-27', 'http://localhost/joom32/index.php/component/users/profile?layout=edit', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 13, 14, 0, '*', 0),
(134, 'main', 'com_weblinks', 'com-weblinks', '', 'com-weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 71, 76, 0, '', 1),
(135, 'main', 'com_weblinks_links', 'com-weblinks-links', '', 'com-weblinks/com-weblinks-links', 'index.php?option=com_weblinks', 'component', 0, 134, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 72, 73, 0, '', 1),
(136, 'main', 'com_weblinks_categories', 'com-weblinks-categories', '', 'com-weblinks/com-weblinks-categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 134, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks-cat', 0, '{}', 74, 75, 0, '', 1),
(137, 'main', 'Komento', 'komento', '', 'komento', 'index.php?option=com_komento', 'component', 0, 1, 1, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/komento-favicon.png', 0, '{}', 77, 96, 0, '', 1),
(138, 'main', 'COM_KOMENTO_MENU_COMMENTS', 'com-komento-menu-comments', '', 'komento/com-komento-menu-comments', 'index.php?option=com_komento&view=comments', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/comments-favicon.png', 0, '{}', 78, 79, 0, '', 1),
(139, 'main', 'COM_KOMENTO_MENU_PENDINGS', 'com-komento-menu-pendings', '', 'komento/com-komento-menu-pendings', 'index.php?option=com_komento&view=pending', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/pending-favicon.png', 0, '{}', 80, 81, 0, '', 1),
(140, 'main', 'COM_KOMENTO_MENU_REPORTS', 'com-komento-menu-reports', '', 'komento/com-komento-menu-reports', 'index.php?option=com_komento&view=reports', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/reports-favicon.png', 0, '{}', 82, 83, 0, '', 1),
(141, 'main', 'COM_KOMENTO_MENU_SUBSCRIBERS', 'com-komento-menu-subscribers', '', 'komento/com-komento-menu-subscribers', 'index.php?option=com_komento&view=subscribers', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/subscribers-favicon.png', 0, '{}', 84, 85, 0, '', 1),
(142, 'main', 'COM_KOMENTO_MENU_INTEGRATIONS', 'com-komento-menu-integrations', '', 'komento/com-komento-menu-integrations', 'index.php?option=com_komento&view=integrations', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/integrations-favicon.png', 0, '{}', 86, 87, 0, '', 1),
(143, 'main', 'COM_KOMENTO_MENU_CONFIGURATION', 'com-komento-menu-configuration', '', 'komento/com-komento-menu-configuration', 'index.php?option=com_komento&view=system', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/system-favicon.png', 0, '{}', 88, 89, 0, '', 1),
(144, 'main', 'COM_KOMENTO_MENU_ACL', 'com-komento-menu-acl', '', 'komento/com-komento-menu-acl', 'index.php?option=com_komento&view=acl', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/acls-favicon.png', 0, '{}', 90, 91, 0, '', 1),
(145, 'main', 'COM_KOMENTO_MENU_MIGRATORS', 'com-komento-menu-migrators', '', 'komento/com-komento-menu-migrators', 'index.php?option=com_komento&view=migrators', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/migrators-favicon.png', 0, '{}', 92, 93, 0, '', 1),
(146, 'main', 'COM_KOMENTO_MENU_MAILQ', 'com-komento-menu-mailq', '', 'komento/com-komento-menu-mailq', 'index.php?option=com_komento&view=mailq', 'component', 0, 137, 2, 10019, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_komento/assets/images/mailq-favicon.png', 0, '{}', 94, 95, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_menu_types`
--

CREATE TABLE IF NOT EXISTS `yn1jm_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yn1jm_menu_types`
--

INSERT INTO `yn1jm_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_messages`
--

CREATE TABLE IF NOT EXISTS `yn1jm_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `yn1jm_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_modules`
--

CREATE TABLE IF NOT EXISTS `yn1jm_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `yn1jm_modules`
--

INSERT INTO `yn1jm_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 66, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 67, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Video Category', '', '', 0, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharecategories', 1, 1, '', 0, '*'),
(88, 56, 'Featured Videos', '', '', 0, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharefeatured', 1, 1, '', 0, '*'),
(89, 57, 'Popular Videos', '', '', 0, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharepopular', 1, 1, '', 0, '*'),
(90, 58, 'Recent Videos', '', '', 0, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharerecent', 1, 1, '', 0, '*'),
(91, 59, 'Random Videos', '', '', 0, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharerandom', 1, 1, '', 0, '*'),
(92, 60, 'Related Videos', '', '', 0, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharerelated', 1, 1, '', 0, '*'),
(93, 61, 'Search Videos', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharesearch', 1, 1, '{"moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 62, 'Video Share Player', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_videoshare', 1, 1, '', 0, '*'),
(95, 63, 'Video Share Category Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharecategory', 1, 1, '', 0, '*'),
(96, 64, 'Video Share RSS Module', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_hdvideosharerss', 1, 1, '', 0, '*'),
(97, 65, 'Videoplus Banner', '', '', 0, 'videoplus-banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_VideoPlusBanner', 1, 1, '', 0, '*'),
(98, 66, 'Videoplus Categories', '', '', 0, 'videoplus-category', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_VideoPlusCategories', 1, 1, '', 0, '*'),
(99, 67, 'Videoplus Header', '', '', 1, 'videoplus-header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_VideoPlusHeader', 1, 1, '{"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 68, 'Komento Activities', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_komento_activities', 1, 1, '', 0, '*'),
(101, 69, 'Komento Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_komento_comments', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_modules_menu`
--

CREATE TABLE IF NOT EXISTS `yn1jm_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_modules_menu`
--

INSERT INTO `yn1jm_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `yn1jm_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_overrider`
--

CREATE TABLE IF NOT EXISTS `yn1jm_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `yn1jm_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `yn1jm_postinstall_messages`
--

INSERT INTO `yn1jm_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(5, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(6, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(7, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(8, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_redirect_links`
--

CREATE TABLE IF NOT EXISTS `yn1jm_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_schemas`
--

CREATE TABLE IF NOT EXISTS `yn1jm_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_schemas`
--

INSERT INTO `yn1jm_schemas` (`extension_id`, `version_id`) VALUES
(21, '3.4.0'),
(700, '3.4.0-2015-02-26'),
(10019, 'install.mysql.utf8');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_session`
--

CREATE TABLE IF NOT EXISTS `yn1jm_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_session`
--

INSERT INTO `yn1jm_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('2atodiaumio1ajb2ciote6ksd5', 1, 1, '1444026158', '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1444026158;s:18:"session.timer.last";i:1444026158;s:17:"session.timer.now";i:1444026158;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:2:"13";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"23629b3dac01e8b5a0d4184dc7b7ab24";}', 0, ''),
('j4ata04d5hju6jr9pkl346v0f1', 0, 0, '1444026163', '__default|a:8:{s:15:"session.counter";i:98;s:19:"session.timer.start";i:1444015433;s:18:"session.timer.last";i:1444026163;s:17:"session.timer.now";i:1444026163;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":1:{s:5:"users";O:8:"stdClass":1:{s:5:"login";O:8:"stdClass":1:{s:4:"form";O:8:"stdClass":2:{s:4:"data";a:0:{}s:6:"return";s:72:"http://localhost/joom32/index.php/player/presales/checking-default-image";}}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":28:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";s:3:"544";s:4:"name";s:7:"Sunella";s:8:"username";s:7:"sunella";s:5:"email";s:15:"email@email.com";s:8:"password";s:60:"$2y$10$Z.LZ3JIY3Bky9Q7Jgam5b.i.dov9Q1i.NNrRckoJTZxCPfW4DyOX.";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:12:"registerDate";s:19:"2015-09-18 08:59:20";s:13:"lastvisitDate";s:19:"2015-10-05 03:22:04";s:10:"activation";s:0:"";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:1:{i:2;s:1:"2";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:2;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:2;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"b3523febef3161d4291b8fe28ff26ec8";}', 544, 'sunella');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_tags`
--

CREATE TABLE IF NOT EXISTS `yn1jm_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `yn1jm_tags`
--

INSERT INTO `yn1jm_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_template_styles`
--

CREATE TABLE IF NOT EXISTS `yn1jm_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `yn1jm_template_styles`
--

INSERT INTO `yn1jm_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"#873e8d","templateBackgroundColor":"#e2e2e2","logoFile":"images\\/Capture.JPG","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'videoplus', 0, '0', 'Sample', '{"logo":"images\\/Capture.JPG","facebook_url":"","twitter_url":"","googleplus_url":"","book_marking":"0","Fb_app_id":""}');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_ucm_base`
--

CREATE TABLE IF NOT EXISTS `yn1jm_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_ucm_content`
--

CREATE TABLE IF NOT EXISTS `yn1jm_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_ucm_history`
--

CREATE TABLE IF NOT EXISTS `yn1jm_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_updates`
--

CREATE TABLE IF NOT EXISTS `yn1jm_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=49 ;

--
-- Dumping data for table `yn1jm_updates`
--

INSERT INTO `yn1jm_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(2, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(3, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(4, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(5, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(6, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(7, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(8, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(9, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(10, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(11, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(12, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(13, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(14, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(15, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(16, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(17, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(18, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(19, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(20, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(21, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(22, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(23, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(24, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(25, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(26, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(27, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(28, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(29, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.3.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(30, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(31, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(32, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(33, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(34, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(35, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(36, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(37, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(38, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(39, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(40, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(41, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(42, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(43, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(44, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(45, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.4.4.3', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(46, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(47, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(48, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/prs-AF_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_update_sites`
--

CREATE TABLE IF NOT EXISTS `yn1jm_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `yn1jm_update_sites`
--

INSERT INTO `yn1jm_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1444020982, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1444020982, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1444020979, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1444020979, ''),
(5, 'Weblinks Update Site', 'extension', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 1, 1444020979, ''),
(6, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1444020979, '');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `yn1jm_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `yn1jm_update_sites_extensions`
--

INSERT INTO `yn1jm_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28),
(5, 801),
(6, 10017);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_usergroups`
--

CREATE TABLE IF NOT EXISTS `yn1jm_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `yn1jm_usergroups`
--

INSERT INTO `yn1jm_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_users`
--

CREATE TABLE IF NOT EXISTS `yn1jm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=545 ;

--
-- Dumping data for table `yn1jm_users`
--

INSERT INTO `yn1jm_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(543, 'Super User', 'admin', 'sunella.fernando@ifsworld.com', '$2y$10$wmAWFxbX6EnoM5ERilqj5.cP5ZQH9YDce4lBBPfNrC9C.OnbjBz.G', 0, 1, '2015-09-18 06:45:08', '2015-10-05 04:28:30', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(544, 'Sunella', 'sunella', 'email@email.com', '$2y$10$Z.LZ3JIY3Bky9Q7Jgam5b.i.dov9Q1i.NNrRckoJTZxCPfW4DyOX.', 0, 0, '2015-09-18 08:59:20', '2015-10-05 03:23:59', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_user_keys`
--

CREATE TABLE IF NOT EXISTS `yn1jm_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `yn1jm_user_keys`
--

INSERT INTO `yn1jm_user_keys` (`id`, `user_id`, `token`, `series`, `invalid`, `time`, `uastring`) VALUES
(1, 'admin', '$2y$10$obXXZkx4Y7srl0FHlfr89ebxc0rU95JzjAOUN3Zb17HkK1xheSkK.', 'YVQzRUgwWFpWYkVpbnhzeGJDNlE=', 0, '1447752892', '7d1d94912760c252322c0e3669b5e31d'),
(2, 'admin', '$2y$10$lS7Hn7jAVj4xmuL7gpgOluDUPyqRavTsCZdqzQ87bos/Cs9YZJMKS', 'VEF1NkpJN21FQ1dkYmJESjNLelA=', 0, '1447991087', '7d1d94912760c252322c0e3669b5e31d');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_user_notes`
--

CREATE TABLE IF NOT EXISTS `yn1jm_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_user_profiles`
--

CREATE TABLE IF NOT EXISTS `yn1jm_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `yn1jm_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yn1jm_user_usergroup_map`
--

INSERT INTO `yn1jm_user_usergroup_map` (`user_id`, `group_id`) VALUES
(543, 8),
(544, 2);

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_viewlevels`
--

CREATE TABLE IF NOT EXISTS `yn1jm_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `yn1jm_viewlevels`
--

INSERT INTO `yn1jm_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `yn1jm_weblinks`
--

CREATE TABLE IF NOT EXISTS `yn1jm_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

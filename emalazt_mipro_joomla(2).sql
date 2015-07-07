-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-07-2015 a las 21:07:25
-- Versión del servidor: 5.5.42-37.1
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `emalazt_mipro_joomla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_adminmenuentries`
--

DROP TABLE IF EXISTS `joomla_virtuemart_adminmenuentries`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_adminmenuentries` (
  `id` tinyint(1) unsigned NOT NULL,
  `module_id` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';

--
-- Volcado de datos para la tabla `joomla_virtuemart_adminmenuentries`
--

REPLACE INTO `joomla_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `ordering`, `published`, `tooltip`, `view`, `task`) VALUES
(1, 1, 0, 'COM_VIRTUEMART_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_camera', 1, 1, '', 'category', ''),
(2, 1, 0, 'COM_VIRTUEMART_PRODUCT_S', '', '', 'vmicon vmicon-16-camera', 2, 1, '', 'product', ''),
(3, 1, 0, 'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S', '', '', 'vmicon vmicon-16-document_move', 5, 1, '', 'custom', ''),
(4, 1, 0, 'COM_VIRTUEMART_PRODUCT_INVENTORY', '', '', 'vmicon vmicon-16-price_watch', 7, 1, '', 'inventory', ''),
(5, 1, 0, 'COM_VIRTUEMART_CALC_S', '', '', 'vmicon vmicon-16-calculator', 8, 1, '', 'calc', ''),
(6, 1, 0, 'COM_VIRTUEMART_REVIEW_RATE_S', '', '', 'vmicon vmicon-16-comments', 9, 1, '', 'ratings', ''),
(7, 2, 0, 'COM_VIRTUEMART_ORDER_S', '', '', 'vmicon vmicon-16-page_white_stack', 1, 1, '', 'orders', ''),
(8, 2, 0, 'COM_VIRTUEMART_COUPON_S', '', '', 'vmicon vmicon-16-shopping', 10, 1, '', 'coupon', ''),
(9, 2, 0, 'COM_VIRTUEMART_REPORT', '', '', 'vmicon vmicon-16-chart_bar', 3, 1, '', 'report', ''),
(10, 2, 0, 'COM_VIRTUEMART_USER_S', '', '', 'vmicon vmicon-16-user', 4, 1, '', 'user', ''),
(11, 2, 0, 'COM_VIRTUEMART_SHOPPERGROUP_S', '', '', 'vmicon vmicon-16-user-group', 5, 1, '', 'shoppergroup', ''),
(12, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_S', '', '', 'vmicon vmicon-16-wrench_orange', 1, 1, '', 'manufacturer', ''),
(13, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_wrench', 2, 1, '', 'manufacturercategories', ''),
(14, 4, 0, 'COM_VIRTUEMART_STORE', '', '', 'vmicon vmicon-16-reseller_account_template', 1, 1, '', 'user', 'editshop'),
(15, 4, 0, 'COM_VIRTUEMART_MEDIA_S', '', '', 'vmicon vmicon-16-pictures', 2, 1, '', 'media', ''),
(16, 4, 0, 'COM_VIRTUEMART_SHIPMENTMETHOD_S', '', '', 'vmicon vmicon-16-lorry', 3, 1, '', 'shipmentmethod', ''),
(17, 4, 0, 'COM_VIRTUEMART_PAYMENTMETHOD_S', '', '', 'vmicon vmicon-16-creditcards', 4, 1, '', 'paymentmethod', ''),
(18, 5, 0, 'COM_VIRTUEMART_CONFIGURATION', '', '', 'vmicon vmicon-16-config', 1, 1, '', 'config', ''),
(19, 5, 0, 'COM_VIRTUEMART_USERFIELD_S', '', '', 'vmicon vmicon-16-participation_rate', 2, 1, '', 'userfields', ''),
(20, 5, 0, 'COM_VIRTUEMART_ORDERSTATUS_S', '', '', 'vmicon vmicon-16-document_editing', 3, 1, '', 'orderstatus', ''),
(21, 5, 0, 'COM_VIRTUEMART_CURRENCY_S', '', '', 'vmicon vmicon-16-coins', 5, 1, '', 'currency', ''),
(22, 5, 0, 'COM_VIRTUEMART_COUNTRY_S', '', '', 'vmicon vmicon-16-globe', 6, 1, '', 'country', ''),
(23, 11, 0, 'COM_VIRTUEMART_MIGRATION_UPDATE', '', '', 'vmicon vmicon-16-installer_box', 0, 1, '', 'updatesmigration', ''),
(24, 11, 0, 'COM_VIRTUEMART_ABOUT', '', '', 'vmicon vmicon-16-info', 10, 1, '', 'about', ''),
(25, 11, 0, 'COM_VIRTUEMART_HELP_TOPICS', 'http://docs.virtuemart.net/', '', 'vmicon vmicon-16-help', 5, 1, '', '', ''),
(26, 11, 0, 'COM_VIRTUEMART_COMMUNITY_FORUM', 'http://forum.virtuemart.net/', '', 'vmicon vmicon-16-reseller_programm', 7, 1, '', '', ''),
(27, 11, 0, 'COM_VIRTUEMART_STATISTIC_SUMMARY', '', '', 'vmicon vmicon-16-info', 1, 1, '', 'virtuemart', ''),
(28, 11, 0, 'COM_VIRTUEMART_LOG', '', '', 'vmicon vmicon-16-info', 2, 1, '', 'log', ''),
(29, 11, 0, 'COM_VIRTUEMART_SUPPORT', '', '', 'vmicon vmicon-16-help', 3, 1, '', 'support', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_calcs`
--

DROP TABLE IF EXISTS `joomla_virtuemart_calcs`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_calcs` (
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `calc_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` char(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` char(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_calc_categories`
--

DROP TABLE IF EXISTS `joomla_virtuemart_calc_categories`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_calc_categories` (
  `id` mediumint(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_calc_countries`
--

DROP TABLE IF EXISTS `joomla_virtuemart_calc_countries`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_calc_countries` (
  `id` mediumint(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_calc_manufacturers`
--

DROP TABLE IF EXISTS `joomla_virtuemart_calc_manufacturers`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_calc_manufacturers` (
  `id` mediumint(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_calc_shoppergroups`
--

DROP TABLE IF EXISTS `joomla_virtuemart_calc_shoppergroups`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_calc_shoppergroups` (
  `id` mediumint(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_calc_states`
--

DROP TABLE IF EXISTS `joomla_virtuemart_calc_states`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_calc_states` (
  `id` mediumint(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_carts`
--

DROP TABLE IF EXISTS `joomla_virtuemart_carts`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_carts` (
  `virtuemart_cart_id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `cartData` varbinary(50000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store the cart';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_categories`
--

DROP TABLE IF EXISTS `joomla_virtuemart_categories`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_categories` (
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `category_template` char(128) DEFAULT NULL,
  `category_layout` char(64) DEFAULT NULL,
  `category_product_layout` char(64) DEFAULT NULL,
  `products_per_row` tinyint(1) DEFAULT NULL,
  `limit_list_step` char(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';

--
-- Volcado de datos para la tabla `joomla_virtuemart_categories`
--

REPLACE INTO `joomla_virtuemart_categories` (`virtuemart_category_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:32:17', 57, '2015-06-11 23:32:17', 57, '0000-00-00 00:00:00', 0),
(2, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:32:32', 57, '2015-06-19 20:47:42', 57, '0000-00-00 00:00:00', 0),
(3, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:33:02', 57, '2015-06-30 17:09:40', 57, '0000-00-00 00:00:00', 0),
(5, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:37:02', 57, '2015-06-22 18:28:24', 57, '0000-00-00 00:00:00', 0),
(6, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:40:21', 57, '2015-06-30 17:19:59', 57, '0000-00-00 00:00:00', 0),
(7, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:43:55', 57, '2015-06-30 17:20:23', 57, '0000-00-00 00:00:00', 0),
(8, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:53:19', 57, '2015-06-20 14:02:54', 57, '0000-00-00 00:00:00', 0),
(9, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-11 23:58:59', 57, '2015-06-30 17:24:20', 57, '0000-00-00 00:00:00', 0),
(10, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-12 00:11:32', 57, '2015-06-28 14:52:01', 57, '0000-00-00 00:00:00', 0),
(46, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 14:52:53', 57, '2015-06-18 14:52:53', 57, '0000-00-00 00:00:00', 0),
(12, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-14 00:14:58', 57, '2015-06-18 14:50:17', 57, '0000-00-00 00:00:00', 0),
(13, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-14 00:50:19', 57, '2015-06-18 14:49:07', 57, '0000-00-00 00:00:00', 0),
(14, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-14 00:50:53', 57, '2015-06-16 16:21:30', 57, '0000-00-00 00:00:00', 0),
(15, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-14 01:07:51', 57, '2015-06-19 13:56:06', 57, '0000-00-00 00:00:00', 0),
(16, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-14 01:08:38', 57, '2015-06-14 01:08:38', 57, '0000-00-00 00:00:00', 0),
(24, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-15 22:46:09', 57, '2015-06-15 22:46:09', 57, '0000-00-00 00:00:00', 0),
(22, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-15 22:33:48', 57, '2015-06-28 14:47:30', 57, '0000-00-00 00:00:00', 0),
(25, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 13:33:42', 57, '2015-06-30 17:30:12', 57, '0000-00-00 00:00:00', 0),
(26, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 13:43:20', 57, '2015-06-18 16:43:44', 57, '0000-00-00 00:00:00', 0),
(27, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 13:45:39', 57, '2015-06-30 17:47:08', 57, '0000-00-00 00:00:00', 0),
(28, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 13:48:01', 57, '2015-06-16 13:48:01', 57, '0000-00-00 00:00:00', 0),
(29, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 15:09:51', 57, '2015-06-19 20:34:38', 57, '0000-00-00 00:00:00', 0),
(31, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 16:43:03', 57, '2015-06-16 16:43:24', 57, '0000-00-00 00:00:00', 0),
(32, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 18:10:17', 57, '2015-06-16 18:10:17', 57, '0000-00-00 00:00:00', 0),
(33, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 18:21:13', 57, '2015-06-30 18:24:08', 57, '0000-00-00 00:00:00', 0),
(34, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 19:37:08', 57, '2015-06-19 20:48:19', 57, '0000-00-00 00:00:00', 0),
(35, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 20:52:06', 57, '2015-06-16 20:52:06', 57, '0000-00-00 00:00:00', 0),
(36, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 21:20:02', 57, '2015-06-30 18:42:07', 57, '0000-00-00 00:00:00', 0),
(37, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 22:08:12', 57, '2015-06-17 13:17:50', 57, '0000-00-00 00:00:00', 0),
(38, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-16 22:30:20', 57, '2015-06-16 22:30:20', 57, '0000-00-00 00:00:00', 0),
(39, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-17 19:30:25', 57, '2015-06-30 18:44:21', 57, '0000-00-00 00:00:00', 0),
(41, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-17 19:57:58', 57, '2015-06-18 16:44:07', 57, '0000-00-00 00:00:00', 0),
(42, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-17 20:03:53', 57, '2015-06-30 19:03:37', 57, '0000-00-00 00:00:00', 0),
(43, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-17 20:13:13', 57, '2015-06-30 19:05:28', 57, '0000-00-00 00:00:00', 0),
(63, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-20 14:11:48', 57, '2015-06-20 14:11:48', 57, '0000-00-00 00:00:00', 0),
(47, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 15:20:01', 57, '2015-06-23 20:56:08', 57, '0000-00-00 00:00:00', 0),
(48, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 16:49:17', 57, '2015-06-18 16:49:17', 57, '0000-00-00 00:00:00', 0),
(50, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 17:26:55', 57, '2015-06-30 14:44:40', 57, '0000-00-00 00:00:00', 0),
(51, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 18:28:08', 57, '2015-06-30 19:12:00', 57, '0000-00-00 00:00:00', 0),
(52, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 18:41:08', 57, '2015-06-18 18:41:08', 57, '0000-00-00 00:00:00', 0),
(53, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 18:55:05', 57, '2015-06-20 17:50:46', 57, '0000-00-00 00:00:00', 0),
(56, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 21:04:18', 57, '2015-06-20 14:34:21', 57, '0000-00-00 00:00:00', 0),
(57, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-18 21:28:00', 57, '2015-06-18 21:28:00', 57, '0000-00-00 00:00:00', 0),
(58, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-19 13:53:36', 57, '2015-06-20 14:53:13', 57, '0000-00-00 00:00:00', 0),
(59, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-19 14:00:38', 57, '2015-06-19 20:47:58', 57, '0000-00-00 00:00:00', 0),
(60, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-19 14:08:27', 57, '2015-07-02 17:16:25', 57, '0000-00-00 00:00:00', 0),
(61, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-19 14:29:55', 57, '2015-06-30 17:40:48', 57, '0000-00-00 00:00:00', 0),
(62, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-19 20:15:24', 57, '2015-06-30 16:17:26', 57, '0000-00-00 00:00:00', 0),
(64, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-23 21:22:53', 57, '2015-07-02 18:51:19', 57, '0000-00-00 00:00:00', 0),
(65, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-24 13:39:05', 57, '2015-06-24 14:24:19', 57, '0000-00-00 00:00:00', 0),
(68, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-26 17:27:21', 57, '2015-06-26 17:27:21', 57, '0000-00-00 00:00:00', 0),
(67, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-24 21:39:54', 57, '2015-06-24 21:41:36', 57, '0000-00-00 00:00:00', 0),
(69, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-26 17:36:10', 57, '2015-06-26 17:36:10', 57, '0000-00-00 00:00:00', 0),
(70, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-06-26 21:08:12', 57, '2015-06-26 21:08:12', 57, '0000-00-00 00:00:00', 0),
(71, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-07-01 21:12:08', 57, '2015-07-01 21:12:08', 57, '0000-00-00 00:00:00', 0),
(72, 1, '0', '0', '0', 0, '0', 0, 0, '', '', 0, 0, 1, '2015-07-01 21:14:57', 57, '2015-07-01 21:14:57', 57, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_categories_es_es`
--

DROP TABLE IF EXISTS `joomla_virtuemart_categories_es_es`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_categories_es_es` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `joomla_virtuemart_categories_es_es`
--

REPLACE INTO `joomla_virtuemart_categories_es_es` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Profesionales', '', '', '', '', 'profesionales'),
(2, 'Técnicos', '', '', '', '', 'cerrajero'),
(3, 'Mensajeros', '', '', '', '', 'mensajeros'),
(5, 'Tecnólogos en Sistemas', '', '', '', '', 'tecnologos-en-sistemas'),
(6, 'Diseñador', '', '', '', '', 'diseñador'),
(7, 'Diseñador Grafico', '', '', '', '', 'diseñador-grafico'),
(8, 'Sastres y Modistas', '', '', '', '', 'sastre'),
(9, 'Chef y Cocineros Profesionales', '', '', '', '', 'chef'),
(10, 'Estilistas y Peluquerias', '', '', '', '', 'estilista'),
(12, 'Constructores', '', '', '', '', 'constructor'),
(13, 'Mecánicos', '', '', '', '', 'mecánico'),
(14, 'Mecánico automotriz', '', '', '', '', 'mecanico-automotriz'),
(15, 'Eléctricos', '', '', '', '', 'electricos'),
(16, 'Eléctrico automotriz', '', '', '', '', 'eléctrico-automotriz'),
(24, 'Marqueteros', '', '', '', '', 'marqueteros'),
(22, 'Cerrajeria', '', '', '', '', 'cerrajero-1'),
(25, 'Desarrollador Web', '', '', '', '', 'desarrollador-web'),
(26, 'Ingenieros de Sistemas', '', '', '', '', 'ingenieros-de-sistemas'),
(27, 'Ingenieros', '', '', '', '', 'ingenieros'),
(28, 'Plomeros', '', '', '', '', 'plomeros'),
(29, 'Metalistería y Soldadores', '', '', '', '', 'carpintería-metálica'),
(31, 'Recarga de Extintores', '', '', '', '', 'recarga-de-extintores'),
(32, 'Tapicero Automotriz', '', '', '', '', 'tapicero-automotriz'),
(33, 'Entrenador Fitness', '', '', '', '', 'entrenador-fitness'),
(34, 'Técnicos en Sistemas', '', '', '', '', 'tecnicos-en-sistemas'),
(35, 'Peluqueros Caninos', '', '', '', '', 'peluqueros-caninos'),
(36, 'Contadores', '', '', '', '', 'contadores'),
(37, 'Litografía e Impresos', '', '', '', '', 'litografía-e-impresos'),
(38, 'Fumigadores', '', '', '', '', 'fumigadores'),
(39, 'Arquitectos', '', '', '', '', 'arquitectos'),
(41, 'Ingeniero Mecatrónico', '', '', '', '', 'ingeniero-mecatrónico'),
(42, 'Esteticistas y Estética', '', '', '', '', 'esteticista'),
(43, 'Médicos', '', '', '', '', 'medico-cirujano'),
(46, 'Alojamientos', '', '', '', '', 'alojamientos'),
(47, 'Profesores de Música y Músicos', '', '', '', '', 'profesores-de-música-y-musicos'),
(48, 'Ingeniero Castastral', '', '', '', '', 'ingeniero-castastral'),
(50, 'Fotógrafos', '', '', '', '', 'fotógrafos'),
(51, 'Abogados', '', '', '', '', 'abogados'),
(52, 'Electricistas', '', '', '', '', 'electricistas'),
(53, 'Carpinteros de Madera,aluminio y Ebanistas', '', '', '', '', 'carpinteros-de-madera'),
(56, 'Técnicos en Celulares', '', '', '', '', 'tecnicos-electronicos'),
(57, 'Ingeniero Ambiental', '', '', '', '', 'ingeniero-ambiental'),
(58, 'Electricistas Casas', '', '', '', '', 'eléctrico-de-cableado'),
(59, 'Técnicos en Lavadoras', '', '', '', '', 'tecnicos-en-lavadoras'),
(60, 'Diseñadores de Moda y Tejidos', '', '', '', '', 'diseñadores-de-moda'),
(61, 'Eventos y Comidas', '', '', '', '', 'chefs-y-comida'),
(62, 'Tatuadores', '', '', '', '', 'tatuadores'),
(63, 'Técnico en Televisores', '', '', '', '', 'técnico-en-televisores'),
(64, 'Consultorías', '', '', '', '', 'consultorías'),
(65, 'Odontólogos', '', '', '', '', 'odontología'),
(68, 'Alquiler de Maquinarias', '', '', '', '', 'alquiler-de-maquinarias'),
(67, 'Comercio de Calzado', '', '', '', '', 'fabricación-y-comercialización-de-calzado-1'),
(69, 'Servicio Domestico', '', '', '', '', 'servicio-domestico'),
(70, 'Arte y Manualidades', '', '', '', '', 'arte-y-manualidades'),
(71, 'Comercio', '', '', '', '', 'comercio'),
(72, 'Comercio', '', '', '', '', 'comercio-1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_category_categories`
--

DROP TABLE IF EXISTS `joomla_virtuemart_category_categories`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_category_categories` (
  `id` int(1) unsigned NOT NULL,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

--
-- Volcado de datos para la tabla `joomla_virtuemart_category_categories`
--

REPLACE INTO `joomla_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`) VALUES
(1, 0, 1, 0),
(2, 0, 2, 0),
(3, 2, 3, 0),
(5, 2, 5, 0),
(6, 1, 6, 0),
(7, 6, 7, 0),
(8, 2, 8, 0),
(9, 1, 9, 0),
(10, 2, 10, 0),
(46, 2, 46, 0),
(12, 2, 12, 0),
(13, 2, 13, 0),
(14, 13, 14, 0),
(15, 2, 15, 0),
(16, 15, 16, 0),
(24, 2, 24, 0),
(22, 2, 22, 0),
(25, 1, 25, 0),
(26, 27, 26, 0),
(27, 1, 27, 0),
(28, 2, 28, 0),
(29, 2, 29, 0),
(31, 2, 31, 0),
(32, 2, 32, 0),
(33, 1, 33, 0),
(34, 2, 34, 0),
(35, 2, 35, 0),
(36, 1, 36, 0),
(37, 2, 37, 0),
(38, 2, 38, 0),
(39, 1, 39, 0),
(41, 27, 41, 0),
(42, 2, 42, 0),
(43, 1, 43, 0),
(63, 2, 63, 0),
(47, 2, 47, 0),
(48, 27, 48, 0),
(50, 2, 50, 0),
(51, 1, 51, 0),
(52, 0, 52, 0),
(53, 2, 53, 0),
(56, 2, 56, 0),
(57, 27, 57, 0),
(58, 15, 58, 0),
(59, 2, 59, 0),
(60, 1, 60, 0),
(61, 1, 61, 0),
(62, 2, 62, 0),
(64, 1, 64, 0),
(65, 1, 65, 0),
(68, 2, 68, 0),
(67, 2, 67, 0),
(69, 2, 69, 0),
(70, 2, 70, 0),
(71, 0, 71, 0),
(72, 2, 72, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_category_medias`
--

DROP TABLE IF EXISTS `joomla_virtuemart_category_medias`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_category_medias` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `joomla_virtuemart_category_medias`
--

REPLACE INTO `joomla_virtuemart_category_medias` (`id`, `virtuemart_category_id`, `virtuemart_media_id`, `ordering`) VALUES
(20, 50, 192, 1),
(4, 24, 31, 1),
(27, 62, 200, 1),
(31, 6, 204, 1),
(44, 60, 230, 1),
(33, 9, 206, 1),
(32, 7, 205, 1),
(36, 27, 209, 1),
(34, 25, 207, 1),
(42, 43, 216, 1),
(41, 42, 215, 1),
(29, 3, 202, 1),
(35, 61, 208, 1),
(37, 33, 210, 1),
(40, 39, 213, 1),
(39, 36, 212, 1),
(43, 51, 217, 1),
(45, 64, 234, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_configs`
--

DROP TABLE IF EXISTS `joomla_virtuemart_configs`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) unsigned NOT NULL,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';

--
-- Volcado de datos para la tabla `joomla_virtuemart_configs`
--

REPLACE INTO `joomla_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'shop_is_offline="0"|offline_message="Our Shop is currently down for maintenance. Please check back again soon."|use_as_catalog="0"|currency_converter_module="convertECB.php"|order_mail_html="1"|useSSL="0"|useVendorEmail="0"|dangeroustools="0"|debug_enable="none"|dev="none"|vmdev="none"|google_jquery="0"|multix="none"|usefancy="1"|jchosen="1"|enableEnglish="1"|pdf_button_enable="1"|show_emailfriend="0"|show_printicon="1"|show_out_of_stock_products="1"|ask_captcha="1"|coupons_enable="1"|show_uncat_products="0"|show_uncat_child_products="0"|show_unpub_cat_products="1"|coupons_default_expire="1,M"|weight_unit_default="KG"|lwh_unit_default="M"|list_limit="30"|showReviewFor="all"|reviewMode="bought"|showRatingFor="all"|ratingMode="bought"|reviews_autopublish="1"|reviews_minimum_comment_length="0"|reviews_maximum_comment_length="2000"|product_navigation="1"|display_stock="1"|vmtemplate="default"|categorytemplate="default"|showCategory="1"|categorylayout="0"|categories_per_row="3"|productlayout="0"|products_per_row="3"|llimit_init_FE="24"|vmlayout="0"|show_store_desc="1"|show_categories="1"|homepage_categories_per_row="3"|homepage_products_per_row="3"|show_featured="1"|featured_products_rows="1"|show_topTen="1"|topTen_products_rows="1"|show_recent="1"|recent_products_rows="1"|show_latest="1"|latest_products_rows="1"|assets_general_path="components\\/com_virtuemart\\/assets\\/"|media_category_path="images\\/stories\\/virtuemart\\/category\\/"|media_product_path="images\\/stories\\/virtuemart\\/product\\/"|media_manufacturer_path="images\\/stories\\/virtuemart\\/manufacturer\\/"|media_vendor_path="images\\/stories\\/virtuemart\\/vendor\\/"|forSale_path_thumb="images\\/stories\\/virtuemart\\/forSale\\/resized\\/"|img_resize_enable="1"|img_width="0"|img_height="90"|no_image_set="noimage.gif"|no_image_found="warning.png"|browse_orderby_field="pc.ordering"|browse_cat_orderby_field="c.ordering,category_name"|browse_orderby_fields=["product_name","`p`.product_sku","category_name","mf_name","pc.ordering"]|browse_search_fields=["product_name","`p`.product_sku","product_s_desc","product_desc","category_name","category_description","mf_name"]|askprice="1"|roundindig="1"|show_prices="1"|price_show_packaging_pricelabel="0"|show_tax="1"|basePrice="0"|basePriceText="1"|basePriceRounding="-1"|variantModification="0"|variantModificationText="1"|variantModificationRounding="-1"|basePriceVariant="1"|basePriceVariantText="1"|basePriceVariantRounding="-1"|basePriceWithTax="0"|basePriceWithTaxText="1"|basePriceWithTaxRounding="-1"|discountedPriceWithoutTax="1"|discountedPriceWithoutTaxText="1"|discountedPriceWithoutTaxRounding="-1"|salesPriceWithDiscount="0"|salesPriceWithDiscountText="1"|salesPriceWithDiscountRounding="-1"|salesPrice="1"|salesPriceText="1"|salesPriceRounding="-1"|priceWithoutTax="1"|priceWithoutTaxText="1"|priceWithoutTaxRounding="-1"|discountAmount="1"|discountAmountText="1"|discountAmountRounding="-1"|taxAmount="1"|taxAmountText="1"|taxAmountRounding="-1"|unitPrice="1"|unitPriceText="1"|unitPriceRounding="-1"|addtocart_popup="1"|check_stock="0"|automatic_payment="1"|automatic_shipment="1"|agree_to_tos_onorder="0"|oncheckout_opc="1"|oncheckout_show_legal_info="1"|oncheckout_show_register="1"|oncheckout_show_steps="0"|oncheckout_show_register_text="COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER"|inv_os=["C"]|email_os_s=["U","C","X","R","S"]|email_os_v=["U","C","X","R"]|seo_disabled="0"|seo_translate="0"|seo_use_id="0"|enable_content_plugin="0"|reg_captcha="0"|active_languages=["es-ES"]|revproxvar=""|multixcart="0"|pdf_icon="0"|recommend_unauth="0"|ask_question="0"|asks_minimum_comment_length="50"|asks_maximum_comment_length="2000"|handle_404="1"|cp_rm=["C"]|show_pcustoms="1"|show_uncat_parent_products="0"|latest_products_days="7"|latest_products_orderBy="created_on"|lstockmail="0"|stockhandle="none"|rised_availability=""|image=""|rr_os=["C"]|show_manufacturers="1"|cartlayout="default"|productsublayout="0"|manufacturer_per_row="3"|mediaLimit="20"|llimit_init_BE="30"|pagseq=""|pagseq_1=""|pagseq_2=""|pagseq_3=""|pagseq_4=""|pagseq_5=""|feed_cat_published="0"|feed_cat_show_images="0"|feed_cat_show_prices="0"|feed_cat_show_description="0"|feed_cat_description_type="product_s_desc"|feed_cat_max_text_length="500"|forSale_path="\\\\xampp\\\\htdocs\\\\vmfiles\\\\"|add_img_main="0"|feed_latest_published="0"|feed_latest_nb="5"|feed_topten_published="0"|feed_topten_nb="5"|feed_featured_published="0"|feed_featured_nb="5"|feed_home_show_images="1"|feed_home_show_prices="1"|feed_home_show_description="0"|feed_home_description_type="product_s_desc"|feed_home_max_text_length="500"|css="1"|jquery="1"|jprice="1"|jsite="1"|jdynupdate="1"|rappenrundung="0"|cVarswT="1"|popup_rel="1"|set_automatic_shipment="0"|set_automatic_payment="0"|oncheckout_only_registered="0"|oncheckout_show_images="0"|vmlang_js="0"|oncheckout_change_shopper="1"|del_date_type="m"|attach=""|attach_os=["U","C","X","R"]|prd_brws_orderby_dir="ASC"|cat_brws_orderby_dir="ASC"|seo_sufix="-detail"|task="save"|option="com_virtuemart"|view="config"|7f1edb265496bbd0b51168d4c2744bd5="1"', '0000-00-00 00:00:00', 0, '2015-06-04 00:34:52', 57, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_countries`
--

DROP TABLE IF EXISTS `joomla_virtuemart_countries`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_countries` (
  `virtuemart_country_id` smallint(1) unsigned NOT NULL,
  `virtuemart_worldzone_id` tinyint(1) NOT NULL DEFAULT '1',
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='Country records';

--
-- Volcado de datos para la tabla `joomla_virtuemart_countries`
--

REPLACE INTO `joomla_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'Albania', 'ALB', 'AL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'Algeria', 'DZA', 'DZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'American Samoa', 'ASM', 'AS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Andorra', 'AND', 'AD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'Angola', 'AGO', 'AO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Anguilla', 'AIA', 'AI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'Antarctica', 'ATA', 'AQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Argentina', 'ARG', 'AR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Armenia', 'ARM', 'AM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Aruba', 'ABW', 'AW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 'Australia', 'AUS', 'AU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 'Austria', 'AUT', 'AT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Bahamas', 'BHS', 'BS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bahrain', 'BHR', 'BH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Bangladesh', 'BGD', 'BD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Barbados', 'BRB', 'BB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Belarus', 'BLR', 'BY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Belgium', 'BEL', 'BE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Belize', 'BLZ', 'BZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 'Benin', 'BEN', 'BJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Bermuda', 'BMU', 'BM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Bhutan', 'BTN', 'BT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Bolivia', 'BOL', 'BO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Botswana', 'BWA', 'BW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Bouvet Island', 'BVT', 'BV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Brazil', 'BRA', 'BR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Bulgaria', 'BGR', 'BG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Burkina Faso', 'BFA', 'BF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Burundi', 'BDI', 'BI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 'Cambodia', 'KHM', 'KH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 'Cameroon', 'CMR', 'CM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 'Canada', 'CAN', 'CA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 'Cape Verde', 'CPV', 'CV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Cayman Islands', 'CYM', 'KY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Central African Republic', 'CAF', 'CF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Chad', 'TCD', 'TD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 'Chile', 'CHL', 'CL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'China', 'CHN', 'CN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 'Christmas Island', 'CXR', 'CX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Colombia', 'COL', 'CO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 'Comoros', 'COM', 'KM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Congo', 'COG', 'CG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Cook Islands', 'COK', 'CK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 'Costa Rica', 'CRI', 'CR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 'Croatia', 'HRV', 'HR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Cuba', 'CUB', 'CU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Cyprus', 'CYP', 'CY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Czech Republic', 'CZE', 'CZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 'Denmark', 'DNK', 'DK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Djibouti', 'DJI', 'DJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 'Dominica', 'DMA', 'DM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Dominican Republic', 'DOM', 'DO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'East Timor', 'TMP', 'TP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Ecuador', 'ECU', 'EC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Egypt', 'EGY', 'EG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'El Salvador', 'SLV', 'SV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 'Eritrea', 'ERI', 'ER', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Estonia', 'EST', 'EE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Ethiopia', 'ETH', 'ET', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Faroe Islands', 'FRO', 'FO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 'Fiji', 'FJI', 'FJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 'Finland', 'FIN', 'FI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'France', 'FRA', 'FR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'French Guiana', 'GUF', 'GF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'French Polynesia', 'PYF', 'PF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'French Southern Territories', 'ATF', 'TF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Gabon', 'GAB', 'GA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'Gambia', 'GMB', 'GM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'Georgia', 'GEO', 'GE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Germany', 'DEU', 'DE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Ghana', 'GHA', 'GH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Gibraltar', 'GIB', 'GI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Greece', 'GRC', 'GR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Greenland', 'GRL', 'GL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Grenada', 'GRD', 'GD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Guadeloupe', 'GLP', 'GP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 'Guam', 'GUM', 'GU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Guatemala', 'GTM', 'GT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Guinea', 'GIN', 'GN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 'Guinea-bissau', 'GNB', 'GW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Guyana', 'GUY', 'GY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Haiti', 'HTI', 'HT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 'Honduras', 'HND', 'HN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Hong Kong', 'HKG', 'HK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Hungary', 'HUN', 'HU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Iceland', 'ISL', 'IS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 'India', 'IND', 'IN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Indonesia', 'IDN', 'ID', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Iraq', 'IRQ', 'IQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 'Ireland', 'IRL', 'IE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 'Israel', 'ISR', 'IL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Italy', 'ITA', 'IT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Jamaica', 'JAM', 'JM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'Japan', 'JPN', 'JP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Jordan', 'JOR', 'JO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Kenya', 'KEN', 'KE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Kiribati', 'KIR', 'KI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Korea, Republic of', 'KOR', 'KR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Kuwait', 'KWT', 'KW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Latvia', 'LVA', 'LV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Lebanon', 'LBN', 'LB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Lesotho', 'LSO', 'LS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Liberia', 'LBR', 'LR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Libya', 'LBY', 'LY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Liechtenstein', 'LIE', 'LI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 'Lithuania', 'LTU', 'LT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Luxembourg', 'LUX', 'LU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Macau', 'MAC', 'MO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Madagascar', 'MDG', 'MG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Malawi', 'MWI', 'MW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 'Malaysia', 'MYS', 'MY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'Maldives', 'MDV', 'MV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Mali', 'MLI', 'ML', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Malta', 'MLT', 'MT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Marshall Islands', 'MHL', 'MH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Martinique', 'MTQ', 'MQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Mauritania', 'MRT', 'MR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Mauritius', 'MUS', 'MU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Mayotte', 'MYT', 'YT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 'Mexico', 'MEX', 'MX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'Monaco', 'MCO', 'MC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Mongolia', 'MNG', 'MN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 'Montserrat', 'MSR', 'MS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'Morocco', 'MAR', 'MA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 'Mozambique', 'MOZ', 'MZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 'Myanmar', 'MMR', 'MM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Namibia', 'NAM', 'NA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Nauru', 'NRU', 'NR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Nepal', 'NPL', 'NP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 'Netherlands', 'NLD', 'NL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'New Caledonia', 'NCL', 'NC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'New Zealand', 'NZL', 'NZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Nicaragua', 'NIC', 'NI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 'Niger', 'NER', 'NE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Nigeria', 'NGA', 'NG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 'Niue', 'NIU', 'NU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Norfolk Island', 'NFK', 'NF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Norway', 'NOR', 'NO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Oman', 'OMN', 'OM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Pakistan', 'PAK', 'PK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Palau', 'PLW', 'PW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Panama', 'PAN', 'PA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Paraguay', 'PRY', 'PY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Peru', 'PER', 'PE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Philippines', 'PHL', 'PH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Pitcairn', 'PCN', 'PN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Poland', 'POL', 'PL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Portugal', 'PRT', 'PT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Puerto Rico', 'PRI', 'PR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Qatar', 'QAT', 'QA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Reunion', 'REU', 'RE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Romania', 'ROM', 'RO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Russian Federation', 'RUS', 'RU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Rwanda', 'RWA', 'RW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Saint Lucia', 'LCA', 'LC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Samoa', 'WSM', 'WS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'San Marino', 'SMR', 'SM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'Senegal', 'SEN', 'SN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'Seychelles', 'SYC', 'SC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'Sierra Leone', 'SLE', 'SL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Singapore', 'SGP', 'SG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Slovakia', 'SVK', 'SK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Slovenia', 'SVN', 'SI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Solomon Islands', 'SLB', 'SB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Somalia', 'SOM', 'SO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'South Africa', 'ZAF', 'ZA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Spain', 'ESP', 'ES', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Sri Lanka', 'LKA', 'LK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'St. Helena', 'SHN', 'SH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Sudan', 'SDN', 'SD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Suriname', 'SUR', 'SR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 'Swaziland', 'SWZ', 'SZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 'Sweden', 'SWE', 'SE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 'Switzerland', 'CHE', 'CH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 'Taiwan', 'TWN', 'TW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 'Tajikistan', 'TJK', 'TJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 'Thailand', 'THA', 'TH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 'Togo', 'TGO', 'TG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 'Tokelau', 'TKL', 'TK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 'Tonga', 'TON', 'TO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 'Tunisia', 'TUN', 'TN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 'Turkey', 'TUR', 'TR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 'Turkmenistan', 'TKM', 'TM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 'Tuvalu', 'TUV', 'TV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 'Uganda', 'UGA', 'UG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 'Ukraine', 'UKR', 'UA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 'United Arab Emirates', 'ARE', 'AE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 'United Kingdom', 'GBR', 'GB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 'United States', 'USA', 'US', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 'Uruguay', 'URY', 'UY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 'Vanuatu', 'VUT', 'VU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 'Venezuela', 'VEN', 'VE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 'Viet Nam', 'VNM', 'VN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 'Western Sahara', 'ESH', 'EH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 'Yemen', 'YEM', 'YE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 'Zambia', 'ZMB', 'ZM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 'East Timor', 'XET', 'XE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 'Jersey', 'JEY', 'JE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 'St. Barthelemy', 'XSB', 'XB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 'St. Eustatius', 'XSE', 'XU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 'Canary Islands', 'XCA', 'XC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 'Serbia', 'SRB', 'RS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 'Sint Maarten (French Antilles)', 'MAF', 'MF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 'Sint Maarten (Netherlands Antilles)', 'SXM', 'SX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 'Palestinian Territory, occupied', 'PSE', 'PS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_coupons`
--

DROP TABLE IF EXISTS `joomla_virtuemart_coupons`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_coupons` (
  `virtuemart_coupon_id` int(1) unsigned NOT NULL,
  `coupon_code` char(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_currencies`
--

DROP TABLE IF EXISTS `joomla_virtuemart_currencies`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_currencies` (
  `virtuemart_currency_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `currency_name` char(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) DEFAULT NULL,
  `currency_decimal_place` char(4) DEFAULT NULL,
  `currency_decimal_symbol` char(4) DEFAULT NULL,
  `currency_thousands` char(4) DEFAULT NULL,
  `currency_positive_style` char(64) DEFAULT NULL,
  `currency_negative_style` char(64) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';

--
-- Volcado de datos para la tabla `joomla_virtuemart_currencies`
--

REPLACE INTO `joomla_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'United Arab Emirates dirham', '', 'AED', 784, '0.00000', 'د.إ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'Albanian lek', '', 'ALL', 8, '0.00000', 'Lek', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Netherlands Antillean gulden', '', 'ANG', 532, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Argentine peso', '', 'ARS', 32, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Australian dollar', '', 'AUD', 36, '0.00000', '$', '2', '.', '', '{symbol} {number}', '{sign}{symbol} {number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Aruban florin', '', 'AWG', 533, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Barbadian dollar', '', 'BBD', 52, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Bangladeshi taka', '', 'BDT', 50, '0.00000', '৳', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Bahraini dinar', '', 'BHD', 48, '0.00000', 'ب.د', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Burundian franc', '', 'BIF', 108, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bermudian dollar', '', 'BMD', 60, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Brunei dollar', '', 'BND', 96, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Bolivian boliviano', '', 'BOB', 68, '0.00000', '$b', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Brazilian real', '', 'BRL', 986, '0.00000', 'R$', '2', ',', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Bahamian dollar', '', 'BSD', 44, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Bhutanese ngultrum', '', 'BTN', 64, '0.00000', 'BTN', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Botswana pula', '', 'BWP', 72, '0.00000', 'P', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Belize dollar', '', 'BZD', 84, '0.00000', 'BZ$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Canadian dollar', '', 'CAD', 124, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Swiss franc', '', 'CHF', 756, '0.00000', 'CHF', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Unidad de Fomento', '', 'CLF', 990, '0.00000', 'CLF', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Chilean peso', '', 'CLP', 152, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Chinese renminbi yuan', '', 'CNY', 156, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'Colombian peso', '', 'COP', 170, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Costa Rican colón', '', 'CRC', 188, '0.00000', '₡', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Czech koruna', '', 'CZK', 203, '0.00000', 'Kč', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Cuban peso', '', 'CUP', 192, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Cape Verdean escudo', '', 'CVE', 132, '0.00000', '$', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Danish krone', '', 'DKK', 208, '0.00000', 'kr', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Dominican peso', '', 'DOP', 214, '0.00000', 'RD$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Algerian dinar', '', 'DZD', 12, '0.00000', 'د.ج', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'Egyptian pound', '', 'EGP', 818, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Ethiopian birr', '', 'ETB', 230, '0.00000', 'ETB', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Euro', '', 'EUR', 978, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Fijian dollar', '', 'FJD', 242, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Falkland pound', '', 'FKP', 238, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'British pound', '', 'GBP', 826, '0.00000', '£', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Gibraltar pound', '', 'GIP', 292, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Gambian dalasi', '', 'GMD', 270, '0.00000', 'D', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Guinean franc', '', 'GNF', 324, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Guatemalan quetzal', '', 'GTQ', 320, '0.00000', 'Q', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Guyanese dollar', '', 'GYD', 328, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'Hong Kong dollar', '', 'HKD', 344, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Honduran lempira', '', 'HNL', 340, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Haitian gourde', '', 'HTG', 332, '0.00000', 'G', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'Hungarian forint', '', 'HUF', 348, '0.00000', 'Ft', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Indonesian rupiah', '', 'IDR', 360, '0.00000', 'Rp', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Israeli new sheqel', '', 'ILS', 376, '0.00000', '₪', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Indian rupee', '', 'INR', 356, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Iraqi dinar', '', 'IQD', 368, '0.00000', 'ع.د', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Iranian rial', '', 'IRR', 364, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number}{symb0l}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'Jamaican dollar', '', 'JMD', 388, '0.00000', 'J$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 'Jordanian dinar', '', 'JOD', 400, '0.00000', 'د.ا', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'Japanese yen', '', 'JPY', 392, '0.00000', '¥', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'Kenyan shilling', '', 'KES', 404, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'Cambodian riel', '', 'KHR', 116, '0.00000', '៛', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Comorian franc', '', 'KMF', 174, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'North Korean won', '', 'KPW', 408, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'South Korean won', '', 'KRW', 410, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Kuwaiti dinar', '', 'KWD', 414, '0.00000', 'د.ك', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Cayman Islands dollar', '', 'KYD', 136, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Lao kip', '', 'LAK', 418, '0.00000', '₭', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Lebanese pound', '', 'LBP', 422, '0.00000', '£', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Sri Lankan rupee', '', 'LKR', 144, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Liberian dollar', '', 'LRD', 430, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Lesotho loti', '', 'LSL', 426, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Libyan dinar', '', 'LYD', 434, '0.00000', 'ل.د', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Moroccan dirham', '', 'MAD', 504, '0.00000', 'د.م.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Mongolian tögrög', '', 'MNT', 496, '0.00000', '₮', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Macanese pataca', '', 'MOP', 446, '0.00000', 'P', '1', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Mauritanian ouguiya', '', 'MRO', 478, '0.00000', 'UM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Mauritian rupee', '', 'MUR', 480, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Maldivian rufiyaa', '', 'MVR', 462, '0.00000', 'ރ.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Malawian kwacha', '', 'MWK', 454, '0.00000', 'MK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Malaysian ringgit', '', 'MYR', 458, '0.00000', 'RM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Nigerian naira', '', 'NGN', 566, '0.00000', '₦', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Norwegian krone', '', 'NOK', 578, '0.00000', 'kr', '2', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Nepalese rupee', '', 'NPR', 524, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'New Zealand dollar', '', 'NZD', 554, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Omani rial', '', 'OMR', 512, '0.00000', '﷼', '3', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Panamanian balboa', '', 'PAB', 590, '0.00000', 'B/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Peruvian nuevo sol', '', 'PEN', 604, '0.00000', 'S/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Papua New Guinean kina', '', 'PGK', 598, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Philippine peso', '', 'PHP', 608, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Pakistani rupee', '', 'PKR', 586, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Polish Złoty', '', 'PLN', 985, '0.00000', 'zł', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Paraguayan guaraní', '', 'PYG', 600, '0.00000', '₲', '0', '', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Qatari riyal', '', 'QAR', 634, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Romanian leu', '', 'RON', 946, '0.00000', 'lei', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Rwandan franc', '', 'RWF', 646, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Saudi riyal', '', 'SAR', 682, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Solomon Islands dollar', '', 'SBD', 90, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Seychellois rupee', '', 'SCR', 690, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Swedish krona', '', 'SEK', 752, '0.00000', 'kr', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Singapore dollar', '', 'SGD', 702, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Saint Helenian pound', '', 'SHP', 654, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Sierra Leonean leone', '', 'SLL', 694, '0.00000', 'Le', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Somali shilling', '', 'SOS', 706, '0.00000', 'S', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'São Tomé and Príncipe dobra', '', 'STD', 678, '0.00000', 'Db', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Russian ruble', '', 'RUB', 643, '0.00000', 'руб', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Salvadoran colón', '', 'SVC', 222, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Syrian pound', '', 'SYP', 760, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Swazi lilangeni', '', 'SZL', 748, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Thai baht', '', 'THB', 764, '0.00000', '฿', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Tunisian dinar', '', 'TND', 788, '0.00000', 'د.ت', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Tongan paʻanga', '', 'TOP', 776, '0.00000', 'T$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Turkish new lira', '', 'TRY', 949, '0.00000', 'YTL', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Trinidad and Tobago dollar', '', 'TTD', 780, '0.00000', 'TT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'New Taiwan dollar', '', 'TWD', 901, '0.00000', 'NT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Tanzanian shilling', '', 'TZS', 834, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'United States dollar', '', 'USD', 840, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Vietnamese Dong', '', 'VND', 704, '0.00000', '₫', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Vanuatu vatu', '', 'VUV', 548, '0.00000', 'Vt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Samoan tala', '', 'WST', 882, '0.00000', 'T', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Yemeni rial', '', 'YER', 886, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'Serbian dinar', '', 'RSD', 941, '0.00000', 'Дин.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'South African rand', '', 'ZAR', 710, '0.00000', 'R', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Zambian kwacha', '', 'ZMK', 894, '0.00000', 'ZK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Zimbabwean dollar', '', 'ZWD', 932, '0.00000', 'Z$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Armenian dram', '', 'AMD', 51, '0.00000', 'դր.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Myanmar kyat', '', 'MMK', 104, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Croatian kuna', '', 'HRK', 191, '0.00000', 'kn', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Eritrean nakfa', '', 'ERN', 232, '0.00000', 'Nfk', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Djiboutian franc', '', 'DJF', 262, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Icelandic króna', '', 'ISK', 352, '0.00000', 'kr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Kazakhstani tenge', '', 'KZT', 398, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Kyrgyzstani som', '', 'KGS', 417, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Latvian lats', '', 'LVL', 428, '0.00000', 'Ls', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Lithuanian litas', '', 'LTL', 440, '0.00000', 'Lt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Mexican peso', '', 'MXN', 484, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Moldovan leu', '', 'MDL', 498, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Namibian dollar', '', 'NAD', 516, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Nicaraguan córdoba', '', 'NIO', 558, '0.00000', 'C$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Ugandan shilling', '', 'UGX', 800, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Macedonian denar', '', 'MKD', 807, '0.00000', 'ден', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Uruguayan peso', '', 'UYU', 858, '0.00000', '$', '0', '', '', '{symbol}number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Uzbekistani som', '', 'UZS', 860, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Azerbaijani manat', '', 'AZN', 934, '0.00000', 'ман', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Ghanaian cedi', '', 'GHS', 936, '0.00000', '₵', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Venezuelan bolívar', '', 'VEF', 937, '0.00000', 'Bs', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Sudanese pound', '', 'SDG', 938, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Uruguay Peso', '', 'UYI', 940, '0.00000', 'UYI', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Mozambican metical', '', 'MZN', 943, '0.00000', 'MT', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'WIR Euro', '', 'CHE', 947, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'WIR Franc', '', 'CHW', 948, '0.00000', 'CHW', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Central African CFA franc', '', 'XAF', 950, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'East Caribbean dollar', '', 'XCD', 951, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'West African CFA franc', '', 'XOF', 952, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'CFP franc', '', 'XPF', 953, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Surinamese dollar', '', 'SRD', 968, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Malagasy ariary', '', 'MGA', 969, '0.00000', 'MGA', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Unidad de Valor Real', '', 'COU', 970, '0.00000', 'COU', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Afghan afghani', '', 'AFN', 971, '0.00000', '؋', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Tajikistani somoni', '', 'TJS', 972, '0.00000', 'ЅМ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'Angolan kwanza', '', 'AOA', 973, '0.00000', 'Kz', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'Belarusian ruble', '', 'BYR', 974, '0.00000', 'p.', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Bulgarian lev', '', 'BGN', 975, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Congolese franc', '', 'CDF', 976, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'Bosnia and Herzegovina convert', '', 'BAM', 977, '0.00000', 'KM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'Mexican Unid', '', 'MXV', 979, '0.00000', 'MXV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Ukrainian hryvnia', '', 'UAH', 980, '0.00000', '₴', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Georgian lari', '', 'GEL', 981, '0.00000', 'ლ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Mvdol', '', 'BOV', 984, '0.00000', 'BOV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_customs`
--

DROP TABLE IF EXISTS `joomla_virtuemart_customs`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_customs` (
  `virtuemart_custom_id` int(1) unsigned NOT NULL,
  `custom_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `custom_element` char(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` char(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `custom_tip` char(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` varchar(2000) DEFAULT NULL COMMENT 'default value',
  `custom_desc` char(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` char(2) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `is_input` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add input to cart',
  `layout_pos` char(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` varchar(17000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valid for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

--
-- Volcado de datos para la tabla `joomla_virtuemart_customs`
--

REPLACE INTO `joomla_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `is_input`, `layout_pos`, `custom_params`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(6, 9, 1, 0, '', 0, 'Telefono', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-04 20:36:12', 57, 0, '2015-06-13 00:29:12', 57, '0000-00-00 00:00:00', 0),
(7, 9, 1, 0, '', 0, 'Email', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-04 20:37:03', 57, 0, '2015-06-13 00:28:57', 57, '0000-00-00 00:00:00', 0),
(3, 9, 1, 0, '', 0, 'Ciudad', 1, 'Cuidad en la que se encuentra el profesional', 'Pereira;Santa Rosa;Dosquebradas;Viterbo', 'Cuidad a la que pertenece', 'S', 1, 0, 0, 0, '', '0', 0, 1, '2015-06-03 16:42:57', 57, 0, '2015-06-13 00:29:37', 57, '0000-00-00 00:00:00', 0),
(4, 9, 1, 0, '', 0, 'Años De Experiencia', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-04 02:57:46', 57, 0, '2015-06-13 00:29:28', 57, '0000-00-00 00:00:00', 0),
(5, 9, 1, 0, '', 0, 'Especialidad', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-04 02:58:59', 57, 0, '2015-06-13 00:29:20', 57, '0000-00-00 00:00:00', 0),
(8, 9, 1, 0, '', 0, 'Celular', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-06 17:45:23', 57, 0, '2015-06-06 17:46:32', 57, '0000-00-00 00:00:00', 0),
(9, 0, 1, 0, '', 0, 'Info General', 1, '', '', '', 'G', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-06 17:46:03', 57, 0, '2015-06-06 17:46:10', 57, '0000-00-00 00:00:00', 0),
(10, 9, 1, 0, '', 0, 'Facebook', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-06 17:47:18', 57, 0, '2015-06-06 17:47:18', 57, '0000-00-00 00:00:00', 0),
(11, 9, 1, 0, '', 0, 'Dirección', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-06 17:48:11', 57, 0, '2015-06-06 17:48:15', 57, '0000-00-00 00:00:00', 0),
(12, 9, 1, 0, '', 0, 'Barrio', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-13 00:25:56', 57, 0, '2015-06-13 00:28:07', 57, '0000-00-00 00:00:00', 0),
(13, 9, 1, 0, '', 0, 'Egresado de', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-13 00:30:10', 57, 0, '2015-06-13 00:32:04', 57, '0000-00-00 00:00:00', 0),
(15, 9, 1, 0, '', 0, 'Tiempo de Afiliación', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-13 00:31:51', 57, 0, '2015-06-13 00:32:35', 57, '0000-00-00 00:00:00', 0),
(16, 9, 1, 0, '', 0, 'Horario', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-13 00:43:28', 57, 0, '2015-06-13 01:05:36', 57, '0000-00-00 00:00:00', 0),
(17, 9, 1, 0, '', 0, 'Días disponible', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-13 01:04:48', 57, 0, '2015-06-13 01:04:48', 57, '0000-00-00 00:00:00', 0),
(18, 9, 1, 0, '', 0, 'Página Web', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-13 02:13:06', 57, 0, '2015-06-13 02:13:06', 57, '0000-00-00 00:00:00', 0),
(19, 9, 1, 0, '', 0, 'Twitter', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-06 17:47:18', 57, 0, '2015-06-13 17:44:01', 57, '0000-00-00 00:00:00', 0),
(20, 9, 1, 0, '', 0, 'Asesor', 1, '', '', '', 'S', 0, 0, 0, 0, '', '0', 0, 1, '2015-06-27 18:35:54', 57, 0, '2015-06-27 18:35:54', 57, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_invoices`
--

DROP TABLE IF EXISTS `joomla_virtuemart_invoices`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `invoice_number` char(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_manufacturercategories`
--

DROP TABLE IF EXISTS `joomla_virtuemart_manufacturercategories`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_manufacturercategories_es_es`
--

DROP TABLE IF EXISTS `joomla_virtuemart_manufacturercategories_es_es`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_manufacturercategories_es_es` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_manufacturers`
--

DROP TABLE IF EXISTS `joomla_virtuemart_manufacturers`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_manufacturers_es_es`
--

DROP TABLE IF EXISTS `joomla_virtuemart_manufacturers_es_es`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_manufacturers_es_es` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_manufacturer_medias`
--

DROP TABLE IF EXISTS `joomla_virtuemart_manufacturer_medias`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_manufacturer_medias` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_medias`
--

DROP TABLE IF EXISTS `joomla_virtuemart_medias`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_medias` (
  `virtuemart_media_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `file_title` char(126) NOT NULL DEFAULT '',
  `file_description` char(254) NOT NULL DEFAULT '',
  `file_meta` char(254) NOT NULL DEFAULT '',
  `file_class` char(64) NOT NULL DEFAULT '',
  `file_mimetype` char(64) NOT NULL DEFAULT '',
  `file_type` char(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(17000) NOT NULL DEFAULT '',
  `file_lang` varchar(500) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';

--
-- Volcado de datos para la tabla `joomla_virtuemart_medias`
--

REPLACE INTO `joomla_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'como-construir-tu-prestigio-profesional.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/como-construir-tu-prestigio-profesional.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 16:20:44', 57, '2015-06-03 16:21:16', 57, '0000-00-00 00:00:00', 0),
(2, 1, 'logo_servicio_tecnico_tcm57-148230.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/logo_servicio_tecnico_tcm57-148230.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 16:27:51', 57, '2015-06-03 16:27:51', 57, '0000-00-00 00:00:00', 0),
(3, 1, '00fd7db068658d02d0f3576150f3bfbf.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/00fd7db068658d02d0f3576150f3bfbf.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 16:41:10', 57, '2015-06-04 02:59:58', 57, '0000-00-00 00:00:00', 0),
(4, 1, '00fd7db068658d02d0f3576150f3bfbf.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/8f992b54d28760ed078c3f7a88233dea.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 16:41:26', 57, '2015-06-03 16:41:26', 57, '0000-00-00 00:00:00', 0),
(5, 1, '00fd7db068658d02d0f3576150f3bfbf.jpg_product_product_product', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/avatar_dribbble_px.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 17:03:34', 57, '2015-06-03 17:07:21', 57, '0000-00-00 00:00:00', 0),
(6, 1, '00fd7db068658d02d0f3576150f3bfbf.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/emir_avatar_digiclack_logo_tshirt.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 17:05:16', 57, '2015-06-04 03:00:34', 57, '0000-00-00 00:00:00', 0),
(7, 1, '00fd7db068658d02d0f3576150f3bfbf.jpg_product_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Homero_aggh.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 17:06:41', 57, '2015-06-03 17:09:42', 57, '0000-00-00 00:00:00', 0),
(8, 1, '00fd7db068658d02d0f3576150f3bfbf.jpg_product_product_product_product_product', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/portrait.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-03 17:10:57', 57, '2015-06-03 17:10:57', 57, '0000-00-00 00:00:00', 0),
(9, 1, 'Diego Cardona.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Diego Cardona.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-06 17:44:26', 57, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0),
(10, 1, 'Andrés Felipe Bedoya.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Andrés Felipe Bedoya.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-06 18:00:09', 57, '2015-06-06 18:00:09', 57, '0000-00-00 00:00:00', 0),
(11, 1, 'Andrés Felipe Bedoya.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/felipe.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-06 18:01:28', 57, '2015-06-11 23:54:54', 57, '0000-00-00 00:00:00', 0),
(12, 1, 'Logo mp.com.co RGB (JPG)-02.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Logo mp.com.co RGB (JPG)-02.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-06 18:11:25', 57, '2015-06-16 20:07:05', 57, '0000-00-00 00:00:00', 0),
(13, 1, 'sastreperfil.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/sastreperfil.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-06 18:29:18', 57, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0),
(14, 1, 'avatar-chef.png', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/avatar-chef.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-11 23:58:29', 57, '2015-06-12 00:57:40', 57, '0000-00-00 00:00:00', 0),
(15, 1, 'Mango161.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mango161.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-12 01:07:02', 57, '2015-06-12 01:07:02', 57, '0000-00-00 00:00:00', 0),
(16, 1, 'estilista2.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/estilista2.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-12 01:11:52', 57, '2015-06-30 21:40:50', 57, '0000-00-00 00:00:00', 0),
(17, 1, '2.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/2.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-12 19:35:50', 57, '2015-06-12 19:35:50', 57, '0000-00-00 00:00:00', 0),
(18, 1, 'Logo miProfesional.com.co JPG-02.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Logo miProfesional.com.co JPG-02.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-13 01:13:43', 57, '2015-06-13 01:38:18', 57, '0000-00-00 00:00:00', 0),
(19, 1, 'tecnico.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/tecnico.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-13 17:00:44', 57, '2015-06-13 17:45:21', 57, '0000-00-00 00:00:00', 0),
(20, 1, 'P1110366.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/P1110366.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-14 00:31:56', 57, '2015-06-14 00:31:56', 57, '0000-00-00 00:00:00', 0),
(21, 1, 'P1110366.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/P1110363.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-14 00:35:00', 57, '2015-06-14 00:35:00', 57, '0000-00-00 00:00:00', 0),
(22, 1, 'BANNER ABAJO MECÁNICO.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/BANNER ABAJO MECaNICO.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-14 00:49:09', 57, '2015-06-14 00:56:26', 57, '0000-00-00 00:00:00', 0),
(23, 1, 'estilista2.jpg_product', '', '', '', '', 'product', 'images/stories/virtuemart/product/', '', 0, 0, 0, '', '', 0, 1, '2015-06-14 00:54:01', 57, '2015-06-24 21:33:56', 57, '0000-00-00 00:00:00', 0),
(24, 1, 'alonso electrico.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/alonso electrico.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-14 01:07:01', 57, '2015-06-14 01:38:03', 57, '0000-00-00 00:00:00', 0),
(25, 1, 'P1110366.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/constructor.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 19:45:45', 57, '2015-06-15 19:45:45', 57, '0000-00-00 00:00:00', 0),
(26, 1, 'P1110366.jpg_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Avatar Constructor-01.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 19:51:12', 57, '2015-06-23 13:15:47', 57, '0000-00-00 00:00:00', 0),
(27, 1, 'CONTRATO 0022.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0022.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 21:32:51', 57, '2015-06-15 21:32:51', 57, '0000-00-00 00:00:00', 0),
(28, 1, 'CONTRATO 0022.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00229.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 21:34:41', 57, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0),
(29, 1, 'Andrés Felipe Bedoya.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0053.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 22:04:48', 57, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0),
(30, 1, 'CONTRATO 0032.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0032.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 22:11:04', 57, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0),
(31, 1, 'Logo mp.com.co RGB (JPG)-02.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/Logo mp.com.co RGB (JPG)-02.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 22:46:09', 57, '2015-06-15 22:46:09', 57, '0000-00-00 00:00:00', 0),
(32, 1, 'CONTRATO 0012.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0012.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 22:52:45', 57, '2015-06-15 22:52:45', 57, '0000-00-00 00:00:00', 0),
(33, 1, 'CONTRATO 00121.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00121.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-15 22:53:07', 57, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0),
(34, 1, 'Mi Profesional.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 14:14:53', 57, '2015-06-22 19:22:40', 57, '0000-00-00 00:00:00', 0),
(35, 1, 'Mi Profesional4.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional4.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 14:50:05', 57, '2015-06-23 18:44:39', 57, '0000-00-00 00:00:00', 0),
(36, 1, 'CONTRATO 0003.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0003.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 15:24:19', 57, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0),
(37, 1, 'CONTRATO 0005.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0005.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 15:57:35', 57, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0),
(38, 1, 'Mi Profesional3.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional3.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 16:14:44', 57, '2015-06-16 16:19:00', 57, '0000-00-00 00:00:00', 0),
(39, 1, 'Mi Profesional7.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional7.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 16:38:20', 57, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0),
(40, 1, 'Mi Profesional39.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional39.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 16:54:18', 57, '2015-06-16 16:57:39', 57, '0000-00-00 00:00:00', 0),
(41, 1, 'Mi Profesional77.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional77.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 17:07:21', 57, '2015-06-19 12:48:26', 57, '0000-00-00 00:00:00', 0),
(42, 1, 'CONTRATO 0010.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0010.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 18:17:27', 57, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0),
(43, 1, 'CONTRATO 0011.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0011.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 18:52:15', 57, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0),
(44, 1, 'Logo miProfesional.com.co JPG-02.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0013.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 19:12:12', 57, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0),
(45, 1, 'Mi Profesional39.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0008.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 19:18:40', 57, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0),
(46, 1, 'Mi Profesional7.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0007.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 19:19:47', 57, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0),
(47, 1, 'Mi Profesional3.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0006.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 19:20:55', 57, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0),
(48, 1, 'CONTRATO 0014.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0014.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 19:27:45', 57, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0),
(49, 1, 'Mi Profesional9.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional9.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 19:53:18', 57, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0),
(50, 1, 'Logo mp.com.co RGB (JPG)-02.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00535.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 20:10:57', 57, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0),
(51, 1, 'Mi Profesional8.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional8.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 20:16:18', 57, '2015-06-16 20:18:12', 57, '0000-00-00 00:00:00', 0),
(52, 1, 'Mi Profesional79.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional79.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 20:23:39', 57, '2015-06-16 20:25:27', 57, '0000-00-00 00:00:00', 0),
(53, 1, 'CONTRATO 0018.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0018.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 20:47:37', 57, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0),
(54, 1, 'CONTRATO 0055.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0055.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 20:49:55', 57, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0),
(55, 1, 'CONTRATO 0019.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0019.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 21:02:18', 57, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0),
(56, 1, 'CONTRATO 0056.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0056.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 21:06:34', 57, '2015-06-16 21:29:52', 57, '0000-00-00 00:00:00', 0),
(57, 1, 'CONTRATO 0020.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0020.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 21:16:50', 57, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0),
(58, 1, 'CONTRATO 0056.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0056 c.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 21:28:49', 57, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0),
(59, 1, 'Mi Profesional1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional1.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 21:35:25', 57, '2015-06-16 21:37:33', 57, '0000-00-00 00:00:00', 0),
(60, 1, 'CONTRATO 0058.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0058.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 21:46:50', 57, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0),
(61, 1, 'CONTRATO 0059.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0059.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 22:25:23', 57, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0),
(62, 1, 'CONTRATO 0060.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0060.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-16 22:41:34', 57, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0),
(63, 1, 'logoMiProfesional perfil.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/logoMiProfesional perfil.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 19:12:32', 57, '2015-06-17 19:18:50', 57, '0000-00-00 00:00:00', 0),
(64, 1, 'Mi Profesional2.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional2.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 19:42:06', 57, '2015-06-18 14:46:24', 57, '0000-00-00 00:00:00', 0),
(65, 1, 'CONTRATO 0024.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0024.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 19:59:32', 57, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0),
(66, 1, 'Mi Profesional94.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional94.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 20:12:07', 57, '2015-06-18 14:41:20', 57, '0000-00-00 00:00:00', 0),
(67, 1, 'BANNER ABAJO MECÁNICO.jpg_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional6.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 20:30:14', 57, '2015-06-19 20:36:31', 57, '0000-00-00 00:00:00', 0),
(68, 1, 'CONTRATO 0027.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0027.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 20:45:57', 57, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0),
(69, 1, 'contrato 0028.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/contrato 0028.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 21:02:06', 57, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0),
(70, 1, 'CONTRATO 0029.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0029.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-17 21:25:28', 57, '2015-06-18 14:47:29', 57, '0000-00-00 00:00:00', 0),
(71, 1, 'Mi Profesional34.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional34.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 14:33:03', 57, '2015-06-18 16:49:45', 57, '0000-00-00 00:00:00', 0),
(72, 1, 'Mi Profesional37.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional37.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 15:07:41', 57, '2015-06-23 20:50:06', 57, '0000-00-00 00:00:00', 0),
(73, 1, 'Mi Profesional28.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional28.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 15:31:45', 57, '2015-06-20 18:09:05', 57, '0000-00-00 00:00:00', 0),
(74, 1, 'Mi Profesional5.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional5.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 15:52:55', 57, '2015-06-18 15:55:52', 57, '0000-00-00 00:00:00', 0),
(75, 1, 'Mi Profesional72.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional72.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 16:10:26', 57, '2015-06-20 01:46:33', 57, '0000-00-00 00:00:00', 0),
(76, 1, 'Mi Profesional63.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional63.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 16:25:40', 57, '2015-06-18 16:25:40', 57, '0000-00-00 00:00:00', 0),
(77, 1, 'Mi Profesional43.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional43.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 16:37:23', 57, '2015-06-18 16:37:23', 57, '0000-00-00 00:00:00', 0),
(78, 1, 'CONTRATO 0038.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0038.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 17:13:04', 57, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0),
(79, 1, 'CONTRATO 0062.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0062.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 17:27:20', 57, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0),
(80, 1, 'Mi Profesional75.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional75.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 17:38:12', 57, '2015-06-18 17:38:12', 57, '0000-00-00 00:00:00', 0),
(81, 1, 'CONTRATO 0064.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0064.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 18:26:43', 57, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0),
(82, 1, 'CONTRATO 0065.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0065.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 18:41:25', 57, '2015-06-18 18:41:25', 57, '0000-00-00 00:00:00', 0),
(83, 1, 'logoMiProfesional perfil3.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/logoMiProfesional perfil3.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 18:50:46', 57, '2015-06-18 18:50:46', 57, '0000-00-00 00:00:00', 0),
(84, 1, 'Mi Profesional752.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional752.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 18:50:46', 57, '2015-06-20 14:54:00', 57, '0000-00-00 00:00:00', 0),
(85, 1, 'Mi Profesional25.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional25.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 19:03:27', 57, '2015-06-18 19:03:27', 57, '0000-00-00 00:00:00', 0),
(86, 1, 'CONTRATO 0042.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0042.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 19:15:52', 57, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0),
(87, 1, 'CONTRATO 0044.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0044.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 19:19:59', 57, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0),
(88, 1, 'Mi Profesional58.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional58.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 19:40:19', 57, '2015-06-23 13:19:01', 57, '0000-00-00 00:00:00', 0),
(89, 1, 'CONTRATO 0043.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0043.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 19:50:28', 57, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0),
(90, 1, 'Mi Profesional21.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional21.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 20:16:38', 57, '2015-06-18 20:16:38', 57, '0000-00-00 00:00:00', 0),
(91, 1, 'Mi Profesional44.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional44.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 20:34:51', 57, '2015-06-18 20:35:57', 57, '0000-00-00 00:00:00', 0),
(92, 1, 'Mi Profesional84.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional84.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 20:44:57', 57, '2015-06-18 20:44:57', 57, '0000-00-00 00:00:00', 0),
(93, 1, 'Mi Profesional23.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional23.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 20:51:22', 57, '2015-06-22 22:49:07', 57, '0000-00-00 00:00:00', 0),
(94, 1, 'Mi Profesional19.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional19.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 20:58:27', 57, '2015-06-22 22:48:49', 57, '0000-00-00 00:00:00', 0),
(95, 1, 'Mi Profesional11.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional11.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 21:09:01', 57, '2015-06-18 21:29:56', 57, '0000-00-00 00:00:00', 0),
(96, 1, 'Mi Profesional83.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional83.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 21:15:18', 57, '2015-06-20 14:35:56', 57, '0000-00-00 00:00:00', 0),
(97, 1, 'Mi Profesional68.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional68.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 21:23:42', 57, '2015-06-18 21:28:47', 57, '0000-00-00 00:00:00', 0),
(98, 1, 'logoMiProfesional perfil3.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0066.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-18 23:15:35', 57, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0),
(99, 1, 'CONTRATO 0044.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0041.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 12:51:01', 57, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0),
(100, 1, 'CONTRATO 00325.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00325.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:14:07', 57, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0),
(101, 1, 'Mi Profesional11.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:19:51', 57, '2015-06-19 13:19:51', 57, '0000-00-00 00:00:00', 0),
(102, 1, 'Mi Profesional11.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO3.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:24:25', 57, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0),
(103, 1, 'P1110366.jpg_product_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0004.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:28:16', 57, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0),
(104, 1, 'Mi Profesional5.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00042.jpg', '0', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:30:22', 57, '2015-06-23 13:18:11', 57, '0000-00-00 00:00:00', 0),
(105, 1, 'Mi Profesional63.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0036.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:31:28', 57, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0),
(106, 1, 'Mi Profesional53.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional53.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:39:07', 57, '2015-06-19 13:39:07', 57, '0000-00-00 00:00:00', 0),
(107, 1, 'Mi Profesional12.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional12.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 13:51:08', 57, '2015-06-23 13:11:28', 57, '0000-00-00 00:00:00', 0),
(108, 1, 'CONTRATO 00298.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00298.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 14:05:36', 57, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0),
(109, 1, 'Mi Profesional85.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional85.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 14:17:19', 57, '2015-06-19 14:26:27', 57, '0000-00-00 00:00:00', 0),
(110, 1, 'CONTRATO 0068.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0068.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 14:25:01', 57, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0),
(111, 1, 'Mi Profesional98.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Mi Profesional98.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 14:39:44', 57, '2015-06-20 15:06:19', 57, '0000-00-00 00:00:00', 0),
(112, 1, 'Mi Profesional1.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0061.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 14:59:11', 57, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0),
(113, 1, 'CONTRATO 0070.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0070.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 15:11:29', 57, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0),
(114, 1, 'CONTRATO 0071 A.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0071 A.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 16:14:13', 57, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0),
(115, 1, 'Mi Profesional68.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/INGENIERO AMBIENTAL NANO.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 16:20:41', 57, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0),
(116, 1, 'CONTRATO 0106.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0106.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 20:28:14', 57, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0),
(117, 1, 'Mi Profesional21.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONCREA ARQUITECTO.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-19 21:36:26', 57, '2015-06-23 13:10:06', 57, '0000-00-00 00:00:00', 0),
(118, 1, 'Mi Profesional77.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0009.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-20 13:59:57', 57, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0),
(119, 1, 'CONTRATO 0151.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0151.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-22 19:17:05', 57, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0),
(120, 1, 'P1110366.jpg_product_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00041.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 13:23:42', 57, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0),
(121, 1, 'P1110366.jpg_product_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 00048.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 13:25:35', 57, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0),
(122, 1, 'profesional.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 19:43:24', 57, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0),
(123, 1, 'Mi Profesional4.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0002.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 19:46:57', 57, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0),
(124, 1, 'Mi Profesional.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0001.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 19:47:26', 57, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0),
(125, 1, 'BANNER ABAJO MECÁNICO.jpg_product_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional2.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 19:48:47', 57, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0),
(126, 1, 'Mi Profesional8.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional9.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 19:50:24', 57, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0),
(127, 1, 'Mi Profesional44.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional8.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 19:52:54', 57, '2015-06-23 19:52:54', 57, '0000-00-00 00:00:00', 0),
(128, 1, 'Mi Profesional72.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional3.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:05:49', 57, '2015-06-23 20:05:49', 57, '0000-00-00 00:00:00', 0),
(129, 1, 'Mi Profesional79.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional4.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:07:35', 57, '2015-06-23 20:07:35', 57, '0000-00-00 00:00:00', 0),
(130, 1, 'Mi Profesional43.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional32.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:10:42', 57, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0),
(131, 1, 'Mi Profesional23.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional42.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:12:09', 57, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0),
(132, 1, 'Mi Profesional34.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional5.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:15:37', 57, '2015-06-23 20:40:17', 57, '0000-00-00 00:00:00', 0),
(133, 1, 'Mi Profesional2.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional99.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:16:50', 57, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0),
(134, 1, 'Mi Profesional84.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional31.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:21:09', 57, '2015-06-23 20:21:09', 57, '0000-00-00 00:00:00', 0),
(135, 1, 'Mi Profesional85.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional7.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:25:45', 57, '2015-06-23 20:25:45', 57, '0000-00-00 00:00:00', 0),
(136, 1, 'Mi Profesional98.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional35.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:27:00', 57, '2015-06-23 20:27:00', 57, '0000-00-00 00:00:00', 0),
(137, 1, 'Mi Profesional752.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional33.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:29:36', 57, '2015-06-23 20:29:36', 57, '0000-00-00 00:00:00', 0),
(138, 1, 'Logo mp.com.co RGB (JPG)-02.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional1.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:30:11', 57, '2015-06-23 20:30:11', 57, '0000-00-00 00:00:00', 0),
(139, 1, 'Mi Profesional53.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional49.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:31:31', 57, '2015-06-23 20:31:31', 57, '0000-00-00 00:00:00', 0),
(140, 1, 'Mi Profesional94.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional6.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:34:25', 57, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0),
(141, 1, 'Mi Profesional37.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional16.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:51:07', 57, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0),
(142, 1, 'Mi Profesional19.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional68.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:53:51', 57, '2015-06-23 20:53:51', 57, '0000-00-00 00:00:00', 0),
(143, 1, 'Mi Profesional28.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional87.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:54:45', 57, '2015-06-23 20:54:45', 57, '0000-00-00 00:00:00', 0),
(144, 1, 'Mi Profesional75.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional27.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 20:57:48', 57, '2015-06-23 20:57:48', 57, '0000-00-00 00:00:00', 0),
(145, 1, 'CONTRATO0104.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO0104.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 21:20:16', 57, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0),
(146, 1, 'profesional15.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional15.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-23 21:35:16', 57, '2015-06-30 14:07:01', 57, '0000-00-00 00:00:00', 0),
(147, 1, 'CONTRATO00745.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO00745.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 14:17:08', 57, '2015-07-01 21:35:19', 57, '0000-00-00 00:00:00', 0),
(148, 1, 'CONTRATO 0202.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0202.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 19:47:30', 57, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0),
(149, 1, 'profesional39.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional39.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 20:12:07', 57, '2015-06-24 20:12:07', 57, '0000-00-00 00:00:00', 0),
(150, 1, 'CONTRATO 0252.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0252.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 20:40:12', 57, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0),
(151, 1, 'profesional39.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0203.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 20:49:38', 57, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0),
(152, 1, 'CONTRATO 0251.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0251.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 21:01:55', 57, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0),
(153, 1, 'profesional81.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional81.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 21:11:07', 57, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0),
(154, 1, 'profesional76.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional76.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 21:25:52', 57, '2015-06-24 21:25:52', 57, '0000-00-00 00:00:00', 0),
(155, 1, 'CONTRATO 0253.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0253.jpg', 'images/stories/virtuemart/product/resized/CONTRATO 0253_0x90.jpg', 0, 0, 0, '', '', 0, 1, '2015-06-24 21:48:13', 57, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0),
(156, 1, 'CONTRATO 0201_1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0201_1.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-24 22:13:45', 57, '2015-06-24 22:13:45', 57, '0000-00-00 00:00:00', 0),
(157, 1, 'Mi Profesional85.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Laura Sanchez Diseñadora de Modas.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 16:50:22', 57, '2015-06-25 16:51:19', 57, '0000-00-00 00:00:00', 0),
(158, 1, 'CONTRATO 0065.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Jorge Marulanda Abogado.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 16:56:01', 57, '2015-06-25 16:56:01', 57, '0000-00-00 00:00:00', 0),
(159, 1, 'CONTRATO 0065.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Jorge Marulanda Abogado8.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 16:59:20', 57, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0),
(160, 1, 'CONTRATO0255.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO0255.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 17:02:45', 57, '2015-06-25 17:08:15', 57, '0000-00-00 00:00:00', 0),
(161, 1, 'CONTRATO 0256.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0256.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 18:22:55', 57, '2015-06-25 18:26:08', 57, '0000-00-00 00:00:00', 0),
(162, 1, 'Mi Profesional84.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/ABOGADA.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 18:52:43', 57, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0),
(163, 1, 'CONTRATO 0201 (1).jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0201 (1).jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 19:01:11', 57, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0),
(164, 1, 'CONTRATO 0256 (1).jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0256 (1).jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 19:05:12', 57, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0),
(165, 1, 'Mi Profesional21.jpg_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONCREA ARQUITECTO 01.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 19:19:52', 57, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0),
(166, 1, 'CONTRATO 0257.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0257.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 19:51:47', 57, '2015-06-25 19:51:47', 57, '0000-00-00 00:00:00', 0),
(167, 1, 'CONTRATO 02579.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 02579.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 19:54:10', 57, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0),
(168, 1, 'tatuadoresfinal.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/tatuadoresfinal.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 20:11:26', 57, '2015-06-25 20:11:26', 57, '0000-00-00 00:00:00', 0),
(169, 1, 'BARBAS.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/BARBAS.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 20:28:29', 57, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0),
(170, 1, 'CONTRATO 0301.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0301.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 20:55:59', 57, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0),
(171, 1, 'CONTRATO7.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO7.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 21:28:14', 57, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0),
(172, 1, 'CONTRATO 0304.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0304.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-25 22:10:34', 57, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0),
(173, 1, 'profesional62.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional62.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-26 17:34:51', 57, '2015-06-26 17:34:51', 57, '0000-00-00 00:00:00', 0),
(174, 1, 'profesional57.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/profesional57.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-26 17:39:44', 57, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0),
(175, 1, 'CONTRATO 0259.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0259.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-26 21:00:22', 57, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0),
(176, 1, 'CONTRATO 0306.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0306.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-26 21:40:53', 57, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0),
(177, 1, 'CONTRATO0255.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0255.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 16:17:40', 57, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0),
(178, 1, 'abogados1.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/abogados1.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 16:47:38', 57, '2015-06-27 16:47:38', 57, '0000-00-00 00:00:00', 0),
(179, 1, 'abogados1.jpg_category', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/abogados13.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 16:54:38', 57, '2015-06-27 16:54:38', 57, '0000-00-00 00:00:00', 0),
(180, 1, 'arquitectos-01.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/arquitectos-01.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 18:43:48', 57, '2015-06-27 18:43:48', 57, '0000-00-00 00:00:00', 0),
(181, 1, 'arquitectos-01.png_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/arquitectos-011.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 18:49:20', 57, '2015-06-27 18:49:20', 57, '0000-00-00 00:00:00', 0),
(182, 1, 'arquitectos-01.png_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/arquitectos-018.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 18:52:06', 57, '2015-06-27 18:52:06', 57, '0000-00-00 00:00:00', 0),
(183, 1, 'diseñadorgrafico-02.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseñadorgrafico-02.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 18:58:22', 57, '2015-06-27 19:02:53', 57, '0000-00-00 00:00:00', 0),
(184, 1, '2.jpg_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseñadorgrafico-028.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 19:05:18', 57, '2015-06-27 19:05:18', 57, '0000-00-00 00:00:00', 0),
(185, 1, 'diseñadorgrafico-02.png_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseñadorgrafico-029.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 19:05:57', 57, '2015-06-27 19:05:57', 57, '0000-00-00 00:00:00', 0),
(186, 1, 'diseñadorgrafico-02.png_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseñadorcategoria-02.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 19:07:31', 57, '2015-06-27 19:07:31', 57, '0000-00-00 00:00:00', 0),
(187, 1, '2.jpg_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseñadorgrafico-0283.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 20:26:15', 57, '2015-06-27 20:26:15', 57, '0000-00-00 00:00:00', 0),
(188, 1, 'diseñadorgrafico-02.png_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseñadorgrafico-023.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 20:26:40', 57, '2015-06-27 20:26:40', 57, '0000-00-00 00:00:00', 0),
(189, 1, 'diseñadorgrafico-02.png_category_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseñadorcategoria-023.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-27 20:33:06', 57, '2015-06-27 20:33:06', 57, '0000-00-00 00:00:00', 0),
(190, 1, 'diseñadorgrafico-02.png_category_category_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseno-02.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 14:41:14', 57, '2015-06-30 14:41:14', 57, '0000-00-00 00:00:00', 0),
(191, 1, '2.jpg_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseno-028.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 14:41:52', 57, '2015-06-30 14:41:52', 57, '0000-00-00 00:00:00', 0),
(192, 1, 'fotografos-03.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/fotografos-03.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 14:44:40', 57, '2015-06-30 14:44:40', 57, '0000-00-00 00:00:00', 0),
(193, 1, 'Mi Profesional98.jpg_product_product', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/cayanas.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 15:00:27', 57, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0),
(194, 1, 'chesycomidas-04.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/chesycomidas-04.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 15:03:47', 57, '2015-06-30 15:03:47', 57, '0000-00-00 00:00:00', 0),
(195, 1, 'chesycomidas-04.png_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/chesycomidas-047.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 15:04:43', 57, '2015-06-30 15:04:43', 57, '0000-00-00 00:00:00', 0),
(196, 1, 'chesycomidas-04.png_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/chefsycomida-04.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 15:08:52', 57, '2015-06-30 15:08:52', 57, '0000-00-00 00:00:00', 0),
(197, 1, 'chefsycomida-05.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/chefsycomida-05.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 15:09:15', 57, '2015-06-30 15:09:15', 57, '0000-00-00 00:00:00', 0),
(198, 1, 'espayestetica-06.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/espayestetica-06.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 15:31:01', 57, '2015-06-30 15:31:01', 57, '0000-00-00 00:00:00', 0),
(199, 1, 'tatuadoresfinal.jpg_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/tatuador1.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 16:14:04', 57, '2015-06-30 16:14:04', 57, '0000-00-00 00:00:00', 0),
(200, 1, 'tatuadoresfinal.jpg_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/tatuador18.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 16:17:26', 57, '2015-06-30 16:17:26', 57, '0000-00-00 00:00:00', 0),
(201, 1, 'mensajeros-07.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/mensajeros-07.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 16:35:08', 57, '2015-06-30 16:35:08', 57, '0000-00-00 00:00:00', 0),
(202, 1, 'mensajeros-07.png_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/mensajeros-07-07.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:09:40', 57, '2015-06-30 17:09:40', 57, '0000-00-00 00:00:00', 0),
(203, 1, 'arquitectos-01.png_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/arquitectos-01-01.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:13:01', 57, '2015-06-30 17:13:01', 57, '0000-00-00 00:00:00', 0),
(204, 1, 'diseñadorgrafico-02.png_category_category_category_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseno-02-02.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:19:59', 57, '2015-06-30 17:19:59', 57, '0000-00-00 00:00:00', 0),
(205, 1, '2.jpg_category_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/diseno-029.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:20:23', 57, '2015-06-30 17:20:23', 57, '0000-00-00 00:00:00', 0),
(206, 1, 'chefsycomida-05.png_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/chefsycomida-05-05.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:24:20', 57, '2015-06-30 17:24:20', 57, '0000-00-00 00:00:00', 0),
(207, 1, 'desarrolladorweb-08.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/desarrolladorweb-08.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:30:12', 57, '2015-06-30 17:30:12', 57, '0000-00-00 00:00:00', 0),
(208, 1, 'chesycomidas-04.png_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/chefsycomida-04-04.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:33:19', 57, '2015-06-30 17:40:48', 57, '0000-00-00 00:00:00', 0);
REPLACE INTO `joomla_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(209, 1, 'ingenieros-10.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/ingenieros-10.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 17:47:08', 57, '2015-06-30 17:47:08', 57, '0000-00-00 00:00:00', 0),
(210, 1, 'entrenadores-13.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/entrenadores-13.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 18:24:08', 57, '2015-06-30 18:24:08', 57, '0000-00-00 00:00:00', 0),
(211, 1, 'contadores-13.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/contadores-13.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 18:40:38', 57, '2015-06-30 18:40:38', 57, '0000-00-00 00:00:00', 0),
(212, 1, 'contadores-13.png_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/contadores-13-13.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 18:42:07', 57, '2015-06-30 18:42:07', 57, '0000-00-00 00:00:00', 0),
(213, 1, 'arquitectos-01.png_category_category_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/arquitectos-017.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 18:44:21', 57, '2015-06-30 18:44:21', 57, '0000-00-00 00:00:00', 0),
(214, 1, 'estilista2.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/ALEJANDRA QUIROZ.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 19:01:33', 57, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0),
(215, 1, 'espayestetica-06.png_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/espayestetica-06-06.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 19:03:37', 57, '2015-06-30 19:03:37', 57, '0000-00-00 00:00:00', 0),
(216, 1, 'medicos-14.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/medicos-14.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 19:05:28', 57, '2015-06-30 19:05:28', 57, '0000-00-00 00:00:00', 0),
(217, 1, 'abogados1.jpg_category_category', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/abogados-15.png', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 19:12:00', 57, '2015-06-30 19:12:00', 57, '0000-00-00 00:00:00', 0),
(218, 1, 'DSC_0011a (1).jpg', '', '', '', '', 'product', 'images/stories/virtuemart/product/', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 22:22:14', 57, '2015-06-30 22:27:20', 57, '0000-00-00 00:00:00', 0),
(219, 1, 'CONTRATO 03017.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 03017.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 22:45:24', 57, '2015-06-30 22:45:24', 57, '0000-00-00 00:00:00', 0),
(220, 1, 'CONTRATO 03013.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 03013.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 22:46:41', 57, '2015-06-30 22:46:41', 57, '0000-00-00 00:00:00', 0),
(221, 1, '_DSC0514a.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/_DSC0514a.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 22:53:06', 57, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0),
(222, 1, 'DSC_0011a (1)6.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/DSC_0011a (1)6.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 22:53:53', 57, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0),
(223, 1, 'DSC_0011a (1)8.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/DSC_0011a (1)8.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-06-30 22:56:35', 57, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0),
(224, 1, 'CONTRATO 0260.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0260.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-01 20:32:20', 57, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0),
(225, 1, 'CONTRATO 0261.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0261.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-01 21:28:59', 57, '2015-07-01 21:28:59', 57, '0000-00-00 00:00:00', 0),
(226, 1, 'CONTRATO 0261_1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0261_1.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-01 21:32:46', 57, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0),
(227, 1, 'profesional15.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0072 B.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 14:56:22', 57, '2015-07-02 14:56:22', 57, '0000-00-00 00:00:00', 0),
(228, 1, 'CONTRATO 0072 B9.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0072 B9.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 15:03:00', 57, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0),
(229, 1, 'profesional.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Jose Fernando Giraldo Mejia.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 15:09:24', 57, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0),
(230, 1, 'disenodemodas-16.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/disenodemodas-16.png', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 17:16:25', 57, '2015-07-02 17:16:25', 57, '0000-00-00 00:00:00', 0),
(231, 1, 'logoMiProfesional perfil.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CRISTIAN PARRASI.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 18:33:10', 57, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0),
(232, 1, 'Mi Profesional85.jpg_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Laura Sanchez Diseñadora de Modas3.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 18:34:17', 57, '2015-07-02 18:34:17', 57, '0000-00-00 00:00:00', 0),
(233, 1, 'Mi Profesional85.jpg_product_product_product_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/Laurasanche.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 18:35:54', 57, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0),
(234, 1, 'consultorias-17.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/consultorias-17.png', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 18:51:19', 57, '2015-07-02 18:51:19', 57, '0000-00-00 00:00:00', 0),
(235, 1, 'CONTRATO 0401.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO 0401.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 20:03:21', 57, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0),
(236, 1, 'CONTRATO0163.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/CONTRATO0163.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 20:59:53', 57, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0),
(237, 1, 'MUSICOS1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/MUSICOS1.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 21:34:35', 57, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0),
(238, 1, 'MUSICOS17.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/MUSICOS17.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 21:35:30', 57, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0),
(239, 1, 'ingenieros1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/ingenieros1.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 21:42:14', 57, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0),
(240, 1, 'PLOMEROS3.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/PLOMEROS3.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-02 21:56:26', 57, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0),
(241, 1, 'IMG.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/IMG.jpg', '', 0, 0, 0, '', '', 0, 1, '2015-07-03 19:50:55', 57, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_migration_oldtonew_ids`
--

DROP TABLE IF EXISTS `joomla_virtuemart_migration_oldtonew_ids`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) unsigned NOT NULL,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `attributes` longblob,
  `relatedproducts` longblob,
  `orders_start` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_modules`
--

DROP TABLE IF EXISTS `joomla_virtuemart_modules`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_modules` (
  `module_id` int(1) unsigned NOT NULL,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(21000) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';

--
-- Volcado de datos para la tabla `joomla_virtuemart_modules`
--

REPLACE INTO `joomla_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`) VALUES
(1, 'product', 'Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes, Product Types, Product Files (view=media), Inventory, Calculation Rules, Customer Reviews  ', 'storeadmin,admin', 1, '', 1),
(2, 'order', 'View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ', 'admin,storeadmin', 1, '', 2),
(3, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 1, '', 3),
(4, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(5, 'configuration', 'Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ', 'admin,storeadmin', 1, '0', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 0, '', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.', 'none', 1, '', 99),
(8, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 1, '', 99),
(10, 'checkout', '', 'none', 0, '', 99),
(11, 'tools', 'Tools', 'admin', 1, '0', 8),
(13, 'zone', 'This is the zone-shipment module. Here you can manage your shipment costs according to Zones.', 'admin,storeadmin', 0, '', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_orders`
--

DROP TABLE IF EXISTS `joomla_virtuemart_orders`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_orders` (
  `virtuemart_order_id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `order_number` char(64) DEFAULT NULL,
  `customer_number` char(32) DEFAULT NULL,
  `order_pass` char(8) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,2) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` char(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` char(7) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_orderstates`
--

DROP TABLE IF EXISTS `joomla_virtuemart_orderstates`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` char(64) DEFAULT NULL,
  `order_status_description` varchar(20000) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='All available order statuses';

--
-- Volcado de datos para la tabla `joomla_virtuemart_orderstates`
--

REPLACE INTO `joomla_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_description`, `order_stock_handle`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 'COM_VIRTUEMART_ORDER_STATUS_PENDING', '', 'R', 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'U', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER', '', 'R', 2, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'C', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED', '', 'R', 3, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'X', 'COM_VIRTUEMART_ORDER_STATUS_CANCELLED', '', 'A', 4, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'R', 'COM_VIRTUEMART_ORDER_STATUS_REFUNDED', '', 'A', 5, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'S', 'COM_VIRTUEMART_ORDER_STATUS_SHIPPED', '', 'O', 6, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_order_calc_rules`
--

DROP TABLE IF EXISTS `joomla_virtuemart_order_calc_rules`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(1) unsigned NOT NULL,
  `virtuemart_calc_id` int(1) DEFAULT NULL,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(1) DEFAULT NULL,
  `calc_rule_name` char(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` char(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` smallint(1) DEFAULT NULL,
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_order_histories`
--

DROP TABLE IF EXISTS `joomla_virtuemart_order_histories`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(21000) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_order_items`
--

DROP TABLE IF EXISTS `joomla_virtuemart_order_items`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_order_items` (
  `virtuemart_order_item_id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `order_item_sku` char(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` mediumtext,
  `delivery_date` varchar(200) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_order_userinfos`
--

DROP TABLE IF EXISTS `joomla_virtuemart_order_userinfos`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` char(32) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(16) NOT NULL DEFAULT '',
  `email` char(128) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(2500) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_paymentmethods`
--

DROP TABLE IF EXISTS `joomla_virtuemart_paymentmethods`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `payment_element` char(50) NOT NULL DEFAULT '',
  `payment_params` varchar(19000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_paymentmethods_es_es`
--

DROP TABLE IF EXISTS `joomla_virtuemart_paymentmethods_es_es`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_paymentmethods_es_es` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_paymentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `joomla_virtuemart_paymentmethod_shoppergroups`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_paymentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_products`
--

DROP TABLE IF EXISTS `joomla_virtuemart_products`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_products` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` varchar(255) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) unsigned NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) unsigned NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) unsigned DEFAULT NULL,
  `product_params` varchar(2000) NOT NULL DEFAULT '',
  `hits` int(1) unsigned DEFAULT NULL,
  `intnotes` varchar(18000) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` char(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';

--
-- Volcado de datos para la tabla `joomla_virtuemart_products`
--

REPLACE INTO `joomla_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(14, 1, 0, 'Sastre', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-12 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-13 01:03:58', 57, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0),
(6, 1, 0, 'Diseñador Gráfico', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-06 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-06 17:44:26', 57, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0),
(7, 1, 0, 'Tecnólogo en Sistemas', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-06 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-06 18:00:09', 57, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0),
(8, 1, 0, 'Mensajero', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-06 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-06 18:11:25', 57, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0),
(10, 1, 0, 'Sastre', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-06 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-06 18:15:11', 57, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0),
(26, 1, 0, 'Desarrollador Web', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 14:50:05', 57, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0),
(16, 1, 0, 'Constructor', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-13 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-14 00:22:58', 57, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0),
(25, 1, 0, 'Desarrollador Web ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 14:14:53', 57, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0),
(24, 1, 0, 'Marquetero', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-15 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-15 22:53:07', 57, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0),
(21, 1, 0, 'Cerrajero', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-15 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-15 21:32:51', 57, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0),
(20, 1, 0, 'Eléctrico Automotriz', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-13 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-14 01:55:35', 57, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0),
(27, 1, 0, 'Metalistería y Carpintería en Aluminio ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 15:24:19', 57, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0),
(28, 1, 0, 'Constructor', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 15:57:35', 57, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0),
(29, 1, 0, 'Mecánico Automotriz', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 16:14:44', 57, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0),
(30, 1, 0, 'Operario Radiadores ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 16:38:20', 57, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0),
(31, 1, 0, 'Recarga de Extintores ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 16:54:18', 57, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0),
(32, 1, 0, 'Eléctrico Automotriz', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 17:07:21', 57, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0),
(33, 1, 0, 'Tapicero Automotriz ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 18:17:27', 57, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0),
(34, 1, 0, 'Entrenador Fitness', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 18:52:15', 57, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0),
(35, 1, 0, 'Plomero ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 19:27:45', 57, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0),
(36, 1, 0, 'Técnico en Sistemas ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 19:53:18', 57, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0),
(37, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 20:16:18', 57, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0),
(38, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 20:23:39', 57, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0),
(39, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 20:47:37', 57, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0),
(40, 1, 0, 'Estilista', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 20:49:55', 57, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0),
(41, 1, 0, 'Peluquero y Peluquería canina', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 21:02:18', 57, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0),
(42, 1, 0, 'Tejidos Personalizados', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 21:06:34', 57, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0),
(44, 1, 0, 'Peluquero y Peluquería canina ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 21:16:50', 57, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0),
(45, 1, 0, 'Contadora', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 21:35:25', 57, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0),
(46, 1, 0, 'Diseñador Gráfico y Animador 3D', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 21:46:50', 57, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0),
(47, 1, 0, 'Litografía', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 22:25:23', 57, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0),
(48, 1, 0, 'Fumigadores', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-16 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-16 22:41:34', 57, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0),
(49, 1, 0, 'Diseñador Gráfico', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 19:12:32', 57, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0),
(50, 1, 0, 'Arquitecto ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 19:42:06', 57, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0),
(51, 1, 0, 'Carpintería en Aluminio ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 19:59:32', 57, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0),
(52, 1, 0, 'Esteticista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 20:12:07', 57, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0),
(53, 1, 0, 'Médico Cirujano', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 20:25:24', 57, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0),
(54, 1, 0, 'Ingeniero Mecatrónico', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 20:28:44', 57, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0),
(55, 1, 0, 'Cocinero ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 20:45:57', 57, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0),
(56, 1, 0, 'Modista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 21:02:06', 57, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0),
(57, 1, 0, 'Constructor ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-17 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-17 21:25:28', 57, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0),
(58, 1, 0, 'Ingeniero Castastral ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 14:33:03', 57, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0),
(59, 1, 0, 'Alojamiento Empresarial ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 15:07:41', 57, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0),
(60, 1, 0, 'Profesor de Música ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 15:31:45', 57, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0),
(61, 1, 0, 'Constructor', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 15:52:55', 57, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0),
(62, 1, 0, 'Metalistería y Carpintería en Aluminio ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 16:10:26', 57, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0),
(63, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 16:25:40', 57, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0),
(64, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 16:37:23', 57, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0),
(65, 1, 0, 'Restaurador de pinturas y fotografias', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 17:13:04', 57, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0),
(66, 1, 0, 'Fotógrafo ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 17:38:12', 57, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0),
(67, 1, 0, 'Metalistería y Carpintería en Aluminio ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 17:42:47', 57, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0),
(68, 1, 0, 'Abogado', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 18:41:25', 57, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0),
(69, 1, 0, 'Fotografo', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 18:50:46', 57, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0),
(70, 1, 0, 'Electricista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 18:50:46', 57, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0),
(71, 1, 0, 'Ebanista y Carpintero ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 19:03:27', 57, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0),
(72, 1, 0, 'Arquitecto ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 19:15:52', 57, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0),
(73, 1, 0, 'Constructor', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 19:40:19', 57, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0),
(74, 1, 0, 'Carpintería en Guadua ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 19:50:28', 57, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0),
(75, 1, 0, 'Ebanista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 20:04:53', 57, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0),
(76, 1, 0, 'Arquitecto ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 20:16:38', 57, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0),
(77, 1, 0, 'Ingeniero de sistemas y telecomunicación ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 20:34:51', 57, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0),
(78, 1, 0, 'Abogada Especialista en Familia ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 20:44:57', 57, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0),
(79, 1, 0, 'Barbero ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 20:51:22', 57, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0),
(80, 1, 0, 'Músicos Raperos  Jericob y  Piero ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 20:53:32', 57, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0),
(81, 1, 0, 'Técnico de Celulares ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 21:09:01', 57, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0),
(82, 1, 0, 'Técnico Electrónico ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 21:15:18', 57, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0),
(83, 1, 0, 'Ingeniero Ambiental y Consultorïas amb', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-18 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-18 21:23:42', 57, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0),
(84, 1, 0, 'Eléctrico automotriz', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 13:14:07', 57, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0),
(85, 1, 0, 'Plomero', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 13:39:07', 57, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0),
(86, 1, 0, 'Electricista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 13:51:08', 57, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0),
(87, 1, 0, 'Técnico en Lavadoras ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 14:05:36', 57, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0),
(88, 1, 0, 'Diseñadora de modas', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 14:17:19', 57, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0),
(89, 1, 0, 'Contador', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 14:25:01', 57, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0),
(90, 1, 0, '', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 14:39:44', 57, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0),
(91, 1, 0, 'Carpintero ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 15:11:29', 57, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0),
(92, 1, 0, 'Contador Público ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 15:26:53', 57, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0),
(93, 1, 0, 'Tatuador ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-19 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-19 20:28:14', 57, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0),
(94, 1, 0, 'Desarrollador Web ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-22 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-22 19:17:05', 57, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0),
(95, 1, 0, 'Médico ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-23 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-23 19:43:24', 57, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0),
(96, 1, 0, 'Verificadora de Condiciones de Habilitación en Salud', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-23 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-23 21:35:16', 57, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0),
(97, 1, 0, 'Odontóloga ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 14:17:08', 57, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0),
(98, 1, 0, 'Metalistería y Carpintería en Aluminio ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 19:47:30', 57, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0),
(99, 1, 0, 'Barbero ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 20:12:07', 57, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0),
(100, 1, 0, 'Auto Servicio ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 20:40:12', 57, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0),
(101, 1, 0, 'Pizza y Pollo Express', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 21:01:55', 57, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0),
(102, 1, 0, 'Fotógrafa ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 21:11:07', 57, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0),
(103, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 21:25:52', 57, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0),
(104, 1, 0, 'Miscelanea Marin ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-24 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-24 21:38:53', 57, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0),
(105, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 17:02:45', 57, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0),
(106, 1, 0, 'Estilista y Esteticista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 18:22:55', 57, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0),
(107, 1, 0, 'Estilista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 19:35:30', 57, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0),
(108, 1, 0, 'Estilista y Esteticista ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 19:50:31', 57, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0),
(109, 1, 0, 'Estilista Peluquería BARBA&#39;S ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 20:28:29', 57, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0),
(110, 1, 0, 'Escuela de Música ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 20:55:59', 57, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0),
(111, 1, 0, 'Cerrajería y Metalistería ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 21:28:14', 57, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0),
(112, 1, 0, 'Consultorías Especializados en Sistema de  Habilitación ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-25 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-25 22:10:34', 57, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0),
(113, 1, 0, 'Importador de Maquinaria Pesada ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-26 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-26 17:34:51', 57, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0),
(114, 1, 0, 'Servicio Domestico ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-26 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-26 17:39:44', 57, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0),
(115, 1, 0, 'NOVACEL A&#38;D', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-26 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-26 21:00:22', 57, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0),
(116, 1, 0, 'La Tienda Del Yeso ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-06-26 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-06-26 21:23:49', 57, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0),
(117, 1, 0, 'Clínica Del Vestido ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-07-01 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-07-01 20:32:20', 57, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0),
(118, 1, 0, 'Vásquez Sisters ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-07-01 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-07-01 20:56:28', 57, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0),
(119, 1, 0, 'Ingeniero Comercial', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-07-02 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-07-02 18:47:33', 57, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0),
(120, 1, 0, 'Muebles Confort', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-07-02 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-07-02 20:01:48', 57, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0),
(121, 1, 0, 'Abogado', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, 0, '2015-07-02 00:00:00', '', 0, 0, 'KG', NULL, 'min_order_level=""|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2015-07-02 20:59:53', 57, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_products_es_es`
--

DROP TABLE IF EXISTS `joomla_virtuemart_products_es_es`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_products_es_es` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `joomla_virtuemart_products_es_es`
--

REPLACE INTO `joomla_virtuemart_products_es_es` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(14, 'Sastre especialista en reformas de todo tipo', '<table style="height: 46px;" width="341">\r\n<tbody>\r\n<tr>\r\n<td>Reformas</td>\r\n<td>$10.000</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Jairo Santa Ortíz', '', '', '', 'jairo-santa-ortíz'),
(6, 'Diseñador Gráfico con experiencia en ventas, responsable y muy creativo.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseño de Logotipos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$70.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseño Editorial por Página</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$7.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Branding</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$100.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desarrollo de Piezas Gráficas (Flyers, Plegables, Vallas, Afiches, Pendones y Empaques)</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$40.000</p>\r\n</div>\r\n</div>', 'Diego Cardona', '', '', '', 'diego-cardona'),
(7, 'Experiencia en asesoría en redes, y mantenimiento preventivo.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Instalación de Sistema Operativo</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$50.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reparación de Hardware</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mantenimiento Preventivo</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$40.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesoría en Redes</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>De acuerdo diagnóstico</p>\r\n</div>\r\n</div>', 'Andrés Felipe Bedoya G.', '', '', '', 'andrés-felipe-bedoya-g'),
(8, 'Entrega de paquetes en el área metropolitana, vueltas de banco, pagos de servicios públicos y otros.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Entrega de paquetes área metropolitana y zona rural</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$5.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Vueltas de banco</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$3.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pagos de servicios públicos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$2.000</p>\r\n</div>\r\n</div>', 'Andrés Felipe Osorio C.', '', '', '', 'andres-felipe-osorio-c'),
(10, 'Sastre especialista en trajes de novio.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Venta de Trajes Hombre Especialista en Novios</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$200.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Arreglos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$6.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Uniformes Mesa y Bar</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$200.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Camisas Sobre Medidas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$60.000</p>\r\n</div>\r\n</div>', 'Lizardo Vargas', '', '', '', 'lizardo-vargas-1'),
(27, 'Especialista en cortinas enrollables, puertas y ventanas ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Puerta Principal Sencilla Calibre 20</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$180.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventana Calibre x m2</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$65.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cortina Enrollable x m2</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$105.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Hierro Forjado x m2</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$120.000</p>\r\n</div>\r\n</div>', 'Rubén Darío Quiceno Ibañez', '', '', '', 'rubén-darío-quiceno-ibañez'),
(26, 'Ingeniero de sistemas con énfasis en aplicaciones para smartphone y redes informáticas  ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desarrollo Páginas Web </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$637.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Aplicaciones Web</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$1.000.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Redes Informáticas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Aplicaciones Smartsphone</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$1.000.000</p>\r\n</div>\r\n</div>', 'Emanuel Lazt', '', '', '', 'emanuel-lazt'),
(16, 'obra blanca,obra gris,impermeabilizaciones', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>ceramica x metro cuadrado con mortero</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$15.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>pega ladrillo  a la vista por metro cuadrado</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$15.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>pega ladrillo farol x metro cuadrado</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$8.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>impermeabilizaciones</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>por convenir</p>\r\n</div>\r\n</div>', 'Gumersindo Rajo Perez', '', '', '', 'gumersindo-rajoy-perez'),
(25, 'Ingeniero de sistemas con énfasis en páginas web, aplicaciones y desarrollo de juegos HTML 5 ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Aplicación Web</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$500.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Páginas Web </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$1.000.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Juegos HTML 5 </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$800.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>AD Words (Google)</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p><a href="http://www.tecnosolysoft.com" target="_blank">Ver Página Web</a></p>\r\n</div>\r\n</div>', 'Julian Alberto Patiño Mosquera', '', '', '', 'julian-alberto-patiño-mosquera'),
(24, 'Servicio de marquetería restauraciones y venta de obras de arte', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Marquetería</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>Por convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Decoración</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>Por convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Restauración obras de arte</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>Por Convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Servicio a domicilio</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>Por convenir</p>\r\n</div>\r\n</div>', 'Alejandro Marín', '', '', '', 'alejandro-marín-1'),
(21, 'Servicio de instalación de cerraduras de seguridad', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Instalación de cerraduras de seguridad</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$40.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cambio de claves</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$20.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Apertura puertas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$15.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Instalación de puertas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>Por convenir</p>\r\n</div>\r\n</div>', 'Omar David Henao Ramírez', '', '', '', 'omar-david-henao-ramírez'),
(20, 'Servicio eléctrico automotriz para todo tipo de vehiculos', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>todo lo relacionado con la parte eléctrica para vehiculos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>por convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>venta de baterías multimarcas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>ver catalogo</p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n<div class="col-lg-9">\r\n<p> </p>\r\n</div>\r\n</div>', 'Juan Diego Vera Grisales', '', '', '', 'juan-diego-vera-grisales'),
(28, 'Especialista en reparación de techos, pintura y obra blanca ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Plomería </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pintura Casas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reparación Techos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Obra Blanca </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Leonardo de Jesús Ríos Morales', '', '', '', 'leonardo-de-jesús-ríos-morales'),
(29, 'Mecánico Automotriz, énfasis en sincronizacion suspensión y reparación de motor.  ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Sincronización Automóvil </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$40.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Suspensión delantera y trasera </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reparación de motor </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$300.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reparación de caja </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$120.000</p>\r\n</div>\r\n</div>', 'José Leonel Echeverry Mosquera', '', '', '', 'josé-leonel-echeverry-mosqu'),
(30, 'Operario de Radiadores, énfasis en soldadura, radiadores de aluminio y reparación ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Soldadura Radiadores </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>por convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Soldadura</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>por convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Radiadores de Aluminio </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>por convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reparaciones en general </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Pedro Ángel Castañeda Pinzón', '', '', '', 'pedro-ángel-castañeda-pinzón'),
(31, 'Ventas de extintores,recargas de extintores y botiquines ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Recarga extintor 5 lb</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$9.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventas de extintores 5 lb </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$28.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventas de extintores 10 lb</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$38.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Botiquines </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$10.000</p>\r\n</div>\r\n</div>', 'Diego Alejando Castañeda Galvis', '', '', '', 'diego-alejando-castañeda-galvis'),
(32, 'Servicio eléctrico automotriz, reparación y revisiones eléctricas.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reparación Alternadores </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Arranques</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Revisiones Eléctricas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'Alonso Mallorga', '', '', '', 'alonso-mallor'),
(33, 'Lavado técnico de tapicería, soldadura y fabricación de alfombras ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Lavado Técnico de Tapicería </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$25.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Soldadura</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fabricación Alfombras </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Tapizados y cojineria en cuero </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$</p>\r\n</div>\r\n</div>', 'Mario Alejandro Rueda', '', '', '', 'mario-alejandro-rueda'),
(34, 'Entrenador fitness, ejercicio físico entrenamiento personalizado, control peso. Con medios de pago Débito y Crédito ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Rehabilitación Espalda </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$80.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ejercicio físico - Trabajo </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Contro Peso </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$100.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Entrenamiento Personalizado </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$100.000</p>\r\n</div>\r\n</div>', 'Jonathan Mauricio Solano Ríos', '', '', '', 'jonathan-mauricio-solano-ríos'),
(35, 'Énfasis en plomería general, humedades y pintura de interiores y exteriores ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Plomería en general </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Humedades</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pintura interiores - exteriores </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div> </div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Horacio Jaramillo', '', '', '', 'horacio-jaramillo'),
(36, 'Experiencia en instalación de sofware hardware y asesorías ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Intalación de sofware y hardware </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Formateo de computadores </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesorias</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'José Eliecer Gonzáles Castañeda', '', '', '', 'josé-eliecer-gonzáles-castañeda'),
(37, 'Cortes Unisex, Keratinas y Maquillaje ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Peinado</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$25.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Maquillaje</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratina Allissmax </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$150.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Quimicos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$60.000</p>\r\n</div>\r\n</div>', 'Michael Smith Giraldo', '', '', '', 'michael-smith-giraldo'),
(38, 'Manicure, Pedicure, Depilación con Hilo ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Manicure - Pedicure</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$17.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Depilación con hilo </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$10.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cepillados</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseños de papel aluminio </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Maria Elena Hoyos Jaramillo', '', '', '', 'maria-elena-hoyos-jaramillo'),
(39, 'Keratina, Cortes, Cepillados', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratina</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$180.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cepillados</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$12.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cintas Capilares </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$80.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cortes Unisex</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$7.000</p>\r\n</div>\r\n</div>', 'Erika Andrea Soto Jaramillo', '', '', '', 'erika-andrea-soto-jaramillo'),
(40, 'Peluquería en el centro de Pereira con un servicio integral: Cepillado, Manicure, Pedicure y Corte de cabello.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cepillado</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$12.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Manicure y Pedicure</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$16.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Corte Caballero</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$8.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mechas y Tintas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$50.000</p>\r\n</div>\r\n</div>', 'Peluquería D&#39;Maru', '', '', '', 'peluquería-dmaru'),
(41, 'Buen trato hacia tu mascota, Guardería canina por Días. ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Paseador Canino por hora </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$6.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Peluquería Canina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$15.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Guardería Canina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$12.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Tienda Canina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Juan Carlos Álvarez', '', '', '', 'juan-carlosálvarez'),
(42, 'Prendas elaboradas a mano en malla y croché.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Elaboración de Prendas en Malla y Croché</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$80.000</p>\r\n</div>\r\n</div>', 'Adela Inés Toro Florez', '', '', '', 'adela-inés-toro-florez'),
(44, 'Asistencia técnica para tu mascota ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Peluquería Canina - Felina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$10.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asistencia Técnica</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Inseminación Canina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$150.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Servicio Veterinario </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Yamilet López Pérez', '', '', '', 'yamilet-lópez-pérez'),
(45, 'Asesorias Contables ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Declaración de renta </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$200.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesorías contables </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$200.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Digitación documental contable </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$200.000</p>\r\n</div>\r\n</div>', 'Cristina Cano Echeverry', '', '', '', 'cristina-cano-echeverry'),
(46, 'Diseñador Gráfico y Animador 3D y modelado.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Animación 3D y Modelado /seg.</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$100.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseño Piezas Publicitarias</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$40.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Publicidad POP</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n</div>', 'Jhon Fredy Zapata B.', '', '', '', 'jhon-fredy-zapata-buitrago'),
(47, 'Litografía que ofrece los servicios de diseño gráfico, impresión y terminados gráficos.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseño Gráfico</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$10.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Litografía</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Avisos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$80.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Barnizados</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$25.000</p>\r\n</div>\r\n</div>', 'Multigraficos Pereira', '', '', '', 'multigraficos-pereira'),
(48, 'Empresa fumigadora experta en fumigación residencial, comercial, industrial y hospitalaria.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fumigación Residencial</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fumigación Comercial</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fumigación Industrial</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$80.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fumigación Hospitalaria </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$40.000</p>\r\n</div>\r\n</div>', 'Abba Fumigaciones', '', '', '', 'abba-fumigaciones'),
(49, 'Diseñador Gráfico con alta experiencia en el proceso litográfico y asesoría de marca.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Creación de Marca</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$100.000</p>\r\n</div>\r\n</div>', 'Cristian Camilo Parrasi Y.', '', '', '', 'cristian-camilo-parrasi-y'),
(50, 'Especialista en reformas y diseños en área abierta y cerrada ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Obras civiles</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reformas viviendas locales </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseños</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Andres Mauricio Castro', '', '', '', 'andres-mauricio-castro'),
(51, 'Servicio Divisiones en vidrio y acero ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventanería </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Estructuras </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Divisiones en vidrio y acero </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Obras civiles </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Juan Carlos Ortiz Duque', '', '', '', 'juan-carlos-ortiz-duque'),
(52, 'Masajes Postquirúrgicos ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Masajes Postquirúrgicos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Masajes Relajantes </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Spa Infantil </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Martha Alicia Veléz Rojas', '', '', '', 'martha-alicia-veléz-rojas'),
(53, 'Medico Cirujano, Cosmético y Lipoescultura ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Lipoescultura Tumescente</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Marcación Abdominal </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Lipografting</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Rejuvenecimiento Facial </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Willian Rengifo Marín', '', '', '', 'willian-rengifo-marín'),
(54, 'SIEE es una empresa que presta un servicio integral como Ingenieros Eléctricos y Electrónicos.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mantenimiento Eléctrico Locativo</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$15.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Automatización de Procesos Industriales</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$100.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Sistemas de Calidad Energética</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$250.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Administración Pantallas Publicitarias</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$250.000</p>\r\n</div>\r\n</div>', 'SIEE Soluciones Inteligentes Eléctricas y Electrónicas', '', '', '', 'siee-soluciones-inteligentes-eléctricas-y-electrónicas'),
(55, 'Comida Española, Postres y Atención de Eventos ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Comida Española </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> Por Convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asados </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> Por Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Postres </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> Por Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Atención de Eventos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> Por Convenir </p>\r\n</div>\r\n</div>', 'José Luis Pacheco Muñoz', '', '', '', 'josé-luis-pacheco-muñoz'),
(56, 'Reformas a todo tipo de prenda ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reformas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por Convenir </p>\r\n</div>\r\n</div>', 'Marisol Franco Franco', '', '', '', 'marisol-franco-franco'),
(57, 'Énfasis en Sistemas livianos, manejos de pintura externa e interna y reparación en pisos ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Sistemas Liviano </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pintura Externa </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pisos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Muros</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por Convenir </p>\r\n</div>\r\n</div>', 'José Herney Osorio Osorio', '', '', '', 'josé-herney-osorio-osorio'),
(58, 'Avaluó inmuebles urbanos y rurales ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Gestión Predial </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Avaluó Inmuebles, urbano y rural </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Comercialización Inmuebles </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por Convenir </p>\r\n</div>\r\n</div>', 'German Jaramillo Hoyos', '', '', '', 'german-jaramillo-hoyos'),
(59, 'Apartaestudio amoblado para empleados empresariales ', '<p><a href="https://www.airbnb.com.co/rooms/5672645" target="_blank">Ver Página Web</a></p>', 'German Hoyos', '', '', '', 'german-hoyos'),
(60, 'Clases de Música para todas las edades ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Clases de Piano </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por hora 20.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Clases de Guitarra </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por hora 20.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Tecnica Vocal </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por hora 20.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ameniza Eventos con Piano </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ A convenir </p>\r\n</div>\r\n</div>', 'Oscar Iván Villa Vivas', '', '', '', 'oscar-ivan-villa-vivas'),
(61, 'Enfasis en todo tipo de obra y reformas ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Obra blanca </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Obra Gris </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reformas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por convenir </p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'Roberto Pérez Salazar', '', '', '', 'roberto-pérez-salazar'),
(62, 'Servicio de carpintería metálica, forjas y reformas ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div class="col-lg-9">Servicio:</div>\r\n<div class="col-lg-9">Carpintería Metálica </div>\r\n<div class="col-lg-9"> </div>\r\n<div class="col-lg-9">Desde:</div>\r\n<div class="col-lg-9">$ Por convenir </div>\r\n<div class="col-lg-9"> </div>\r\n<div class="col-lg-9">Servicio:</div>\r\n<div class="col-lg-9">Forjas </div>\r\n<div class="col-lg-9"> </div>\r\n<div class="col-lg-9">Desde:</div>\r\n<div class="col-lg-9">$ Por convenir </div>\r\n<div class="col-lg-9"> </div>\r\n<div class="col-lg-9">Servicio:</div>\r\n<div class="col-lg-9">Pasamanos </div>\r\n<div class="col-lg-9"> </div>\r\n<div class="col-lg-9">Desde:</div>\r\n<div class="col-lg-9">$Por convenir</div>\r\n<div class="col-lg-9"> </div>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Sistema de dobladora </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Mario Hernandez Gómez', '', '', '', 'mario-hernandez-gómez'),
(63, 'Tratamientos Para Todo Tipo de Cabello ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cortes Unisex- Cepillados </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Químicos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratinas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reconstrucciones Capilares </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ por convenir </p>\r\n</div>\r\n</div>', 'Gloria Ramírez', '', '', '', 'gloria-ramírez'),
(64, 'Tratamientos Para Todo tipo de cabello, Cortes Unisex y Cepillados ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cortes Unisex </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ 10.000 - 12.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cepillados </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ 12.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Químicos </p>\r\n<p>Desde:</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<p>$ 40.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Tratamientos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ 15.000</p>\r\n</div>\r\n</div>', 'Andrés Correa', '', '', '', 'andrés-correa'),
(65, 'Restauraciones de pinturas en oleo y ampliación fotográfica ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pinturas en oleo</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Restauraciones fotográficas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Roberto Martín Valdiviezo SotoMayor', '', '', '', 'roberto-martín-valdiviezo-sotomayor'),
(66, 'Fotografía para cumpleaños, catálogos, eventos y demás ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fotografía para bodas quince años, eventos  </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fotografías para catálogos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Foto book''s </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fotografía en general </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Nelson Enrique Ocampo Trujillo', '', '', '', 'nelson-enrique-ocampo-trujillo'),
(67, 'Carpintería Metálica y Metalistería', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Corte y Dobladora</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$300</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Estructuras Metálicas por Kg.</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$9.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Canales Metro lineal</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cortinas Enrollables Mt2</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$120.000</p>\r\n</div>\r\n</div>', 'Juan Carlos Valencia', '', '', '', 'juan-carlos-valencia'),
(68, 'Abogado Especialista en Derecho Administrativo y Constitucional.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Demandas de Reparación Directa</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Procesos Disciplinarios</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Acciones de Nulidad</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Nulidad y Restablecimiento de Derecho</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir</p>\r\n</div>\r\n</div>', 'Jorge Andrés Marulanda G.', '', '', '', 'jorge-andrés-marulanda-g'),
(69, 'La empresas SANMAUR es especialista en', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Alquiler de Togas para Ceremonía</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$55.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Estudio Quinceañera Video y Fotografía</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$300.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fotografía Publicitaria</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>300.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Enmarcación de Fotografía</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$30.000</p>\r\n</div>\r\n</div>', 'Mauricio Muñoz Álvarez', '', '', '', 'mauricio-muñoz-álvarez'),
(70, ' Electricidad residencial, cableados estructurado y cableado UTP y afines ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Electricidad residencial </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cableado estructurado</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cableado UTP y afines </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'José Edison Cuartas Naranjo', '', '', '', 'josé-edison-cuartas-naranjo'),
(71, 'Diseño de cocina integrales, moldura y closets para bibliotecas ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Molduras</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseños de cocina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Closets para bibliotecas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Donaldo Galvis Fernandez', '', '', '', 'donaldo-galvis-fernandez'),
(72, 'Énfasis en diseños, animaciones 3D, obras civiles ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseños</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Animación 3D</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Tramites para cesantías </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Obras civiles </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Juan Diego Riobo Bonilla', '', '', '', 'juan-diego-riobo-bonilla'),
(73, 'Contrucción en Liviana y en general ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Construcción en guadua </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Estructuras livianas  </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Construcción en general </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Jair Giraldo Tabares', '', '', '', 'jair-giraldo-tabares'),
(74, 'Diseños en guadua, kioscos en guadua, lamparas, puentes ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseños todo tipo en guadua </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Jair Giraldo Tabares', '', '', '', 'jair-giraldo-tabares-1'),
(75, 'Cocinas integrales, fabricación de puertas, closets ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cocinas integrales y semintregrales </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fabricación de puertas y closets </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Restauracion en general </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Julio Cesar Marin Ramírez', '', '', '', 'julio-cesar-marin-ramírez'),
(76, 'Pisos estampados, Pisos pulidos y ventas de herramientas especializadas ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pisos estampados </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pisos epoxicos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pisos pulidos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Venta de herramientas especializadas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Edgar Castro', '', '', '', 'edgar-castro'),
(77, 'Desarrollo de paginas web, I phone, hawa', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desarrollo Web</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desarrollo I phone </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desarrollo Hawa </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desarrollo PHP</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'Samir Augusto Gartner', '', '', '', 'samir-augusto-gartner'),
(78, 'Asustos en General ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asusto de familia </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por  convenir </p>\r\n</div>\r\n</div>', 'Iris Gartner Echeverrry', '', '', '', 'iris-gartner-echeverrry'),
(79, 'Cortes Americanos, Dibujos Capilares', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cortes Americanos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$10.000</p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'José Alejandro Ríos Díaz', '', '', '', 'josé-alejandro-ríos-díaz'),
(80, 'Cantante de Música Urbana ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Eventos genero Rap, Reggaeton</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'José Alejandro Ríos Díaz', '', '', '', 'josé-alejandro-ríos-díaz-1'),
(81, 'Reformación para celulares y computadoras ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reformación para celulares tablets y computadoras </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'Yefferson Vargas', '', '', '', 'yefferson-vargas'),
(82, 'Reparaciones de T.V especiales ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Reparaciones de TV especiales </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n</div>', 'José Orlando Lopez Moncada', '', '', '', 'josé-orlando-lopez-moncada'),
(83, 'Manejo Integrado Medio Ambiental, Sistemas y Métodos de Gestión  ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Control de Contaminación </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Sistemas y Métodos de Gestión </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Calidad Turística y Sello </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ Por convenir </p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'Leonardo Londoño Henao', '', '', '', 'leonardo-londoño-henas'),
(84, 'Servicio eléctrico automotriz para todo tipo de vehiculos', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Todo relacionado con la parte eléctrica para vehículos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Venta de baterías multimarcadas </p>\r\n</div>\r\n</div>', 'Juan Diego Vera Grisales', '', '', '', 'juan-diego-vera-grisales-1'),
(85, 'Control de humedades, mantenimiento y reparaciones en áreas de conducciones de agua.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Instalaciones</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mantenimiento</p>\r\n</div>\r\n</div>', 'José Herney Osorio Osorio', '', '', '', 'josé-herney-osorio-osorio-1');
REPLACE INTO `joomla_virtuemart_products_es_es` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(86, 'Instalaciones y Reparaciones, instalaciones Eléctricas en Residencias\r\nIncluidas Oficinas y Talleres.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Manejo de cableado </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mantenimiento en maquina </p>\r\n</div>\r\n</div>', 'José Herney Osorio Osorio', '', '', '', 'josé-herney-osorio-osorio-2'),
(87, 'Arreglo a todo tipo de lavadora y mantenimiento ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Revisión y mantenimiento de lavadoras </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'José Herney Osorio Osorio', '', '', '', 'josé-herney-osorio-osorio-3'),
(88, 'Énfasis en asesorías de imagen, confección y alta costura ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesorías de Imagen </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Confección </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$40.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Patronaje </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$25.000</p>\r\n</div>\r\n</div>', 'Laura Sánchez López', '', '', '', 'laura-sánchez-lópez'),
(89, 'Énfasis en declaración de renta, auditorias ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Declaración de renta </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$250.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Auditorias </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Cristian David Guzmán Higuera', '', '', '', 'cristian-david-guzmán-higuiero'),
(90, 'Restaurante ubicado en Pinares que ofrece gran variedad, comidas a la carta, Cenas románticas por pareja y menús empresariales ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Menús empresariales </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$15.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cenas románticas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$50.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Recepciones y festejos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$18.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Comidas a la carta </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$20.000</p>\r\n</div>\r\n</div>', 'Restaurante Las Cayanas', '', '', '', 'restaurante-las-cayanas'),
(91, 'Arreglos y adecuaciones en madera, Closets,Gabinetes de Cocina ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Closets en Aglomerado </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$250.000 mt2</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Gabinetes de Cocina</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$220.000 mt lineal </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Gabinetes de Baño </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$42.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Bibliotecas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$300.000</p>\r\n</div>\r\n</div>', 'Juan Dario Londoño', '', '', '', 'juan-dario-londoño'),
(92, 'Declaraciones de renta, implementación de NIIF, seguridad social y nómina.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Outsourcing Contable </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$300.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Declaración de Renta </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$200.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Implementación de NIIF</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A Convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Seguridad Social y Nómina</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$50.000</p>\r\n</div>\r\n</div>', 'Erbin Castro M', '', '', '', 'erbin-castro-m'),
(93, 'Nueva escuela, Neotradicional, Geométricos, full color', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Nueva escuela </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Neotradicional</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Geométricos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Full Color</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Cristian Morales Gaitan', '', '', '', 'cristian-morales-gaitan'),
(94, 'Enfasis en diseñar páginas web, Mercadeo on line, Asesorías de mercadeo ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Páginas Web </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diseño Gráfico </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mercadeo on line </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesorías de Mercadeo </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Jhojancy Aguirre López', '', '', '', 'jhojancy-aguirre-lópez'),
(95, 'Atención Domiciliaria, Asesoría Médico- legal ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Atención médico domiciliaria </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesoría médico legal </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'José Fernando Giraldo Mejía', '', '', '', 'josé-fernando-giraldo-mejía'),
(96, 'Diagnostico y Autoevaluación ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Diagnostico y Autoevalución </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$70.000</p>\r\n</div>\r\n</div>', 'Diana J Corredor S', '', '', '', 'diana-j-corredor-s'),
(97, 'Consulta de Valoración Gratis.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9"> </div>\r\n</div>', 'DOCTORA Adriana Moreno Restrepo', '', '', '', 'adriana-moreno-restrepo'),
(98, 'División de baño en vidrio, Rejas, Forjador, Pasamanos ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Templado </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Escaleras</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Corredizos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventanas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Metalicas BM', '', '', '', 'ana-maría-mejía-correa'),
(99, 'Dibujos Capilares, Cortes Americanos ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>cortes americanos</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$8.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>dibujos capilares</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$8.000</p>\r\n</div>\r\n</div>', 'Victor Arcila', '', '', '', 'victor-arcila'),
(100, 'Venta de Licores, Rancho y Abarrotes ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Venta de Licores </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventas y Abarrotes </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<div> </div>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Verduras</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Harold Gallo', '', '', '', 'harold-gallo'),
(101, 'Pizza combinada , Pollo Presas y Entero, Gaseosas y bebidas. ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pizza Combinada a Su Elección</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pollo Apanado, Presas y Entero </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Gaseosas y Bebidas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Yenni Mora Coy', '', '', '', 'yenni-mora-coy'),
(102, 'Eventos Sociales, Vídeos, Fotos en General, Marquetería ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Eventos Sociales </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Vídeos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fotos en General, Marquetería </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'María del Carmen Gil Gil', '', '', '', 'maría-del-carmen-gil-gil'),
(103, 'Cepillado inteligente, Keratina, Maquillaje Permanente ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$100.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cepillado Inteligente </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$60.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mechas, Peinados </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$ A Convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Maquillaje Permanente </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$60.000</p>\r\n</div>\r\n</div>', 'Diana María Rodríguez', '', '', '', 'diana-maría-rodríguez'),
(104, 'Calzado Dama, Hombre ,Niño, Calzado Colegial.', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Calzado Dama, Hombre, Niño</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Calzado Colegial </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ropa General y Al Detal </p>\r\n</div>\r\n</div>', 'María Nelly y María de los Ángeles Espitia', '', '', '', 'maría-nelly-y-maría-de-los-ángeles-espitia'),
(105, 'Peluquería integral, Especialidad Nutrición Capilar, Keratina Permanente de Marcel France ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Peluquería Integral</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fajas Térmicas- Reductoras </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>Contado o a Crédito </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratina Permanente de Marcel - France</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Especialidad Nutrición Capilar </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Sandra Milena Rodas', '', '', '', 'sandra-milena-rodas'),
(106, 'Peinados y todo lo relacionado con estética (spa)\r\nTEL: 342 7182', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Peinados de todo tipo </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Limpiezas Faciales y Spa </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratina y Tratamientos Capilares, Repolarización</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Tintes, Camuflados y Mechas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n</div>', 'Gloria Inés Arbeláez', '', '', '', 'gloria-inés-arbeláez'),
(107, 'Mechas, Cepillados, Cortes Unisex, Peinados ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Mechas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>50.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratina</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>100.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cepillados </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>10.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Cortes Dama y Cabellero </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$6.000</p>\r\n</div>\r\n</div>', 'Alejandra Quiroz', '', '', '', 'alejandra-quiroz'),
(108, 'Peluquería en General, Tratamientos Estéticos, Venta de Productos Corporales en General. ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Corte Cepillado, Peinados </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Tratamientos Estéticos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Venta de Productos faciales , Corporales en General.</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'Ana Milena Montoya B.', '', '', '', 'ana-milena-montoya-b'),
(109, 'Corte, Cepillado, Maquillaje, Pedicure y Manicure, Keratina ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Corte, Cepillado, Maquillaje</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$10.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Manicure y Pedicure </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$16.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Keratina </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$150.000</p>\r\n</div>\r\n</div>', 'Martha Luz López', '', '', '', 'martha-luz-lópez'),
(110, 'Clases de Piano, Batería, Guitarra, Técnica Vocal ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Escuela Musical </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$50.000 MES</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Piano, Batería, Guitarra </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$50.000 MES </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Bajo, Técnica Vocal </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$50.000 MES </p>\r\n</div>\r\n</div>', 'Luis Eduardo Galvis', '', '', '', 'luis-eduardo-galvis'),
(111, 'Soldadura de Puertas y Ventanas, Trabajos en hierro - Aluminio. \r\nVisita Nuestro Sitio Web: johnherrera2015.wix.com/hierro-yaluminio', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Soldadura Puertas, Ventanas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$60.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Maquinas de Gimnasio Exterior e Interior</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$550.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Trabajos en Hierro y Aluminio </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>$60.000</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Estructuras </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n</div>', 'Jhon James Herrera', '', '', '', 'jhon-james-herrera'),
(112, 'Asesorias Sistema de Habilitación, Asesorías Ambientales, Comerciales, Implementación sistema de Gestión ISO ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesorías Sistema de Habilitación</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesorías Ambientales, Comerciales</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Implementación Sistema de Gestión ISO </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Capacitaciones Empresariales </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n</div>', 'ASESORARCA S.A.S', '', '', '', 'asesorar-s-a-s'),
(113, 'Alquiler de Maquinaria para la  Construcción ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Alquiler de Maquinas de Construcción </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> Por convenir</p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventas de Maquinarias </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> Ver catalogo</p>\r\n</div>\r\n</div>', 'Máquinas J.F.', '', '', '', 'máquinas-j-f'),
(114, 'Arreglo Domestico, Arreglo de Oficinas ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Arreglo Domestico </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Arreglo de Oficinas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Amparo Estrada Ramírez', '', '', '', 'amparo-estrada-ramírez'),
(115, 'Accesoríos para Celularl, USB, Cargadores', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Accesorio de Celular </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>USB, Cargadores, Parlantes, Manos Libres</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Andrés Gómez Cano', '', '', '', 'andrés-gómez-cano'),
(116, 'Pintura en Cerámica y Madera, Venta de Insumos Para Manualidades ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Pintura Cerámica y Madera CLASES</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ventas Insumo Para Manualidades </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>Al Por Mayor y Detal </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Papelería en General y Fotocopiadora </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desayunos Sorpresa </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'Liliana Torres Molsalve', '', '', '', 'liliana-torres-molsalve'),
(117, 'Sastrería y Modistería, Dotaciones Empresariales, Confección de Uniformes Escolares ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Sastrería y Modisteria </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Confección de Uniformes Escolares </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Dotaciones Empresariales </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Arreglos </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n</div>', 'Juan Bautista Villada', '', '', '', 'juan-bautista-villada'),
(118, 'Miscelanea y Variedades, Fabricación de Calzado Al Por Mayor y Detal ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Miscelanea </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Fabricación de Calzado </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Desayuno Sopresa </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Ropa Americana </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n</div>', 'Carmenza Castañeda Vásquez', '', '', '', 'carmenza-castañeda-vásquez'),
(119, 'Concejal de Dosquebradas, con experiencia en bienestar social, asesorías jurídicas y apoyo a la comunidad', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Concejal de Dosquebradas</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Bienestar Social</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Asesoría Jurídica</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Apoyo a la Comunidad en General</p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p> </p>\r\n</div>\r\n</div>', 'James Castaño', '', '', '', 'james-castaño'),
(120, 'Salas, Comedores, Camarotes y todo lo relacionado con la decoración del hogar\r\n(Trabajamos sobre medida a Domicilio)', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Salas Comedores </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Camarotes, Alcobas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9"> </div>\r\n</div>', 'Sandra Chica', '', '', '', 'sandra-chica'),
(121, 'Registro de Marcas, Patentes, Derechos de Autor, Contestaciones ', '<div class="row otrosPerfil">\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Registro de Marcas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Patentes, Derechos de Autor </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Renovación, Prorrogas </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n<div class="col-lg-9">\r\n<div>Servicio:</div>\r\n<p>Contestaciones </p>\r\n</div>\r\n<div class="col-lg-3">\r\n<div>Desde:</div>\r\n<p>A convenir </p>\r\n</div>\r\n</div>', 'Alcides Herrera Ocampo alcher - group', '', '', '', 'alcides-herrera-ocampo-alcher-group');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_product_categories`
--

DROP TABLE IF EXISTS `joomla_virtuemart_product_categories`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_product_categories` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Volcado de datos para la tabla `joomla_virtuemart_product_categories`
--

REPLACE INTO `joomla_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`) VALUES
(1, 10, 8, 0),
(2, 8, 3, 0),
(3, 7, 5, 0),
(4, 6, 7, 0),
(8, 14, 8, 0),
(20, 21, 22, 0),
(10, 16, 12, 0),
(23, 25, 25, 0),
(24, 26, 25, 0),
(22, 24, 24, 0),
(15, 20, 16, 0),
(25, 27, 29, 0),
(26, 28, 12, 0),
(27, 29, 14, 0),
(29, 31, 31, 0),
(30, 32, 16, 0),
(31, 33, 32, 0),
(32, 34, 33, 0),
(33, 35, 28, 0),
(34, 36, 34, 0),
(35, 37, 10, 0),
(36, 38, 10, 0),
(37, 39, 10, 0),
(38, 40, 10, 0),
(39, 41, 35, 0),
(42, 44, 35, 0),
(43, 45, 36, 0),
(44, 46, 7, 0),
(45, 47, 7, 0),
(46, 47, 37, 0),
(47, 48, 38, 0),
(48, 49, 7, 0),
(49, 50, 39, 0),
(111, 30, 13, 0),
(51, 52, 42, 0),
(52, 53, 43, 0),
(60, 59, 46, 0),
(54, 54, 27, 0),
(61, 60, 47, 0),
(107, 42, 1, 0),
(103, 82, 63, 0),
(58, 57, 12, 0),
(59, 58, 27, 0),
(62, 61, 12, 0),
(102, 56, 8, 0),
(64, 63, 10, 0),
(65, 64, 10, 0),
(66, 58, 48, 0),
(67, 65, 24, 0),
(68, 54, 41, 0),
(69, 54, 15, 0),
(70, 66, 50, 0),
(71, 67, 29, 0),
(72, 68, 51, 0),
(73, 69, 50, 0),
(90, 84, 16, 0),
(75, 71, 53, 0),
(76, 72, 39, 0),
(77, 73, 12, 0),
(78, 74, 53, 0),
(105, 70, 58, 0),
(80, 76, 39, 0),
(81, 77, 26, 0),
(82, 78, 51, 0),
(83, 79, 10, 0),
(85, 81, 56, 0),
(104, 75, 53, 0),
(106, 55, 9, 0),
(88, 83, 57, 0),
(91, 85, 28, 0),
(94, 87, 59, 0),
(93, 86, 58, 0),
(95, 88, 60, 0),
(96, 89, 36, 0),
(97, 90, 61, 0),
(98, 91, 53, 0),
(99, 92, 36, 0),
(100, 93, 62, 0),
(101, 62, 29, 0),
(108, 42, 60, 0),
(110, 51, 53, 0),
(113, 80, 47, 0),
(114, 94, 25, 0),
(115, 95, 43, 0),
(116, 96, 64, 0),
(117, 97, 65, 0),
(118, 98, 29, 0),
(119, 99, 10, 0),
(120, 100, 61, 0),
(121, 101, 61, 0),
(122, 102, 50, 0),
(123, 103, 10, 0),
(124, 104, 67, 0),
(125, 105, 10, 0),
(126, 106, 42, 0),
(127, 106, 10, 0),
(128, 107, 10, 0),
(129, 108, 42, 0),
(130, 108, 10, 0),
(131, 109, 10, 0),
(132, 110, 47, 0),
(133, 111, 29, 0),
(134, 112, 64, 0),
(135, 114, 69, 0),
(136, 115, 56, 0),
(137, 116, 70, 0),
(138, 113, 2, 0),
(139, 113, 68, 0),
(141, 111, 22, 0),
(142, 83, 64, 0),
(143, 90, 9, 0),
(144, 117, 8, 0),
(145, 118, 72, 0),
(146, 120, 53, 0),
(147, 121, 51, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_product_customfields`
--

DROP TABLE IF EXISTS `joomla_virtuemart_product_customfields`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(1) unsigned NOT NULL COMMENT 'field id',
  `virtuemart_product_id` int(1) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(1) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `customfield_value` varchar(2500) DEFAULT NULL COMMENT 'field value',
  `customfield_price` decimal(15,6) DEFAULT NULL COMMENT 'price',
  `disabler` int(1) unsigned NOT NULL DEFAULT '0',
  `override` int(1) unsigned NOT NULL DEFAULT '0',
  `customfield_params` varchar(17000) NOT NULL DEFAULT '' COMMENT 'Param for Plugins',
  `product_sku` char(64) DEFAULT NULL,
  `product_gtin` char(64) DEFAULT NULL,
  `product_mpn` char(64) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) unsigned NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=1323 DEFAULT CHARSET=utf8 COMMENT='custom fields';

--
-- Volcado de datos para la tabla `joomla_virtuemart_product_customfields`
--

REPLACE INTO `joomla_virtuemart_product_customfields` (`virtuemart_customfield_id`, `virtuemart_product_id`, `virtuemart_custom_id`, `customfield_value`, `customfield_price`, `disabler`, `override`, `customfield_params`, `product_sku`, `product_gtin`, `product_mpn`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `ordering`) VALUES
(337, 7, 4, '3 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 3),
(336, 7, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 2),
(17, 8, 8, '310 394 9051', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 0),
(18, 8, 4, '8 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 2),
(19, 8, 11, 'Calle 18 # 10-12 Apto. 201', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 1),
(20, 8, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 3),
(48, 14, 4, '15 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 2),
(988, 93, 6, '314 728 9012', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 0),
(45, 10, 16, '09:00 a.m. - 12:00 y de 02:00 p.m. - 07:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 9),
(46, 14, 7, 'jairo-732@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 0),
(62, 14, 16, '08:00 a.m. - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 23),
(29, 10, 6, '336 8516', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 0),
(30, 10, 7, 'lizardosastre7@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 1),
(31, 10, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 2),
(32, 10, 4, '30 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 3),
(33, 10, 5, 'Especilista en Trajes de Novios', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 4),
(34, 10, 8, '316 323 2628', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 5),
(37, 10, 11, 'Cra 9 No. 27-10', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 6),
(38, 10, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 7),
(63, 14, 17, 'Lunes a Sábado', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 24),
(41, 10, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 8),
(49, 14, 5, 'Especialista en Arreglos', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 3),
(50, 14, 8, '314 804 2019', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 4),
(335, 7, 7, 'andresfelipebgomez@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 1),
(52, 14, 10, 'jhonjairosantaortiz', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 6),
(53, 14, 11, 'Cll 30 No. 7-30', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 7),
(54, 14, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 8),
(55, 14, 15, '3 Meses', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 9),
(56, 14, 16, 'De Lunes a Sábado de 08:00 a.m. - 06:00 p.m. Jornada Continua', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 10),
(61, 14, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 18:07:27', 57, '0000-00-00 00:00:00', 0, 13),
(60, 10, 17, 'Lunes - Sábado', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:20:30', 57, '0000-00-00 00:00:00', 0, 23),
(182, 24, 17, 'Lunes - Viernes / Sábados 9:00 a.m 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 13),
(195, 25, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 13),
(180, 24, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 11),
(181, 24, 16, '08:00 a.m. - 12:00 m. - 02:00 p.m. - 07:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 12),
(179, 24, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 9),
(178, 24, 11, 'Cra 9 # 22-28', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 8),
(177, 24, 8, '310 394 3688', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 5),
(149, 21, 17, 'Lunes - Sábado', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 13),
(148, 21, 16, '08:00 a.m. - 08:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 12),
(147, 21, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 11),
(146, 21, 13, 'Home Center', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 10),
(145, 21, 12, 'Guadalupe', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 9),
(194, 25, 16, '02:00 p.m. - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 12),
(193, 25, 15, '6', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 11),
(191, 25, 12, 'Villa del Campo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 9),
(192, 25, 13, 'Universidad Tecnológica de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 10),
(190, 25, 11, 'Manzana 25 Casa 34 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 8),
(189, 25, 10, 'julian.patmos', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 7),
(188, 25, 8, '321 782 8196', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 5),
(90, 16, 6, '3187295151', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 0),
(91, 16, 7, 'rajogumer@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 1),
(92, 16, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 2),
(93, 16, 4, '40 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 3),
(94, 16, 8, '3117807947', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 4),
(95, 16, 11, 'mz a cs 7', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 5),
(96, 16, 12, 'El bosque', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 6),
(97, 16, 13, 'arquitecto tecnico barcelona', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 7),
(98, 16, 15, '4', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 21),
(99, 16, 17, 'lunes a sabado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:25:35', 57, '0000-00-00 00:00:00', 0, 9),
(187, 25, 5, 'Páginas Web ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 4),
(186, 25, 4, '3 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 3),
(185, 25, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 2),
(173, 24, 7, 'marcoalejo23@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 1),
(172, 24, 6, '325 6153', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 0),
(183, 25, 6, '332 2660', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 0),
(184, 25, 7, 'julian_p1991@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:32:45', 57, '0000-00-00 00:00:00', 0, 1),
(144, 21, 11, 'Calle 37 No. 11-29', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 8),
(143, 21, 8, '312 792 2181', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 5),
(142, 21, 5, 'Cerraduras de Seguridad', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 4),
(141, 21, 4, '8 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 3),
(140, 21, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 2),
(139, 21, 7, 'cerrajeguadalupe@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 1),
(138, 21, 6, '343 0117', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-15 22:34:07', 57, '0000-00-00 00:00:00', 0, 0),
(127, 20, 6, '3309643', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 0),
(128, 20, 7, 'electricos_vera_42009@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 1),
(129, 20, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 2),
(130, 20, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 3),
(131, 20, 8, '3108206789', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 5),
(132, 20, 11, 'calle 21 # 21-36', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 8),
(133, 20, 12, ' La Pradera ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 9),
(134, 20, 13, 'SENA-UTP', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 10),
(135, 20, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 11),
(136, 20, 16, '8 AM - 7 PM', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 12),
(137, 20, 17, 'Lunes - Sábado / DOMICILIO', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:06:35', 57, '0000-00-00 00:00:00', 0, 13),
(176, 24, 5, 'Restauración de obras de arte', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 4),
(175, 24, 4, '18 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 3),
(174, 24, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 18:59:35', 57, '0000-00-00 00:00:00', 0, 2),
(196, 26, 6, '315 340 7596', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 0),
(197, 26, 7, 'proyectos@tecnosolysoft.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 1),
(198, 26, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 2),
(199, 26, 4, '4 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 3),
(200, 26, 5, 'Desarrollador Web ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 4),
(201, 26, 8, '315 340 7596', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 5),
(202, 26, 10, 'Emanuel Lazt', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 7),
(203, 26, 11, 'Manzana 1 Casa 5A', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 8),
(204, 26, 12, 'Conjunto Cerrado Agua Azul', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 9),
(205, 26, 13, 'Universidad Tecnológica de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 10),
(206, 26, 15, '6', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 11),
(207, 26, 16, '08:00 a.m - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 12),
(208, 26, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 13),
(209, 26, 19, '@EmanuelLazt', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 19:46:57', 57, '0000-00-00 00:00:00', 0, 15),
(210, 27, 6, '338 0054', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 0),
(211, 27, 7, 'meijan7018@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 1),
(212, 27, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 2),
(213, 27, 4, '18 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 3),
(214, 27, 5, 'Ornamentador', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 4),
(215, 27, 8, '314 818 4116', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 5),
(216, 27, 11, 'Manzana 19 Casa 28 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 8),
(217, 27, 12, 'Samaria 1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 9),
(218, 27, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 10),
(219, 27, 15, '4 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 11),
(220, 27, 16, '06:00 a.m - 10:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 12),
(221, 27, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:40:27', 57, '0000-00-00 00:00:00', 0, 13),
(222, 28, 6, '329 4002', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 0),
(223, 28, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 2),
(224, 28, 4, '40 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 3),
(225, 28, 5, 'Constructor', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 4),
(226, 28, 8, '304 491 3212', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 5),
(227, 28, 11, 'Manzana 2 Casa 5 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 8),
(228, 28, 12, 'Mirador de Santa Mónica ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 9),
(229, 28, 15, '2 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 11),
(230, 28, 16, '06:00 a.m - 10:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 12),
(231, 28, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 15:57:35', 57, '0000-00-00 00:00:00', 0, 13),
(232, 29, 6, '314 732 66007', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 0),
(233, 29, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 2),
(234, 29, 4, '40 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 3),
(235, 29, 5, 'Mecánico Automotriz ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 4),
(236, 29, 8, '310 441 3241', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 5),
(237, 29, 11, 'Calle 32 # 16-46', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 8),
(238, 29, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 10),
(239, 29, 15, '3 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 11),
(240, 29, 16, '08:00 a.m - 5:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 12),
(241, 29, 17, 'Lunes a Sábado Servicio a Domicilio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:20:55', 57, '0000-00-00 00:00:00', 0, 13),
(242, 30, 6, '322 526 4853', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 0),
(243, 30, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 1),
(244, 30, 4, '30 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 2),
(245, 30, 5, 'Operario de radiadores ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 3),
(246, 30, 11, 'Calle 32 # 16-46', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 4),
(247, 30, 12, 'La Carmelita', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 5),
(248, 30, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 6),
(249, 30, 16, '08:00 a.m - 5:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 7),
(250, 30, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 8),
(251, 31, 6, '323 1008', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 0),
(252, 31, 7, 'extintoresdelrisaralda@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 1),
(253, 31, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 2),
(254, 31, 4, '5 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 3),
(255, 31, 5, 'Seguridad Industrial Vehicular ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 4),
(256, 31, 8, '310 435 1073', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 5),
(257, 31, 11, 'Calle 32 # 16-46', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 8),
(258, 31, 12, 'La Carmelita', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 9),
(259, 31, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 10),
(260, 31, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 11),
(261, 31, 16, '7:30 a.m - 6:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 12),
(262, 31, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 01:59:37', 57, '0000-00-00 00:00:00', 0, 13),
(263, 32, 6, '314 774 9594', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 0),
(264, 32, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 1),
(265, 32, 4, '40 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 2),
(266, 32, 5, 'Eléctrico Automotriz ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 3),
(267, 32, 11, 'Calle 32 # 16-46', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 4),
(268, 32, 12, 'La Carmelita', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 5),
(269, 32, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 6),
(270, 32, 16, '08:00 a.m - 6:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 7),
(271, 32, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 8),
(295, 33, 11, 'Calle 32 # 16-46', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 8),
(294, 33, 8, '314 774 9594', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 5),
(293, 33, 5, 'Tapicería Automóvil ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 4),
(277, 32, 8, '314 774 9594', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 13:59:57', 57, '0000-00-00 00:00:00', 0, 14),
(292, 33, 4, '28 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 3),
(291, 33, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 2),
(290, 33, 7, 'loscarrosmar@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 1),
(289, 33, 6, '321 462 7069', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 0),
(288, 30, 8, '322 526 4853', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 18:40:14', 57, '0000-00-00 00:00:00', 0, 22),
(296, 33, 12, 'La Carmelita', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 9),
(297, 33, 15, '4', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 11),
(298, 33, 16, '8:00 am - 7:00 pm', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 12),
(299, 33, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 20:09:08', 57, '0000-00-00 00:00:00', 0, 13),
(300, 34, 6, '312 242 6585', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 0),
(301, 34, 7, 'jmsolano11@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 1),
(302, 34, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 2),
(303, 34, 4, '6 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 3),
(304, 34, 5, 'Entrenador físico ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 4),
(305, 34, 8, '310 426 9305', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 5),
(306, 34, 10, 'vivepilates', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 7),
(307, 34, 11, 'Carrera 4 # 22-16', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 8),
(308, 34, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 9),
(309, 34, 13, 'Universidad Tecnológica de Pereira - Univerdad Libre de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 10),
(310, 34, 15, '4', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 11),
(311, 34, 16, '06:00 a.m - 12:00 p.m. - 2:00 p.m - 9:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 12),
(312, 34, 17, 'Lunes - Viernes / Sábados 8:00 a.m. - 12:00 m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:00:48', 57, '0000-00-00 00:00:00', 0, 13),
(313, 35, 6, '311 760 3344', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 0),
(314, 35, 7, 'horacio197001026@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 1),
(315, 35, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 2),
(316, 35, 4, '20 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 3),
(317, 35, 5, 'Plomería ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 4),
(318, 35, 8, '311 760 3344', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 5),
(319, 35, 11, 'Carrera 7 # 27-51', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 8),
(320, 35, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 9),
(321, 35, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 11),
(322, 35, 16, '8:00 am - 8:00 pm', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 12),
(323, 35, 17, 'Lunes - Sábado /Servicio a Domicilio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 19:31:03', 57, '0000-00-00 00:00:00', 0, 13),
(324, 6, 7, 'diegocardona25@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 1),
(325, 6, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 2),
(326, 6, 4, '7 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 3),
(327, 6, 5, 'Diseño Gráfico y Comercial', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 4),
(328, 6, 8, '310 646 2424', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 5),
(329, 6, 10, 'deldiegocardona@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 7),
(330, 6, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 9),
(331, 6, 13, 'Universidad Tecnológica de Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 10),
(332, 6, 15, '9', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 11),
(333, 6, 16, '08:00 a.m. - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 12),
(334, 6, 17, 'Lunes - Viernes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 21:20:37', 57, '0000-00-00 00:00:00', 0, 13),
(338, 7, 5, 'Especialista en Reparación de Hardware y mantenimiento preventivo', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 4),
(339, 7, 8, '315 318 7387', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 5),
(351, 36, 7, 'elgoca2007@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 1),
(341, 7, 10, 'feliperojo.bedoya', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 7),
(342, 7, 11, 'Calle 18 # 10-12 Apto. 201', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 8),
(343, 7, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 9),
(344, 7, 13, 'Universidad de Caldas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 10),
(345, 7, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 11),
(346, 7, 16, '07:00 p.m. en adelante', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 12),
(347, 7, 17, 'Lunes - Viernes / Fines de semana de 08:00 a.m. - 08:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 18:13:27', 57, '0000-00-00 00:00:00', 0, 13),
(350, 36, 6, '350 4748', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 0),
(352, 36, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 2),
(353, 36, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 3),
(354, 36, 5, 'Instalaciones para el equipo.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 4),
(355, 36, 8, '314 6721 235', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 5),
(356, 36, 10, 'elgoca2007', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 6),
(357, 36, 11, 'Diagonal 42 A # 6-10', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 7),
(358, 36, 12, 'San Félix ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 8),
(359, 36, 13, 'SENA - American Business School', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 9),
(360, 36, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 10),
(361, 36, 16, '7:00 p.m 11:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 11),
(362, 36, 17, 'Lunes- Domingo', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:12:35', 57, '0000-00-00 00:00:00', 0, 25),
(363, 37, 6, '330 5581', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 0),
(364, 37, 7, 'michaelito_26@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 1),
(365, 37, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 2),
(366, 37, 4, '4 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 3),
(367, 37, 5, 'En el cuidado del cabello. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 4),
(368, 37, 8, '322 639 9673', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 5),
(369, 37, 11, 'Calle 21 # 19-116', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 8),
(370, 37, 12, 'La Pradera ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 9),
(371, 37, 13, 'Comfamiliar- Seminarios Schwarzkopf', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 10),
(372, 37, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 11),
(373, 37, 16, '9:00 a.m 7:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 12),
(374, 37, 17, 'Lunes - Sábado /Servicio a Domicilio los Domingos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:45', 57, '0000-00-00 00:00:00', 0, 13),
(375, 8, 6, '324 4150', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 4),
(376, 8, 7, 'distriantano@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 5),
(377, 8, 5, 'Entrega de paquetes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 8),
(378, 8, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 13),
(379, 8, 15, '8', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 15),
(380, 8, 16, '02:00 p.m. - 10:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 16),
(381, 8, 17, 'Lunes - Domingo', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:17:45', 57, '0000-00-00 00:00:00', 0, 17),
(382, 38, 6, '330 5581', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 0),
(383, 38, 7, 'luna6953@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 1),
(384, 38, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 2),
(385, 38, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 3),
(386, 38, 5, 'Diseños de color en papel aluminio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 4),
(387, 38, 8, '311 738 1678', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 5),
(388, 38, 11, 'Calle 21 # 19-116', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 8),
(389, 38, 12, 'La Pradera ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 9),
(390, 38, 13, 'Circulo de Belleza ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 10),
(391, 38, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 11),
(392, 38, 16, '9:30 a.m - 7:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 12),
(393, 38, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:14:15', 57, '0000-00-00 00:00:00', 0, 13),
(394, 39, 6, '329 7785', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 0),
(395, 39, 7, 'erika_pelos190882@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 1),
(396, 39, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 2),
(397, 39, 4, '10 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 3),
(398, 39, 5, 'Keratina y cuidado del cabello', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 4),
(399, 39, 8, '320 768 5770', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 5),
(400, 39, 11, 'Manzana 3 casa 3 sector B', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 8),
(401, 39, 12, 'Parque Industrial ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 9),
(402, 39, 13, 'Instituto Ivonne Patrick ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 10),
(403, 39, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 11),
(404, 39, 16, '10:00 a.m 7:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 12),
(405, 39, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:47:37', 57, '0000-00-00 00:00:00', 0, 13),
(406, 40, 6, '326 4104', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 0),
(407, 40, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 2),
(408, 40, 4, '19 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 3),
(409, 40, 5, 'Cepillado, corte, tinte, manicure y pedicure', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 4),
(410, 40, 8, '312 235 6498', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 5),
(411, 40, 11, 'Calle 27 # 8-38', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 8),
(412, 40, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 9),
(413, 40, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 11),
(414, 40, 16, '07:00 a.m. - 08:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 12),
(415, 40, 17, 'Lunes - Sábado', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 20:49:55', 57, '0000-00-00 00:00:00', 0, 13),
(416, 41, 6, '316 232 1234', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 0),
(417, 41, 7, 'valelp14@hotmail.es', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 1),
(418, 41, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 2),
(419, 41, 4, '5 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 3),
(420, 41, 5, 'Cortes para todo tipo de raza ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 4),
(421, 41, 8, '316 232 1234', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 5),
(422, 41, 11, 'peatonal 5 casa 121 local 3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 8),
(423, 41, 12, 'El Progreso ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 9),
(424, 41, 13, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 10),
(425, 41, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 11),
(426, 41, 16, '8:30 a.m 8:30 p.m. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 12),
(427, 41, 17, 'Lunes - Sábado / Domingos 8:30 a.m -12 .m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:09:36', 57, '0000-00-00 00:00:00', 0, 13),
(428, 42, 6, '340 6359', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 0),
(429, 42, 7, 'daendito@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 1),
(430, 42, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 2),
(431, 42, 4, '10 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 3),
(432, 42, 5, 'Prendas Malla y Croché', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 4),
(433, 42, 11, 'Cra 19 No. 17-50', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 5),
(434, 42, 12, 'Verona 2 Casa 28 B', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 6),
(435, 42, 13, 'UTP', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 7),
(436, 42, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 8),
(437, 42, 16, '08:00 a.m. - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 9),
(438, 42, 17, 'Lunes - Viernes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 10),
(439, 42, 8, '(6) 340 6359', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:19:42', 57, '0000-00-00 00:00:00', 0, 16),
(440, 44, 6, '(6) 332 88 11 - 332 68 11 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 0),
(441, 44, 7, 'yamiletlopezperez2073@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 1),
(442, 44, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 2),
(443, 44, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 3),
(444, 44, 5, 'Asistencia Técnica, Inseminación Canina  ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 4),
(445, 44, 8, '313 733 2484', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 5),
(446, 44, 11, 'manzana 11 casa 6', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 8),
(447, 44, 12, 'villa del campo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 9),
(448, 44, 13, 'Unisarc - ICA- Coodegar ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 10),
(449, 44, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 11),
(450, 44, 16, '8:30 a.m. 9:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 12),
(451, 44, 17, 'Lunes - Domingo / Servicio a Domicilio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:08:17', 57, '0000-00-00 00:00:00', 0, 13),
(452, 45, 6, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 0),
(453, 45, 7, 'cris5986@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 1),
(454, 45, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 2),
(455, 45, 4, '7 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 3),
(456, 45, 5, 'Digitación de documentos contables', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 4);
REPLACE INTO `joomla_virtuemart_product_customfields` (`virtuemart_customfield_id`, `virtuemart_product_id`, `virtuemart_custom_id`, `customfield_value`, `customfield_price`, `disabler`, `override`, `customfield_params`, `product_sku`, `product_gtin`, `product_mpn`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `ordering`) VALUES
(457, 45, 8, '311 332 9326', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 5),
(458, 45, 11, 'manzana 48 casa 9', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 8),
(459, 45, 12, 'villa del prado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 9),
(460, 45, 13, 'Universidad Cooperativa de Colombia ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 10),
(461, 45, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 11),
(462, 45, 16, '2:00 p.m - 6 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 12),
(463, 45, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:59:11', 57, '0000-00-00 00:00:00', 0, 13),
(464, 46, 7, 'jfzapata90@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 0),
(465, 46, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 1),
(466, 46, 4, '3 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 2),
(467, 46, 5, 'Animación 3D', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 3),
(468, 46, 8, '312 655 1532', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 4),
(469, 46, 10, 'jhonfredy.zapatabuitrago', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 5),
(470, 46, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 6),
(471, 46, 13, 'Unitecnica', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 7),
(472, 46, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 8),
(473, 46, 16, '08:00 a.m. - 12:00 m. - 02:00 p.m. - 07:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 9),
(474, 46, 17, 'Lunes - Viernes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 10),
(475, 46, 6, '313 784 0225', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:27:03', 57, '0000-00-00 00:00:00', 0, 11),
(476, 47, 6, '344 4111', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 0),
(477, 47, 7, 'multigraficospereira@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 1),
(478, 47, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 2),
(479, 47, 4, '11 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 3),
(480, 47, 5, 'Proceso Litografico', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 4),
(481, 47, 8, '310 374 0731', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 5),
(482, 47, 10, 'Multigráficos-Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 7),
(483, 47, 11, 'Calle 15 # 5-08', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 8),
(484, 47, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 9),
(485, 47, 15, '9', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 11),
(486, 47, 16, '08:00 a.m. - 12:00 m. - 02:00 p.m. - 07:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 12),
(487, 47, 17, 'Lunes - Sábado', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:25:23', 57, '0000-00-00 00:00:00', 0, 13),
(488, 48, 6, '321 1553', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 0),
(489, 48, 7, 'abbafumigacionespereira@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 1),
(490, 48, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 2),
(491, 48, 4, '15 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 3),
(492, 48, 5, 'Fumigación residencial, industrial, comercial y hospitalaria', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 4),
(493, 48, 8, '317 408 1607', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 5),
(494, 48, 10, 'deiby.ceballosarango', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 7),
(495, 48, 11, 'Calle 15 # 5-34', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 8),
(496, 48, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 9),
(497, 48, 13, 'Certificados por la Secretaría de Salud', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 10),
(498, 48, 15, '6', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 11),
(499, 48, 16, '06:00 a.m. - 10:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 12),
(500, 48, 17, 'Lunes - Sábado', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-16 22:41:34', 57, '0000-00-00 00:00:00', 0, 13),
(501, 49, 7, 'cristcampa@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 1),
(502, 49, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 2),
(503, 49, 4, '10 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 3),
(504, 49, 5, 'Asesoría en marca y proceso Litográfico', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 4),
(505, 49, 8, '314 710 8831', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 5),
(506, 49, 10, 'cristiancamilo.parrasi', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 7),
(507, 49, 11, 'Cra 20 Bis # 22B - 17', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 8),
(508, 49, 12, 'Providencia', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 9),
(509, 49, 13, 'Corporación Unificada de Educación Superior CUN', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 10),
(510, 49, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 11),
(511, 49, 16, '09:00 a.m. - 12:00 m. 02:00 p.m. - 05:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 12),
(512, 49, 17, 'Lunes - Viernes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 13),
(513, 49, 19, 'cristcampa', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:33:10', 57, '0000-00-00 00:00:00', 0, 15),
(514, 50, 6, '313 627 5038', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 0),
(515, 50, 7, 'mauricio790325@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 1),
(516, 50, 3, 'Santa Rosa', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 2),
(517, 50, 4, '10 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 3),
(518, 50, 5, 'Reformas de Vivienda, Obras Civiles ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 4),
(519, 50, 8, '313 627 5038', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 5),
(520, 50, 11, 'Carrera 23 # 18-20', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 8),
(521, 50, 12, 'La Hermosa ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 9),
(522, 50, 13, 'Universidad Catolica de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 10),
(523, 50, 15, '4', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 11),
(524, 50, 16, '08:00 a.m - 7:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 12),
(525, 50, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:16:50', 57, '0000-00-00 00:00:00', 0, 13),
(526, 51, 6, '312 290 03222', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 0),
(527, 51, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 2),
(528, 51, 4, '30 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 3),
(529, 51, 5, 'Obra civil ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 4),
(530, 51, 8, '312 290 03222', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 5),
(531, 51, 11, 'calle 25 # 10- 32', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 8),
(532, 51, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 9),
(533, 51, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 11),
(534, 51, 16, '08:00 a.m - 7:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 12),
(535, 51, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 17:54:16', 57, '0000-00-00 00:00:00', 0, 13),
(536, 52, 6, '344 8387', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 0),
(537, 52, 7, 'maver72@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 1),
(538, 52, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 2),
(539, 52, 4, '8 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 3),
(540, 52, 5, 'Spa Infantil ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 4),
(541, 52, 8, '312 853 0558', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 5),
(542, 52, 11, 'Calle 36 # 13-74', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 8),
(543, 52, 12, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 9),
(544, 52, 13, 'Escuela Técnica Gloria Mejía ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 10),
(545, 52, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 11),
(546, 52, 16, '06:00 a.m - 07:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 12),
(547, 52, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:18:58', 57, '0000-00-00 00:00:00', 0, 13),
(548, 53, 6, '344 8387', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 0),
(549, 53, 7, 'cirugiacosmeticawrm@hotmail.com  willianrengifo@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 1),
(550, 53, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 2),
(551, 53, 4, '8 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 3),
(552, 53, 5, 'Valoración sin costo, entrenamiento personalizado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 4),
(553, 53, 8, '315 409 3382', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 5),
(554, 53, 11, 'Calle 36 # 13-74', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 8),
(555, 53, 12, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 9),
(556, 53, 13, 'Universidad Tecnológica de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 10),
(557, 53, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 11),
(558, 53, 16, '05:30 a.m. 8:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 12),
(559, 53, 17, 'Lunes - Viernes / Sábados 06:00 a.m 02:00 p.m. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 21:19:34', 57, '0000-00-00 00:00:00', 0, 13),
(560, 55, 6, '313 1121', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 0),
(561, 55, 7, 'jose-pacheco99@hotmail.es', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 1),
(562, 55, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 2),
(563, 55, 4, '3 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 3),
(564, 55, 5, 'Atención de eventos, Coctelería y Salsas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 4),
(565, 55, 8, '316 753 0363', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 5),
(566, 55, 11, 'Km 5 Via Cerritos finca Santa Marta ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 8),
(567, 55, 12, 'Cerritos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 9),
(568, 55, 13, 'Universidad del Área Andina ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 10),
(569, 55, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 11),
(570, 55, 17, 'Fines de Semana ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 15:02:50', 57, '0000-00-00 00:00:00', 0, 13),
(571, 56, 6, '321 239 2437', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 0),
(572, 56, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 2),
(573, 56, 4, '10 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 3),
(574, 56, 5, 'Reformas en prendas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 4),
(575, 56, 8, '321 239 2437', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 5),
(576, 56, 11, 'Carrera 19 # 9- 42', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 8),
(577, 56, 12, 'Japon ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 9),
(578, 56, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 11),
(579, 56, 16, '04:00 p.m - 08:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 12),
(580, 56, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:07:26', 57, '0000-00-00 00:00:00', 0, 13),
(581, 57, 6, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 0),
(582, 57, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 2),
(583, 57, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 3),
(584, 57, 5, 'Levantamiento de muros, manejo de pintura externa y pisos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 4),
(585, 57, 8, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 5),
(586, 57, 11, 'Carrera 19 # 9- 42', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 8),
(587, 57, 12, 'Japón ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 9),
(588, 57, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 11),
(589, 57, 16, '7:30 a.m - 5:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 12),
(590, 57, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:42:42', 57, '0000-00-00 00:00:00', 0, 13),
(591, 58, 6, '304 430 8385', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 0),
(592, 58, 7, 'gl.avaluos@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 1),
(593, 58, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 2),
(594, 58, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 3),
(595, 58, 5, 'Gestión predial y Enfasis en comercialización de inmuebles ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 4),
(596, 58, 8, '304 430 8385', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 5),
(597, 58, 11, 'Centro Comercial Fiducentro, Local 3 Pasillo Gris', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 8),
(598, 58, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 9),
(599, 58, 13, 'Universidad Distrital Francisco José de Caldas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 10),
(600, 58, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 11),
(601, 58, 16, '8:00 am - 12:00 .m. - 2:00 p.m 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 12),
(602, 58, 17, 'Lunes - Viernes / Sábados 8:00 a.m 12:00 .m. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:42:14', 57, '0000-00-00 00:00:00', 0, 13),
(603, 59, 6, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 0),
(604, 59, 7, 'gejar98@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 1),
(605, 59, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 2),
(606, 59, 5, 'Alojamiento ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 4),
(607, 59, 8, '304 430 8385', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 5),
(608, 59, 11, 'Centro Comercial Fiducentro, Local 3 Pasillo Gris, ENTRADA 4', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 8),
(609, 59, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 9),
(610, 59, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 11),
(611, 59, 17, 'Alquiler por Días, Mensualidad  y Semanal  ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 15:38:48', 57, '0000-00-00 00:00:00', 0, 13),
(1257, 68, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 11),
(613, 60, 6, '301 597 3101', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 0),
(614, 60, 7, 'oscarvillavivas@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 1),
(615, 60, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 2),
(616, 60, 4, '10 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 3),
(617, 60, 5, 'Clases de Piano ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 4),
(618, 60, 8, '312 805 7286', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 5),
(619, 60, 11, 'Carrera 4 # 21-65 Piso 2 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 8),
(620, 60, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 9),
(621, 60, 13, 'Universidad Tecnológica de Pereira Licenciado en Música ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 10),
(622, 60, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 11),
(623, 60, 16, '7:00 am - 12:00 .m.  ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 12),
(624, 60, 17, 'Lunes - Viernes / Sábados 7:00 p.m 10:00 p.m. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:35:30', 57, '0000-00-00 00:00:00', 0, 13),
(625, 61, 6, '318 289 2959', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 0),
(626, 61, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 2),
(627, 61, 4, '40 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 3),
(628, 61, 5, 'Construcción y Reformas en toda área ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 4),
(629, 61, 8, '318 289 2959', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 5),
(630, 61, 11, 'Manzana 37 # 462', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 8),
(631, 61, 12, 'Leningrado 3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 9),
(632, 61, 13, 'SENA- CONSTRUCTOR HOMECENTER ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 10),
(633, 61, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 11),
(634, 61, 16, '7:00 a.m. - 7:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 12),
(635, 61, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:23:42', 57, '0000-00-00 00:00:00', 0, 13),
(636, 62, 3, 'Viterbo', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 0),
(637, 62, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 1),
(638, 62, 5, 'Ornamentador ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 2),
(639, 62, 11, 'Calle 6 # 10-34', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 3),
(640, 62, 12, 'La Plazuela ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 4),
(641, 62, 13, 'SENA- METALICAS J.C ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 5),
(642, 62, 15, '14 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 6),
(643, 62, 16, '7:00 a.m - 6:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 7),
(644, 62, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 8),
(645, 63, 6, '337 4415', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 0),
(646, 63, 7, 'gloriagaviriacano618@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 1),
(647, 63, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 2),
(648, 63, 4, '15 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 3),
(649, 63, 5, 'Reconstrucciones Capilares ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 4),
(650, 63, 8, '311 705 0346', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 5),
(651, 63, 11, 'Carrera 26 # 68-16', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 8),
(652, 63, 12, 'Cuba', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 9),
(653, 63, 13, 'Instituto de belleza Lady ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 10),
(654, 63, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 11),
(655, 63, 16, '10:00 a.m 8:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 12),
(656, 63, 17, 'Lunes - Sábado / DOMINGO CON CITA ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:31:28', 57, '0000-00-00 00:00:00', 0, 13),
(657, 64, 6, '330 0571', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 0),
(658, 64, 7, 'anqueso7@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 1),
(659, 64, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 2),
(660, 64, 4, '4 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 3),
(661, 64, 5, 'Tinte, Corte, Tratamientos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 4),
(662, 64, 8, '320 598 8630', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 5),
(663, 64, 11, 'Manzana 13 casa 18 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 8),
(664, 64, 12, 'La Graciela ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 9),
(665, 64, 13, 'Clayanloock ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 10),
(666, 64, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 11),
(667, 64, 16, '10:00 a.m 7:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 12),
(668, 64, 17, 'Lunes - Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:12:37', 57, '0000-00-00 00:00:00', 0, 13),
(669, 65, 6, '318 821 5408', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 0),
(670, 65, 7, 'martinvaldiviezosotomayor@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 1),
(671, 65, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 2),
(672, 65, 4, '23 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 3),
(673, 65, 5, 'Pinturas en oreo y ampliaciones fotográficas  ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 4),
(674, 65, 8, '318 821 5408', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 5),
(675, 65, 11, 'calle 15 # 4- 11', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 8),
(676, 65, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 9),
(677, 65, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 11),
(678, 65, 16, '8:00 a.m. - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 12),
(679, 65, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 14:06:23', 57, '0000-00-00 00:00:00', 0, 13),
(680, 54, 7, 'siee.pereira@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 1),
(681, 54, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 2),
(682, 54, 4, '5 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 3),
(683, 54, 5, 'Soluciones Integrales eléctricas y electrónicas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 4),
(684, 54, 8, '310 828 5377', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 5),
(685, 54, 11, 'Calle 30 Bis # 2B-26', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 8),
(686, 54, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 9),
(687, 54, 13, 'Universidad Tecnológica de Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 10),
(688, 54, 15, '3 Meses', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 11),
(689, 54, 16, 'Desde 04:00 p.m. en adelante', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 12),
(690, 54, 17, 'Lunes - Domingo', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:23:40', 57, '0000-00-00 00:00:00', 0, 13),
(691, 66, 6, '326 9337', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 0),
(692, 66, 7, 'exitoso1972@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 1),
(693, 66, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 2),
(694, 66, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 3),
(695, 66, 5, 'Fotografía profesional para eventos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 4),
(696, 66, 8, '311 703 4518', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 5),
(697, 66, 11, 'Manzana 25 casa 10 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 8),
(698, 66, 12, 'Parque Industrial- Boquia ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 9),
(699, 66, 13, 'Nueva Imagen ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 10),
(700, 66, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 11),
(701, 66, 16, '8:00 a.m. - 12:00 .m. - 2:00 p.m- 6:30 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 12),
(702, 66, 17, 'Lunes - Sábado /Servicio a Domicilio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:06', 57, '0000-00-00 00:00:00', 0, 13),
(703, 62, 8, '310 383 3802', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:48:04', 57, '0000-00-00 00:00:00', 0, 14),
(704, 67, 6, '334 4182', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 0),
(705, 67, 7, 'dobladora1024@outlook.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 1),
(706, 67, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 2),
(707, 67, 4, '17 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 3),
(708, 67, 5, 'Carpintería Metálica y Metalistería', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 4),
(709, 67, 8, '316 255 7532', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 5),
(710, 67, 10, 'jcvstell1979@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 7),
(711, 67, 11, 'Cra. 8 # 8-76 Esquina', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 8),
(712, 67, 12, 'Villavicencio', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 9),
(713, 67, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 11),
(714, 67, 16, '07:00 a.m. - 12:00 m. - 02:00 p.m. - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 12),
(715, 67, 17, 'Lunes - Viernes y Sábados de 07:00 a.m. - 02:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:45:45', 57, '0000-00-00 00:00:00', 0, 13),
(716, 68, 7, 'jorgemarulanda90@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 0),
(717, 68, 3, 'Santa Rosa', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 1),
(718, 68, 4, '3 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 2),
(719, 68, 5, 'Derecho Administrativo y Constitucional', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 3),
(720, 68, 8, '311 302 8779', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 4),
(721, 68, 13, 'Fundación Universitaria del Área Andina FUAA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 5),
(722, 68, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 6),
(723, 68, 16, '08:00 a.m. - 12:00 m. - 02:00 p.m. - 06:00 p.m. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 7),
(724, 68, 17, 'Lunes - Viernes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:24:34', 57, '0000-00-00 00:00:00', 0, 8),
(725, 69, 7, 'san-maur@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 1),
(726, 69, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 2),
(727, 69, 4, '9', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 3),
(728, 69, 5, 'Paquete de Grados para Colegios', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 4),
(729, 69, 8, '314 656 5409', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 5),
(730, 69, 11, 'Bloques de Ciudad de Pereira Mz 5 Bloque 2 Apto 101', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 8),
(731, 69, 12, 'Bloques de Ciudad de Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 9),
(732, 69, 13, 'Universidad del Valle', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 10),
(733, 69, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 11),
(734, 69, 16, 'Hasta las 11:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 12),
(735, 69, 17, 'Lunes - Sábado', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 23:15:35', 57, '0000-00-00 00:00:00', 0, 13),
(736, 70, 6, '344 8734', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 0),
(737, 70, 7, 'zondye@yahoo.es', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 1),
(738, 70, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 2),
(739, 70, 4, '8 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 3),
(740, 70, 5, 'Cabledos y Electricidad ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 4),
(741, 70, 8, '312 807 1289', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 5),
(742, 70, 11, 'Manzana 8 casa 4 Sector E', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 8),
(743, 70, 12, 'Parque Industrial ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 9),
(744, 70, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 10),
(745, 70, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 11),
(746, 70, 16, '6:30 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 12),
(747, 70, 17, 'Lunes - Viernes / Sábados y Domingos 1:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:53:53', 57, '0000-00-00 00:00:00', 0, 13),
(748, 71, 6, '311 617 2874', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 0),
(749, 71, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 2),
(750, 71, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 3),
(751, 71, 5, 'Diseños para closets y cocinas integrales ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 4),
(752, 71, 8, '311 617 2874', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 5),
(753, 71, 11, 'Manzana 8 casa 9A ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 8),
(754, 71, 12, 'Portal de Birmania ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 9),
(755, 71, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 11),
(756, 71, 16, '8:00 am - 8:00 pm', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 12),
(757, 71, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 12:51:01', 57, '0000-00-00 00:00:00', 0, 13),
(758, 72, 6, '313 773 4605', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 0),
(759, 72, 7, 'arq_juandiego@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 1),
(760, 72, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 2),
(761, 72, 4, '5 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 3),
(762, 72, 5, 'Diseños, Obras Civiles y Tramites de Censatías ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 4),
(763, 72, 8, '313 773 4605', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 5),
(764, 72, 11, 'Av. 30 de Agosto -Torre 4 Apto 604', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 8),
(765, 72, 12, 'Las Garzas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 9),
(766, 72, 13, 'Universidad Catolica de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 10),
(767, 72, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 11),
(768, 72, 16, '8:00 a.m. - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 12),
(769, 72, 17, 'Lunes- Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:15:52', 57, '0000-00-00 00:00:00', 0, 13),
(770, 73, 6, '311 777 8244', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 0),
(771, 73, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 2),
(772, 73, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 3),
(773, 73, 5, 'Construcción en general ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 4),
(774, 73, 8, '311 777 8244', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 5),
(775, 73, 11, 'Km 6 Via Armenia ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 8),
(776, 73, 12, 'Tribunas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 9),
(777, 73, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 10),
(778, 73, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 11),
(779, 73, 16, '7:00 a.m. - 5:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 12),
(780, 73, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 13:21:48', 57, '0000-00-00 00:00:00', 0, 13);
REPLACE INTO `joomla_virtuemart_product_customfields` (`virtuemart_customfield_id`, `virtuemart_product_id`, `virtuemart_custom_id`, `customfield_value`, `customfield_price`, `disabler`, `override`, `customfield_params`, `product_sku`, `product_gtin`, `product_mpn`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `ordering`) VALUES
(781, 74, 6, '311 777 8244', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 0),
(782, 74, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 2),
(783, 74, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 3),
(784, 74, 5, 'Trabajo en todo tipo de guadua ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 4),
(785, 74, 8, '311 777 8244', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 5),
(786, 74, 11, 'Km 6 Via Armenia ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 8),
(787, 74, 12, 'Tribunas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 9),
(788, 74, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 11),
(789, 74, 16, '7:00 a.m - 5:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 12),
(790, 74, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-18 19:51:49', 57, '0000-00-00 00:00:00', 0, 13),
(791, 75, 6, '310 536 9521', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 0),
(792, 75, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 2),
(793, 75, 4, '30 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 3),
(794, 75, 5, 'Restauración en general y fabricaciones ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 4),
(795, 75, 8, '310 536 9521', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 5),
(796, 75, 11, 'Carrera 16 # 19-33', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 8),
(797, 75, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 9),
(798, 75, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 11),
(799, 75, 16, '8:00 a.m.- 7:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 12),
(800, 75, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-20 14:40:59', 57, '0000-00-00 00:00:00', 0, 13),
(801, 76, 6, '315 797 6706', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 0),
(802, 76, 6, '315 797 6706', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 16),
(803, 76, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 2),
(804, 76, 4, '25 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 3),
(805, 76, 5, 'Pisos estampados diferente clases, Venta de herramientas especializadas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 4),
(806, 76, 8, '315 797 6706', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 5),
(807, 76, 11, 'Rincón de Unicentro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 8),
(808, 76, 12, 'Av. 30 de Agosto ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 9),
(809, 76, 13, 'Harvard University Washington D.C', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 10),
(810, 76, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 11),
(811, 76, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:19:52', 57, '0000-00-00 00:00:00', 0, 13),
(812, 77, 6, '300 777 9057', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 0),
(813, 77, 7, 'samir@bucle.co', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 1),
(814, 77, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 2),
(815, 77, 4, '4 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 3),
(816, 77, 5, 'Desarrollo Web ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 4),
(817, 77, 8, '300 777 9057', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 5),
(818, 77, 11, 'San José de las villas Casa 162', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 8),
(819, 77, 12, 'Cerritos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 9),
(820, 77, 13, 'Universidad Catolica de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 10),
(821, 77, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 11),
(822, 77, 16, '8:00 a.m. - 8:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 12),
(823, 77, 17, 'Miércoles- Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:45:29', 57, '0000-00-00 00:00:00', 0, 13),
(824, 78, 6, '311 3305 8250', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 0),
(825, 78, 7, 'iris@bucle.co', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 1),
(826, 78, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 2),
(827, 78, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 3),
(828, 78, 5, ' Asustos con Familias ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 4),
(829, 78, 8, '311 3305 8250', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 5),
(830, 78, 11, 'Centro Comercial Pereira Plaza ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 8),
(831, 78, 13, 'Universidad Libre de Pereira- Univerdad de Caldas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 10),
(832, 78, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 11),
(833, 78, 16, '2:00 p.m - 6 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 12),
(834, 78, 17, 'Martes- Jueves ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 18:52:43', 57, '0000-00-00 00:00:00', 0, 13),
(835, 79, 6, '321 8572', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 0),
(836, 79, 7, 'alejito.2009@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 1),
(837, 79, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 2),
(838, 79, 4, '2 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 3),
(839, 79, 5, 'Dibujos Capilares ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 4),
(840, 79, 8, '312 270 2765', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 5),
(841, 79, 11, 'Calle 5 # 31-80', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 8),
(842, 79, 12, 'El Bosque', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 9),
(843, 79, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 11),
(844, 79, 16, '2:00 p.m - 9:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 12),
(845, 79, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 20:12:09', 57, '0000-00-00 00:00:00', 0, 13),
(846, 80, 6, '321 8572', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 0),
(847, 80, 7, 'alejito.2009@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 1),
(848, 80, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 2),
(849, 80, 4, '1 año', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 3),
(850, 80, 5, 'Genero Rap y Reggaeton ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 4),
(851, 80, 8, '312 270 2765', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 5),
(852, 80, 11, 'Calle 5 # 31-80', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 8),
(853, 80, 12, 'El Bosque', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 9),
(854, 80, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 11),
(855, 80, 16, '8:00 a.m. - 8:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 12),
(856, 80, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:34:35', 57, '0000-00-00 00:00:00', 0, 13),
(857, 81, 6, '310 895 3463', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 0),
(858, 81, 7, 'yeferol@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 1),
(859, 81, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 2),
(860, 81, 4, '6 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 3),
(861, 81, 5, 'Reformación ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 4),
(862, 81, 8, '310 895 3463', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 5),
(863, 81, 10, '871017', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 7),
(864, 81, 11, 'Carrera 8 # 14-45 local 22', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 8),
(865, 81, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 9),
(866, 81, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 10),
(867, 81, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 11),
(868, 81, 16, '9:00 a.m 7:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 12),
(869, 81, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:24:25', 57, '0000-00-00 00:00:00', 0, 13),
(870, 82, 6, '325 7196', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 0),
(871, 82, 7, 'tecnitv2002@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 1),
(872, 82, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 2),
(873, 82, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 3),
(874, 82, 5, 'Reparaciones de TV ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 4),
(875, 82, 8, '310 378 8553', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 5),
(876, 82, 11, 'Calle 14 # 14-31', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 8),
(877, 82, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 9),
(878, 82, 13, 'Electronica Buscher ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 10),
(879, 82, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 11),
(880, 82, 16, '8:00 a.m. - 12:00 .m. - 2:00 p.m- 6:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 12),
(881, 82, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 12:10:50', 57, '0000-00-00 00:00:00', 0, 13),
(882, 83, 6, '313 775 1949', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 0),
(883, 83, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 2),
(884, 83, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 3),
(885, 83, 5, 'Saneamiento Ambiental Colombia ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 4),
(886, 83, 8, '313 775 1949', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 5),
(887, 83, 13, 'Universidad Libre - Universidad de los Andes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 10),
(888, 83, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 11),
(889, 83, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:51:25', 57, '0000-00-00 00:00:00', 0, 13),
(890, 84, 6, '330 9643', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 0),
(891, 84, 7, 'electricos_vera_42009@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 1),
(892, 84, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 2),
(893, 84, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 3),
(894, 84, 8, '310 820 6789', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 5),
(895, 84, 11, 'calle 50 n 15 a 69', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 8),
(896, 84, 12, 'Los Naranjos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 9),
(897, 84, 13, 'SENA-UTP', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 10),
(898, 84, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 11),
(899, 84, 16, '8:00 AM - 7:00 PM', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 12),
(900, 84, 17, 'Lunes - Sábado /Servicio a Domicilio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 13:17:44', 57, '0000-00-00 00:00:00', 0, 13),
(901, 85, 6, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 0),
(902, 85, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 2),
(903, 85, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 3),
(904, 85, 5, 'Reparación y revisión ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 4),
(905, 85, 8, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 5),
(906, 85, 12, 'Japón ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 9),
(907, 85, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 11),
(908, 85, 16, '7:00 a.m - 5:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 12),
(909, 85, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:56:26', 57, '0000-00-00 00:00:00', 0, 13),
(910, 86, 6, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 0),
(911, 86, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 2),
(912, 86, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 3),
(913, 86, 5, 'Reparación de Averías Eléctricas de la Maquinaria y Electrodomésticos.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 4),
(914, 86, 8, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 5),
(915, 86, 11, 'Carrera 19 # 9- 42', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 8),
(916, 86, 12, 'Japón ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 9),
(917, 86, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 11),
(918, 86, 16, '7:00 a.m - 5:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 12),
(919, 86, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 22:56:35', 57, '0000-00-00 00:00:00', 0, 13),
(920, 87, 6, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 0),
(921, 87, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 2),
(922, 87, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 3),
(923, 87, 8, '314 467 4508', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 5),
(924, 87, 11, 'Carrera 19 # 9- 42', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 8),
(925, 87, 12, 'Japón ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 9),
(926, 87, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 11),
(927, 87, 16, '7:00 a.m - 5:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 12),
(928, 87, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 14:05:36', 57, '0000-00-00 00:00:00', 0, 13),
(929, 88, 6, '336 8281', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 0),
(930, 88, 7, 'lsanchezl93@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 1),
(931, 88, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 2),
(932, 88, 4, '6 meses', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 3),
(933, 88, 5, 'Confección todo tipo de traje y tela ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 4),
(934, 88, 8, '321 773 2471', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 5),
(935, 88, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 9),
(936, 88, 13, 'Universidad del Área Andina - Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 10),
(937, 88, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 11),
(938, 88, 16, '8:00 a.m. - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 12),
(939, 88, 17, 'Lunes - Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:35:54', 57, '0000-00-00 00:00:00', 0, 13),
(940, 89, 6, '301 445 5134', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 0),
(941, 89, 7, 'cdavidguzman@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 1),
(942, 89, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 2),
(943, 89, 4, '2 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 3),
(944, 89, 5, 'Asesorías y declaraciones de renta ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 4),
(945, 89, 8, '301 445 5134', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 5),
(946, 89, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 9),
(947, 89, 13, 'Universidad del Área Andina - Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 10),
(948, 89, 15, '9', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 11),
(949, 89, 16, '8:00 a.m. - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 12),
(950, 89, 17, 'Lunes - Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:12:17', 57, '0000-00-00 00:00:00', 0, 13),
(951, 90, 6, '331 6242', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 0),
(952, 90, 7, 'restaurantelascayanas@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 1),
(953, 90, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 2),
(954, 90, 4, '25 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 3),
(955, 90, 5, 'Platos y Eventos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 4),
(956, 90, 8, '312 257 4447', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 5),
(957, 90, 11, 'Carrera 17 # 5-57 LOC 7 edif. Monte Canelo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 8),
(958, 90, 12, 'Pinares', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 9),
(959, 90, 15, '8', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 11),
(960, 90, 16, '12:00 .m. - 10:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 12),
(961, 90, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 13),
(962, 90, 18, 'www.lascayanas.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 15:02:41', 57, '0000-00-00 00:00:00', 0, 14),
(963, 91, 6, '316 369 7204', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 0),
(964, 91, 7, 'dario.serviciosintegralesl@hormail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 1),
(965, 91, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 2),
(966, 91, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 3),
(967, 91, 5, 'Carpinteria en madera y realización de gabinetes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 4),
(968, 91, 8, '316 369 7204', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 5),
(969, 91, 11, 'Manzana 20 casa 4', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 8),
(970, 91, 12, 'Samaria 1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 9),
(971, 91, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 10),
(972, 91, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 11),
(973, 91, 16, '7:00 a.m - 7:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 12),
(974, 91, 17, 'Lunes- Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 15:23:10', 57, '0000-00-00 00:00:00', 0, 13),
(975, 92, 7, 'erbincastro@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 1),
(976, 92, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 2),
(977, 92, 4, '7 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 3),
(978, 92, 5, 'Normas Internacionales de Informacion Financiera', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 4),
(979, 92, 8, '314 748 4535', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 5),
(980, 92, 10, 'Erbin C', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 7),
(981, 92, 11, 'Calle 28 # 7-58', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 8),
(982, 92, 12, 'Centro', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 9),
(983, 92, 13, 'Universidad Cooperativa de Colombia', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 10),
(984, 92, 15, '9', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 11),
(985, 92, 16, '08:00 a.m. - 12:00 m. - 02:00 p.m. - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 12),
(986, 92, 17, 'Lunes - Viernes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 13),
(987, 92, 19, '@erbinc', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-19 16:14:13', 57, '0000-00-00 00:00:00', 0, 15),
(989, 93, 7, 'cris28gaitan@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 1),
(990, 93, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 2),
(991, 93, 4, '2 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 3),
(992, 93, 8, '314 728 9012', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 5),
(993, 93, 12, 'Cuba', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 9),
(994, 93, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 11),
(995, 93, 16, '8:00 a.m. - 8:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 12),
(996, 93, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-23 21:09:01', 57, '0000-00-00 00:00:00', 0, 13),
(997, 94, 6, '313 3065', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 0),
(998, 94, 7, 'Jcy@Jcy.com.co', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 1),
(999, 94, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 2),
(1000, 94, 4, '9 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 3),
(1001, 94, 5, 'Diseño Gráfico, Desarrollador Web ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 4),
(1002, 94, 8, '318 521 4404', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 5),
(1003, 94, 11, 'Conjunto Andalucia - Casa 203', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 8),
(1004, 94, 12, 'Av. de Las Américas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 9),
(1005, 94, 13, 'Universidad del Área Andina Pereira - EAM ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 10),
(1006, 94, 15, '2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 11),
(1007, 94, 16, '8:00 a.m. - 12:00.m. 2:00 p.m - 6:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 12),
(1008, 94, 17, 'Lunes - Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-22 19:20:00', 57, '0000-00-00 00:00:00', 0, 13),
(1009, 95, 6, '340 5196', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 0),
(1010, 95, 7, 'fergiralme@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 1),
(1011, 95, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 2),
(1012, 95, 4, '24 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 3),
(1013, 95, 5, 'Atención Médica ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 4),
(1014, 95, 8, '310 412 9642', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 5),
(1015, 95, 12, 'Álamos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 6),
(1016, 95, 13, 'Universidad de Caldas ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 7),
(1017, 95, 15, '3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 8),
(1018, 95, 16, '06:00 p.m - 06:00 a.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 9),
(1019, 95, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 10),
(1020, 96, 6, '310 835 1714', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 0),
(1021, 96, 7, 'dianajcorredor@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 1),
(1022, 96, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 2),
(1023, 96, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 3),
(1024, 96, 5, 'Consultorías ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 4),
(1025, 96, 8, '310 835 1714', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 5),
(1026, 96, 12, 'Pinares', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 9),
(1027, 96, 13, 'Universidad del Área Andina Pereira - Universidad Libre de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 10),
(1028, 96, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 11),
(1029, 96, 16, '7:00 a.m - 1:00 p.m - 2:00 p.m - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 12),
(1030, 96, 17, 'Lunes - Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:03:00', 57, '0000-00-00 00:00:00', 0, 13),
(1031, 95, 19, '@fergiralme', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 15:09:24', 57, '0000-00-00 00:00:00', 0, 26),
(1032, 97, 6, '335 2188', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 0),
(1033, 97, 7, 'adriana.lao@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 1),
(1034, 97, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 2),
(1035, 97, 4, '17 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 3),
(1037, 97, 8, '335 2188', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 4),
(1038, 97, 9, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 5),
(1039, 97, 10, 'Adriana.Moreno', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 6),
(1040, 97, 11, 'Calle 19 # 5 - 73 consultorio 413', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 7),
(1042, 97, 13, 'Colegio Odontológico Colombiano - BOGOTA ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 8),
(1043, 97, 15, '16', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 9),
(1044, 97, 16, 'Cita Previa ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 10),
(1045, 98, 6, '342 0206', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 0),
(1046, 98, 7, 'metalicasbm@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 1),
(1047, 98, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 2),
(1048, 98, 5, 'Metalistería y Carpintería ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 4),
(1049, 98, 8, '314 681 5330', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 5),
(1050, 98, 11, 'calle 12 # 19 - 56', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 8),
(1051, 98, 12, 'La aurora Baja ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 9),
(1052, 98, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 11),
(1053, 98, 16, '7:30 a.m - 6:30 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 12),
(1054, 98, 17, 'Lunes - Viernes / Sábados 7:00 a.m 2:00 p.m. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 13),
(1055, 98, 18, 'www.metalicasbmpereira.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 20:15:26', 57, '0000-00-00 00:00:00', 0, 14),
(1056, 99, 6, '312 856 6316', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 0),
(1057, 99, 7, 'barbertrulove@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 1),
(1058, 99, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 2),
(1059, 99, 4, '5 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 3),
(1060, 99, 5, 'Cortes Americanos y Capilares ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 4),
(1061, 99, 8, '312 856 6316', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 5),
(1062, 99, 11, 'Carrera 21 # 12 - 03', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 8),
(1063, 99, 12, 'La Aurora ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 9),
(1064, 99, 15, '15 días ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 11),
(1065, 99, 16, '10:00 a.m 9:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 12),
(1066, 99, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 18:29:17', 57, '0000-00-00 00:00:00', 0, 13),
(1067, 100, 6, '322 6209', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 0),
(1068, 100, 7, 'cacha6x@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 1),
(1069, 100, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 2),
(1070, 100, 4, '10 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 3),
(1071, 100, 8, '322 6209', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 5),
(1072, 100, 11, 'Trasversal 7 # 30 A 03', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 8),
(1073, 100, 12, 'Santa Isabel ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 9),
(1074, 100, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 11),
(1075, 100, 16, '6:30 a.m. - 10:00 p.m. ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 12),
(1076, 100, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:01:44', 57, '0000-00-00 00:00:00', 0, 13),
(1077, 101, 6, '322 1001', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 0),
(1078, 101, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 1),
(1079, 101, 4, '7 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 2),
(1080, 101, 5, 'Pizas combinadas y Pollo Apanado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 3),
(1081, 101, 12, 'Santa Isabel ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 4),
(1082, 101, 15, '1 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 5),
(1083, 101, 16, '2:00 p.m - 12:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 6),
(1084, 101, 17, 'Lunes a Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 7),
(1085, 102, 6, '300 204 5019', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 0),
(1086, 102, 7, 'mariagilgilfotografia@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 1),
(1087, 102, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 2),
(1088, 102, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 3),
(1089, 102, 5, 'Fotografía Para Eventos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 4),
(1090, 102, 8, '300 204 5019', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 5),
(1091, 102, 12, 'Santa Isabel ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 9),
(1092, 102, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 11),
(1093, 102, 16, '9:00 a.m 8:30 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 12),
(1094, 102, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:12:31', 57, '0000-00-00 00:00:00', 0, 13),
(1095, 103, 6, '342 9438 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 0),
(1096, 103, 7, 'diana91536@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 1),
(1097, 103, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 2),
(1098, 103, 4, '10 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 3),
(1099, 103, 5, 'Tratamientos Para Todo Cabello ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 4),
(1100, 103, 8, '312 756 7581', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 5),
(1101, 103, 9, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 6),
(1102, 103, 10, 'Diana Rodríguez ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 7),
(1103, 103, 11, 'Calle 12  # 20- 34', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 8),
(1104, 103, 12, 'La Aurora Baja ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 9),
(1105, 103, 13, 'Instituto Ivonne Patrick - Certificado Por el SENA  ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 10),
(1106, 103, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 11),
(1107, 103, 16, '11:00 a.m. - 7:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 12),
(1108, 103, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 19:01:11', 57, '0000-00-00 00:00:00', 0, 13),
(1109, 104, 6, '320 746 4159', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 0),
(1110, 104, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 2);
REPLACE INTO `joomla_virtuemart_product_customfields` (`virtuemart_customfield_id`, `virtuemart_product_id`, `virtuemart_custom_id`, `customfield_value`, `customfield_price`, `disabler`, `override`, `customfield_params`, `product_sku`, `product_gtin`, `product_mpn`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `ordering`) VALUES
(1111, 104, 4, '35 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 3),
(1112, 104, 5, 'Calzado Para Todo Tipo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 4),
(1113, 104, 8, '320 746 4159', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 5),
(1114, 104, 11, 'Trasversal 7 # 30 A 03', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 8),
(1115, 104, 12, 'Santa Isabel ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 9),
(1116, 104, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 11),
(1117, 104, 16, '3:00 p.m. - 9:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 12),
(1118, 104, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-24 21:49:20', 57, '0000-00-00 00:00:00', 0, 13),
(1119, 101, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 8),
(1146, 107, 6, '342 7972', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 0),
(1121, 105, 6, '319 265 6921', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 0),
(1122, 105, 7, 'milefranco7777@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 1),
(1123, 105, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 2),
(1124, 105, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 3),
(1125, 105, 5, 'Peluquería Integral, Tratamientos Capilares ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 4),
(1126, 105, 8, '319 265 6921', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 5),
(1127, 105, 11, 'Carrera 13 # 40-39', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 8),
(1128, 105, 12, 'Buenos Aires ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 9),
(1129, 105, 13, 'Instituto de Bellza Luz Alex - Bogotá ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 10),
(1130, 105, 15, '15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 11),
(1131, 105, 16, '8:00 a.m. - 8:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 12),
(1132, 105, 17, 'Lunes - Domingo y Festivo', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-27 16:17:40', 57, '0000-00-00 00:00:00', 0, 13),
(1133, 106, 6, '342 7182', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 0),
(1134, 106, 7, 'gloria_196841@hotmai.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 1),
(1135, 106, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 2),
(1136, 106, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 3),
(1137, 106, 5, 'Limpiezas faciales y Spa, Tratamientos Capilares ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 4),
(1138, 106, 8, '310 527 3030', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 5),
(1139, 106, 11, 'Carrera 12 # 41 - 16', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 8),
(1140, 106, 12, 'Buenos Aires ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 9),
(1141, 106, 13, 'Estilos Europeos- SENA - Escuela de Capacitación Cosmetológica Maria Ligia Paredes Bogotá', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 10),
(1142, 106, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 11),
(1143, 106, 16, 'Con Cita Previa al Fijo y Al Celular ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 20:20:32', 57, '0000-00-00 00:00:00', 0, 12),
(1144, 101, 11, 'Trasv 8 # 27 - 03 Local ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 18),
(1145, 101, 12, 'Santa Isabel ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:03:30', 57, '0000-00-00 00:00:00', 0, 19),
(1147, 107, 7, 'alejaquiroz2876@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 1),
(1148, 107, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 2),
(1149, 107, 4, '12 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 3),
(1150, 107, 5, 'Cortes, Peinados, Keratina, Tratamiento Capilar ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 4),
(1151, 107, 8, '320 605 6378', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 5),
(1152, 107, 11, 'Manzana 20 Casa 2', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 10),
(1153, 107, 13, 'SENA', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 6),
(1154, 107, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 7),
(1155, 107, 16, '10:00 a.m 8:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 8),
(1156, 107, 17, 'Lunes a  Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 9),
(1157, 108, 6, '343 1135', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 0),
(1158, 108, 7, 'anamilena_.09@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 1),
(1159, 108, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 2),
(1160, 108, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 3),
(1161, 108, 5, 'Cuidado Capilar, Tratamientos Estéticos y Ventas de Productos Corporales ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 4),
(1162, 108, 8, '313 733 9526', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 5),
(1163, 108, 11, 'Carrera 12 bis # 41 bis 14 piso 1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 6),
(1164, 108, 12, 'Buenos Aires ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 7),
(1165, 108, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 8),
(1166, 108, 16, 'Con Cita Previa ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 9),
(1167, 109, 6, '311 360 5965', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 0),
(1168, 109, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 2),
(1169, 109, 4, '17 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 3),
(1170, 109, 5, 'Cortes, Manicure y Pedicure ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 4),
(1171, 109, 8, '311 360 5965', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 5),
(1172, 109, 11, 'Calle 21 # 19 - 84', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 8),
(1173, 109, 12, 'La Pradera ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 9),
(1174, 109, 13, 'Mariela ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 10),
(1175, 109, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 11),
(1176, 109, 16, '9:00 a.m 8:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 12),
(1177, 109, 17, 'Lunes - Domingo y Festivos ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 20:32:37', 57, '0000-00-00 00:00:00', 0, 13),
(1178, 110, 6, '342 2252', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 0),
(1179, 110, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 2),
(1180, 110, 4, '3 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 3),
(1181, 110, 5, 'Escuela Musical ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 4),
(1182, 110, 8, '310 387 1674', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 5),
(1183, 110, 11, 'Calle 21 # 20 - 08', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 8),
(1184, 110, 12, 'La Pradera ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 9),
(1185, 110, 13, 'Universidad Tecnológica de Pereira ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 10),
(1186, 110, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 11),
(1187, 110, 16, '9:00 a.m 4:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 12),
(1188, 110, 17, 'Sábados ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 22:11:30', 57, '0000-00-00 00:00:00', 0, 13),
(1189, 111, 6, '340 7454', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 0),
(1190, 111, 7, 'johnherrera2015@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 1),
(1191, 111, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 2),
(1192, 111, 4, '18 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 3),
(1193, 111, 5, 'Soldadura,Trabajos en Hierro y Aluminio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 4),
(1194, 111, 8, '310 379 1533', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 5),
(1195, 111, 11, 'Carrera 10 # 8-84 Esquina ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 8),
(1196, 111, 12, 'Corosito ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 9),
(1197, 111, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 11),
(1198, 111, 16, '8:00 a.m. - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 12),
(1199, 111, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 13:47:01', 57, '0000-00-00 00:00:00', 0, 13),
(1200, 112, 7, 'asesorarca@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 0),
(1201, 112, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 1),
(1202, 112, 4, '3 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 2),
(1203, 112, 5, 'Asesorías y Capacitaciones ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 3),
(1204, 112, 8, '317 309 7510 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 4),
(1205, 112, 11, 'Carrera 15 A # 58 - 24 ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 5),
(1206, 112, 10, 'asesorarca', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 8),
(1207, 112, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 6),
(1208, 112, 16, '8:00 a.m. - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 7),
(1209, 112, 17, 'Lunes -  Sábado  ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 9),
(1212, 113, 6, '316 821 0031', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 0),
(1210, 112, 6, '300 404 7809', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-25 23:18:08', 57, '0000-00-00 00:00:00', 0, 10),
(1211, 108, 13, 'Instituto Ivone Patrick ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 16:10:27', 57, '0000-00-00 00:00:00', 0, 20),
(1213, 113, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 2),
(1214, 113, 4, '8 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 3),
(1215, 113, 5, 'Ventas y Alquiler de Maquinaria Pesada', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 4),
(1216, 113, 8, '316 821 0031', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 5),
(1217, 113, 11, 'Carrera 10 # 45 - 101', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 8),
(1218, 113, 12, 'Playa Rica ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 9),
(1219, 113, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 11),
(1220, 113, 16, '7:00 a.m - 6:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 12),
(1221, 113, 17, 'Lunes a  Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 23:17:08', 57, '0000-00-00 00:00:00', 0, 13),
(1222, 114, 6, '320 754 9020', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 0),
(1223, 114, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 2),
(1224, 114, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 3),
(1225, 114, 5, 'Arreglo Domestico ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 4),
(1226, 114, 8, '320 754 9020', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 5),
(1227, 114, 11, 'Carrera 10 # 42 A - 16', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 8),
(1228, 114, 12, 'Playa Rica ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 9),
(1229, 114, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 11),
(1230, 114, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 17:39:44', 57, '0000-00-00 00:00:00', 0, 13),
(1231, 115, 6, '310 489 8248', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 0),
(1232, 115, 7, 'novacelayd@outlook.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 1),
(1233, 115, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 2),
(1234, 115, 4, '2 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 3),
(1235, 115, 5, 'Venta de Accesorios ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 4),
(1236, 115, 8, '310 489 8248', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 5),
(1237, 115, 11, 'Carrera 8 # 23 - 09 LOCAL 5A -Camara De Comercio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 8),
(1238, 115, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 9),
(1239, 115, 15, '15 días ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 11),
(1240, 115, 16, '8:00 a.m. - 6:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 12),
(1241, 115, 17, 'Lunes - Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:02:37', 57, '0000-00-00 00:00:00', 0, 13),
(1242, 116, 6, '332 6452', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 0),
(1243, 116, 7, 'juan-ca1997@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 1),
(1244, 116, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 2),
(1245, 116, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 3),
(1246, 116, 5, 'Venta de Insumos, Manualidades en Cerámica y Madera, Papelería en General ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 4),
(1247, 116, 8, '311 609 3136', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 5),
(1248, 116, 10, 'tiendadelyeso ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 7),
(1249, 116, 11, 'Trasversal 8 # 26 A 15', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 8),
(1250, 116, 12, 'Santa Isabel ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 9),
(1251, 116, 13, 'Unisarc - Santa Rosa ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 10),
(1252, 116, 15, '1', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 11),
(1253, 116, 16, '8:30 a.m. - 12:00 .m. - 2:00 p.m. - 9:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 12),
(1254, 116, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-26 21:23:49', 57, '0000-00-00 00:00:00', 0, 13),
(1258, 117, 6, '314 644 7133', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 0),
(1256, 107, 12, 'Bombay 3', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-06-30 19:01:33', 57, '0000-00-00 00:00:00', 0, 20),
(1259, 117, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 2),
(1260, 117, 4, '40 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 3),
(1261, 117, 5, 'Sastrería y Modistería', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 4),
(1262, 117, 8, '311 613 1113', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 5),
(1263, 117, 11, 'Calle 25 # 8-132', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 8),
(1264, 117, 12, 'El Bohío', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 9),
(1265, 117, 15, '7', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 11),
(1266, 117, 16, '8:00 a.m. - 1:00 p.m. - 2:00 p.m.-  6:30 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 12),
(1267, 117, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 13),
(1268, 117, 20, 'Luis Fernando Montoya ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 20:32:20', 57, '0000-00-00 00:00:00', 0, 16),
(1269, 118, 6, '312 703 9019', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 0),
(1270, 118, 7, 'colombiamencha@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 1),
(1271, 118, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 2),
(1272, 118, 4, '15 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 3),
(1273, 118, 5, 'Miscelanea y Variedades ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 4),
(1274, 118, 8, '312 703 9019', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 5),
(1275, 118, 10, 'colombiamencha@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 7),
(1276, 118, 11, 'Trasversal 8 # 26 D 10', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 8),
(1277, 118, 12, 'Santa Isabel ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 9),
(1278, 118, 13, 'Universidad Del Quindio ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 10),
(1279, 118, 15, '7', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 11),
(1280, 118, 16, '9:00 a.m 12:00 .m - 2:00 p.m. - 9:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 12),
(1281, 118, 17, 'Lunes - Domingo ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 13),
(1282, 118, 20, 'Luis Fernando Montoya ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-01 21:32:46', 57, '0000-00-00 00:00:00', 0, 16),
(1283, 119, 6, '332 0573', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 0),
(1284, 119, 7, 'jamescastanoconcejal@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 1),
(1285, 119, 3, 'Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 2),
(1286, 119, 4, '15 Años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 3),
(1287, 119, 5, 'Apoyo a la Comunidad', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 4),
(1288, 119, 8, '312 230 7089', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 5),
(1289, 119, 9, '', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 6),
(1290, 119, 10, 'James Castaño Concejal', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 7),
(1291, 119, 11, 'Concejo Municipal', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 8),
(1292, 119, 12, 'Sector Alcaldía de Dosquebradas', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 9),
(1293, 119, 13, 'Universidad Libre de Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 10),
(1294, 119, 15, '6', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 11),
(1295, 119, 16, '08:00 a.m. - 12:00 m. - 02:00 p.m. - 06:00 p.m.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 12),
(1296, 119, 17, 'Lunes - Viernes', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 13),
(1297, 119, 19, '@JamesCastanoC', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 15),
(1298, 119, 20, 'Luis Fernando Montoya B.', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 18:47:33', 57, '0000-00-00 00:00:00', 0, 16),
(1299, 120, 6, '335 814', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 0),
(1300, 120, 7, 'sandrachica17@hotmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 1),
(1301, 120, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 2),
(1302, 120, 4, '4 años ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 3),
(1303, 120, 5, 'Todo lo relacionado con la decoración en el hogar', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 4),
(1304, 120, 8, '317 485 7864', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 5),
(1305, 120, 11, 'Carrera 8 # 11-61', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 8),
(1306, 120, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 9),
(1307, 120, 15, '6', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 11),
(1308, 120, 16, '7:00 a.m - 9:00 p.m ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 12),
(1309, 120, 17, 'Lunes - Sábado ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 20:03:21', 57, '0000-00-00 00:00:00', 0, 13),
(1310, 121, 6, '333 6464', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 0),
(1311, 121, 7, 'alcidesherreraocampo@gmail.com', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 1),
(1312, 121, 3, 'Pereira', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 2),
(1313, 121, 4, '20 años', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 3),
(1314, 121, 5, 'Especialista en Derecho Urbano ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 4),
(1315, 121, 8, '315 588 7971', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 5),
(1316, 121, 11, 'Calle 20 # 5 - 39', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 8),
(1317, 121, 12, 'Centro ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 9),
(1318, 121, 13, 'Universidad Externado de Colombia ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 10),
(1319, 121, 15, '13', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 11),
(1320, 121, 16, '8:00 a.m. - 12:00 .m. - 2:00 p.m- 6:00 p.m', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 12),
(1321, 121, 17, 'Lunes - Viernes ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-02 21:01:30', 57, '0000-00-00 00:00:00', 0, 13),
(1322, 97, 20, 'Patricia Gonzales ', NULL, 0, 0, '', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '2015-07-03 19:50:55', 57, '0000-00-00 00:00:00', 0, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_product_manufacturers`
--

DROP TABLE IF EXISTS `joomla_virtuemart_product_manufacturers`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_product_manufacturers` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_product_medias`
--

DROP TABLE IF EXISTS `joomla_virtuemart_product_medias`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_product_medias` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `joomla_virtuemart_product_medias`
--

REPLACE INTO `joomla_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`) VALUES
(49, 31, 45, 1),
(13, 6, 9, 1),
(227, 85, 240, 1),
(35, 20, 30, 1),
(17, 10, 13, 1),
(135, 25, 124, 1),
(136, 53, 125, 1),
(217, 49, 231, 1),
(37, 24, 33, 1),
(34, 7, 29, 1),
(33, 21, 28, 1),
(40, 27, 36, 1),
(41, 28, 37, 1),
(52, 35, 48, 1),
(51, 29, 47, 1),
(50, 30, 46, 1),
(46, 33, 42, 1),
(47, 34, 43, 1),
(48, 14, 44, 1),
(132, 16, 121, 1),
(54, 8, 50, 1),
(161, 38, 16, 1),
(57, 39, 53, 1),
(58, 40, 54, 1),
(59, 41, 55, 1),
(119, 91, 113, 1),
(61, 44, 57, 1),
(62, 42, 58, 1),
(64, 46, 60, 1),
(65, 47, 61, 1),
(66, 48, 62, 1),
(220, 119, 12, 1),
(183, 103, 163, 1),
(69, 51, 65, 1),
(153, 59, 141, 1),
(73, 55, 68, 1),
(163, 62, 133, 1),
(74, 56, 69, 1),
(131, 61, 120, 1),
(145, 50, 133, 1),
(225, 58, 239, 1),
(209, 70, 222, 1),
(111, 63, 105, 1),
(152, 52, 140, 1),
(143, 79, 131, 1),
(83, 65, 78, 1),
(84, 54, 79, 1),
(158, 82, 145, 1),
(86, 67, 81, 1),
(179, 68, 159, 1),
(105, 71, 99, 1),
(211, 117, 224, 1),
(130, 73, 103, 1),
(91, 72, 86, 1),
(106, 84, 100, 1),
(94, 74, 89, 1),
(95, 75, 87, 1),
(124, 32, 118, 1),
(160, 64, 16, 1),
(201, 90, 193, 1),
(226, 77, 19, 1),
(224, 60, 238, 1),
(108, 81, 102, 1),
(216, 95, 229, 1),
(122, 93, 116, 1),
(104, 69, 98, 1),
(109, 57, 103, 1),
(228, 97, 241, 1),
(114, 87, 108, 1),
(202, 107, 214, 1),
(116, 89, 110, 1),
(210, 86, 223, 1),
(118, 45, 112, 1),
(120, 92, 114, 1),
(121, 83, 115, 1),
(208, 66, 221, 1),
(125, 94, 119, 1),
(165, 98, 148, 1),
(127, 36, 19, 1),
(134, 26, 123, 1),
(162, 37, 16, 1),
(169, 101, 152, 1),
(167, 100, 150, 1),
(168, 99, 151, 1),
(170, 102, 153, 1),
(184, 106, 164, 1),
(185, 76, 165, 1),
(219, 88, 233, 1),
(175, 104, 155, 1),
(182, 78, 162, 1),
(190, 108, 167, 1),
(191, 109, 169, 1),
(192, 110, 170, 1),
(193, 111, 171, 1),
(194, 112, 172, 1),
(200, 105, 177, 1),
(196, 114, 174, 1),
(197, 115, 175, 1),
(198, 116, 39, 1),
(199, 113, 176, 1),
(215, 96, 228, 1),
(213, 118, 226, 1),
(221, 120, 235, 1),
(222, 121, 236, 1),
(223, 80, 237, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_product_prices`
--

DROP TABLE IF EXISTS `joomla_virtuemart_product_prices`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(15,6) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(1) DEFAULT NULL,
  `product_discount_id` int(1) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_price_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_quantity_start` int(1) unsigned NOT NULL DEFAULT '0',
  `price_quantity_end` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_product_shoppergroups`
--

DROP TABLE IF EXISTS `joomla_virtuemart_product_shoppergroups`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_product_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_ratings`
--

DROP TABLE IF EXISTS `joomla_virtuemart_ratings`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_ratings` (
  `virtuemart_rating_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `rates` int(1) NOT NULL DEFAULT '0',
  `ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_rating_reviews`
--

DROP TABLE IF EXISTS `joomla_virtuemart_rating_reviews`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(18000) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) unsigned NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_rating_votes`
--

DROP TABLE IF EXISTS `joomla_virtuemart_rating_votes`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_shipmentmethods`
--

DROP TABLE IF EXISTS `joomla_virtuemart_shipmentmethods`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `shipment_element` char(50) NOT NULL DEFAULT '',
  `shipment_params` varchar(19000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_shipmentmethods_es_es`
--

DROP TABLE IF EXISTS `joomla_virtuemart_shipmentmethods_es_es`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_shipmentmethods_es_es` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_shipmentmethod_shoppergroups`
--

DROP TABLE IF EXISTS `joomla_virtuemart_shipmentmethod_shoppergroups`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_shoppergroups`
--

DROP TABLE IF EXISTS `joomla_virtuemart_shoppergroups`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `shopper_group_name` char(128) DEFAULT NULL,
  `shopper_group_desc` char(255) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `sgrp_additional` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';

--
-- Volcado de datos para la tabla `joomla_virtuemart_shoppergroups`
--

REPLACE INTO `joomla_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `sgrp_additional`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT', 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT_TIP', 0, '', 1, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(1, 1, 'COM_VIRTUEMART_SHOPPERGROUP_GUEST', 'COM_VIRTUEMART_SHOPPERGROUP_GUEST_TIP', 0, '', 2, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_states`
--

DROP TABLE IF EXISTS `joomla_virtuemart_states`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_states` (
  `virtuemart_state_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=730 DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';

--
-- Volcado de datos para la tabla `joomla_virtuemart_states`
--

REPLACE INTO `joomla_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 223, 0, 'Alabama', 'ALA', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 223, 0, 'Alaska', 'ALK', 'AK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 223, 0, 'Arizona', 'ARZ', 'AZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 223, 0, 'Arkansas', 'ARK', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 223, 0, 'California', 'CAL', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 223, 0, 'Colorado', 'COL', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 223, 0, 'Connecticut', 'CCT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 223, 0, 'Delaware', 'DEL', 'DE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 223, 0, 'District Of Columbia', 'DOC', 'DC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 223, 0, 'Florida', 'FLO', 'FL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 223, 0, 'Georgia', 'GEA', 'GA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 223, 0, 'Hawaii', 'HWI', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 223, 0, 'Idaho', 'IDA', 'ID', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 223, 0, 'Illinois', 'ILL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 223, 0, 'Indiana', 'IND', 'IN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 223, 0, 'Iowa', 'IOA', 'IA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 223, 0, 'Kansas', 'KAS', 'KS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 223, 0, 'Kentucky', 'KTY', 'KY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 223, 0, 'Louisiana', 'LOA', 'LA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 223, 0, 'Maine', 'MAI', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 223, 0, 'Maryland', 'MLD', 'MD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 223, 0, 'Massachusetts', 'MSA', 'MA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 223, 0, 'Michigan', 'MIC', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 223, 0, 'Minnesota', 'MIN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 223, 0, 'Mississippi', 'MIS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 223, 0, 'Missouri', 'MIO', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 223, 0, 'Montana', 'MOT', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 223, 0, 'Nebraska', 'NEB', 'NE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 223, 0, 'Nevada', 'NEV', 'NV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 223, 0, 'New Hampshire', 'NEH', 'NH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 223, 0, 'New Jersey', 'NEJ', 'NJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 223, 0, 'New Mexico', 'NEM', 'NM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 223, 0, 'New York', 'NEY', 'NY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 223, 0, 'North Carolina', 'NOC', 'NC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 223, 0, 'North Dakota', 'NOD', 'ND', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 223, 0, 'Ohio', 'OHI', 'OH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 223, 0, 'Oklahoma', 'OKL', 'OK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 223, 0, 'Oregon', 'ORN', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 223, 0, 'Pennsylvania', 'PEA', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 223, 0, 'Rhode Island', 'RHI', 'RI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 223, 0, 'South Carolina', 'SOC', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 223, 0, 'South Dakota', 'SOD', 'SD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 223, 0, 'Tennessee', 'TEN', 'TN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 223, 0, 'Texas', 'TXS', 'TX', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 223, 0, 'Utah', 'UTA', 'UT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 223, 0, 'Vermont', 'VMT', 'VT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 223, 0, 'Virginia', 'VIA', 'VA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 223, 0, 'Washington', 'WAS', 'WA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 223, 0, 'West Virginia', 'WEV', 'WV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 223, 0, 'Wisconsin', 'WIS', 'WI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 223, 0, 'Wyoming', 'WYO', 'WY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 38, 0, 'Alberta', 'ALB', 'AB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 38, 0, 'British Columbia', 'BRC', 'BC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 38, 0, 'Manitoba', 'MAB', 'MB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 38, 0, 'New Brunswick', 'NEB', 'NB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 38, 0, 'Newfoundland and Labrador', 'NFL', 'NL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 38, 0, 'Northwest Territories', 'NWT', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 38, 0, 'Nova Scotia', 'NOS', 'NS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 38, 0, 'Nunavut', 'NUT', 'NU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 38, 0, 'Ontario', 'ONT', 'ON', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 38, 0, 'Prince Edward Island', 'PEI', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 38, 0, 'Quebec', 'QEC', 'QC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 38, 0, 'Saskatchewan', 'SAK', 'SK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 38, 0, 'Yukon', 'YUT', 'YT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 222, 0, 'England', 'ENG', 'EN', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 222, 0, 'Northern Ireland', 'NOI', 'NI', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 222, 0, 'Scotland', 'SCO', 'SD', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 222, 0, 'Wales', 'WLS', 'WS', 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 13, 0, 'Australian Capital Territory', 'ACT', 'AC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 13, 0, 'New South Wales', 'NSW', 'NS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 13, 0, 'Northern Territory', 'NOT', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 13, 0, 'Queensland', 'QLD', 'QL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 13, 0, 'South Australia', 'SOA', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 13, 0, 'Tasmania', 'TAS', 'TS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 13, 0, 'Victoria', 'VIC', 'VI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 13, 0, 'Western Australia', 'WEA', 'WA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 138, 0, 'Aguascalientes', 'AGS', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 138, 0, 'Baja California Norte', 'BCN', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 138, 0, 'Baja California Sur', 'BCS', 'BS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 138, 0, 'Campeche', 'CAM', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 138, 0, 'Chiapas', 'CHI', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 138, 0, 'Chihuahua', 'CHA', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 138, 0, 'Coahuila', 'COA', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 138, 0, 'Colima', 'COL', 'CM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 138, 0, 'Distrito Federal', 'DFM', 'DF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 138, 0, 'Durango', 'DGO', 'DO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 138, 0, 'Guanajuato', 'GTO', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 138, 0, 'Guerrero', 'GRO', 'GU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 138, 0, 'Hidalgo', 'HGO', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 138, 0, 'Jalisco', 'JAL', 'JA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 138, 0, 'M', 'EDM', 'EM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 138, 0, 'Michoac', 'MCN', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 138, 0, 'Morelos', 'MOR', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 138, 0, 'Nayarit', 'NAY', 'NY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 138, 0, 'Nuevo Le', 'NUL', 'NL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 138, 0, 'Oaxaca', 'OAX', 'OA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 138, 0, 'Puebla', 'PUE', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 138, 0, 'Quer', 'QRO', 'QU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 138, 0, 'Quintana Roo', 'QUR', 'QR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 138, 0, 'San Luis Potos', 'SLP', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 138, 0, 'Sinaloa', 'SIN', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 138, 0, 'Sonora', 'SON', 'SO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 138, 0, 'Tabasco', 'TAB', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 138, 0, 'Tamaulipas', 'TAM', 'TM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 138, 0, 'Tlaxcala', 'TLX', 'TX', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 138, 0, 'Veracruz', 'VER', 'VZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 138, 0, 'Yucat', 'YUC', 'YU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 138, 0, 'Zacatecas', 'ZAC', 'ZA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 30, 0, 'Acre', 'ACR', 'AC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 30, 0, 'Alagoas', 'ALG', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 30, 0, 'Amapá', 'AMP', 'AP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 30, 0, 'Amazonas', 'AMZ', 'AM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 30, 0, 'Bahía', 'BAH', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 30, 0, 'Ceará', 'CEA', 'CE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 30, 0, 'Distrito Federal', 'DFB', 'DF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 30, 0, 'Espírito Santo', 'ESS', 'ES', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 30, 0, 'Goiás', 'GOI', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 30, 0, 'Maranhão', 'MAR', 'MA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 30, 0, 'Mato Grosso', 'MAT', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 30, 0, 'Mato Grosso do Sul', 'MGS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 30, 0, 'Minas Gerais', 'MIG', 'MG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 30, 0, 'Paraná', 'PAR', 'PR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 30, 0, 'Paraíba', 'PRB', 'PB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 30, 0, 'Pará', 'PAB', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 30, 0, 'Pernambuco', 'PER', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 30, 0, 'Piauí', 'PIA', 'PI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 30, 0, 'Rio Grande do Norte', 'RGN', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 30, 0, 'Rio Grande do Sul', 'RGS', 'RS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 30, 0, 'Rio de Janeiro', 'RDJ', 'RJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 30, 0, 'Rondônia', 'RON', 'RO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 30, 0, 'Roraima', 'ROR', 'RR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 30, 0, 'Santa Catarina', 'SAC', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 30, 0, 'Sergipe', 'SER', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 30, 0, 'São Paulo', 'SAP', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 30, 0, 'Tocantins', 'TOC', 'TO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 44, 0, 'Anhui', 'ANH', '34', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 44, 0, 'Beijing', 'BEI', '11', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 44, 0, 'Chongqing', 'CHO', '50', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 44, 0, 'Fujian', 'FUJ', '35', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 44, 0, 'Gansu', 'GAN', '62', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 44, 0, 'Guangdong', 'GUA', '44', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 44, 0, 'Guangxi Zhuang', 'GUZ', '45', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 44, 0, 'Guizhou', 'GUI', '52', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 44, 0, 'Hainan', 'HAI', '46', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 44, 0, 'Hebei', 'HEB', '13', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 44, 0, 'Heilongjiang', 'HEI', '23', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 44, 0, 'Henan', 'HEN', '41', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 44, 0, 'Hubei', 'HUB', '42', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 44, 0, 'Hunan', 'HUN', '43', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 44, 0, 'Jiangsu', 'JIA', '32', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 44, 0, 'Jiangxi', 'JIX', '36', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 44, 0, 'Jilin', 'JIL', '22', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 44, 0, 'Liaoning', 'LIA', '21', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 44, 0, 'Nei Mongol', 'NML', '15', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 44, 0, 'Ningxia Hui', 'NIH', '64', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 44, 0, 'Qinghai', 'QIN', '63', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 44, 0, 'Shandong', 'SNG', '37', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 44, 0, 'Shanghai', 'SHH', '31', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 44, 0, 'Shaanxi', 'SHX', '61', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 44, 0, 'Sichuan', 'SIC', '51', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 44, 0, 'Tianjin', 'TIA', '12', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 44, 0, 'Xinjiang Uygur', 'XIU', '65', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 44, 0, 'Xizang', 'XIZ', '54', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 44, 0, 'Yunnan', 'YUN', '53', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 44, 0, 'Zhejiang', 'ZHE', '33', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 104, 0, 'Israel', 'ISL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 104, 0, 'Gaza Strip', 'GZS', 'GZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 104, 0, 'West Bank', 'WBK', 'WB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 151, 0, 'St. Maarten', 'STM', 'SM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 151, 0, 'Bonaire', 'BNR', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 151, 0, 'Curacao', 'CUR', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 175, 0, 'Alba', 'ABA', 'AB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 175, 0, 'Arad', 'ARD', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 175, 0, 'Arges', 'ARG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 175, 0, 'Bacau', 'BAC', 'BC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 175, 0, 'Bihor', 'BIH', 'BH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 175, 0, 'Bistrita-Nasaud', 'BIS', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 175, 0, 'Botosani', 'BOT', 'BT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 175, 0, 'Braila', 'BRL', 'BR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 175, 0, 'Brasov', 'BRA', 'BV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 175, 0, 'Bucuresti', 'BUC', 'B', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 175, 0, 'Buzau', 'BUZ', 'BZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 175, 0, 'Calarasi', 'CAL', 'CL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 175, 0, 'Caras Severin', 'CRS', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 175, 0, 'Cluj', 'CLJ', 'CJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 175, 0, 'Constanta', 'CST', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 175, 0, 'Covasna', 'COV', 'CV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 175, 0, 'Dambovita', 'DAM', 'DB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 175, 0, 'Dolj', 'DLJ', 'DJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 175, 0, 'Galati', 'GAL', 'GL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 175, 0, 'Giurgiu', 'GIU', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 175, 0, 'Gorj', 'GOR', 'GJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 175, 0, 'Hargita', 'HRG', 'HR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 175, 0, 'Hunedoara', 'HUN', 'HD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 175, 0, 'Ialomita', 'IAL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 175, 0, 'Iasi', 'IAS', 'IS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 175, 0, 'Ilfov', 'ILF', 'IF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 175, 0, 'Maramures', 'MAR', 'MM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 175, 0, 'Mehedinti', 'MEH', 'MH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 175, 0, 'Mures', 'MUR', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 175, 0, 'Neamt', 'NEM', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 175, 0, 'Olt', 'OLT', 'OT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 175, 0, 'Prahova', 'PRA', 'PH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 175, 0, 'Salaj', 'SAL', 'SJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 175, 0, 'Satu Mare', 'SAT', 'SM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 175, 0, 'Sibiu', 'SIB', 'SB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 175, 0, 'Suceava', 'SUC', 'SV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 175, 0, 'Teleorman', 'TEL', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 175, 0, 'Timis', 'TIM', 'TM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 175, 0, 'Tulcea', 'TUL', 'TL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 175, 0, 'Valcea', 'VAL', 'VL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 175, 0, 'Vaslui', 'VAS', 'VS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 175, 0, 'Vrancea', 'VRA', 'VN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 105, 0, 'Agrigento', 'AGR', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 105, 0, 'Alessandria', 'ALE', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 105, 0, 'Ancona', 'ANC', 'AN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 105, 0, 'Aosta', 'AOS', 'AO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 105, 0, 'Arezzo', 'ARE', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 105, 0, 'Ascoli Piceno', 'API', 'AP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 105, 0, 'Asti', 'AST', 'AT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 105, 0, 'Avellino', 'AVE', 'AV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 105, 0, 'Bari', 'BAR', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 105, 0, 'Belluno', 'BEL', 'BL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 105, 0, 'Benevento', 'BEN', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 105, 0, 'Bergamo', 'BEG', 'BG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 105, 0, 'Biella', 'BIE', 'BI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 105, 0, 'Bologna', 'BOL', 'BO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 105, 0, 'Bolzano', 'BOZ', 'BZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 105, 0, 'Brescia', 'BRE', 'BS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 105, 0, 'Brindisi', 'BRI', 'BR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 105, 0, 'Cagliari', 'CAG', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 105, 0, 'Caltanissetta', 'CAL', 'CL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 105, 0, 'Campobasso', 'CBO', 'CB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 105, 0, 'Carbonia-Iglesias', 'CAR', 'CI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 105, 0, 'Caserta', 'CAS', 'CE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(236, 1, 105, 0, 'Catania', 'CAT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 105, 0, 'Catanzaro', 'CTZ', 'CZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 105, 0, 'Chieti', 'CHI', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 105, 0, 'Como', 'COM', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 105, 0, 'Cosenza', 'COS', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 105, 0, 'Cremona', 'CRE', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 105, 0, 'Crotone', 'CRO', 'KR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 105, 0, 'Cuneo', 'CUN', 'CN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 105, 0, 'Enna', 'ENN', 'EN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 105, 0, 'Ferrara', 'FER', 'FE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 105, 0, 'Firenze', 'FIR', 'FI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 105, 0, 'Foggia', 'FOG', 'FG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 105, 0, 'Forli-Cesena', 'FOC', 'FC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(249, 1, 105, 0, 'Frosinone', 'FRO', 'FR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(250, 1, 105, 0, 'Genova', 'GEN', 'GE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(251, 1, 105, 0, 'Gorizia', 'GOR', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(252, 1, 105, 0, 'Grosseto', 'GRO', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(253, 1, 105, 0, 'Imperia', 'IMP', 'IM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(254, 1, 105, 0, 'Isernia', 'ISE', 'IS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(255, 1, 105, 0, 'L''Aquila', 'AQU', 'AQ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(256, 1, 105, 0, 'La Spezia', 'LAS', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(257, 1, 105, 0, 'Latina', 'LAT', 'LT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(258, 1, 105, 0, 'Lecce', 'LEC', 'LE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(259, 1, 105, 0, 'Lecco', 'LCC', 'LC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(260, 1, 105, 0, 'Livorno', 'LIV', 'LI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(261, 1, 105, 0, 'Lodi', 'LOD', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(262, 1, 105, 0, 'Lucca', 'LUC', 'LU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(263, 1, 105, 0, 'Macerata', 'MAC', 'MC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(264, 1, 105, 0, 'Mantova', 'MAN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(265, 1, 105, 0, 'Massa-Carrara', 'MAS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(266, 1, 105, 0, 'Matera', 'MAA', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(267, 1, 105, 0, 'Medio Campidano', 'MED', 'VS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(268, 1, 105, 0, 'Messina', 'MES', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(269, 1, 105, 0, 'Milano', 'MIL', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(270, 1, 105, 0, 'Modena', 'MOD', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(271, 1, 105, 0, 'Napoli', 'NAP', 'NA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(272, 1, 105, 0, 'Novara', 'NOV', 'NO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(273, 1, 105, 0, 'Nuoro', 'NUR', 'NU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(274, 1, 105, 0, 'Ogliastra', 'OGL', 'OG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(275, 1, 105, 0, 'Olbia-Tempio', 'OLB', 'OT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(276, 1, 105, 0, 'Oristano', 'ORI', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(277, 1, 105, 0, 'Padova', 'PDA', 'PD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(278, 1, 105, 0, 'Palermo', 'PAL', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(279, 1, 105, 0, 'Parma', 'PAA', 'PR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(280, 1, 105, 0, 'Pavia', 'PAV', 'PV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(281, 1, 105, 0, 'Perugia', 'PER', 'PG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(282, 1, 105, 0, 'Pesaro e Urbino', 'PES', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(283, 1, 105, 0, 'Pescara', 'PSC', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(284, 1, 105, 0, 'Piacenza', 'PIA', 'PC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(285, 1, 105, 0, 'Pisa', 'PIS', 'PI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(286, 1, 105, 0, 'Pistoia', 'PIT', 'PT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(287, 1, 105, 0, 'Pordenone', 'POR', 'PN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(288, 1, 105, 0, 'Potenza', 'PTZ', 'PZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(289, 1, 105, 0, 'Prato', 'PRA', 'PO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(290, 1, 105, 0, 'Ragusa', 'RAG', 'RG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(291, 1, 105, 0, 'Ravenna', 'RAV', 'RA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(292, 1, 105, 0, 'Reggio Calabria', 'REG', 'RC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(293, 1, 105, 0, 'Reggio Emilia', 'REE', 'RE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(294, 1, 105, 0, 'Rieti', 'RIE', 'RI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(295, 1, 105, 0, 'Rimini', 'RIM', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(296, 1, 105, 0, 'Roma', 'ROM', 'RM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(297, 1, 105, 0, 'Rovigo', 'ROV', 'RO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(298, 1, 105, 0, 'Salerno', 'SAL', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(299, 1, 105, 0, 'Sassari', 'SAS', 'SS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(300, 1, 105, 0, 'Savona', 'SAV', 'SV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(301, 1, 105, 0, 'Siena', 'SIE', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(302, 1, 105, 0, 'Siracusa', 'SIR', 'SR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(303, 1, 105, 0, 'Sondrio', 'SOO', 'SO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(304, 1, 105, 0, 'Taranto', 'TAR', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(305, 1, 105, 0, 'Teramo', 'TER', 'TE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(306, 1, 105, 0, 'Terni', 'TRN', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(307, 1, 105, 0, 'Torino', 'TOR', 'TO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(308, 1, 105, 0, 'Trapani', 'TRA', 'TP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(309, 1, 105, 0, 'Trento', 'TRE', 'TN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(310, 1, 105, 0, 'Treviso', 'TRV', 'TV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(311, 1, 105, 0, 'Trieste', 'TRI', 'TS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(312, 1, 105, 0, 'Udine', 'UDI', 'UD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(313, 1, 105, 0, 'Varese', 'VAR', 'VA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(314, 1, 105, 0, 'Venezia', 'VEN', 'VE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(315, 1, 105, 0, 'Verbano Cusio Ossola', 'VCO', 'VB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(316, 1, 105, 0, 'Vercelli', 'VER', 'VC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(317, 1, 105, 0, 'Verona', 'VRN', 'VR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(318, 1, 105, 0, 'Vibo Valenzia', 'VIV', 'VV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(319, 1, 105, 0, 'Vicenza', 'VII', 'VI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(320, 1, 105, 0, 'Viterbo', 'VIT', 'VT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(321, 1, 195, 0, 'A Coru', 'ACO', '15', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(322, 1, 195, 0, 'Alava', 'ALA', '01', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(323, 1, 195, 0, 'Albacete', 'ALB', '02', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(324, 1, 195, 0, 'Alicante', 'ALI', '03', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(325, 1, 195, 0, 'Almeria', 'ALM', '04', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(326, 1, 195, 0, 'Asturias', 'AST', '33', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(327, 1, 195, 0, 'Avila', 'AVI', '05', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(328, 1, 195, 0, 'Badajoz', 'BAD', '06', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(329, 1, 195, 0, 'Baleares', 'BAL', '07', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(330, 1, 195, 0, 'Barcelona', 'BAR', '08', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(331, 1, 195, 0, 'Burgos', 'BUR', '09', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(332, 1, 195, 0, 'Caceres', 'CAC', '10', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(333, 1, 195, 0, 'Cadiz', 'CAD', '11', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(334, 1, 195, 0, 'Cantabria', 'CAN', '39', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(335, 1, 195, 0, 'Castellon', 'CAS', '12', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(336, 1, 195, 0, 'Ceuta', 'CEU', '51', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(337, 1, 195, 0, 'Ciudad Real', 'CIU', '13', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(338, 1, 195, 0, 'Cordoba', 'COR', '14', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(339, 1, 195, 0, 'Cuenca', 'CUE', '16', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(340, 1, 195, 0, 'Girona', 'GIR', '17', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(341, 1, 195, 0, 'Granada', 'GRA', '18', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(342, 1, 195, 0, 'Guadalajara', 'GUA', '19', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(343, 1, 195, 0, 'Guipuzcoa', 'GUI', '20', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(344, 1, 195, 0, 'Huelva', 'HUL', '21', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(345, 1, 195, 0, 'Huesca', 'HUS', '22', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(346, 1, 195, 0, 'Jaen', 'JAE', '23', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(347, 1, 195, 0, 'La Rioja', 'LRI', '26', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(348, 1, 195, 0, 'Las Palmas', 'LPA', '35', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(349, 1, 195, 0, 'Leon', 'LEO', '24', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(350, 1, 195, 0, 'Lleida', 'LLE', '25', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(351, 1, 195, 0, 'Lugo', 'LUG', '27', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(352, 1, 195, 0, 'Madrid', 'MAD', '28', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(353, 1, 195, 0, 'Malaga', 'MAL', '29', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(354, 1, 195, 0, 'Melilla', 'MEL', '52', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(355, 1, 195, 0, 'Murcia', 'MUR', '30', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(356, 1, 195, 0, 'Navarra', 'NAV', '31', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(357, 1, 195, 0, 'Ourense', 'OUR', '32', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(358, 1, 195, 0, 'Palencia', 'PAL', '34', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(359, 1, 195, 0, 'Pontevedra', 'PON', '36', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(360, 1, 195, 0, 'Salamanca', 'SAL', '37', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(361, 1, 195, 0, 'Santa Cruz de Tenerife', 'SCT', '38', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(362, 1, 195, 0, 'Segovia', 'SEG', '40', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(363, 1, 195, 0, 'Sevilla', 'SEV', '41', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(364, 1, 195, 0, 'Soria', 'SOR', '42', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(365, 1, 195, 0, 'Tarragona', 'TAR', '43', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(366, 1, 195, 0, 'Teruel', 'TER', '44', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(367, 1, 195, 0, 'Toledo', 'TOL', '45', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(368, 1, 195, 0, 'Valencia', 'VAL', '46', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(369, 1, 195, 0, 'Valladolid', 'VLL', '47', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(370, 1, 195, 0, 'Vizcaya', 'VIZ', '48', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(371, 1, 195, 0, 'Zamora', 'ZAM', '49', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(372, 1, 195, 0, 'Zaragoza', 'ZAR', '50', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(373, 1, 10, 0, 'Buenos Aires', 'BAS', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(374, 1, 10, 0, 'Ciudad Autonoma De Buenos Aires', 'CBA', 'CB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(375, 1, 10, 0, 'Catamarca', 'CAT', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(376, 1, 10, 0, 'Chaco', 'CHO', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(377, 1, 10, 0, 'Chubut', 'CTT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(378, 1, 10, 0, 'Cordoba', 'COD', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(379, 1, 10, 0, 'Corrientes', 'CRI', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(380, 1, 10, 0, 'Entre Rios', 'ERS', 'ER', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(381, 1, 10, 0, 'Formosa', 'FRM', 'FR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(382, 1, 10, 0, 'Jujuy', 'JUJ', 'JU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(383, 1, 10, 0, 'La Pampa', 'LPM', 'LP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(384, 1, 10, 0, 'La Rioja', 'LRI', 'LR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(385, 1, 10, 0, 'Mendoza', 'MED', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(386, 1, 10, 0, 'Misiones', 'MIS', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(387, 1, 10, 0, 'Neuquen', 'NQU', 'NQ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(388, 1, 10, 0, 'Rio Negro', 'RNG', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(389, 1, 10, 0, 'Salta', 'SAL', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
REPLACE INTO `joomla_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(390, 1, 10, 0, 'San Juan', 'SJN', 'SJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(391, 1, 10, 0, 'San Luis', 'SLU', 'SL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(392, 1, 10, 0, 'Santa Cruz', 'SCZ', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(393, 1, 10, 0, 'Santa Fe', 'SFE', 'SF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(394, 1, 10, 0, 'Santiago Del Estero', 'SEN', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(395, 1, 10, 0, 'Tierra Del Fuego', 'TFE', 'TF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(396, 1, 10, 0, 'Tucuman', 'TUC', 'TU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(397, 1, 11, 0, 'Aragatsotn', 'ARG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(398, 1, 11, 0, 'Ararat', 'ARR', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(399, 1, 11, 0, 'Armavir', 'ARM', 'AV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(400, 1, 11, 0, 'Gegharkunik', 'GEG', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(401, 1, 11, 0, 'Kotayk', 'KOT', 'KT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(402, 1, 11, 0, 'Lori', 'LOR', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(403, 1, 11, 0, 'Shirak', 'SHI', 'SH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(404, 1, 11, 0, 'Syunik', 'SYU', 'SU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(405, 1, 11, 0, 'Tavush', 'TAV', 'TV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(406, 1, 11, 0, 'Vayots-Dzor', 'VAD', 'VD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(407, 1, 11, 0, 'Yerevan', 'YER', 'ER', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(408, 1, 99, 0, 'Andaman & Nicobar Islands', 'ANI', 'AI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(409, 1, 99, 0, 'Andhra Pradesh', 'AND', 'AN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(410, 1, 99, 0, 'Arunachal Pradesh', 'ARU', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(411, 1, 99, 0, 'Assam', 'ASS', 'AS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(412, 1, 99, 0, 'Bihar', 'BIH', 'BI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(413, 1, 99, 0, 'Chandigarh', 'CHA', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(414, 1, 99, 0, 'Chhatisgarh', 'CHH', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(415, 1, 99, 0, 'Dadra & Nagar Haveli', 'DAD', 'DD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(416, 1, 99, 0, 'Daman & Diu', 'DAM', 'DA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(417, 1, 99, 0, 'Delhi', 'DEL', 'DE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(418, 1, 99, 0, 'Goa', 'GOA', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(419, 1, 99, 0, 'Gujarat', 'GUJ', 'GU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(420, 1, 99, 0, 'Haryana', 'HAR', 'HA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(421, 1, 99, 0, 'Himachal Pradesh', 'HIM', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(422, 1, 99, 0, 'Jammu & Kashmir', 'JAM', 'JA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(423, 1, 99, 0, 'Jharkhand', 'JHA', 'JH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(424, 1, 99, 0, 'Karnataka', 'KAR', 'KA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(425, 1, 99, 0, 'Kerala', 'KER', 'KE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(426, 1, 99, 0, 'Lakshadweep', 'LAK', 'LA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(427, 1, 99, 0, 'Madhya Pradesh', 'MAD', 'MD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(428, 1, 99, 0, 'Maharashtra', 'MAH', 'MH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(429, 1, 99, 0, 'Manipur', 'MAN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(430, 1, 99, 0, 'Meghalaya', 'MEG', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(431, 1, 99, 0, 'Mizoram', 'MIZ', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(432, 1, 99, 0, 'Nagaland', 'NAG', 'NA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(433, 1, 99, 0, 'Orissa', 'ORI', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(434, 1, 99, 0, 'Pondicherry', 'PON', 'PO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(435, 1, 99, 0, 'Punjab', 'PUN', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(436, 1, 99, 0, 'Rajasthan', 'RAJ', 'RA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(437, 1, 99, 0, 'Sikkim', 'SIK', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(438, 1, 99, 0, 'Tamil Nadu', 'TAM', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(439, 1, 99, 0, 'Tripura', 'TRI', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(440, 1, 99, 0, 'Uttaranchal', 'UAR', 'UA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(441, 1, 99, 0, 'Uttar Pradesh', 'UTT', 'UT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(442, 1, 99, 0, 'West Bengal', 'WES', 'WE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(443, 1, 101, 0, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(444, 1, 101, 0, 'Ardabil', 'ARD', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(445, 1, 101, 0, 'Azarbayjan-e Gharbi', 'AZG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(446, 1, 101, 0, 'Azarbayjan-e Sharqi', 'AZS', 'AS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(447, 1, 101, 0, 'Bushehr', 'BUS', 'BU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(448, 1, 101, 0, 'Chaharmahal va Bakhtiari', 'CMB', 'CM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(449, 1, 101, 0, 'Esfahan', 'ESF', 'ES', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(450, 1, 101, 0, 'Fars', 'FAR', 'FA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(451, 1, 101, 0, 'Gilan', 'GIL', 'GI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(452, 1, 101, 0, 'Gorgan', 'GOR', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(453, 1, 101, 0, 'Hamadan', 'HAM', 'HA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(454, 1, 101, 0, 'Hormozgan', 'HOR', 'HO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(455, 1, 101, 0, 'Ilam', 'ILA', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(456, 1, 101, 0, 'Kerman', 'KER', 'KE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(457, 1, 101, 0, 'Kermanshah', 'BAK', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(458, 1, 101, 0, 'Khorasan-e Junoubi', 'KHJ', 'KJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(459, 1, 101, 0, 'Khorasan-e Razavi', 'KHR', 'KR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(460, 1, 101, 0, 'Khorasan-e Shomali', 'KHS', 'KS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(461, 1, 101, 0, 'Khuzestan', 'KHU', 'KH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(462, 1, 101, 0, 'Kordestan', 'KOR', 'KO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(463, 1, 101, 0, 'Lorestan', 'LOR', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(464, 1, 101, 0, 'Markazi', 'MAR', 'MR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(465, 1, 101, 0, 'Mazandaran', 'MAZ', 'MZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(466, 1, 101, 0, 'Qazvin', 'QAS', 'QA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(467, 1, 101, 0, 'Qom', 'QOM', 'QO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(468, 1, 101, 0, 'Semnan', 'SEM', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(469, 1, 101, 0, 'Sistan va Baluchestan', 'SBA', 'SB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(470, 1, 101, 0, 'Tehran', 'TEH', 'TE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(471, 1, 101, 0, 'Yazd', 'YAZ', 'YA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(472, 1, 101, 0, 'Zanjan', 'ZAN', 'ZA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(535, 1, 84, 0, 'ΛΕΥΚΑΔΑΣ', 'ΛΕΥ', 'ΛΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(532, 1, 84, 0, 'ΛΑΡΙΣΑΣ', 'ΛΑΡ', 'ΛΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(504, 1, 84, 0, 'ΑΡΚΑΔΙΑΣ', 'ΑΡΚ', 'ΑΚ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(503, 1, 84, 0, 'ΑΡΓΟΛΙΔΑΣ', 'ΑΡΓ', 'ΑΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(533, 1, 84, 0, 'ΛΑΣΙΘΙΟΥ', 'ΛΑΣ', 'ΛΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(534, 1, 84, 0, 'ΛΕΣΒΟΥ', 'ΛΕΣ', 'ΛΣ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(530, 1, 84, 0, 'ΚΥΚΛΑΔΩΝ', 'ΚΥΚ', 'ΚΥ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(553, 1, 84, 0, 'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ', 'ΑΙΤ', 'ΑΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(529, 1, 84, 0, 'ΚΟΡΙΝΘΙΑΣ', 'ΚΟΡ', 'ΚΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(531, 1, 84, 0, 'ΛΑΚΩΝΙΑΣ', 'ΛΑΚ', 'ΛK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(517, 1, 84, 0, 'ΗΜΑΘΙΑΣ', 'ΗΜΑ', 'ΗΜ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(518, 1, 84, 0, 'ΗΡΑΚΛΕΙΟΥ', 'ΗΡΑ', 'ΗΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(519, 1, 84, 0, 'ΘΕΣΠΡΩΤΙΑΣ', 'ΘΕΠ', 'ΘΠ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(520, 1, 84, 0, 'ΘΕΣΣΑΛΟΝΙΚΗΣ', 'ΘΕΣ', 'ΘΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(521, 1, 84, 0, 'ΙΩΑΝΝΙΝΩΝ', 'ΙΩΑ', 'ΙΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(522, 1, 84, 0, 'ΚΑΒΑΛΑΣ', 'ΚΑΒ', 'ΚΒ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(523, 1, 84, 0, 'ΚΑΡΔΙΤΣΑΣ', 'ΚΑΡ', 'ΚΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(524, 1, 84, 0, 'ΚΑΣΤΟΡΙΑΣ', 'ΚΑΣ', 'ΚΣ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(525, 1, 84, 0, 'ΚΕΡΚΥΡΑΣ', 'ΚΕΡ', 'ΚΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(526, 1, 84, 0, 'ΚΕΦΑΛΛΗΝΙΑΣ', 'ΚΕΦ', 'ΚΦ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(527, 1, 84, 0, 'ΚΙΛΚΙΣ', 'ΚΙΛ', 'ΚΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(528, 1, 84, 0, 'ΚΟΖΑΝΗΣ', 'ΚΟΖ', 'ΚZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(507, 1, 84, 0, 'ΑΧΑΪΑΣ', 'ΑΧΑ', 'ΑΧ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(508, 1, 84, 0, 'ΒΟΙΩΤΙΑΣ', 'ΒΟΙ', 'ΒΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(509, 1, 84, 0, 'ΓΡΕΒΕΝΩΝ', 'ΓΡΕ', 'ΓΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(510, 1, 84, 0, 'ΔΡΑΜΑΣ', 'ΔΡΑ', 'ΔΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(511, 1, 84, 0, 'ΔΩΔΕΚΑΝΗΣΟΥ', 'ΔΩΔ', 'ΔΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(512, 1, 84, 0, 'ΕΒΡΟΥ', 'ΕΒΡ', 'ΕΒ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(513, 1, 84, 0, 'ΕΥΒΟΙΑΣ', 'ΕΥΒ', 'ΕΥ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(514, 1, 84, 0, 'ΕΥΡΥΤΑΝΙΑΣ', 'ΕΥΡ', 'ΕΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(515, 1, 84, 0, 'ΖΑΚΥΝΘΟΥ', 'ΖΑΚ', 'ΖΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(516, 1, 84, 0, 'ΗΛΕΙΑΣ', 'ΗΛΕ', 'ΗΛ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(505, 1, 84, 0, 'ΑΡΤΑΣ', 'ΑΡΤ', 'ΑΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(506, 1, 84, 0, 'ΑΤΤΙΚΗΣ', 'ΑΤΤ', 'ΑΤ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(536, 1, 84, 0, 'ΜΑΓΝΗΣΙΑΣ', 'ΜΑΓ', 'ΜΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(537, 1, 84, 0, 'ΜΕΣΣΗΝΙΑΣ', 'ΜΕΣ', 'ΜΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(538, 1, 84, 0, 'ΞΑΝΘΗΣ', 'ΞΑΝ', 'ΞΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(539, 1, 84, 0, 'ΠΕΛΛΗΣ', 'ΠΕΛ', 'ΠΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(540, 1, 84, 0, 'ΠΙΕΡΙΑΣ', 'ΠΙΕ', 'ΠΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(541, 1, 84, 0, 'ΠΡΕΒΕΖΑΣ', 'ΠΡΕ', 'ΠΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(542, 1, 84, 0, 'ΡΕΘΥΜΝΗΣ', 'ΡΕΘ', 'ΡΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(543, 1, 84, 0, 'ΡΟΔΟΠΗΣ', 'ΡΟΔ', 'ΡΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(544, 1, 84, 0, 'ΣΑΜΟΥ', 'ΣΑΜ', 'ΣΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(545, 1, 84, 0, 'ΣΕΡΡΩΝ', 'ΣΕΡ', 'ΣΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(546, 1, 84, 0, 'ΤΡΙΚΑΛΩΝ', 'ΤΡΙ', 'ΤΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(547, 1, 84, 0, 'ΦΘΙΩΤΙΔΑΣ', 'ΦΘΙ', 'ΦΘ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(548, 1, 84, 0, 'ΦΛΩΡΙΝΑΣ', 'ΦΛΩ', 'ΦΛ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(549, 1, 84, 0, 'ΦΩΚΙΔΑΣ', 'ΦΩΚ', 'ΦΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(550, 1, 84, 0, 'ΧΑΛΚΙΔΙΚΗΣ', 'ΧΑΛ', 'ΧΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(551, 1, 84, 0, 'ΧΑΝΙΩΝ', 'ΧΑΝ', 'ΧΝ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(552, 1, 84, 0, 'ΧΙΟΥ', 'ΧΙΟ', 'ΧΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(569, 1, 81, 0, 'Schleswig-Holstein', 'SHO', 'SH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(554, 1, 81, 0, 'Freie und Hansestadt Hamburg', 'HAM', 'HH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(555, 1, 81, 0, 'Niedersachsen', 'NIS', 'NI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(556, 1, 81, 0, 'Freie Hansestadt Bremen', 'HBR', 'HB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(557, 1, 81, 0, 'Nordrhein-Westfalen', 'NRW', 'NW', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(558, 1, 81, 0, 'Hessen', 'HES', 'HE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(559, 1, 81, 0, 'Rheinland-Pfalz', 'RLP', 'RP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(560, 1, 81, 0, 'Baden-Württemberg', 'BWÜ', 'BW', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(561, 1, 81, 0, 'Freistaat Bayern', 'BAV', 'BY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(562, 1, 81, 0, 'Saarland', 'SLA', 'SL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(563, 1, 81, 0, 'Berlin', 'BER', 'BE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(564, 1, 81, 0, 'Brandenburg', 'BRB', 'BB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(565, 1, 81, 0, 'Mecklenburg-Vorpommern', 'MVO', 'MV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(566, 1, 81, 0, 'Freistaat Sachsen', 'SAC', 'SN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(567, 1, 81, 0, 'Sachsen-Anhalt', 'SAA', 'ST', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(568, 1, 81, 0, 'Freistaat Thüringen', 'THÜ', 'TH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(570, 1, 176, 0, 'Адыгея Республика', 'AD', '01', 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(571, 1, 176, 0, 'Алтай Республика', 'AL', '04', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(572, 1, 176, 0, 'Алтайский край', 'ALT', '22', 3, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(573, 1, 176, 0, 'Амурская область', 'AMU', '28', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(574, 1, 176, 0, 'Архангельская область', 'ARK', '29', 5, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(575, 1, 176, 0, 'Астраханская область', 'AST', '30', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(576, 1, 176, 0, 'Башкортостан Республика', 'BA', '02', 7, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(577, 1, 176, 0, 'Белгородская область', 'BEL', '31', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(578, 1, 176, 0, 'Брянская область', 'BRY', '32', 9, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(579, 1, 176, 0, 'Бурятия Республика', 'BU', '03', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(580, 1, 176, 0, 'Владимирская область', 'VLA', '33', 11, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(581, 1, 176, 0, 'Волгоградская область', 'VGG', '34', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(582, 1, 176, 0, 'Вологодская область', 'VLG', '35', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(583, 1, 176, 0, 'Воронежская область', 'VOR', '36', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(584, 1, 176, 0, 'Дагестан Республика', 'DA', '05', 15, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(585, 1, 176, 0, 'Еврейская автономная область', 'YEV', '79', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(586, 1, 176, 0, 'Забайкальский край', 'ZAB', '75', 17, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(587, 1, 176, 0, 'Ивановская область', 'IVA', '37', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(588, 1, 176, 0, 'Ингушетия Республика', 'IN', '06', 19, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(589, 1, 176, 0, 'Иркутская область', 'IRK', '38', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(590, 1, 176, 0, 'Кабардино-Балкарская Республика', 'KB', '07', 21, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(591, 1, 176, 0, 'Калининградская область', 'KGD', '39', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(592, 1, 176, 0, 'Калмыкия Республика', 'KL', '08', 23, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(593, 1, 176, 0, 'Калужская область', 'KLU', '40', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(594, 1, 176, 0, 'Камчатский край', 'KAM', '41', 25, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(595, 1, 176, 0, 'Карачаево-Черкесская Республика', 'KC', '09', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(596, 1, 176, 0, 'Карелия Республика', 'KR', '10', 27, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(597, 1, 176, 0, 'Кемеровская область', 'KEM', '42', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(598, 1, 176, 0, 'Кировская область', 'KIR', '43', 29, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(599, 1, 176, 0, 'Коми Республика', 'KO', '11', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(600, 1, 176, 0, 'Костромская область', 'KOS', '44', 31, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(601, 1, 176, 0, 'Краснодарский край', 'KDA', '23', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(602, 1, 176, 0, 'Красноярский край', 'KIA', '24', 33, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(603, 1, 176, 0, 'Курганская область', 'KGN', '45', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(604, 1, 176, 0, 'Курская область', 'KRS', '46', 35, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(605, 1, 176, 0, 'Ленинградская область', 'LEN', '47', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(606, 1, 176, 0, 'Липецкая область', 'LIP', '48', 37, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(607, 1, 176, 0, 'Магаданская область', 'MAG', '49', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(608, 1, 176, 0, 'Марий Эл Республика', 'ME', '12', 39, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(609, 1, 176, 0, 'Мордовия Республика', 'MO', '13', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(610, 1, 176, 0, 'Москва', 'MOW', '77', 41, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(611, 1, 176, 0, 'Московская область', 'MOS', '50', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(612, 1, 176, 0, 'Мурманская область', 'MUR', '51', 43, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(613, 1, 176, 0, 'Ненецкий автономный округ', 'NEN', '83', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(614, 1, 176, 0, 'Нижегородская область', 'NIZ', '52', 45, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(615, 1, 176, 0, 'Новгородская область', 'NGR', '53', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(616, 1, 176, 0, 'Новосибирская область', 'NVS', '54', 47, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(617, 1, 176, 0, 'Омская область', 'OMS', '55', 48, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(618, 1, 176, 0, 'Оренбургская область', 'ORE', '56', 49, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(619, 1, 176, 0, 'Орловская область', 'ORL', '57', 50, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(620, 1, 176, 0, 'Пензенская область', 'PNZ', '58', 51, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(621, 1, 176, 0, 'Пермский край', 'PER', '59', 52, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(622, 1, 176, 0, 'Приморский край', 'PRI', '25', 53, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(623, 1, 176, 0, 'Псковская область', 'PSK', '60', 54, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(624, 1, 176, 0, 'Ростовская область', 'ROS', '61', 55, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(625, 1, 176, 0, 'Рязанская область', 'RYA', '62', 56, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(626, 1, 176, 0, 'Самарская область', 'SAM', '63', 57, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(627, 1, 176, 0, 'Санкт-Петербург', 'SPE', '78', 58, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(628, 1, 176, 0, 'Саратовская область', 'SAR', '64', 59, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(629, 1, 176, 0, 'Саха (Якутия) Республика', 'SA', '14', 60, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(630, 1, 176, 0, 'Сахалинская область', 'SAK', '65', 61, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(631, 1, 176, 0, 'Свердловская область', 'SVE', '66', 62, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(632, 1, 176, 0, 'Северная Осетия-Алания Республика', 'SE', '15', 63, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(633, 1, 176, 0, 'Смоленская область', 'SMO', '67', 64, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(634, 1, 176, 0, 'Ставропольский край', 'STA', '26', 65, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(635, 1, 176, 0, 'Тамбовская область', 'TAM', '68', 66, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(636, 1, 176, 0, 'Татарстан Республика', 'TA', '16', 67, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(637, 1, 176, 0, 'Тверская область', 'TVE', '69', 68, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(638, 1, 176, 0, 'Томская область', 'TOM', '70', 69, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(639, 1, 176, 0, 'Тульская область', 'TUL', '71', 70, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(640, 1, 176, 0, 'Тыва Республика', 'TY', '17', 71, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(641, 1, 176, 0, 'Тюменская область', 'TYU', '72', 72, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(642, 1, 176, 0, 'Удмуртская Республика', 'UD', '18', 73, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(643, 1, 176, 0, 'Ульяновская область', 'ULY', '73', 74, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(644, 1, 176, 0, 'Хакасия Республика', 'KK', '19', 75, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(645, 1, 176, 0, 'Челябинская область', 'CHE', '74', 76, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(646, 1, 176, 0, 'Чеченская Республика', 'CE', '20', 77, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(647, 1, 176, 0, 'Чувашская Республика', 'CU', '21', 78, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(648, 1, 176, 0, 'Чукотский автономный округ', 'CHU', '87', 79, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(649, 1, 176, 0, 'Хабаровский край', 'KHA', '27', 80, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(650, 1, 176, 0, 'Ханты-Мансийский автономный округ', 'KHM', '86', 81, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(651, 1, 176, 0, 'Ямало-Ненецкий автономный округ', 'YAN', '89', 82, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(652, 1, 176, 0, 'Ярославская область', 'YAR', '76', 83, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(653, 1, 209, 0, 'กระบี่', 'กบ', 'กบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(654, 1, 209, 0, 'กรุงเทพมหานคร', 'กทม', 'กท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(655, 1, 209, 0, 'กาญจนบุรี', 'กจ', 'กจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(656, 1, 209, 0, 'กาฬสินธุ์', 'กส', 'กส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(657, 1, 209, 0, 'กำแพงเพชร', 'กพ', 'กพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(658, 1, 209, 0, 'ขอนแก่น', 'ขก', 'ขก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(659, 1, 209, 0, 'จันทบุรี', 'จบ', 'จบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(660, 1, 209, 0, 'ฉะเชิงเทรา', 'ฉช', 'ฉช', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(661, 1, 209, 0, 'ชลบุรี', 'ชบ', 'ชบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(662, 1, 209, 0, 'ชัยนาท', 'ชน', 'ชน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(663, 1, 209, 0, 'ชัยภูมิ', 'ชย', 'ชย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(664, 1, 209, 0, 'ชุมพร', 'ชพ', 'ชพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(665, 1, 209, 0, 'เชียงราย', 'ชร', 'ชร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(666, 1, 209, 0, 'เชียงใหม่', 'ชม', 'ชม', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(667, 1, 209, 0, 'ตรัง', 'ตง', 'ตง', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(668, 1, 209, 0, 'ตราด', 'ตร', 'ตร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(669, 1, 209, 0, 'ตาก', 'ตก', 'ตก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(670, 1, 209, 0, 'นครนายก', 'นย', 'นย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(671, 1, 209, 0, 'นครปฐม', 'นฐ', 'นฐ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(672, 1, 209, 0, 'นครพนม', 'นพ', 'นพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(673, 1, 209, 0, 'นครราชสีมา', 'นม', 'นม', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(674, 1, 209, 0, 'นครศรีธรรมราช', 'นศ', 'นศ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(675, 1, 209, 0, 'นครสวรรค์', 'นว', 'นว', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(676, 1, 209, 0, 'นนทบุรี', 'นบ', 'นบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(677, 1, 209, 0, 'นราธิวาส', 'นธ', 'นธ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(678, 1, 209, 0, 'น่าน', 'นน', 'นน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(679, 1, 209, 0, 'บุรีรัมย์', 'บร', 'บร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(680, 1, 209, 0, 'บึงกาฬ', 'บก', 'บก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(681, 1, 209, 0, 'ปทุมธานี', 'ปท', 'ปท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(682, 1, 209, 0, 'ประจวบคีรีขันธ์', 'ปข', 'ปข', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(683, 1, 209, 0, 'ปราจีนบุรี', 'ปจ', 'ปจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(684, 1, 209, 0, 'ปัตตานี', 'ปน', 'ปน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(685, 1, 209, 0, 'พระนครศรีอยุธยา', 'อย', 'อย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(686, 1, 209, 0, 'พังงา', 'พง', 'พง', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(687, 1, 209, 0, 'พัทลุง', 'พท', 'พท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(688, 1, 209, 0, 'พิจิตร', 'พจ', 'พจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(689, 1, 209, 0, 'พิษณุโลก', 'พล', 'พล', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(690, 1, 209, 0, 'เพชรบุรี', 'พบ', 'พบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(691, 1, 209, 0, 'เพชรบูรณ์', 'พช', 'พช', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(692, 1, 209, 0, 'แพร่', 'พร', 'พร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(693, 1, 209, 0, 'พะเยา', 'พย', 'พย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(694, 1, 209, 0, 'ภูเก็ต', 'ภก', 'ภก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(695, 1, 209, 0, 'มหาสารคาม', 'มค', 'มค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(696, 1, 209, 0, 'แม่ฮ่องสอน', 'มส', 'มส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(697, 1, 209, 0, 'มุกดาหาร', 'มห', 'มห', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(698, 1, 209, 0, 'ยะลา', 'ยล', 'ยล', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(699, 1, 209, 0, 'ยโสธร', 'ยส', 'ยส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(700, 1, 209, 0, 'ร้อยเอ็ด', 'รอ', 'รอ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(701, 1, 209, 0, 'ระนอง', 'รน', 'รน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(702, 1, 209, 0, 'ระยอง', 'รย', 'รย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(703, 1, 209, 0, 'ราชบุรี', 'รบ', 'รบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(704, 1, 209, 0, 'ลพบุรี', 'ลบ', 'ลบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(705, 1, 209, 0, 'ลำปาง', 'ลป', 'ลป', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(706, 1, 209, 0, 'ลำพูน', 'ลพ', 'ลพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(707, 1, 209, 0, 'เลย', 'ลย', 'ลย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(708, 1, 209, 0, 'ศรีสะเกษ', 'ศก', 'ศก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(709, 1, 209, 0, 'สกลนคร', 'สน', 'สน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(710, 1, 209, 0, 'สงขลา', 'สข', 'สข', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(711, 1, 209, 0, 'สตูล', 'สต', 'สต', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(712, 1, 209, 0, 'สมุทรปราการ', 'สป', 'สป', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(713, 1, 209, 0, 'สมุทรสงคราม', 'สส', 'สส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(714, 1, 209, 0, 'สมุทรสาคร', 'สค', 'สค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(715, 1, 209, 0, 'สระบุรี', 'สบ', 'สบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(716, 1, 209, 0, 'สระแก้ว', 'สก', 'สก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(717, 1, 209, 0, 'สิงห์บุรี', 'สห', 'สห', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(718, 1, 209, 0, 'สุโขทัย', 'สท', 'สท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(719, 1, 209, 0, 'สุพรรณบุรี', 'สพ', 'สพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(720, 1, 209, 0, 'สุราษฎร์ธานี', 'สฎ', 'สฎ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(721, 1, 209, 0, 'สุรินทร์', 'สร', 'สร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(722, 1, 209, 0, 'หนองคาย', 'นค', 'นค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(723, 1, 209, 0, 'หนองบัวลำภู', 'นภ', 'นภ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(724, 1, 209, 0, 'อ่างทอง', 'อท', 'อท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(725, 1, 209, 0, 'อุดรธานี', 'อด', 'อด', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(726, 1, 209, 0, 'อุตรดิตถ์', 'อต', 'อต', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(727, 1, 209, 0, 'อุทัยธานี', 'อน', 'อน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(728, 1, 209, 0, 'อุบลราชธานี', 'อบ', 'อบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(729, 1, 209, 0, 'อำนาจเจริญ', 'อจ', 'อจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_userfields`
--

DROP TABLE IF EXISTS `joomla_virtuemart_userfields`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_userfields` (
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `description` varchar(2048) DEFAULT NULL,
  `type` char(70) NOT NULL DEFAULT '',
  `maxlength` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(1) DEFAULT NULL,
  `rows` int(1) DEFAULT NULL,
  `value` char(255) DEFAULT NULL,
  `default` char(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `cart` tinyint(1) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `userfield_params` varchar(17000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';

--
-- Volcado de datos para la tabla `joomla_virtuemart_userfields`
--

REPLACE INTO `joomla_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `registration`, `shipment`, `account`, `cart`, `readonly`, `calculated`, `sys`, `userfield_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 0, 0, 'email', 'COM_VIRTUEMART_REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 0, 0, 'name', 'COM_VIRTUEMART_USER_DISPLAYED_NAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 0, 0, 'username', 'COM_VIRTUEMART_USERNAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 0, 0, 'password', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 0, 0, 'password2', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 0, 0, 'agreed', 'COM_VIRTUEMART_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 0, 0, 'tos', 'COM_VIRTUEMART_STORE_FORM_TOS', '', 'custom', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 0, 0, 'customer_note', 'COM_VIRTUEMART_CNOTES_CART', '', 'textarea', 2500, NULL, 0, 60, 1, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 0, 0, 'address_type_name', 'COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, NULL, NULL, NULL, 'Shipment', 0, 1, 0, 0, 0, 0, 1, '', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 0, 0, 'delimiter_billto', 'COM_VIRTUEMART_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 0, 0, 'company', 'COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 0, 0, 'title', 'COM_VIRTUEMART_SHOPPER_FORM_TITLE', '', 'select', 0, 210, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 0, 0, 'first_name', 'COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 0, 0, 'middle_name', 'COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 0, 0, 'last_name', 'COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 0, 0, 'address_1', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 0, 0, 'address_2', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 0, 0, 'zip', 'COM_VIRTUEMART_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 0, 0, 'city', 'COM_VIRTUEMART_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 0, 0, 'virtuemart_country_id', 'COM_VIRTUEMART_SHOPPER_FORM_COUNTRY', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 0, 0, 'virtuemart_state_id', 'COM_VIRTUEMART_SHOPPER_FORM_STATE', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 0, 0, 'phone_1', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 0, 0, 'phone_2', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 0, 0, 'fax', 'COM_VIRTUEMART_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 0, 0, 'delimiter_sendregistration', 'COM_VIRTUEMART_BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 0, 0, 'delimiter_userinfo', 'COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 0, 0, 'tax_exemption_number', 'COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR', 'Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.', 'text', 10, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 48, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 0, 0, 'tax_usage_type', 'COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE', 'Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.', 'select', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 50, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_userfield_values`
--

DROP TABLE IF EXISTS `joomla_virtuemart_userfield_values`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(1) unsigned NOT NULL,
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `fieldtitle` char(255) NOT NULL DEFAULT '',
  `fieldvalue` char(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';

--
-- Volcado de datos para la tabla `joomla_virtuemart_userfield_values`
--

REPLACE INTO `joomla_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MR', 'Mr', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MRS', 'Mrs', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 51, 'None', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 51, 'Non-resident (Canada)', 'R', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 51, 'Federal government (United States)', 'A', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 51, 'State government (United States)', 'B', 0, 2, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 51, 'Tribe / Status Indian / Indian Band (both)', 'C', 0, 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 51, 'Foreign diplomat (both)', 'D', 0, 4, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 51, 'Charitable or benevolent org (both)', 'E', 0, 5, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 51, 'Religious or educational org (both)', 'F', 0, 6, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 51, 'Resale (both)', 'G', 0, 7, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 51, 'Commercial agricultural production (both)', 'H', 0, 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 51, 'Industrial production / manufacturer (both)', 'I', 0, 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 51, 'Direct pay permit (United States)', 'J', 0, 10, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 51, 'Direct mail (United States)', 'K', 0, 11, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 51, 'Other (both)', 'L', 0, 12, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 51, 'Local government (United States)', 'N', 0, 13, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 51, 'Commercial aquaculture (Canada)', 'P', 0, 14, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 51, 'Commercial Fishery (Canada)', 'Q', 0, 15, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_userinfos`
--

DROP TABLE IF EXISTS `joomla_virtuemart_userinfos`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` char(32) NOT NULL DEFAULT '',
  `name` char(64) DEFAULT NULL,
  `company` char(64) DEFAULT NULL,
  `title` char(32) DEFAULT NULL,
  `last_name` char(48) DEFAULT NULL,
  `first_name` char(48) DEFAULT NULL,
  `middle_name` char(48) DEFAULT NULL,
  `phone_1` char(32) DEFAULT NULL,
  `phone_2` char(32) DEFAULT NULL,
  `fax` char(32) DEFAULT NULL,
  `address_1` char(64) NOT NULL DEFAULT '',
  `address_2` char(64) DEFAULT NULL,
  `city` char(64) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` char(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(2500) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_vendors`
--

DROP TABLE IF EXISTS `joomla_virtuemart_vendors`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_vendors` (
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL,
  `vendor_name` char(64) DEFAULT NULL,
  `vendor_currency` int(1) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(17000) NOT NULL DEFAULT '',
  `metarobot` char(20) DEFAULT NULL,
  `metaauthor` char(64) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_vendors_es_es`
--

DROP TABLE IF EXISTS `joomla_virtuemart_vendors_es_es`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_vendors_es_es` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_css` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_vendor_medias`
--

DROP TABLE IF EXISTS `joomla_virtuemart_vendor_medias`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_vendor_medias` (
  `id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_vendor_users`
--

DROP TABLE IF EXISTS `joomla_virtuemart_vendor_users`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_vendor_users` (
  `id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_vmusers`
--

DROP TABLE IF EXISTS `joomla_virtuemart_vmusers`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_vmusers` (
  `virtuemart_user_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` char(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';

--
-- Volcado de datos para la tabla `joomla_virtuemart_vmusers`
--

REPLACE INTO `joomla_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(57, 1, 1, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_vmuser_shoppergroups`
--

DROP TABLE IF EXISTS `joomla_virtuemart_vmuser_shoppergroups`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_vmuser_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_waitingusers`
--

DROP TABLE IF EXISTS `joomla_virtuemart_waitingusers`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `notify_email` char(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joomla_virtuemart_worldzones`
--

DROP TABLE IF EXISTS `joomla_virtuemart_worldzones`;
CREATE TABLE IF NOT EXISTS `joomla_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) DEFAULT NULL,
  `zone_name` char(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(18000) DEFAULT NULL,
  `zone_tax_rate` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `joomla_virtuemart_adminmenuentries`
--
ALTER TABLE `joomla_virtuemart_adminmenuentries`
  ADD PRIMARY KEY (`id`), ADD KEY `module_id` (`module_id`), ADD KEY `published` (`published`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_calcs`
--
ALTER TABLE `joomla_virtuemart_calcs`
  ADD PRIMARY KEY (`virtuemart_calc_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`), ADD KEY `calc_kind` (`calc_kind`), ADD KEY `shared` (`shared`), ADD KEY `publish_up` (`publish_up`), ADD KEY `publish_down` (`publish_down`);

--
-- Indices de la tabla `joomla_virtuemart_calc_categories`
--
ALTER TABLE `joomla_virtuemart_calc_categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`);

--
-- Indices de la tabla `joomla_virtuemart_calc_countries`
--
ALTER TABLE `joomla_virtuemart_calc_countries`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`);

--
-- Indices de la tabla `joomla_virtuemart_calc_manufacturers`
--
ALTER TABLE `joomla_virtuemart_calc_manufacturers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`);

--
-- Indices de la tabla `joomla_virtuemart_calc_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_calc_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`);

--
-- Indices de la tabla `joomla_virtuemart_calc_states`
--
ALTER TABLE `joomla_virtuemart_calc_states`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`);

--
-- Indices de la tabla `joomla_virtuemart_carts`
--
ALTER TABLE `joomla_virtuemart_carts`
  ADD PRIMARY KEY (`virtuemart_cart_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`);

--
-- Indices de la tabla `joomla_virtuemart_categories`
--
ALTER TABLE `joomla_virtuemart_categories`
  ADD PRIMARY KEY (`virtuemart_category_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`), ADD KEY `shared` (`shared`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_categories_es_es`
--
ALTER TABLE `joomla_virtuemart_categories_es_es`
  ADD PRIMARY KEY (`virtuemart_category_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `joomla_virtuemart_category_categories`
--
ALTER TABLE `joomla_virtuemart_category_categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`), ADD KEY `category_child_id` (`category_child_id`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_category_medias`
--
ALTER TABLE `joomla_virtuemart_category_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_configs`
--
ALTER TABLE `joomla_virtuemart_configs`
  ADD PRIMARY KEY (`virtuemart_config_id`);

--
-- Indices de la tabla `joomla_virtuemart_countries`
--
ALTER TABLE `joomla_virtuemart_countries`
  ADD PRIMARY KEY (`virtuemart_country_id`), ADD KEY `country_3_code` (`country_3_code`), ADD KEY `country_2_code` (`country_2_code`), ADD KEY `country_name` (`country_name`), ADD KEY `ordering` (`ordering`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_coupons`
--
ALTER TABLE `joomla_virtuemart_coupons`
  ADD PRIMARY KEY (`virtuemart_coupon_id`), ADD KEY `coupon_code` (`coupon_code`), ADD KEY `coupon_type` (`coupon_type`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_currencies`
--
ALTER TABLE `joomla_virtuemart_currencies`
  ADD PRIMARY KEY (`virtuemart_currency_id`), ADD KEY `ordering` (`ordering`), ADD KEY `currency_name` (`currency_name`), ADD KEY `published` (`published`), ADD KEY `shared` (`shared`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `currency_code_3` (`currency_code_3`), ADD KEY `currency_numeric_code` (`currency_numeric_code`);

--
-- Indices de la tabla `joomla_virtuemart_customs`
--
ALTER TABLE `joomla_virtuemart_customs`
  ADD PRIMARY KEY (`virtuemart_custom_id`), ADD KEY `custom_parent_id` (`custom_parent_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `custom_element` (`custom_element`), ADD KEY `field_type` (`field_type`), ADD KEY `is_cart_attribute` (`is_cart_attribute`), ADD KEY `is_input` (`is_input`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_invoices`
--
ALTER TABLE `joomla_virtuemart_invoices`
  ADD PRIMARY KEY (`virtuemart_invoice_id`), ADD UNIQUE KEY `invoice_number` (`invoice_number`,`virtuemart_vendor_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indices de la tabla `joomla_virtuemart_manufacturercategories`
--
ALTER TABLE `joomla_virtuemart_manufacturercategories`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_manufacturercategories_es_es`
--
ALTER TABLE `joomla_virtuemart_manufacturercategories_es_es`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `joomla_virtuemart_manufacturers`
--
ALTER TABLE `joomla_virtuemart_manufacturers`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`), ADD UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_manufacturers_es_es`
--
ALTER TABLE `joomla_virtuemart_manufacturers_es_es`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `joomla_virtuemart_manufacturer_medias`
--
ALTER TABLE `joomla_virtuemart_manufacturer_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_medias`
--
ALTER TABLE `joomla_virtuemart_medias`
  ADD PRIMARY KEY (`virtuemart_media_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`), ADD KEY `file_type` (`file_type`), ADD KEY `shared` (`shared`);

--
-- Indices de la tabla `joomla_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `joomla_virtuemart_migration_oldtonew_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `joomla_virtuemart_modules`
--
ALTER TABLE `joomla_virtuemart_modules`
  ADD PRIMARY KEY (`module_id`), ADD KEY `module_name` (`module_name`), ADD KEY `ordering` (`ordering`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_orders`
--
ALTER TABLE `joomla_virtuemart_orders`
  ADD PRIMARY KEY (`virtuemart_order_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `order_number` (`order_number`), ADD KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`), ADD KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`);

--
-- Indices de la tabla `joomla_virtuemart_orderstates`
--
ALTER TABLE `joomla_virtuemart_orderstates`
  ADD PRIMARY KEY (`virtuemart_orderstate_id`), ADD KEY `ordering` (`ordering`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_order_calc_rules`
--
ALTER TABLE `joomla_virtuemart_order_calc_rules`
  ADD PRIMARY KEY (`virtuemart_order_calc_rule_id`), ADD KEY `virtuemart_calc_id` (`virtuemart_calc_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indices de la tabla `joomla_virtuemart_order_histories`
--
ALTER TABLE `joomla_virtuemart_order_histories`
  ADD PRIMARY KEY (`virtuemart_order_history_id`);

--
-- Indices de la tabla `joomla_virtuemart_order_items`
--
ALTER TABLE `joomla_virtuemart_order_items`
  ADD PRIMARY KEY (`virtuemart_order_item_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `order_status` (`order_status`);

--
-- Indices de la tabla `joomla_virtuemart_order_userinfos`
--
ALTER TABLE `joomla_virtuemart_order_userinfos`
  ADD PRIMARY KEY (`virtuemart_order_userinfo_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`), ADD KEY `address_type` (`address_type`);

--
-- Indices de la tabla `joomla_virtuemart_paymentmethods`
--
ALTER TABLE `joomla_virtuemart_paymentmethods`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`), ADD KEY `payment_jplugin_id` (`payment_jplugin_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `payment_element` (`payment_element`,`virtuemart_vendor_id`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_paymentmethods_es_es`
--
ALTER TABLE `joomla_virtuemart_paymentmethods_es_es`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `joomla_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_paymentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indices de la tabla `joomla_virtuemart_products`
--
ALTER TABLE `joomla_virtuemart_products`
  ADD PRIMARY KEY (`virtuemart_product_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `product_parent_id` (`product_parent_id`), ADD KEY `product_special` (`product_special`), ADD KEY `published` (`published`), ADD KEY `pordering` (`pordering`), ADD KEY `created_on` (`created_on`), ADD KEY `modified_on` (`modified_on`);

--
-- Indices de la tabla `joomla_virtuemart_products_es_es`
--
ALTER TABLE `joomla_virtuemart_products_es_es`
  ADD PRIMARY KEY (`virtuemart_product_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `joomla_virtuemart_product_categories`
--
ALTER TABLE `joomla_virtuemart_product_categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_product_customfields`
--
ALTER TABLE `joomla_virtuemart_product_customfields`
  ADD PRIMARY KEY (`virtuemart_customfield_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `virtuemart_custom_id` (`virtuemart_custom_id`), ADD KEY `published` (`published`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_product_manufacturers`
--
ALTER TABLE `joomla_virtuemart_product_manufacturers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`);

--
-- Indices de la tabla `joomla_virtuemart_product_medias`
--
ALTER TABLE `joomla_virtuemart_product_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_product_prices`
--
ALTER TABLE `joomla_virtuemart_product_prices`
  ADD PRIMARY KEY (`virtuemart_product_price_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `product_price` (`virtuemart_product_id`), ADD KEY `virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`), ADD KEY `product_price_publish_up` (`product_price_publish_up`), ADD KEY `product_price_publish_down` (`product_price_publish_down`), ADD KEY `price_quantity_start` (`price_quantity_start`), ADD KEY `price_quantity_end` (`price_quantity_end`);

--
-- Indices de la tabla `joomla_virtuemart_product_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_product_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`);

--
-- Indices de la tabla `joomla_virtuemart_ratings`
--
ALTER TABLE `joomla_virtuemart_ratings`
  ADD PRIMARY KEY (`virtuemart_rating_id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_rating_reviews`
--
ALTER TABLE `joomla_virtuemart_rating_reviews`
  ADD PRIMARY KEY (`virtuemart_rating_review_id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`), ADD KEY `created_on` (`created_on`), ADD KEY `created_by` (`created_by`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_rating_votes`
--
ALTER TABLE `joomla_virtuemart_rating_votes`
  ADD PRIMARY KEY (`virtuemart_rating_vote_id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`), ADD KEY `created_by` (`created_by`), ADD KEY `created_on` (`created_on`);

--
-- Indices de la tabla `joomla_virtuemart_shipmentmethods`
--
ALTER TABLE `joomla_virtuemart_shipmentmethods`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`), ADD KEY `shipment_jplugin_id` (`shipment_jplugin_id`), ADD KEY `shipment_element` (`shipment_element`,`virtuemart_vendor_id`), ADD KEY `ordering` (`ordering`);

--
-- Indices de la tabla `joomla_virtuemart_shipmentmethods_es_es`
--
ALTER TABLE `joomla_virtuemart_shipmentmethods_es_es`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `joomla_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_shipmentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indices de la tabla `joomla_virtuemart_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_shoppergroups`
  ADD PRIMARY KEY (`virtuemart_shoppergroup_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `shopper_group_name` (`shopper_group_name`), ADD KEY `ordering` (`ordering`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_states`
--
ALTER TABLE `joomla_virtuemart_states`
  ADD PRIMARY KEY (`virtuemart_state_id`), ADD UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`), ADD UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `virtuemart_country_id` (`virtuemart_country_id`), ADD KEY `ordering` (`ordering`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`);

--
-- Indices de la tabla `joomla_virtuemart_userfields`
--
ALTER TABLE `joomla_virtuemart_userfields`
  ADD PRIMARY KEY (`virtuemart_userfield_id`), ADD UNIQUE KEY `name` (`name`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `ordering` (`ordering`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`), ADD KEY `account` (`account`), ADD KEY `shipment` (`shipment`), ADD KEY `cart` (`cart`);

--
-- Indices de la tabla `joomla_virtuemart_userfield_values`
--
ALTER TABLE `joomla_virtuemart_userfield_values`
  ADD PRIMARY KEY (`virtuemart_userfield_value_id`), ADD KEY `virtuemart_userfield_id` (`virtuemart_userfield_id`);

--
-- Indices de la tabla `joomla_virtuemart_userinfos`
--
ALTER TABLE `joomla_virtuemart_userinfos`
  ADD PRIMARY KEY (`virtuemart_userinfo_id`), ADD KEY `i_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`), ADD KEY `address_type` (`address_type`), ADD KEY `address_type_name` (`address_type_name`);

--
-- Indices de la tabla `joomla_virtuemart_vendors`
--
ALTER TABLE `joomla_virtuemart_vendors`
  ADD PRIMARY KEY (`virtuemart_vendor_id`), ADD KEY `vendor_name` (`vendor_name`), ADD KEY `vendor_currency` (`vendor_currency`);

--
-- Indices de la tabla `joomla_virtuemart_vendors_es_es`
--
ALTER TABLE `joomla_virtuemart_vendors_es_es`
  ADD PRIMARY KEY (`virtuemart_vendor_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `joomla_virtuemart_vendor_medias`
--
ALTER TABLE `joomla_virtuemart_vendor_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`);

--
-- Indices de la tabla `joomla_virtuemart_vendor_users`
--
ALTER TABLE `joomla_virtuemart_vendor_users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_user_id`);

--
-- Indices de la tabla `joomla_virtuemart_vmusers`
--
ALTER TABLE `joomla_virtuemart_vmusers`
  ADD PRIMARY KEY (`virtuemart_user_id`), ADD UNIQUE KEY `u_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `user_is_vendor` (`user_is_vendor`);

--
-- Indices de la tabla `joomla_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_vmuser_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`);

--
-- Indices de la tabla `joomla_virtuemart_waitingusers`
--
ALTER TABLE `joomla_virtuemart_waitingusers`
  ADD PRIMARY KEY (`virtuemart_waitinguser_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `notify_email` (`notify_email`);

--
-- Indices de la tabla `joomla_virtuemart_worldzones`
--
ALTER TABLE `joomla_virtuemart_worldzones`
  ADD PRIMARY KEY (`virtuemart_worldzone_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_adminmenuentries`
--
ALTER TABLE `joomla_virtuemart_adminmenuentries`
  MODIFY `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_calcs`
--
ALTER TABLE `joomla_virtuemart_calcs`
  MODIFY `virtuemart_calc_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_calc_categories`
--
ALTER TABLE `joomla_virtuemart_calc_categories`
  MODIFY `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_calc_countries`
--
ALTER TABLE `joomla_virtuemart_calc_countries`
  MODIFY `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_calc_manufacturers`
--
ALTER TABLE `joomla_virtuemart_calc_manufacturers`
  MODIFY `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_calc_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_calc_shoppergroups`
  MODIFY `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_calc_states`
--
ALTER TABLE `joomla_virtuemart_calc_states`
  MODIFY `id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_carts`
--
ALTER TABLE `joomla_virtuemart_carts`
  MODIFY `virtuemart_cart_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_categories`
--
ALTER TABLE `joomla_virtuemart_categories`
  MODIFY `virtuemart_category_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_category_categories`
--
ALTER TABLE `joomla_virtuemart_category_categories`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_category_medias`
--
ALTER TABLE `joomla_virtuemart_category_medias`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_configs`
--
ALTER TABLE `joomla_virtuemart_configs`
  MODIFY `virtuemart_config_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_countries`
--
ALTER TABLE `joomla_virtuemart_countries`
  MODIFY `virtuemart_country_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_coupons`
--
ALTER TABLE `joomla_virtuemart_coupons`
  MODIFY `virtuemart_coupon_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_currencies`
--
ALTER TABLE `joomla_virtuemart_currencies`
  MODIFY `virtuemart_currency_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_customs`
--
ALTER TABLE `joomla_virtuemart_customs`
  MODIFY `virtuemart_custom_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_invoices`
--
ALTER TABLE `joomla_virtuemart_invoices`
  MODIFY `virtuemart_invoice_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_manufacturercategories`
--
ALTER TABLE `joomla_virtuemart_manufacturercategories`
  MODIFY `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_manufacturers`
--
ALTER TABLE `joomla_virtuemart_manufacturers`
  MODIFY `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_manufacturer_medias`
--
ALTER TABLE `joomla_virtuemart_manufacturer_medias`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_medias`
--
ALTER TABLE `joomla_virtuemart_medias`
  MODIFY `virtuemart_media_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `joomla_virtuemart_migration_oldtonew_ids`
  MODIFY `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_modules`
--
ALTER TABLE `joomla_virtuemart_modules`
  MODIFY `module_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_orders`
--
ALTER TABLE `joomla_virtuemart_orders`
  MODIFY `virtuemart_order_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_orderstates`
--
ALTER TABLE `joomla_virtuemart_orderstates`
  MODIFY `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_order_calc_rules`
--
ALTER TABLE `joomla_virtuemart_order_calc_rules`
  MODIFY `virtuemart_order_calc_rule_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_order_histories`
--
ALTER TABLE `joomla_virtuemart_order_histories`
  MODIFY `virtuemart_order_history_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_order_items`
--
ALTER TABLE `joomla_virtuemart_order_items`
  MODIFY `virtuemart_order_item_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_order_userinfos`
--
ALTER TABLE `joomla_virtuemart_order_userinfos`
  MODIFY `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_paymentmethods`
--
ALTER TABLE `joomla_virtuemart_paymentmethods`
  MODIFY `virtuemart_paymentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_paymentmethod_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_products`
--
ALTER TABLE `joomla_virtuemart_products`
  MODIFY `virtuemart_product_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_product_categories`
--
ALTER TABLE `joomla_virtuemart_product_categories`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_product_customfields`
--
ALTER TABLE `joomla_virtuemart_product_customfields`
  MODIFY `virtuemart_customfield_id` int(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'field id',AUTO_INCREMENT=1323;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_product_manufacturers`
--
ALTER TABLE `joomla_virtuemart_product_manufacturers`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_product_medias`
--
ALTER TABLE `joomla_virtuemart_product_medias`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_product_prices`
--
ALTER TABLE `joomla_virtuemart_product_prices`
  MODIFY `virtuemart_product_price_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_product_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_product_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_ratings`
--
ALTER TABLE `joomla_virtuemart_ratings`
  MODIFY `virtuemart_rating_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_rating_reviews`
--
ALTER TABLE `joomla_virtuemart_rating_reviews`
  MODIFY `virtuemart_rating_review_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_rating_votes`
--
ALTER TABLE `joomla_virtuemart_rating_votes`
  MODIFY `virtuemart_rating_vote_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_shipmentmethods`
--
ALTER TABLE `joomla_virtuemart_shipmentmethods`
  MODIFY `virtuemart_shipmentmethod_id` mediumint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_shipmentmethod_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_shoppergroups`
  MODIFY `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_states`
--
ALTER TABLE `joomla_virtuemart_states`
  MODIFY `virtuemart_state_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=730;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_userfields`
--
ALTER TABLE `joomla_virtuemart_userfields`
  MODIFY `virtuemart_userfield_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_userfield_values`
--
ALTER TABLE `joomla_virtuemart_userfield_values`
  MODIFY `virtuemart_userfield_value_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_userinfos`
--
ALTER TABLE `joomla_virtuemart_userinfos`
  MODIFY `virtuemart_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_vendors`
--
ALTER TABLE `joomla_virtuemart_vendors`
  MODIFY `virtuemart_vendor_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_vendor_medias`
--
ALTER TABLE `joomla_virtuemart_vendor_medias`
  MODIFY `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_vendor_users`
--
ALTER TABLE `joomla_virtuemart_vendor_users`
  MODIFY `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_vmusers`
--
ALTER TABLE `joomla_virtuemart_vmusers`
  MODIFY `virtuemart_user_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `joomla_virtuemart_vmuser_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_waitingusers`
--
ALTER TABLE `joomla_virtuemart_waitingusers`
  MODIFY `virtuemart_waitinguser_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `joomla_virtuemart_worldzones`
--
ALTER TABLE `joomla_virtuemart_worldzones`
  MODIFY `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

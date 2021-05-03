-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 05:04 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopphukienxemay`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayapmm_custom_theme`
--

CREATE TABLE `wp_shopxemayapmm_custom_theme` (
  `theme_id` int(11) NOT NULL,
  `title` text,
  `slug` text,
  `theme_settings` longtext,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_shopxemayapmm_custom_theme`
--

INSERT INTO `wp_shopxemayapmm_custom_theme` (`theme_id`, `title`, `slug`, `theme_settings`, `created`, `modified`) VALUES
(1, 'Default Theme', 'default-theme', 'a:12:{s:7:\"general\";a:4:{s:11:\"line_height\";s:3:\"1.5\";s:6:\"zindex\";s:3:\"999\";s:13:\"enable_shadow\";s:1:\"1\";s:12:\"shadow_color\";s:7:\"#ffffff\";}s:8:\"menu_bar\";a:18:{s:22:\"enable_menu_background\";s:1:\"1\";s:20:\"menu_background_from\";s:7:\"#5ec073\";s:10:\"font_color\";s:7:\"#ffffff\";s:11:\"font_family\";s:9:\"Open Sans\";s:11:\"font_weight\";s:6:\"normal\";s:11:\"padding_top\";s:4:\"20px\";s:14:\"padding_bottom\";s:4:\"25px\";s:12:\"padding_left\";s:4:\"20px\";s:13:\"padding_right\";s:4:\"22px\";s:5:\"width\";s:4:\"100%\";s:21:\"border_radius_topleft\";s:3:\"0px\";s:22:\"border_radius_topright\";s:3:\"0px\";s:25:\"border_radius_bottomright\";s:3:\"0px\";s:24:\"border_radius_bottomleft\";s:3:\"0px\";s:12:\"border_color\";s:7:\"#5ec073\";s:9:\"alignment\";s:4:\"left\";s:10:\"margin_top\";s:3:\"0px\";s:13:\"margin_bottom\";s:3:\"0px\";}s:8:\"top_menu\";a:19:{s:23:\"enable_background_hover\";s:1:\"1\";s:21:\"background_hover_from\";s:7:\"#47a35b\";s:15:\"bg_active_color\";s:7:\"#47a35b\";s:17:\"font_color_active\";s:7:\"#ffffff\";s:9:\"font_size\";s:4:\"13px\";s:17:\"font_weight_hover\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:15:\"font_decoration\";s:4:\"none\";s:21:\"font_decoration_hover\";s:4:\"none\";s:19:\"enable_menu_divider\";s:1:\"1\";s:18:\"menu_divider_color\";s:16:\"rgb(255,255,255)\";s:12:\"opacity_glow\";s:3:\"0.5\";s:25:\"enable_menu_label_bgcolor\";s:1:\"1\";s:18:\"menu_label_bgcolor\";s:7:\"#f1ee1a\";s:20:\"menu_label_fontcolor\";s:4:\"#000\";s:19:\"menu_label_fontsize\";s:4:\"10px\";s:22:\"menu_label_font_weight\";s:6:\"normal\";s:25:\"menu_label_font_transform\";s:9:\"uppercase\";s:22:\"menu_label_font_family\";s:9:\"Open Sans\";}s:12:\"megamenu_bar\";a:11:{s:26:\"enable_megamenu_background\";s:1:\"1\";s:20:\"menu_background_from\";s:7:\"#ffffff\";s:5:\"width\";s:4:\"100%\";s:11:\"padding_top\";s:4:\"15px\";s:14:\"padding_bottom\";s:3:\"5px\";s:12:\"padding_left\";s:3:\"8px\";s:13:\"padding_right\";s:3:\"8px\";s:12:\"border_color\";s:7:\"#ffffff\";s:13:\"border_radius\";s:3:\"0px\";s:10:\"box_shadow\";s:9:\"0 3px 3px\";s:16:\"box_shadow_color\";s:18:\"rgba(0, 0, 0, 0.2)\";}s:11:\"second_menu\";N;s:10:\"third_menu\";N;s:7:\"widgets\";a:13:{s:10:\"font_color\";s:6:\"#00000\";s:16:\"font_hover_color\";s:6:\"#00000\";s:9:\"font_size\";s:4:\"14px\";s:11:\"font_weight\";s:4:\"bold\";s:17:\"font_weight_hover\";s:4:\"bold\";s:9:\"transform\";s:9:\"uppercase\";s:11:\"font_family\";s:9:\"Open Sans\";s:15:\"font_decoration\";s:4:\"none\";s:21:\"font_decoration_hover\";s:4:\"none\";s:18:\"content_font_color\";s:6:\"#00000\";s:19:\"content_font_family\";s:9:\"Open Sans\";s:10:\"margin_top\";s:3:\"0px\";s:13:\"margin_bottom\";s:4:\"10px\";}s:11:\"top_section\";a:9:{s:10:\"font_color\";s:7:\"#000000\";s:9:\"font_size\";s:4:\"13px\";s:11:\"font_weight\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:11:\"font_family\";s:9:\"Open Sans\";s:16:\"image_margin_top\";s:3:\"0px\";s:19:\"image_margin_bottom\";s:4:\"10px\";s:17:\"image_margin_left\";s:3:\"0px\";s:18:\"image_margin_right\";s:3:\"0px\";}s:14:\"bottom_section\";a:9:{s:10:\"font_color\";s:7:\"#000000\";s:9:\"font_size\";s:4:\"13px\";s:11:\"font_weight\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:11:\"font_family\";s:9:\"Open Sans\";s:16:\"image_margin_top\";s:4:\"10px\";s:19:\"image_margin_bottom\";s:3:\"0px\";s:17:\"image_margin_left\";s:3:\"0px\";s:18:\"image_margin_right\";s:3:\"0px\";}s:6:\"flyout\";a:15:{s:17:\"enable_background\";s:1:\"1\";s:19:\"menu_bgcurrentcolor\";s:7:\"#5ec073\";s:18:\"menu_bg_hovercolor\";s:7:\"#47a35b\";s:10:\"font_color\";s:7:\"#ffffff\";s:16:\"font_hover_color\";s:7:\"#ffffff\";s:9:\"font_size\";s:4:\"12px\";s:11:\"font_weight\";s:6:\"normal\";s:17:\"font_weight_hover\";s:6:\"normal\";s:9:\"transform\";s:6:\"normal\";s:11:\"font_family\";s:9:\"Open Sans\";s:15:\"font_decoration\";s:4:\"none\";s:21:\"font_decoration_hover\";s:4:\"none\";s:11:\"item_margin\";s:7:\"0px 5px\";s:12:\"item_padding\";s:4:\"10px\";s:10:\"item_width\";s:5:\"210px\";}s:15:\"mobile_settings\";a:9:{s:24:\"togglebar_enable_bgcolor\";s:1:\"1\";s:25:\"togglebar_background_from\";s:7:\"#5ec073\";s:16:\"togglebar_height\";s:4:\"40px\";s:26:\"resposive_breakpoint_width\";s:5:\"910px\";s:10:\"icon_color\";s:7:\"#ffffff\";s:10:\"text_color\";s:7:\"#ffffff\";s:15:\"togglebar_align\";s:4:\"left\";s:25:\"submenu_closebtn_position\";s:6:\"bottom\";s:23:\"submenus_retractor_text\";s:5:\"CLOSE\";}s:10:\"search_bar\";a:6:{s:9:\"font_size\";s:4:\"10px\";s:5:\"width\";s:5:\"182px\";s:10:\"text_color\";s:6:\"#fffff\";s:8:\"bg_color\";s:7:\"#5ec073\";s:21:\"text_placholder_color\";s:4:\"#ccc\";s:10:\"icon_color\";s:7:\"#ffffff\";}}', '2018-07-15 13:07:43', '2018-07-15 13:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayaps_social_icons`
--

CREATE TABLE `wp_shopxemayaps_social_icons` (
  `si_id` int(11) NOT NULL,
  `icon_set_name` varchar(255) DEFAULT NULL,
  `icon_display` varchar(255) DEFAULT NULL,
  `num_rows` varchar(255) DEFAULT NULL,
  `icon_margin` varchar(255) DEFAULT NULL,
  `icon_tooltip` int(11) NOT NULL,
  `tooltip_background` varchar(255) DEFAULT NULL,
  `tooltip_text_color` varchar(255) DEFAULT NULL,
  `icon_animation` varchar(255) DEFAULT NULL,
  `opacity_hover` varchar(20) DEFAULT NULL,
  `icon_details` text,
  `icon_extra` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_shopxemayaps_social_icons`
--

INSERT INTO `wp_shopxemayaps_social_icons` (`si_id`, `icon_set_name`, `icon_display`, `num_rows`, `icon_margin`, `icon_tooltip`, `tooltip_background`, `tooltip_text_color`, `icon_animation`, `opacity_hover`, `icon_details`, `icon_extra`) VALUES
(1, 'Mang xã hội công ty', 'horizontal', '5', '10px', 1, '', '', 'bounce', '1', 'a:21:{s:5:\"Askfm\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:5:\"Askfm\";s:5:\"image\";s:106:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/askfm.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:10:\"Classmates\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:10:\"Classmates\";s:5:\"image\";s:111:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/classmates.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:8:\"Facebook\";a:17:{s:5:\"title\";s:8:\"Facebook\";s:10:\"icon_width\";s:4:\"40px\";s:11:\"icon_height\";s:4:\"40px\";s:4:\"link\";s:159:\"https://www.facebook.com/C%C3%B4ng-Ty-Thi%E1%BA%BFt-K%E1%BA%BF-Website-Extrasite-Uy-T%C3%ADn-Chuy%C3%AAn-Nghi%E1%BB%87p-1799638030082043/?modal=admin_todo_tour\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:8:\"Facebook\";s:5:\"image\";s:109:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/facebook.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:6:\"Flickr\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:6:\"Flickr\";s:5:\"image\";s:107:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/flickr.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:10:\"Foursquare\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:10:\"Foursquare\";s:5:\"image\";s:111:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/foursquare.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:10:\"GooglePlus\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:10:\"GooglePlus\";s:5:\"image\";s:111:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/googlePlus.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:9:\"Instagram\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:9:\"Instagram\";s:5:\"image\";s:110:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/instagram.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:8:\"Linkedin\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:8:\"Linkedin\";s:5:\"image\";s:109:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/linkedin.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:6:\"Meetme\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:6:\"Meetme\";s:5:\"image\";s:107:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/meetme.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:6:\"Meetup\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:6:\"Meetup\";s:5:\"image\";s:107:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/meetup.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:7:\"Myspace\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:7:\"Myspace\";s:5:\"image\";s:108:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/myspace.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:9:\"Pinterest\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:9:\"Pinterest\";s:5:\"image\";s:110:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/pinterest.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:6:\"Reddit\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:6:\"Reddit\";s:5:\"image\";s:107:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/reddit.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:11:\"Stumbleupon\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:11:\"Stumbleupon\";s:5:\"image\";s:112:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/stumbleupon.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:6:\"Tagged\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:6:\"Tagged\";s:5:\"image\";s:107:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/tagged.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:6:\"Tumblr\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:6:\"Tumblr\";s:5:\"image\";s:107:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/tumblr.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:7:\"Twitter\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:7:\"Twitter\";s:5:\"image\";s:108:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/twitter.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:4:\"Vine\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:4:\"Vine\";s:5:\"image\";s:105:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/vine.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:2:\"Vk\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:2:\"Vk\";s:5:\"image\";s:103:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/vk.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:4:\"Yelp\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:4:\"Yelp\";s:5:\"image\";s:105:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/yelp.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}s:7:\"Youtube\";a:17:{s:5:\"title\";s:0:\"\";s:10:\"icon_width\";s:0:\"\";s:11:\"icon_height\";s:0:\"\";s:4:\"link\";s:0:\"\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"link_target\";s:10:\"New Window\";s:10:\"image_name\";s:7:\"Youtube\";s:5:\"image\";s:108:\"http://localhost/shopphukienxemay/wp-content/plugins/accesspress-social-icons/icon-sets/png/set6/youtube.png\";s:11:\"border_type\";s:4:\"none\";s:16:\"border_thickness\";s:1:\"0\";s:12:\"border_color\";s:0:\"\";s:6:\"shadow\";s:3:\"yes\";s:15:\"shadow_offset_x\";s:1:\"0\";s:15:\"shadow_offset_y\";s:1:\"0\";s:4:\"blur\";s:1:\"0\";s:12:\"shadow_color\";s:0:\"\";s:7:\"padding\";s:1:\"0\";}}', 'a:4:{s:13:\"icon_set_type\";s:1:\"2\";s:13:\"icon_theme_id\";s:1:\"6\";s:11:\"num_columns\";s:0:\"\";s:16:\"tooltip_position\";s:6:\"bottom\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaycommentmeta`
--

CREATE TABLE `wp_shopxemaycommentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaycommentmeta`
--

INSERT INTO `wp_shopxemaycommentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rating', '5'),
(2, 2, 'verified', '0'),
(3, 3, 'rating', '3'),
(4, 3, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaycomments`
--

CREATE TABLE `wp_shopxemaycomments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaycomments`
--

INSERT INTO `wp_shopxemaycomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-15 09:24:56', '2018-07-15 09:24:56', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 65, 'admin', 'tanhieu2014@gmail.com', '', '::1', '2018-07-15 19:03:28', '2018-07-15 12:03:28', 'rất hợp với xe của minh', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(3, 38, 'admin', 'tanhieu2014@gmail.com', '', '::1', '2018-07-17 10:06:40', '2018-07-17 03:06:40', 'Rất bền', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(4, 185, 'WooCommerce', '', '', '', '2018-07-23 13:32:00', '2018-07-23 06:32:00', 'Thanh toán khi nhận hàng. Trạng thái đơn hàng đã được chuyển từ Chờ thanh toán sang Đang xử lý.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayes_deliverreport`
--

CREATE TABLE `wp_shopxemayes_deliverreport` (
  `es_deliver_id` int(10) UNSIGNED NOT NULL,
  `es_deliver_sentguid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_emailid` int(10) UNSIGNED NOT NULL,
  `es_deliver_emailmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_sentdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_deliver_viewdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_deliver_sentstatus` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_deliver_senttype` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayes_deliverreport`
--

INSERT INTO `wp_shopxemayes_deliverreport` (`es_deliver_id`, `es_deliver_sentguid`, `es_deliver_emailid`, `es_deliver_emailmail`, `es_deliver_sentdate`, `es_deliver_status`, `es_deliver_viewdate`, `es_deliver_sentstatus`, `es_deliver_senttype`) VALUES
(1, 'ectdsn-cpdsot-phmdsi-zxdhkr-difzhs', 2, 'a.example@example.com', '2018-07-31 08:35:06', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(2, 'ectdsn-cpdsot-phmdsi-zxdhkr-difzhs', 1, 'tanhieu2014@gmail.com', '2018-07-31 08:35:08', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(3, 'yrpfdx-warnuv-sarhjd-lnovcd-zncvpx', 2, 'a.example@example.com', '2018-07-31 08:58:56', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately'),
(4, 'yrpfdx-warnuv-sarhjd-lnovcd-zncvpx', 1, 'tanhieu2014@gmail.com', '2018-07-31 08:58:58', 'Nodata', '0000-00-00 00:00:00', 'Sent', 'Immediately');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayes_emaillist`
--

CREATE TABLE `wp_shopxemayes_emaillist` (
  `es_email_id` int(10) UNSIGNED NOT NULL,
  `es_email_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unconfirmed',
  `es_email_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_email_viewcount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_email_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Public',
  `es_email_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayes_emaillist`
--

INSERT INTO `wp_shopxemayes_emaillist` (`es_email_id`, `es_email_name`, `es_email_mail`, `es_email_status`, `es_email_created`, `es_email_viewcount`, `es_email_group`, `es_email_guid`) VALUES
(1, 'Admin', 'tanhieu2014@gmail.com', 'Confirmed', '2018-07-19 05:57:53', '0', 'Public', 'yepbfn-rmbphz-lhojse-cpabtv-swzhvc'),
(2, 'Example', 'a.example@example.com', 'Confirmed', '2018-07-19 05:57:53', '0', 'Public', 'siamzc-mvplwr-siyhpv-dqbvjs-umbjcy'),
(3, 'Hiếu Tấn', 'hieutan7777@gmail.com', 'Unconfirmed', '2018-07-19 06:01:10', '0', 'Public', 'rpgvmx-uaksxb-cforbs-crbhtg-cmhply');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayes_notification`
--

CREATE TABLE `wp_shopxemayes_notification` (
  `es_note_id` int(10) UNSIGNED NOT NULL,
  `es_note_cat` text COLLATE utf8mb4_unicode_ci,
  `es_note_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_note_templ` int(10) UNSIGNED NOT NULL,
  `es_note_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayes_notification`
--

INSERT INTO `wp_shopxemayes_notification` (`es_note_id`, `es_note_cat`, `es_note_group`, `es_note_templ`, `es_note_status`) VALUES
(1, ' ##Độ xe## -- ##Đua Xe F1## -- ##Lắp ráp xe độ## -- ##Lựa chọn phụ kiện## -- ##Uncategorized## -- ##Xe máy## ', 'Public', 127, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayes_sentdetails`
--

CREATE TABLE `wp_shopxemayes_sentdetails` (
  `es_sent_id` int(10) UNSIGNED NOT NULL,
  `es_sent_guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_qstring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_sent_starttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `es_sent_count` int(10) UNSIGNED NOT NULL,
  `es_sent_preview` text COLLATE utf8mb4_unicode_ci,
  `es_sent_status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sent',
  `es_sent_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Immediately',
  `es_sent_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayes_sentdetails`
--

INSERT INTO `wp_shopxemayes_sentdetails` (`es_sent_id`, `es_sent_guid`, `es_sent_qstring`, `es_sent_source`, `es_sent_starttime`, `es_sent_endtime`, `es_sent_count`, `es_sent_preview`, `es_sent_status`, `es_sent_type`, `es_sent_subject`) VALUES
(1, 'ectdsn-cpdsot-phmdsi-zxdhkr-difzhs', '0', 'Post Notification', '2018-07-31 08:35:06', '2018-07-31 08:35:09', 2, 'Hello {{NAME}},<br /><br />We have published a new blog article on our website : external link<br /><br /><br />You can view it from this link : <a href=\'http://localhost/shopphukienxemay/luu-tru/220\' target=\'_blank\'>http://localhost/shopphukienxemay/luu-tru/220</a><br /><br />Thanks & Regards,<br />Admin<br /><br />You received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'Sent', 'Immediately', 'New Post Published - external link'),
(2, 'yrpfdx-warnuv-sarhjd-lnovcd-zncvpx', '0', 'Post Notification', '2018-07-31 08:58:55', '2018-07-31 08:59:00', 2, 'Hello {{NAME}},<br /><br />We have published a new blog article on our website : Cách choạn lựa phuộc tốt<br /><br /><br />You can view it from this link : <a href=\'http://localhost/shopphukienxemay/luu-tru/224\' target=\'_blank\'>http://localhost/shopphukienxemay/luu-tru/224</a><br /><br />Thanks & Regards,<br />Admin<br /><br />You received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'Sent', 'Immediately', 'New Post Published - Cách choạn lựa phuộc tốt');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaylinks`
--

CREATE TABLE `wp_shopxemaylinks` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayoptions`
--

CREATE TABLE `wp_shopxemayoptions` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayoptions`
--

INSERT INTO `wp_shopxemayoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/shopphukienxemay', 'yes'),
(2, 'home', 'http://localhost/shopphukienxemay', 'yes'),
(3, 'blogname', 'Shop phụ kiện xe máy online', 'yes'),
(4, 'blogdescription', 'Best Price - Best Service', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'tanhieu2014@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/luu-tru/%post_id%', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:16:{i:0;s:53:\"accesspress-social-icons/accesspress-social-icons.php\";i:1;s:29:\"ap-mega-menu/ap-mega-menu.php\";i:2;s:35:\"call-now-button/call-now-button.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:39:\"easy-google-fonts/easy-google-fonts.php\";i:5;s:39:\"email-subscribers/email-subscribers.php\";i:6;s:61:\"facebook-page-feed-graph-api/facebook-page-feed-graph-api.php\";i:7;s:19:\"jetpack/jetpack.php\";i:8;s:27:\"popup-maker/popup-maker.php\";i:9;s:31:\"seo-data-transporter/plugin.php\";i:10;s:34:\"tidio-live-chat/tidio-elements.php\";i:11;s:41:\"tp-image-optimizer/tp-image-optimizer.php\";i:12;s:51:\"wonderplugin-video-embed/wonderpluginvideoembed.php\";i:13;s:27:\"woocommerce/woocommerce.php\";i:14;s:24:\"wordpress-seo/wp-seo.php\";i:15;s:27:\"wp-super-cache/wp-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:82:\"C:\\xampp\\htdocs\\shopphukienxemay/wp-content/themes/flatsome/flatsome/functions.php\";i:1;s:78:\"C:\\xampp\\htdocs\\shopphukienxemay/wp-content/themes/flatsome/flatsome/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'flatsome/flatsome', 'yes'),
(41, 'stylesheet', 'flatsome/flatsome', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:37:\"[wpmegamenu menu_location=\"Vertical\"]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:7:{s:22:\"wpmm_mega_menu_columns\";i:2;s:29:\"wpmm_mega_menu_parent_menu_id\";s:2:\"93\";s:13:\"wp_menu_order\";a:1:{i:93;i:1;}s:5:\"title\";s:0:\"\";s:4:\"text\";s:285:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:7:{s:22:\"wpmm_mega_menu_columns\";i:3;s:29:\"wpmm_mega_menu_parent_menu_id\";s:2:\"94\";s:13:\"wp_menu_order\";a:1:{i:94;i:1;}s:5:\"title\";s:32:\"Sản phẩm đang khuyến mãi\";s:4:\"text\";s:28:\"[sale_products per_page=\"4\"]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:7:{s:22:\"wpmm_mega_menu_columns\";i:3;s:29:\"wpmm_mega_menu_parent_menu_id\";s:2:\"94\";s:13:\"wp_menu_order\";a:1:{i:94;i:2;}s:5:\"title\";s:24:\"Đánh giá tốt nhất\";s:4:\"text\";s:33:\"[top_rated_products per_page=\"4\"]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '12', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_shopxemayuser_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:24:\"Tìm kiếm sản phẩm\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(100, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"meta-3\";i:1;s:11:\"tag_cloud-5\";}s:12:\"sidebar-main\";a:6:{i:0;s:6:\"text-2\";i:1;s:8:\"search-2\";i:2;s:32:\"woocommerce_product_categories-2\";i:3;s:22:\"woocommerce_products-2\";i:4;s:26:\"woocommerce_price_filter-3\";i:5;s:11:\"tag_cloud-3\";}s:16:\"sidebar-footer-1\";a:3:{i:0;s:13:\"custom_html-3\";i:1;s:13:\"custom_html-6\";i:2;s:13:\"custom_html-4\";}s:16:\"sidebar-footer-2\";a:0:{}s:12:\"shop-sidebar\";a:4:{i:0;s:28:\"woocommerce_product_search-3\";i:1;s:32:\"woocommerce_product_categories-4\";i:2;s:25:\"woocommerce_widget_cart-3\";i:3;s:26:\"woocommerce_price_filter-5\";}s:15:\"product-sidebar\";a:3:{i:0;s:38:\"woocommerce_recently_viewed_products-3\";i:1;s:25:\"woocommerce_widget_cart-4\";i:2;s:31:\"woocommerce_product_tag_cloud-3\";}s:12:\"wp-mega-menu\";a:6:{i:0;s:32:\"wonderplugin_videoembed_widget-2\";i:1;s:6:\"text-3\";i:2;s:29:\"facebook_page_plugin_widget-2\";i:3;s:6:\"text-4\";i:4;s:6:\"text-5\";i:5;s:25:\"wpmegamenu_contact_info-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:3:{s:5:\"title\";s:16:\"Tag sản phẩm\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:11:\"product_tag\";}i:5;a:0:{}}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:28:\"Liên hệ với chúng tôi\";s:7:\"content\";s:371:\"<h3 style=\"text-transform:uppercase\">\r\n	Công ty Phụ kiện Xe máy Hưng Phát\r\n</h3>\r\n<p><i class=\"fa fa-home\" aria-hidden=\"true\"></i> 180/20 đường An Phú Đông 3, P An Phú Đông, Q12, HCM</p>\r\n<p><i class=\"fa fa-phone\" aria-hidden=\"true\"></i> 0932 023 992 - 09090909</p>\r\n<p><i class=\"fa fa-envelope-open-o\" aria-hidden=\"true\"></i>tanhieu2014@gmail.com</p>\r\n\";}i:4;a:2:{s:5:\"title\";s:19:\"Kết nối Fanpage\";s:7:\"content\";s:1068:\"<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/C&#xf4;ng-Ty-Thi&#x1ebf;t-K&#x1ebf;-Website-Extrasite-Uy-T&#xed;n-Chuy&#xea;n-Nghi&#x1ec7;p-1799638030082043/\" data-tabs=\"message\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/C&#xf4;ng-Ty-Thi&#x1ebf;t-K&#x1ebf;-Website-Extrasite-Uy-T&#xed;n-Chuy&#xea;n-Nghi&#x1ec7;p-1799638030082043/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/C&#xf4;ng-Ty-Thi&#x1ebf;t-K&#x1ebf;-Website-Extrasite-Uy-T&#xed;n-Chuy&#xea;n-Nghi&#x1ec7;p-1799638030082043/\">Công Ty Thiết Kế Website Extrasite Uy Tín - Chuyên Nghiệp</a></blockquote></div>\";}i:6;a:2:{s:5:\"title\";s:21:\"Đăng ký nhận tin\";s:7:\"content\";s:58:\"[email-subscribers namefield=\"YES\" desc=\"\" group=\"Public\"]\";}}', 'yes'),
(110, 'cron', 'a:17:{i:1536669395;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536670898;a:1:{s:30:\"popmake_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536680195;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1536685200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537102898;a:1:{s:31:\"popmake_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1538870400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}i:1544340561;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544340962;a:1:{s:11:\"wp_cache_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1544341742;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544342079;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544343962;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1544347498;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544347538;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544348054;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544348195;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544514878;a:1:{s:18:\"wpseo_onpage_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531647082;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(140, 'WPLANG', 'vi', 'yes'),
(141, 'new_admin_email', 'tanhieu2014@gmail.com', 'yes'),
(144, 'current_theme', 'Flatsome', 'yes'),
(145, 'theme_mods_flatsome/flatsome', 'a:86:{i:0;b:0;s:17:\"flatsome_fallback\";i:0;s:20:\"topbar_elements_left\";a:1:{i:0;s:4:\"html\";}s:21:\"topbar_elements_right\";a:2:{i:0;s:7:\"nav-top\";i:1;s:6:\"social\";}s:20:\"header_elements_left\";a:2:{i:0;s:11:\"search-form\";i:1;s:7:\"contact\";}s:21:\"header_elements_right\";a:3:{i:0;s:4:\"cart\";i:1;s:7:\"divider\";i:2;s:7:\"account\";}s:27:\"header_elements_bottom_left\";a:1:{i:0;s:3:\"nav\";}s:29:\"header_elements_bottom_center\";a:0:{}s:28:\"header_elements_bottom_right\";a:0:{}s:27:\"header_mobile_elements_left\";a:1:{i:0;s:9:\"menu-icon\";}s:28:\"header_mobile_elements_right\";a:1:{i:0;s:4:\"cart\";}s:26:\"header_mobile_elements_top\";a:1:{i:0;s:4:\"html\";}s:14:\"mobile_sidebar\";a:5:{i:0;s:11:\"search-form\";i:1;s:3:\"nav\";i:2;s:7:\"account\";i:3;s:6:\"html-2\";i:4;s:6:\"html-3\";}s:14:\"product_layout\";s:13:\"right-sidebar\";s:23:\"payment_icons_placement\";s:6:\"footer\";s:14:\"follow_twitter\";s:10:\"http://url\";s:15:\"follow_facebook\";s:10:\"http://url\";s:16:\"follow_instagram\";s:10:\"http://url\";s:12:\"follow_email\";s:10:\"your@email\";s:16:\"flatsome_version\";i:3;s:18:\"nav_menu_locations\";a:6:{s:7:\"primary\";i:16;s:14:\"primary_mobile\";i:16;s:8:\"Vertical\";i:35;s:6:\"footer\";i:0;s:11:\"top_bar_nav\";i:41;s:10:\"my_account\";i:0;}s:7:\"backups\";N;s:9:\"smof_init\";s:31:\"Sun, 15 Jul 2018 09:31:26 +0000\";s:18:\"custom_css_post_id\";i:-1;s:11:\"preset_demo\";s:15:\"header-wide-nav\";s:13:\"logo_position\";s:4:\"left\";s:10:\"logo_width\";s:3:\"182\";s:11:\"topbar_show\";s:1:\"1\";s:17:\"header_top_height\";s:2:\"35\";s:9:\"topbar_bg\";s:0:\"\";s:13:\"header_height\";s:3:\"113\";s:12:\"header_color\";s:5:\"light\";s:9:\"header_bg\";s:21:\"rgba(255,255,255,0.9)\";s:20:\"header_bg_img_repeat\";s:8:\"repeat-x\";s:17:\"box_shadow_header\";s:1:\"0\";s:13:\"nav_uppercase\";s:1:\"1\";s:27:\"header_bg_transparent_shade\";s:1:\"0\";s:20:\"header_bottom_height\";s:2:\"43\";s:15:\"nav_position_bg\";s:7:\"#424242\";s:20:\"nav_uppercase_bottom\";s:1:\"1\";s:18:\"nav_position_color\";s:4:\"dark\";s:16:\"site_logo_slogan\";s:1:\"1\";s:12:\"logo_padding\";s:1:\"0\";s:12:\"topbar_color\";s:4:\"dark\";s:13:\"nav_style_top\";s:7:\"divided\";s:12:\"header_width\";s:9:\"container\";s:13:\"header_bg_img\";s:0:\"\";s:8:\"nav_size\";s:0:\"\";s:10:\"nav_height\";s:2:\"16\";s:8:\"nav_push\";s:1:\"0\";s:25:\"header_height_transparent\";s:3:\"265\";s:20:\"logo_position_mobile\";s:4:\"left\";s:15:\"menu_icon_style\";s:10:\"fill-round\";s:14:\"mobile_overlay\";s:4:\"left\";s:20:\"mobile_overlay_color\";s:0:\"\";s:20:\"header_height_sticky\";s:2:\"70\";s:17:\"nav_height_sticky\";s:2:\"50\";s:13:\"header_sticky\";s:1:\"0\";s:13:\"topbar_sticky\";s:1:\"0\";s:12:\"sticky_style\";s:4:\"fade\";s:17:\"dropdown_nav_size\";s:3:\"100\";s:18:\"account_icon_style\";s:10:\"fill-round\";s:15:\"cart_icon_style\";s:7:\"outline\";s:17:\"search_icon_style\";s:7:\"outline\";s:19:\"header_search_style\";s:8:\"lightbox\";s:24:\"header_search_form_style\";s:4:\"flat\";s:18:\"search_placeholder\";s:42:\"Tìm kiếm sản phẩm hoặc danh mục\";s:19:\"header_search_width\";s:2:\"82\";s:13:\"contact_style\";s:4:\"left\";s:13:\"contact_phone\";s:11:\"+0932023992\";s:19:\"sticky_logo_padding\";s:1:\"0\";s:19:\"product_image_width\";s:1:\"5\";s:18:\"product_info_align\";s:4:\"left\";s:14:\"product_header\";s:8:\"featured\";s:15:\"product_display\";s:9:\"line-grow\";s:19:\"product_image_style\";s:8:\"vertical\";s:17:\"product_info_form\";s:4:\"flat\";s:20:\"max_related_products\";s:1:\"8\";s:16:\"footer_1_columns\";s:1:\"3\";s:14:\"footer_1_color\";s:4:\"dark\";s:17:\"footer_1_bg_color\";s:7:\"#3980BF\";s:16:\"footer_left_text\";s:68:\"<p style=\"color:#fff;font-size:14px\">Copyright by kim hưng shop</p>\";s:16:\"products_pr_page\";s:2:\"18\";s:20:\"category_title_style\";s:8:\"featured\";s:11:\"blog_layout\";s:12:\"left-sidebar\";s:10:\"blog_style\";s:6:\"inline\";}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(147, 'widget_flatsome_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_block_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'envato_setup_complete', '1531647160', 'yes'),
(166, 'woocommerce_store_address', '429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM', 'yes'),
(167, 'woocommerce_store_address_2', '429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM', 'yes'),
(168, 'woocommerce_store_city', 'TPHCM', 'yes'),
(169, 'woocommerce_default_country', 'VN', 'yes'),
(170, 'woocommerce_store_postcode', '700000', 'yes'),
(171, 'woocommerce_allowed_countries', 'all', 'yes'),
(172, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(173, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(174, 'woocommerce_ship_to_countries', '', 'yes'),
(175, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(176, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(177, 'woocommerce_calc_taxes', 'yes', 'yes'),
(178, 'woocommerce_enable_coupons', 'yes', 'yes'),
(179, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(180, 'woocommerce_currency', 'VND', 'yes'),
(181, 'woocommerce_currency_pos', 'right_space', 'yes'),
(182, 'woocommerce_price_thousand_sep', '.', 'yes'),
(183, 'woocommerce_price_decimal_sep', '.', 'yes'),
(184, 'woocommerce_price_num_decimals', '0', 'yes'),
(185, 'woocommerce_shop_page_id', '16', 'yes'),
(186, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(187, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(188, 'woocommerce_weight_unit', 'kg', 'yes'),
(189, 'woocommerce_dimension_unit', 'cm', 'yes'),
(190, 'woocommerce_enable_reviews', 'yes', 'yes'),
(191, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(192, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(193, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(194, 'woocommerce_review_rating_required', 'yes', 'no'),
(195, 'woocommerce_manage_stock', 'yes', 'yes'),
(196, 'woocommerce_hold_stock_minutes', '60', 'no'),
(197, 'woocommerce_notify_low_stock', 'yes', 'no'),
(198, 'woocommerce_notify_no_stock', 'yes', 'no'),
(199, 'woocommerce_stock_email_recipient', 'tanhieu2014@gmail.com', 'no'),
(200, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(201, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(202, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(203, 'woocommerce_stock_format', '', 'yes'),
(204, 'woocommerce_file_download_method', 'force', 'no'),
(205, 'woocommerce_downloads_require_login', 'no', 'no'),
(206, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(207, 'woocommerce_prices_include_tax', 'no', 'yes'),
(208, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(209, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(210, 'woocommerce_tax_round_at_subtotal', 'yes', 'yes'),
(211, 'woocommerce_tax_classes', 'Thuế hải quan\r\nThuế nhập hàng\r\nThuế GTGT\r\nThuế nhập Xuất', 'yes'),
(212, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(213, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(214, 'woocommerce_price_display_suffix', '', 'yes'),
(215, 'woocommerce_tax_total_display', 'itemized', 'no'),
(216, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(217, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(218, 'woocommerce_ship_to_destination', 'billing', 'no'),
(219, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(220, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(222, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(223, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(224, 'woocommerce_registration_generate_username', 'yes', 'no'),
(225, 'woocommerce_registration_generate_password', 'yes', 'no'),
(226, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(227, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(228, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(229, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(230, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(231, 'woocommerce_trash_pending_orders', '', 'no'),
(232, 'woocommerce_trash_failed_orders', '', 'no'),
(233, 'woocommerce_trash_cancelled_orders', '', 'no'),
(234, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(235, 'woocommerce_email_from_name', 'Shop phụ kiện xe máy online', 'no'),
(236, 'woocommerce_email_from_address', 'tanhieu2014@gmail.com', 'no'),
(237, 'woocommerce_email_header_image', '', 'no'),
(238, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(239, 'woocommerce_email_base_color', '#96588a', 'no'),
(240, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(241, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(242, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(243, 'woocommerce_cart_page_id', '8', 'yes'),
(244, 'woocommerce_checkout_page_id', '9', 'yes'),
(245, 'woocommerce_myaccount_page_id', '10', 'yes'),
(246, 'woocommerce_terms_page_id', '', 'no'),
(247, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(248, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(249, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(250, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(251, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(252, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(253, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(254, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(255, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(256, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(257, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(258, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(259, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(260, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(261, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(262, 'woocommerce_api_enabled', 'no', 'yes'),
(263, 'woocommerce_single_image_width', '600', 'yes'),
(264, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(265, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(266, 'woocommerce_demo_store', 'no', 'no'),
(267, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:9:\"/san-pham\";s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:7:\"tu-khoa\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(268, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(269, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(270, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(272, 'default_product_cat', '15', 'yes'),
(275, 'woocommerce_version', '3.4.3', 'yes'),
(276, 'woocommerce_db_version', '3.4.3', 'yes'),
(277, 'recently_activated', 'a:0:{}', 'yes'),
(278, 'woocommerce_admin_notices', 'a:2:{i:1;s:20:\"no_secure_connection\";i:2;s:14:\"template_files\";}', 'yes'),
(279, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(280, 'widget_woocommerce_widget_cart', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:11:\"Giỏ hàng\";s:13:\"hide_if_empty\";i:1;}i:4;a:2:{s:5:\"title\";s:11:\"Giỏ hàng\";s:13:\"hide_if_empty\";i:1;}}', 'yes'),
(281, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_price_filter', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}i:5;a:0:{}}', 'yes'),
(284, 'widget_woocommerce_product_categories', 'a:3:{i:2;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}}', 'yes'),
(285, 'widget_woocommerce_product_search', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(286, 'widget_woocommerce_product_tag_cloud', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(287, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:\"title\";s:12:\"Sản phẩm\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_recently_viewed_products', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:22:\"Sản phẩm vừa xem\";s:6:\"number\";i:5;}}', 'yes'),
(289, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_upsell_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(302, 'woocommerce_product_type', 'both', 'yes'),
(303, 'woocommerce_sell_in_person', '1', 'yes'),
(304, 'woocommerce_allow_tracking', 'yes', 'yes'),
(306, 'woocommerce_tracker_last_send', '1532314118', 'yes'),
(308, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(309, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(310, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Chuyển khoản ngân hàng\";s:11:\"description\";s:226:\"Thực hiện thanh toán vào ngay tài khoản ngân hàng của chúng tôi. Vui lòng sử dụng Mã đơn hàng của bạn trong phần Nội dung thanh toán. Đơn hàng sẽ đươc giao sau khi tiền đã chuyển.\";s:12:\"instructions\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(311, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:35:\"Trả tiền mặt khi nhận hàng\";s:11:\"description\";s:34:\"Trả tiền mặt khi giao hàng.\";s:12:\"instructions\";s:34:\"Trả tiền mặt khi giao hàng.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(312, '_transient_shipping-transient-version', '1532945118', 'yes'),
(316, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(319, 'jetpack_activated', '1', 'yes'),
(322, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(323, 'jetpack_sync_settings_disable', '0', 'yes'),
(326, 'jetpack_available_modules', 'a:1:{s:5:\"6.3.2\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(327, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"6.3.2:1531647586\";s:11:\"old_version\";s:16:\"6.3.2:1531647586\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:-1;}', 'yes'),
(328, 'jetpack_tos_agreed', '1', 'yes'),
(329, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"uAgqQsAdhprW2tJu8M9FxVmO7bms0GhX\";s:8:\"secret_2\";s:32:\"6h3o9sX1Dey5vXCQeiU9PLGRiFeNEHyH\";s:3:\"exp\";i:1531648194;}}', 'no'),
(331, 'jetpack_testimonial', '0', 'yes'),
(337, 'do_activate', '0', 'yes'),
(367, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(375, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(383, 'product_cat_children', 'a:2:{i:17;a:1:{i:0;i:21;}i:21;a:1:{i:0;i:22;}}', 'yes'),
(385, '_transient_product_query-transient-version', '1532944920', 'yes'),
(387, '_transient_product-transient-version', '1532944920', 'yes'),
(440, '_transient_orders-transient-version', '1532327598', 'yes'),
(480, 'apmm_register_skin', 'a:8:{i:0;a:3:{s:5:\"title\";s:13:\"Black & White\";s:2:\"id\";s:11:\"black-white\";s:5:\"color\";s:7:\"#000000\";}i:1;a:3:{s:5:\"title\";s:25:\"Gold Yellowish With Black\";s:2:\"id\";s:17:\"gold-yellow-black\";s:5:\"color\";s:7:\"#dace2e\";}i:2;a:3:{s:5:\"title\";s:21:\"Hunter Shades & White\";s:2:\"id\";s:19:\"hunter-shades-white\";s:5:\"color\";s:7:\"#CFA66F\";}i:3;a:3:{s:5:\"title\";s:22:\"Maroon Reddish & Black\";s:2:\"id\";s:20:\"maroon-reddish-black\";s:5:\"color\";s:7:\"#800000\";}i:4;a:3:{s:5:\"title\";s:22:\"Light Blue Sky & White\";s:2:\"id\";s:20:\"light-blue-sky-white\";s:5:\"color\";s:7:\"#0AA2EE\";}i:5;a:3:{s:5:\"title\";s:19:\"Warm Purple & White\";s:2:\"id\";s:17:\"warm-purple-white\";s:5:\"color\";s:7:\"#9768a8\";}i:6;a:3:{s:5:\"title\";s:16:\"SeaGreen & White\";s:2:\"id\";s:15:\"sea-green-white\";s:5:\"color\";s:7:\"#2E8B57\";}i:7;a:3:{s:5:\"title\";s:11:\"Clean White\";s:2:\"id\";s:11:\"clean-white\";s:5:\"color\";s:4:\"#fff\";}}', 'yes'),
(481, 'apmega_settings', 'a:17:{s:14:\"advanced_click\";s:13:\"click_submenu\";s:13:\"enable_mobile\";s:1:\"1\";s:25:\"disable_submenu_retractor\";s:1:\"0\";s:21:\"mlabel_animation_type\";s:8:\"mybounce\";s:15:\"animation_delay\";s:0:\"\";s:18:\"animation_duration\";s:1:\"5\";s:25:\"animation_iteration_count\";s:1:\"1\";s:20:\"mobile_toggle_option\";s:15:\"toggle_standard\";s:10:\"image_size\";s:9:\"thumbnail\";s:14:\"hide_bg_images\";s:1:\"0\";s:10:\"hide_icons\";s:1:\"0\";s:12:\"custom_width\";s:0:\"\";s:10:\"icon_width\";s:4:\"13px\";s:15:\"close_menu_icon\";s:24:\"dashicons dashicons-menu\";s:14:\"open_menu_icon\";s:22:\"dashicons dashicons-no\";s:17:\"enable_custom_css\";s:1:\"0\";s:10:\"custom_css\";s:0:\"\";}', 'yes');
INSERT INTO `wp_shopxemayoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(482, 'apmm_font_family', 'a:725:{i:0;s:7:\"ABeeZee\";i:1;s:4:\"Abel\";i:2;s:13:\"Abril Fatface\";i:3;s:8:\"Aclonica\";i:4;s:4:\"Acme\";i:5;s:5:\"Actor\";i:6;s:7:\"Adamina\";i:7;s:10:\"Advent Pro\";i:8;s:15:\"Aguafina Script\";i:9;s:7:\"Akronim\";i:10;s:6:\"Aladin\";i:11;s:7:\"Aldrich\";i:12;s:4:\"Alef\";i:13;s:8:\"Alegreya\";i:14;s:11:\"Alegreya SC\";i:15;s:13:\"Alegreya Sans\";i:16;s:16:\"Alegreya Sans SC\";i:17;s:10:\"Alex Brush\";i:18;s:13:\"Alfa Slab One\";i:19;s:5:\"Alice\";i:20;s:5:\"Alike\";i:21;s:13:\"Alike Angular\";i:22;s:5:\"Allan\";i:23;s:7:\"Allerta\";i:24;s:15:\"Allerta Stencil\";i:25;s:6:\"Allura\";i:26;s:8:\"Almendra\";i:27;s:16:\"Almendra Display\";i:28;s:11:\"Almendra SC\";i:29;s:8:\"Amarante\";i:30;s:8:\"Amaranth\";i:31;s:9:\"Amatic SC\";i:32;s:9:\"Amethysta\";i:33;s:5:\"Amiri\";i:34;s:5:\"Amita\";i:35;s:7:\"Anaheim\";i:36;s:6:\"Andada\";i:37;s:6:\"Andika\";i:38;s:6:\"Angkor\";i:39;s:24:\"Annie Use Your Telescope\";i:40;s:13:\"Anonymous Pro\";i:41;s:5:\"Antic\";i:42;s:12:\"Antic Didone\";i:43;s:10:\"Antic Slab\";i:44;s:5:\"Anton\";i:45;s:6:\"Arapey\";i:46;s:7:\"Arbutus\";i:47;s:12:\"Arbutus Slab\";i:48;s:19:\"Architects Daughter\";i:49;s:13:\"Archivo Black\";i:50;s:14:\"Archivo Narrow\";i:51;s:5:\"Arimo\";i:52;s:8:\"Arizonia\";i:53;s:6:\"Armata\";i:54;s:8:\"Artifika\";i:55;s:4:\"Arvo\";i:56;s:4:\"Arya\";i:57;s:4:\"Asap\";i:58;s:4:\"Asar\";i:59;s:5:\"Asset\";i:60;s:7:\"Astloch\";i:61;s:4:\"Asul\";i:62;s:10:\"Atomic Age\";i:63;s:6:\"Aubrey\";i:64;s:9:\"Audiowide\";i:65;s:10:\"Autour One\";i:66;s:7:\"Average\";i:67;s:12:\"Average Sans\";i:68;s:19:\"Averia Gruesa Libre\";i:69;s:12:\"Averia Libre\";i:70;s:17:\"Averia Sans Libre\";i:71;s:18:\"Averia Serif Libre\";i:72;s:10:\"Bad Script\";i:73;s:9:\"Balthazar\";i:74;s:7:\"Bangers\";i:75;s:5:\"Basic\";i:76;s:10:\"Battambang\";i:77;s:7:\"Baumans\";i:78;s:5:\"Bayon\";i:79;s:8:\"Belgrano\";i:80;s:7:\"Belleza\";i:81;s:9:\"BenchNine\";i:82;s:7:\"Bentham\";i:83;s:15:\"Berkshire Swash\";i:84;s:5:\"Bevan\";i:85;s:13:\"Bigelow Rules\";i:86;s:11:\"Bigshot One\";i:87;s:5:\"Bilbo\";i:88;s:16:\"Bilbo Swash Caps\";i:89;s:7:\"Biryani\";i:90;s:6:\"Bitter\";i:91;s:13:\"Black Ops One\";i:92;s:5:\"Bokor\";i:93;s:6:\"Bonbon\";i:94;s:8:\"Boogaloo\";i:95;s:10:\"Bowlby One\";i:96;s:13:\"Bowlby One SC\";i:97;s:7:\"Brawler\";i:98;s:10:\"Bree Serif\";i:99;s:14:\"Bubblegum Sans\";i:100;s:11:\"Bubbler One\";i:101;s:4:\"Buda\";i:102;s:7:\"Buenard\";i:103;s:10:\"Butcherman\";i:104;s:14:\"Butterfly Kids\";i:105;s:5:\"Cabin\";i:106;s:15:\"Cabin Condensed\";i:107;s:12:\"Cabin Sketch\";i:108;s:15:\"Caesar Dressing\";i:109;s:10:\"Cagliostro\";i:110;s:14:\"Calligraffitti\";i:111;s:6:\"Cambay\";i:112;s:5:\"Cambo\";i:113;s:6:\"Candal\";i:114;s:9:\"Cantarell\";i:115;s:11:\"Cantata One\";i:116;s:11:\"Cantora One\";i:117;s:8:\"Capriola\";i:118;s:5:\"Cardo\";i:119;s:5:\"Carme\";i:120;s:14:\"Carrois Gothic\";i:121;s:17:\"Carrois Gothic SC\";i:122;s:10:\"Carter One\";i:123;s:6:\"Caudex\";i:124;s:18:\"Cedarville Cursive\";i:125;s:11:\"Ceviche One\";i:126;s:10:\"Changa One\";i:127;s:6:\"Chango\";i:128;s:18:\"Chau Philomene One\";i:129;s:9:\"Chela One\";i:130;s:14:\"Chelsea Market\";i:131;s:6:\"Chenla\";i:132;s:17:\"Cherry Cream Soda\";i:133;s:12:\"Cherry Swash\";i:134;s:5:\"Chewy\";i:135;s:6:\"Chicle\";i:136;s:5:\"Chivo\";i:137;s:6:\"Cinzel\";i:138;s:17:\"Cinzel Decorative\";i:139;s:14:\"Clicker Script\";i:140;s:4:\"Coda\";i:141;s:12:\"Coda Caption\";i:142;s:8:\"Codystar\";i:143;s:5:\"Combo\";i:144;s:9:\"Comfortaa\";i:145;s:11:\"Coming Soon\";i:146;s:11:\"Concert One\";i:147;s:9:\"Condiment\";i:148;s:7:\"Content\";i:149;s:12:\"Contrail One\";i:150;s:11:\"Convergence\";i:151;s:6:\"Cookie\";i:152;s:5:\"Copse\";i:153;s:6:\"Corben\";i:154;s:9:\"Courgette\";i:155;s:7:\"Cousine\";i:156;s:8:\"Coustard\";i:157;s:21:\"Covered By Your Grace\";i:158;s:12:\"Crafty Girls\";i:159;s:9:\"Creepster\";i:160;s:11:\"Crete Round\";i:161;s:12:\"Crimson Text\";i:162;s:13:\"Croissant One\";i:163;s:7:\"Crushed\";i:164;s:6:\"Cuprum\";i:165;s:6:\"Cutive\";i:166;s:11:\"Cutive Mono\";i:167;s:6:\"Damion\";i:168;s:14:\"Dancing Script\";i:169;s:7:\"Dangrek\";i:170;s:20:\"Dawning of a New Day\";i:171;s:8:\"Days One\";i:172;s:5:\"Dekko\";i:173;s:6:\"Delius\";i:174;s:17:\"Delius Swash Caps\";i:175;s:14:\"Delius Unicase\";i:176;s:13:\"Della Respira\";i:177;s:8:\"Denk One\";i:178;s:10:\"Devonshire\";i:179;s:8:\"Dhurjati\";i:180;s:13:\"Didact Gothic\";i:181;s:9:\"Diplomata\";i:182;s:12:\"Diplomata SC\";i:183;s:6:\"Domine\";i:184;s:11:\"Donegal One\";i:185;s:10:\"Doppio One\";i:186;s:5:\"Dorsa\";i:187;s:5:\"Dosis\";i:188;s:11:\"Dr Sugiyama\";i:189;s:10:\"Droid Sans\";i:190;s:15:\"Droid Sans Mono\";i:191;s:11:\"Droid Serif\";i:192;s:9:\"Duru Sans\";i:193;s:9:\"Dynalight\";i:194;s:11:\"EB Garamond\";i:195;s:10:\"Eagle Lake\";i:196;s:5:\"Eater\";i:197;s:9:\"Economica\";i:198;s:5:\"Eczar\";i:199;s:8:\"Ek Mukta\";i:200;s:11:\"Electrolize\";i:201;s:5:\"Elsie\";i:202;s:16:\"Elsie Swash Caps\";i:203;s:11:\"Emblema One\";i:204;s:12:\"Emilys Candy\";i:205;s:10:\"Engagement\";i:206;s:9:\"Englebert\";i:207;s:9:\"Enriqueta\";i:208;s:9:\"Erica One\";i:209;s:7:\"Esteban\";i:210;s:15:\"Euphoria Script\";i:211;s:5:\"Ewert\";i:212;s:3:\"Exo\";i:213;s:5:\"Exo 2\";i:214;s:13:\"Expletus Sans\";i:215;s:12:\"Fanwood Text\";i:216;s:9:\"Fascinate\";i:217;s:16:\"Fascinate Inline\";i:218;s:10:\"Faster One\";i:219;s:8:\"Fasthand\";i:220;s:9:\"Fauna One\";i:221;s:8:\"Federant\";i:222;s:6:\"Federo\";i:223;s:6:\"Felipa\";i:224;s:5:\"Fenix\";i:225;s:12:\"Finger Paint\";i:226;s:9:\"Fira Mono\";i:227;s:9:\"Fira Sans\";i:228;s:10:\"Fjalla One\";i:229;s:9:\"Fjord One\";i:230;s:8:\"Flamenco\";i:231;s:7:\"Flavors\";i:232;s:10:\"Fondamento\";i:233;s:16:\"Fontdiner Swanky\";i:234;s:5:\"Forum\";i:235;s:12:\"Francois One\";i:236;s:12:\"Freckle Face\";i:237;s:20:\"Fredericka the Great\";i:238;s:11:\"Fredoka One\";i:239;s:8:\"Freehand\";i:240;s:6:\"Fresca\";i:241;s:7:\"Frijole\";i:242;s:7:\"Fruktur\";i:243;s:9:\"Fugaz One\";i:244;s:9:\"GFS Didot\";i:245;s:15:\"GFS Neohellenic\";i:246;s:8:\"Gabriela\";i:247;s:6:\"Gafata\";i:248;s:8:\"Galdeano\";i:249;s:7:\"Galindo\";i:250;s:13:\"Gentium Basic\";i:251;s:18:\"Gentium Book Basic\";i:252;s:3:\"Geo\";i:253;s:7:\"Geostar\";i:254;s:12:\"Geostar Fill\";i:255;s:12:\"Germania One\";i:256;s:6:\"Gidugu\";i:257;s:13:\"Gilda Display\";i:258;s:14:\"Give You Glory\";i:259;s:13:\"Glass Antiqua\";i:260;s:6:\"Glegoo\";i:261;s:17:\"Gloria Hallelujah\";i:262;s:10:\"Goblin One\";i:263;s:10:\"Gochi Hand\";i:264;s:8:\"Gorditas\";i:265;s:21:\"Goudy Bookletter 1911\";i:266;s:8:\"Graduate\";i:267;s:11:\"Grand Hotel\";i:268;s:12:\"Gravitas One\";i:269;s:11:\"Great Vibes\";i:270;s:6:\"Griffy\";i:271;s:6:\"Gruppo\";i:272;s:5:\"Gudea\";i:273;s:8:\"Gurajada\";i:274;s:6:\"Habibi\";i:275;s:6:\"Halant\";i:276;s:15:\"Hammersmith One\";i:277;s:7:\"Hanalei\";i:278;s:12:\"Hanalei Fill\";i:279;s:7:\"Handlee\";i:280;s:7:\"Hanuman\";i:281;s:12:\"Happy Monkey\";i:282;s:12:\"Headland One\";i:283;s:11:\"Henny Penny\";i:284;s:20:\"Herr Von Muellerhoff\";i:285;s:4:\"Hind\";i:286;s:15:\"Holtwood One SC\";i:287;s:14:\"Homemade Apple\";i:288;s:8:\"Homenaje\";i:289;s:15:\"IM Fell DW Pica\";i:290;s:18:\"IM Fell DW Pica SC\";i:291;s:19:\"IM Fell Double Pica\";i:292;s:22:\"IM Fell Double Pica SC\";i:293;s:15:\"IM Fell English\";i:294;s:18:\"IM Fell English SC\";i:295;s:20:\"IM Fell French Canon\";i:296;s:23:\"IM Fell French Canon SC\";i:297;s:20:\"IM Fell Great Primer\";i:298;s:23:\"IM Fell Great Primer SC\";i:299;s:7:\"Iceberg\";i:300;s:7:\"Iceland\";i:301;s:7:\"Imprima\";i:302;s:11:\"Inconsolata\";i:303;s:5:\"Inder\";i:304;s:12:\"Indie Flower\";i:305;s:5:\"Inika\";i:306;s:14:\"Inknut Antiqua\";i:307;s:12:\"Irish Grover\";i:308;s:9:\"Istok Web\";i:309;s:8:\"Italiana\";i:310;s:9:\"Italianno\";i:311;s:16:\"Jacques Francois\";i:312;s:23:\"Jacques Francois Shadow\";i:313;s:5:\"Jaldi\";i:314;s:14:\"Jim Nightshade\";i:315;s:10:\"Jockey One\";i:316;s:12:\"Jolly Lodger\";i:317;s:12:\"Josefin Sans\";i:318;s:12:\"Josefin Slab\";i:319;s:8:\"Joti One\";i:320;s:6:\"Judson\";i:321;s:5:\"Julee\";i:322;s:15:\"Julius Sans One\";i:323;s:5:\"Junge\";i:324;s:4:\"Jura\";i:325;s:17:\"Just Another Hand\";i:326;s:23:\"Just Me Again Down Here\";i:327;s:5:\"Kadwa\";i:328;s:5:\"Kalam\";i:329;s:7:\"Kameron\";i:330;s:9:\"Kantumruy\";i:331;s:5:\"Karla\";i:332;s:5:\"Karma\";i:333;s:14:\"Kaushan Script\";i:334;s:6:\"Kavoon\";i:335;s:10:\"Kdam Thmor\";i:336;s:10:\"Keania One\";i:337;s:10:\"Kelly Slab\";i:338;s:5:\"Kenia\";i:339;s:5:\"Khand\";i:340;s:5:\"Khmer\";i:341;s:5:\"Khula\";i:342;s:8:\"Kite One\";i:343;s:7:\"Knewave\";i:344;s:9:\"Kotta One\";i:345;s:6:\"Koulen\";i:346;s:6:\"Kranky\";i:347;s:5:\"Kreon\";i:348;s:6:\"Kristi\";i:349;s:9:\"Krona One\";i:350;s:6:\"Kurale\";i:351;s:15:\"La Belle Aurore\";i:352;s:5:\"Laila\";i:353;s:11:\"Lakki Reddy\";i:354;s:8:\"Lancelot\";i:355;s:6:\"Lateef\";i:356;s:4:\"Lato\";i:357;s:13:\"League Script\";i:358;s:12:\"Leckerli One\";i:359;s:6:\"Ledger\";i:360;s:6:\"Lekton\";i:361;s:5:\"Lemon\";i:362;s:17:\"Libre Baskerville\";i:363;s:11:\"Life Savers\";i:364;s:10:\"Lilita One\";i:365;s:15:\"Lily Script One\";i:366;s:9:\"Limelight\";i:367;s:11:\"Linden Hill\";i:368;s:7:\"Lobster\";i:369;s:11:\"Lobster Two\";i:370;s:16:\"Londrina Outline\";i:371;s:15:\"Londrina Shadow\";i:372;s:15:\"Londrina Sketch\";i:373;s:14:\"Londrina Solid\";i:374;s:4:\"Lora\";i:375;s:21:\"Love Ya Like A Sister\";i:376;s:17:\"Loved by the King\";i:377;s:14:\"Lovers Quarrel\";i:378;s:12:\"Luckiest Guy\";i:379;s:8:\"Lusitana\";i:380;s:7:\"Lustria\";i:381;s:7:\"Macondo\";i:382;s:18:\"Macondo Swash Caps\";i:383;s:5:\"Magra\";i:384;s:13:\"Maiden Orange\";i:385;s:4:\"Mako\";i:386;s:8:\"Mallanna\";i:387;s:7:\"Mandali\";i:388;s:9:\"Marcellus\";i:389;s:12:\"Marcellus SC\";i:390;s:12:\"Marck Script\";i:391;s:9:\"Margarine\";i:392;s:9:\"Marko One\";i:393;s:8:\"Marmelad\";i:394;s:6:\"Martel\";i:395;s:11:\"Martel Sans\";i:396;s:6:\"Marvel\";i:397;s:4:\"Mate\";i:398;s:7:\"Mate SC\";i:399;s:9:\"Maven Pro\";i:400;s:7:\"McLaren\";i:401;s:6:\"Meddon\";i:402;s:13:\"MedievalSharp\";i:403;s:10:\"Medula One\";i:404;s:6:\"Megrim\";i:405;s:11:\"Meie Script\";i:406;s:8:\"Merienda\";i:407;s:12:\"Merienda One\";i:408;s:12:\"Merriweather\";i:409;s:17:\"Merriweather Sans\";i:410;s:5:\"Metal\";i:411;s:11:\"Metal Mania\";i:412;s:12:\"Metamorphous\";i:413;s:11:\"Metrophobic\";i:414;s:8:\"Michroma\";i:415;s:7:\"Milonga\";i:416;s:9:\"Miltonian\";i:417;s:16:\"Miltonian Tattoo\";i:418;s:7:\"Miniver\";i:419;s:14:\"Miss Fajardose\";i:420;s:5:\"Modak\";i:421;s:14:\"Modern Antiqua\";i:422;s:7:\"Molengo\";i:423;s:5:\"Molle\";i:424;s:5:\"Monda\";i:425;s:8:\"Monofett\";i:426;s:7:\"Monoton\";i:427;s:20:\"Monsieur La Doulaise\";i:428;s:7:\"Montaga\";i:429;s:6:\"Montez\";i:430;s:10:\"Montserrat\";i:431;s:21:\"Montserrat Alternates\";i:432;s:20:\"Montserrat Subrayada\";i:433;s:4:\"Moul\";i:434;s:8:\"Moulpali\";i:435;s:22:\"Mountains of Christmas\";i:436;s:13:\"Mouse Memoirs\";i:437;s:10:\"Mr Bedfort\";i:438;s:8:\"Mr Dafoe\";i:439;s:14:\"Mr De Haviland\";i:440;s:19:\"Mrs Saint Delafield\";i:441;s:13:\"Mrs Sheppards\";i:442;s:4:\"Muli\";i:443;s:13:\"Mystery Quest\";i:444;s:3:\"NTR\";i:445;s:6:\"Neucha\";i:446;s:6:\"Neuton\";i:447;s:10:\"New Rocker\";i:448;s:10:\"News Cycle\";i:449;s:7:\"Niconne\";i:450;s:9:\"Nixie One\";i:451;s:6:\"Nobile\";i:452;s:6:\"Nokora\";i:453;s:7:\"Norican\";i:454;s:7:\"Nosifer\";i:455;s:20:\"Nothing You Could Do\";i:456;s:12:\"Noticia Text\";i:457;s:9:\"Noto Sans\";i:458;s:10:\"Noto Serif\";i:459;s:8:\"Nova Cut\";i:460;s:9:\"Nova Flat\";i:461;s:9:\"Nova Mono\";i:462;s:9:\"Nova Oval\";i:463;s:10:\"Nova Round\";i:464;s:11:\"Nova Script\";i:465;s:9:\"Nova Slim\";i:466;s:11:\"Nova Square\";i:467;s:6:\"Numans\";i:468;s:6:\"Nunito\";i:469;s:14:\"Odor Mean Chey\";i:470;s:7:\"Offside\";i:471;s:15:\"Old Standard TT\";i:472;s:9:\"Oldenburg\";i:473;s:11:\"Oleo Script\";i:474;s:22:\"Oleo Script Swash Caps\";i:475;s:9:\"Open Sans\";i:476;s:19:\"Open Sans Condensed\";i:477;s:11:\"Oranienbaum\";i:478;s:8:\"Orbitron\";i:479;s:7:\"Oregano\";i:480;s:7:\"Orienta\";i:481;s:15:\"Original Surfer\";i:482;s:6:\"Oswald\";i:483;s:16:\"Over the Rainbow\";i:484;s:8:\"Overlock\";i:485;s:11:\"Overlock SC\";i:486;s:3:\"Ovo\";i:487;s:6:\"Oxygen\";i:488;s:11:\"Oxygen Mono\";i:489;s:7:\"PT Mono\";i:490;s:7:\"PT Sans\";i:491;s:15:\"PT Sans Caption\";i:492;s:14:\"PT Sans Narrow\";i:493;s:8:\"PT Serif\";i:494;s:16:\"PT Serif Caption\";i:495;s:8:\"Pacifico\";i:496;s:9:\"Palanquin\";i:497;s:14:\"Palanquin Dark\";i:498;s:7:\"Paprika\";i:499;s:10:\"Parisienne\";i:500;s:11:\"Passero One\";i:501;s:11:\"Passion One\";i:502;s:18:\"Pathway Gothic One\";i:503;s:12:\"Patrick Hand\";i:504;s:15:\"Patrick Hand SC\";i:505;s:9:\"Patua One\";i:506;s:11:\"Paytone One\";i:507;s:7:\"Peddana\";i:508;s:7:\"Peralta\";i:509;s:16:\"Permanent Marker\";i:510;s:19:\"Petit Formal Script\";i:511;s:7:\"Petrona\";i:512;s:11:\"Philosopher\";i:513;s:6:\"Piedra\";i:514;s:13:\"Pinyon Script\";i:515;s:10:\"Pirata One\";i:516;s:7:\"Plaster\";i:517;s:4:\"Play\";i:518;s:8:\"Playball\";i:519;s:16:\"Playfair Display\";i:520;s:19:\"Playfair Display SC\";i:521;s:7:\"Podkova\";i:522;s:10:\"Poiret One\";i:523;s:10:\"Poller One\";i:524;s:4:\"Poly\";i:525;s:8:\"Pompiere\";i:526;s:12:\"Pontano Sans\";i:527;s:7:\"Poppins\";i:528;s:16:\"Port Lligat Sans\";i:529;s:16:\"Port Lligat Slab\";i:530;s:14:\"Pragati Narrow\";i:531;s:5:\"Prata\";i:532;s:11:\"Preahvihear\";i:533;s:14:\"Press Start 2P\";i:534;s:14:\"Princess Sofia\";i:535;s:8:\"Prociono\";i:536;s:10:\"Prosto One\";i:537;s:7:\"Puritan\";i:538;s:12:\"Purple Purse\";i:539;s:6:\"Quando\";i:540;s:8:\"Quantico\";i:541;s:12:\"Quattrocento\";i:542;s:17:\"Quattrocento Sans\";i:543;s:9:\"Questrial\";i:544;s:9:\"Quicksand\";i:545;s:14:\"Quintessential\";i:546;s:7:\"Qwigley\";i:547;s:15:\"Racing Sans One\";i:548;s:6:\"Radley\";i:549;s:8:\"Rajdhani\";i:550;s:7:\"Raleway\";i:551;s:12:\"Raleway Dots\";i:552;s:10:\"Ramabhadra\";i:553;s:8:\"Ramaraja\";i:554;s:6:\"Rambla\";i:555;s:12:\"Rammetto One\";i:556;s:8:\"Ranchers\";i:557;s:6:\"Rancho\";i:558;s:5:\"Ranga\";i:559;s:9:\"Rationale\";i:560;s:12:\"Ravi Prakash\";i:561;s:9:\"Redressed\";i:562;s:13:\"Reenie Beanie\";i:563;s:7:\"Revalia\";i:564;s:13:\"Rhodium Libre\";i:565;s:6:\"Ribeye\";i:566;s:13:\"Ribeye Marrow\";i:567;s:9:\"Righteous\";i:568;s:6:\"Risque\";i:569;s:6:\"Roboto\";i:570;s:16:\"Roboto Condensed\";i:571;s:11:\"Roboto Mono\";i:572;s:11:\"Roboto Slab\";i:573;s:9:\"Rochester\";i:574;s:9:\"Rock Salt\";i:575;s:7:\"Rokkitt\";i:576;s:9:\"Romanesco\";i:577;s:9:\"Ropa Sans\";i:578;s:7:\"Rosario\";i:579;s:8:\"Rosarivo\";i:580;s:12:\"Rouge Script\";i:581;s:9:\"Rozha One\";i:582;s:5:\"Rubik\";i:583;s:14:\"Rubik Mono One\";i:584;s:9:\"Rubik One\";i:585;s:4:\"Ruda\";i:586;s:6:\"Rufina\";i:587;s:11:\"Ruge Boogie\";i:588;s:6:\"Ruluko\";i:589;s:10:\"Rum Raisin\";i:590;s:14:\"Ruslan Display\";i:591;s:9:\"Russo One\";i:592;s:6:\"Ruthie\";i:593;s:3:\"Rye\";i:594;s:10:\"Sacramento\";i:595;s:7:\"Sahitya\";i:596;s:4:\"Sail\";i:597;s:5:\"Salsa\";i:598;s:7:\"Sanchez\";i:599;s:8:\"Sancreek\";i:600;s:11:\"Sansita One\";i:601;s:6:\"Sarala\";i:602;s:6:\"Sarina\";i:603;s:8:\"Sarpanch\";i:604;s:7:\"Satisfy\";i:605;s:5:\"Scada\";i:606;s:12:\"Scheherazade\";i:607;s:10:\"Schoolbell\";i:608;s:14:\"Seaweed Script\";i:609;s:9:\"Sevillana\";i:610;s:11:\"Seymour One\";i:611;s:18:\"Shadows Into Light\";i:612;s:22:\"Shadows Into Light Two\";i:613;s:6:\"Shanti\";i:614;s:5:\"Share\";i:615;s:10:\"Share Tech\";i:616;s:15:\"Share Tech Mono\";i:617;s:9:\"Shojumaru\";i:618;s:11:\"Short Stack\";i:619;s:8:\"Siemreap\";i:620;s:10:\"Sigmar One\";i:621;s:7:\"Signika\";i:622;s:16:\"Signika Negative\";i:623;s:9:\"Simonetta\";i:624;s:7:\"Sintony\";i:625;s:13:\"Sirin Stencil\";i:626;s:8:\"Six Caps\";i:627;s:7:\"Skranji\";i:628;s:10:\"Slabo 13px\";i:629;s:10:\"Slabo 27px\";i:630;s:7:\"Slackey\";i:631;s:6:\"Smokum\";i:632;s:6:\"Smythe\";i:633;s:7:\"Sniglet\";i:634;s:7:\"Snippet\";i:635;s:13:\"Snowburst One\";i:636;s:10:\"Sofadi One\";i:637;s:5:\"Sofia\";i:638;s:10:\"Sonsie One\";i:639;s:16:\"Sorts Mill Goudy\";i:640;s:15:\"Source Code Pro\";i:641;s:15:\"Source Sans Pro\";i:642;s:16:\"Source Serif Pro\";i:643;s:13:\"Special Elite\";i:644;s:10:\"Spicy Rice\";i:645;s:9:\"Spinnaker\";i:646;s:6:\"Spirax\";i:647;s:10:\"Squada One\";i:648;s:20:\"Sree Krushnadevaraya\";i:649;s:9:\"Stalemate\";i:650;s:13:\"Stalinist One\";i:651;s:15:\"Stardos Stencil\";i:652;s:21:\"Stint Ultra Condensed\";i:653;s:20:\"Stint Ultra Expanded\";i:654;s:5:\"Stoke\";i:655;s:6:\"Strait\";i:656;s:19:\"Sue Ellen Francisco\";i:657;s:6:\"Sumana\";i:658;s:9:\"Sunshiney\";i:659;s:16:\"Supermercado One\";i:660;s:4:\"Sura\";i:661;s:7:\"Suranna\";i:662;s:9:\"Suravaram\";i:663;s:11:\"Suwannaphum\";i:664;s:18:\"Swanky and Moo Moo\";i:665;s:9:\"Syncopate\";i:666;s:9:\"Tangerine\";i:667;s:6:\"Taprom\";i:668;s:5:\"Tauri\";i:669;s:4:\"Teko\";i:670;s:5:\"Telex\";i:671;s:18:\"Tenali Ramakrishna\";i:672;s:10:\"Tenor Sans\";i:673;s:11:\"Text Me One\";i:674;s:18:\"The Girl Next Door\";i:675;s:6:\"Tienne\";i:676;s:7:\"Tillana\";i:677;s:7:\"Timmana\";i:678;s:5:\"Tinos\";i:679;s:9:\"Titan One\";i:680;s:13:\"Titillium Web\";i:681;s:11:\"Trade Winds\";i:682;s:7:\"Trocchi\";i:683;s:7:\"Trochut\";i:684;s:7:\"Trykker\";i:685;s:10:\"Tulpen One\";i:686;s:6:\"Ubuntu\";i:687;s:16:\"Ubuntu Condensed\";i:688;s:11:\"Ubuntu Mono\";i:689;s:5:\"Ultra\";i:690;s:14:\"Uncial Antiqua\";i:691;s:8:\"Underdog\";i:692;s:9:\"Unica One\";i:693;s:14:\"UnifrakturCook\";i:694;s:18:\"UnifrakturMaguntia\";i:695;s:7:\"Unkempt\";i:696;s:6:\"Unlock\";i:697;s:4:\"Unna\";i:698;s:5:\"VT323\";i:699;s:11:\"Vampiro One\";i:700;s:6:\"Varela\";i:701;s:12:\"Varela Round\";i:702;s:11:\"Vast Shadow\";i:703;s:12:\"Vesper Libre\";i:704;s:5:\"Vibur\";i:705;s:8:\"Vidaloka\";i:706;s:4:\"Viga\";i:707;s:5:\"Voces\";i:708;s:7:\"Volkhov\";i:709;s:8:\"Vollkorn\";i:710;s:8:\"Voltaire\";i:711;s:23:\"Waiting for the Sunrise\";i:712;s:8:\"Wallpoet\";i:713;s:15:\"Walter Turncoat\";i:714;s:6:\"Warnes\";i:715;s:9:\"Wellfleet\";i:716;s:9:\"Wendy One\";i:717;s:8:\"Wire One\";i:718;s:9:\"Work Sans\";i:719;s:17:\"Yanone Kaffeesatz\";i:720;s:11:\"Yantramanav\";i:721;s:10:\"Yellowtail\";i:722;s:10:\"Yeseva One\";i:723;s:10:\"Yesteryear\";i:724;s:6:\"Zeyada\";}', 'yes'),
(483, 'wpmm_default_settings', 'a:9:{s:9:\"menu_type\";s:6:\"flyout\";s:13:\"panel_columns\";i:6;s:22:\"wpmm_mega_menu_columns\";i:1;s:13:\"wp_menu_order\";i:0;s:16:\"general_settings\";a:12:{s:11:\"active_link\";s:4:\"true\";s:12:\"disable_text\";s:5:\"false\";s:19:\"visible_hidden_menu\";s:5:\"false\";s:10:\"hide_arrow\";s:5:\"false\";s:14:\"hide_on_mobile\";s:5:\"false\";s:15:\"hide_on_desktop\";s:5:\"false\";s:9:\"menu_icon\";s:8:\"disabled\";s:18:\"active_single_menu\";s:8:\"disabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:23:\"hide_sub_menu_on_mobile\";s:5:\"false\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:8:{s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"show_top_content\";s:4:\"true\";s:19:\"show_bottom_content\";s:4:\"true\";s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:5:\"right\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:0:\"\";}s:21:\"upload_image_settings\";a:14:{s:19:\"use_custom_settings\";s:5:\"false\";s:13:\"text_position\";s:4:\"left\";s:20:\"display_posts_images\";s:14:\"featured-image\";s:26:\"default_thumbnail_imageurl\";s:0:\"\";s:16:\"show_description\";s:4:\"true\";s:16:\"show_desc_length\";s:0:\"\";s:16:\"display_readmore\";s:4:\"true\";s:13:\"readmore_text\";s:12:\"Read more >>\";s:17:\"display_post_date\";s:4:\"true\";s:19:\"display_author_name\";s:4:\"true\";s:16:\"display_cat_name\";s:4:\"true\";s:10:\"image_size\";s:7:\"default\";s:21:\"enable_custom_inherit\";s:1:\"1\";s:12:\"custom_width\";s:0:\"\";}}', 'yes'),
(484, 'widget_wpmegamenu_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(485, 'widget_wpmegamenu_contact_info', 'a:2:{i:2;a:14:{s:5:\"title\";s:11:\"Liên hệ \";s:7:\"address\";s:59:\"429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM\r\n\";s:17:\"address_font_icon\";s:10:\"fa fa-home\";s:5:\"phone\";s:10:\"0932023992\";s:15:\"phone_font_icon\";s:11:\"fa fa-phone\";s:5:\"email\";s:21:\"tanhieu2014@gmail.com\";s:15:\"email_font_icon\";s:14:\"fa fa-envelope\";s:7:\"website\";s:16:\"webextrasite.com\";s:17:\"website_font_icon\";s:11:\"fa fa-globe\";s:16:\"custom_shortcode\";s:19:\"[aps-social id=\"1\"]\";s:22:\"custom_shortcode_title\";s:16:\"Mạng xã hội\";s:22:\"wpmm_mega_menu_columns\";i:1;s:13:\"wp_menu_order\";a:1:{i:118;i:2;}s:29:\"wpmm_mega_menu_parent_menu_id\";s:3:\"118\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(486, 'widget_wpmegamenu_pro_linkimage', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(487, 'widget_wpmegamenu_pro_html_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(500, 'woocommerce_tracker_ua', 'a:2:{i:0;s:113:\"mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36\";i:1;s:114:\"mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/68.0.3440.106 safari/537.36\";}', 'yes'),
(509, 'wpmegabox_settings', 'a:3:{s:8:\"Vertical\";a:8:{s:7:\"enabled\";s:1:\"1\";s:11:\"orientation\";s:8:\"vertical\";s:23:\"vertical_alignment_type\";s:5:\"right\";s:14:\"trigger_option\";s:7:\"onhover\";s:13:\"effect_option\";s:4:\"fade\";s:10:\"theme_type\";s:15:\"available_skins\";s:5:\"theme\";s:1:\"1\";s:14:\"available_skin\";s:17:\"gold-yellow-black\";}s:7:\"primary\";a:8:{s:7:\"enabled\";s:1:\"1\";s:11:\"orientation\";s:10:\"horizontal\";s:23:\"vertical_alignment_type\";s:4:\"left\";s:14:\"trigger_option\";s:7:\"onhover\";s:13:\"effect_option\";s:4:\"fade\";s:10:\"theme_type\";s:15:\"available_skins\";s:5:\"theme\";s:1:\"1\";s:14:\"available_skin\";s:11:\"black-white\";}s:14:\"primary_mobile\";a:8:{s:7:\"enabled\";s:1:\"1\";s:11:\"orientation\";s:10:\"horizontal\";s:23:\"vertical_alignment_type\";s:4:\"left\";s:14:\"trigger_option\";s:7:\"onhover\";s:13:\"effect_option\";s:4:\"fade\";s:10:\"theme_type\";s:15:\"available_skins\";s:5:\"theme\";s:1:\"1\";s:14:\"available_skin\";s:11:\"black-white\";}}', 'yes'),
(546, 'widget_wonderplugin_videoembed_widget', 'a:2:{i:2;a:27:{s:22:\"wpmm_mega_menu_columns\";i:2;s:29:\"wpmm_mega_menu_parent_menu_id\";s:2:\"93\";s:13:\"wp_menu_order\";a:1:{i:93;i:2;}s:9:\"videotype\";s:6:\"iframe\";s:6:\"iframe\";s:43:\"https://www.youtube.com/watch?v=07TGkAbf_FQ\";s:3:\"mp4\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:6:\"poster\";s:0:\"\";s:10:\"videowidth\";s:3:\"480\";s:11:\"videoheight\";s:3:\"360\";s:15:\"keepaspectratio\";s:1:\"1\";s:8:\"autoplay\";s:1:\"0\";s:4:\"loop\";s:1:\"0\";s:8:\"videocss\";s:99:\"position:relative;display:block;background-color:#000;overflow:hidden;max-width:100%;margin:0 auto;\";s:10:\"playbutton\";s:106:\"http://localhost/shopphukienxemay/wp-content/plugins/wonderplugin-video-embed/engine/playvideo-64-64-0.png\";s:8:\"lightbox\";s:1:\"0\";s:12:\"lightboxsize\";s:1:\"1\";s:13:\"lightboxwidth\";s:3:\"960\";s:14:\"lightboxheight\";s:3:\"540\";s:8:\"autoopen\";s:1:\"0\";s:13:\"autoopendelay\";s:4:\"1000\";s:9:\"autoclose\";s:1:\"0\";s:13:\"lightboxtitle\";s:0:\"\";s:13:\"lightboxgroup\";s:0:\"\";s:22:\"lightboxshownavigation\";s:1:\"0\";s:15:\"lightboxoptions\";s:0:\"\";s:9:\"showimage\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(550, 'widget_facebook_page_plugin_widget', 'a:2:{i:2;a:16:{s:5:\"title\";s:16:\"Fanpage công ty\";s:4:\"href\";s:159:\"https://www.facebook.com/C%C3%B4ng-Ty-Thi%E1%BA%BFt-K%E1%BA%BF-Website-Extrasite-Uy-T%C3%ADn-Chuy%C3%AAn-Nghi%E1%BB%87p-1799638030082043/?modal=admin_todo_tour\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:3:\"280\";s:5:\"cover\";s:4:\"true\";s:8:\"facepile\";s:0:\"\";s:4:\"tabs\";a:1:{i:0;s:6:\"events\";}s:3:\"cta\";s:0:\"\";s:5:\"small\";s:0:\"\";s:5:\"adapt\";s:4:\"true\";s:4:\"link\";s:4:\"true\";s:8:\"linktext\";s:0:\"\";s:8:\"language\";s:5:\"vi_VN\";s:22:\"wpmm_mega_menu_columns\";i:2;s:13:\"wp_menu_order\";a:1:{i:93;i:3;}s:29:\"wpmm_mega_menu_parent_menu_id\";s:2:\"93\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(625, 'category_children', 'a:1:{i:38;a:2:{i:0;i:39;i:1;i:40;}}', 'yes'),
(669, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1531867330;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(676, 'widget_apsi_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(728, 'email-subscribers', '2.9', 'yes'),
(729, 'ig_es_fromname', 'Shop phụ kiện xe máy online', 'yes'),
(730, 'ig_es_fromemail', 'tanhieu2014@gmail.com', 'yes'),
(731, 'ig_es_emailtype', 'WP HTML MAIL', 'yes'),
(732, 'ig_es_notifyadmin', 'YES', 'yes'),
(733, 'ig_es_adminemail', 'tanhieu2014@gmail.com', 'yes'),
(734, 'ig_es_admin_new_sub_subject', 'Shop phụ kiện xe máy online - New email subscription', 'yes'),
(735, 'ig_es_admin_new_sub_content', 'Hi Admin,\r\n\r\nCongratulations! You have a new subscriber.\r\n\r\nName : {{NAME}}\r\nEmail: {{EMAIL}}\r\nGroup: {{GROUP}}\r\n\r\nHave a nice day :)\r\nShop phụ kiện xe máy online', 'yes'),
(736, 'ig_es_welcomeemail', 'YES', 'yes'),
(737, 'ig_es_welcomesubject', 'Shop phụ kiện xe máy online - Welcome!', 'yes'),
(738, 'ig_es_welcomecontent', 'Hi {{NAME}},\r\n\r\nThank you for subscribing to Shop phụ kiện xe máy online.\r\n\r\nWe are glad to have you onboard.\r\n\r\nBest,\r\nShop phụ kiện xe máy online\r\n\r\nGot subscribed to Shop phụ kiện xe máy online by mistake? Click <a href=\\\'{{LINK}}\\\'>here</a> to unsubscribe.', 'yes'),
(739, 'ig_es_optintype', 'Double Opt In', 'yes'),
(740, 'ig_es_confirmsubject', 'Shop phụ kiện xe máy online - Please confirm your subscription', 'yes'),
(741, 'ig_es_confirmcontent', 'Hi {{NAME}},\r\n\r\nWe have received a subscription request from this email address. Please confirm it by <a href=\\\'{{LINK}}\\\'>clicking here</a>.\r\n\r\nIf you still cannot subscribe, please copy this link and paste it in your browser :\r\n{{LINK}} \r\n\r\nThank You\r\nShop phụ kiện xe máy online', 'yes'),
(742, 'ig_es_optinlink', 'http://localhost/shopphukienxemay/?es=optin&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(743, 'ig_es_unsublink', 'http://localhost/shopphukienxemay/?es=unsubscribe&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'yes'),
(744, 'ig_es_unsubcontent', 'No longer interested in emails from Shop phụ kiện xe máy online? Please <a href=\\\'{{LINK}}\\\'>click here</a> to unsubscribe.', 'yes'),
(745, 'ig_es_unsubtext', 'Thank You, You have been successfully unsubscribed. You will no longer hear from us.', 'yes'),
(746, 'ig_es_successmsg', 'Bạn đã thành công trong việc đăng ký.', 'yes'),
(747, 'ig_es_suberror', 'Oops.. Your request couldn\\\'t be completed. This email address seems to be already subscribed / blocked.', 'yes'),
(748, 'ig_es_unsuberror', 'Oops.. There was some technical error. Please try again later or contact us.', 'yes'),
(749, 'ig_es_sample_data_imported', 'yes', 'yes'),
(752, 'widget_email-subscribers', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(753, 'ig_es_sync_wp_users', 's:4:\"b:0;\";', 'yes'),
(754, 'current_sa_email_subscribers_db_version', '3.4.0', 'yes'),
(755, 'ig_es_post_image_size', 'full', 'yes'),
(756, 'ig_es_sentreport', 'Hi Admin,\r\n\r\nEmail has been sent successfully to {{COUNT}} email(s). Please find the details below:\r\n\r\nUnique ID: {{UNIQUE}}\r\nStart Time: {{STARTTIME}}\r\nEnd Time: {{ENDTIME}}\r\nFor more information, login to your dashboard and go to Reports menu in Email Subscribers.\r\n\r\nThank You.', 'yes'),
(757, 'ig_es_sentreport_subject', 'Your email has been sent', 'yes'),
(758, 'ig_es_cronurl', 'http://localhost/shopphukienxemay/?es=cron&guid=ifnvhb-mjcfao-qmosxn-rvzdye-qnoapy', 'yes'),
(759, 'ig_es_cron_mailcount', '50', 'yes'),
(760, 'ig_es_cron_adminmail', 'Hi Admin,\r\n\r\nCron URL has been triggered successfully on {{DATE}} for the email \\\'{{SUBJECT}}\\\'. And it sent email to {{COUNT}} recipient(s).\r\n\r\nBest,\r\nShop phụ kiện xe máy online', 'yes'),
(761, 'es_roles_subscriber', 'manage_options', 'yes'),
(762, 'es_roles_mail', 'manage_options', 'yes'),
(763, 'es_roles_notification', 'manage_options', 'yes'),
(764, 'es_roles_sendmail', 'manage_options', 'yes'),
(765, 'es_roles_sentmail', 'manage_options', 'yes'),
(766, 'ig_es_rolesandcapabilities', 'a:5:{s:19:\"es_roles_subscriber\";s:14:\"manage_options\";s:13:\"es_roles_mail\";s:14:\"manage_options\";s:21:\"es_roles_notification\";s:14:\"manage_options\";s:17:\"es_roles_sendmail\";s:14:\"manage_options\";s:17:\"es_roles_sentmail\";s:14:\"manage_options\";}', 'yes'),
(904, 'cnb', 'a:9:{s:6:\"active\";s:1:\"1\";s:6:\"number\";s:10:\"0932023992\";s:4:\"text\";s:0:\"\";s:5:\"color\";s:7:\"#070aed\";s:10:\"appearance\";s:4:\"full\";s:8:\"tracking\";s:1:\"0\";s:4:\"show\";s:0:\"\";s:5:\"limit\";s:7:\"include\";s:7:\"version\";s:5:\"0.3.1\";}', 'yes'),
(1156, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(1157, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(1274, 'tidio-one-private-key', 'khsfgzaaaap16w7dygptu0bll0v1vo5m', 'yes'),
(1275, 'tidio-one-public-key', 'btqh4kzmj5manekep9qk4jppmnmrrm8v', 'yes'),
(1362, 'woocommerce_flat_rate_4_settings', 'a:3:{s:5:\"title\";s:14:\"Ngoại Thành\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:12:\"5000 * [qty]\";}', 'yes'),
(1382, 'woocommerce_free_shipping_1_settings', 'a:3:{s:5:\"title\";s:22:\"Giao hàng miễn phí\";s:8:\"requires\";s:6:\"either\";s:10:\"min_amount\";s:6:\"500000\";}', 'yes'),
(1393, 'woocommerce_local_pickup_5_settings', 'a:3:{s:5:\"title\";s:22:\"Giao tại cửa hàng\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:0:\"\";}', 'yes'),
(1436, 'pum_initial_version', '1.7.29', 'yes'),
(1437, 'pum_db_ver', '8', 'yes'),
(1438, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:37:\"popup-maker/includes/pum-sdk/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.1.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1532844063;s:11:\"plugin_path\";s:27:\"popup-maker/popup-maker.php\";}}s:7:\"abspath\";s:33:\"C:\\xampp\\htdocs\\shopphukienxemay/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:27:\"popup-maker/popup-maker.php\";s:8:\"sdk_path\";s:37:\"popup-maker/includes/pum-sdk/freemius\";s:7:\"version\";s:5:\"2.1.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1532844063;}}', 'yes'),
(1439, 'fs_debug_mode', '', 'yes'),
(1440, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:147;a:3:{s:4:\"slug\";s:11:\"popup-maker\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:27:\"popup-maker/popup-maker.php\";}}s:11:\"plugin_data\";a:1:{s:11:\"popup-maker\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:27:\"popup-maker/popup-maker.php\";}s:17:\"install_timestamp\";i:1532844064;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.1.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"1.7.29\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1532844064;s:7:\"version\";s:6:\"1.7.29\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:1:{s:27:\"popup-maker/popup-maker.php\";s:11:\"popup-maker\";}s:7:\"plugins\";a:1:{s:11:\"popup-maker\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"Popup Maker\";s:4:\"slug\";s:11:\"popup-maker\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:27:\"popup-maker/popup-maker.php\";s:7:\"version\";s:6:\"1.7.29\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_0a02cbd99443e0ab7211b19222fe3\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"147\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"3a0de3f8325b71d8a542270d97097d7b\";s:13:\"admin_notices\";a:1:{s:11:\"popup-maker\";a:1:{s:18:\"activation_pending\";a:8:{s:7:\"message\";s:198:\"You should receive an activation email for <b>Popup Maker</b> to your mailbox at <b>tanhieu2014@gmail.com</b>. Please make sure you click the activation button in that email to complete the install.\";s:5:\"title\";s:7:\"Thanks!\";s:4:\"type\";s:7:\"success\";s:6:\"sticky\";b:1;s:2:\"id\";s:18:\"activation_pending\";s:10:\"manager_id\";s:11:\"popup-maker\";s:6:\"plugin\";s:11:\"Popup Maker\";s:10:\"wp_user_id\";N;}}}}', 'yes'),
(1441, 'fs_api_cache', 'a:0:{}', 'yes'),
(1442, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(1445, 'pum_ver', '1.7.29', 'yes'),
(1446, 'popmake_settings', 'a:1:{s:26:\"disable_popup_category_tag\";i:1;}', 'yes'),
(1447, 'pum_version', '1.7.29', 'yes'),
(1450, 'popmake_default_theme', '204', 'yes'),
(1451, '_pum_installed_themes', 'a:5:{i:0;s:8:\"lightbox\";i:1;s:15:\"enterprise-blue\";i:2;s:9:\"hello-box\";i:3;s:12:\"cutting-edge\";i:4;s:13:\"framed-border\";}', 'yes'),
(1452, 'pum_reviews_installed_on', '2018-07-29 13:01:16', 'yes'),
(1455, 'pum-has-cached-css', '1532845567', 'yes'),
(1456, 'pum-has-cached-js', '1532942245', 'yes'),
(1457, 'pum_total_open_count', '49', 'yes'),
(1644, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:3;s:3:\"all\";i:3;s:8:\"approved\";s:1:\"3\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1714, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"7.9\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";b:0;}', 'yes'),
(1715, 'wpseo_titles', 'a:130:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:48:\"%%name%%, Tác giả tại %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:62:\"Bạn đã tìm %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:45:\"Không tìm thấy trang %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:81:\"Bài viết %%POSTLINK%% đã xuất hiện đầu tiên vào ngày %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:35:\"Lỗi 404: Không tìm thấy trang\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:14:\"Lưu trữ cho\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Bạn đã tìm\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:12:\"title-blocks\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-blocks\";s:0:\"\";s:14:\"noindex-blocks\";b:0;s:15:\"showdate-blocks\";b:0;s:25:\"display-metabox-pt-blocks\";b:1;s:11:\"title-popup\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:14:\"metadesc-popup\";s:0:\"\";s:13:\"noindex-popup\";b:0;s:14:\"showdate-popup\";b:0;s:24:\"display-metabox-pt-popup\";b:0;s:13:\"title-product\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:26:\"display-metabox-pt-product\";b:1;s:17:\"title-es_template\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:20:\"metadesc-es_template\";s:0:\"\";s:19:\"noindex-es_template\";b:0;s:20:\"showdate-es_template\";b:0;s:30:\"display-metabox-pt-es_template\";b:1;s:19:\"title-featured_item\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-featured_item\";s:0:\"\";s:21:\"noindex-featured_item\";b:0;s:22:\"showdate-featured_item\";b:0;s:32:\"display-metabox-pt-featured_item\";b:1;s:22:\"title-ptarchive-blocks\";s:54:\"Lưu trữ %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:25:\"metadesc-ptarchive-blocks\";s:0:\"\";s:24:\"bctitle-ptarchive-blocks\";s:0:\"\";s:24:\"noindex-ptarchive-blocks\";b:0;s:23:\"title-ptarchive-product\";s:54:\"Lưu trữ %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:29:\"title-ptarchive-featured_item\";s:54:\"Lưu trữ %%pt_plural%% %%page%% %%sep%% %%sitename%%\";s:32:\"metadesc-ptarchive-featured_item\";s:0:\"\";s:31:\"bctitle-ptarchive-featured_item\";s:0:\"\";s:31:\"noindex-ptarchive-featured_item\";b:0;s:18:\"title-tax-category\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:21:\"title-tax-product_cat\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:31:\"display-metabox-tax-product_cat\";b:1;s:23:\"noindex-tax-product_cat\";b:0;s:21:\"title-tax-product_tag\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:31:\"display-metabox-tax-product_tag\";b:1;s:23:\"noindex-tax-product_tag\";b:0;s:32:\"title-tax-product_shipping_class\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:42:\"display-metabox-tax-product_shipping_class\";b:1;s:34:\"noindex-tax-product_shipping_class\";b:0;s:32:\"title-tax-featured_item_category\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:35:\"metadesc-tax-featured_item_category\";s:0:\"\";s:42:\"display-metabox-tax-featured_item_category\";b:1;s:34:\"noindex-tax-featured_item_category\";b:0;s:27:\"title-tax-featured_item_tag\";s:55:\"Lưu trữ %%term_title%% %%page%% %%sep%% %%sitename%%\";s:30:\"metadesc-tax-featured_item_tag\";s:0:\"\";s:37:\"display-metabox-tax-featured_item_tag\";b:1;s:29:\"noindex-tax-featured_item_tag\";b:0;s:23:\"post_types-post-maintax\";i:0;s:25:\"post_types-blocks-maintax\";i:0;s:26:\"post_types-product-maintax\";i:0;s:32:\"post_types-featured_item-maintax\";i:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;s:40:\"taxonomy-featured_item_category-ptparent\";i:0;s:35:\"taxonomy-featured_item_tag-ptparent\";i:0;}', 'yes'),
(1716, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(1717, 'wpseo_flush_rewrite', '1', 'yes'),
(1718, '_transient_timeout_wpseo_link_table_inaccessible', '1564559679', 'no'),
(1719, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(1720, '_transient_timeout_wpseo_meta_table_inaccessible', '1564559679', 'no'),
(1721, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(1725, 'wpseo_onpage', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1544340363;}', 'yes'),
(1735, 'wpseo_sitemap_cache_validator_global', '36fs4', 'no'),
(1742, 'wpseo_sitemap_1_cache_validator', '2rScc', 'no'),
(1743, 'wpseo_sitemap_post_cache_validator', '2rSd2', 'no'),
(1744, 'wpseo_sitemap_category_cache_validator', '2rxk', 'no');
INSERT INTO `wp_shopxemayoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1747, 'rewrite_rules', 'a:272:{s:17:\"luu-tru/blocks/?$\";s:26:\"index.php?post_type=blocks\";s:47:\"luu-tru/blocks/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=blocks&feed=$matches[1]\";s:42:\"luu-tru/blocks/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=blocks&feed=$matches[1]\";s:34:\"luu-tru/blocks/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=blocks&paged=$matches[1]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:15:\"san-pham-moi/?$\";s:27:\"index.php?post_type=product\";s:45:\"san-pham-moi/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:40:\"san-pham-moi/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"san-pham-moi/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:24:\"luu-tru/featured_item/?$\";s:33:\"index.php?post_type=featured_item\";s:54:\"luu-tru/featured_item/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:49:\"luu-tru/featured_item/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=featured_item&feed=$matches[1]\";s:41:\"luu-tru/featured_item/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=featured_item&paged=$matches[1]\";s:40:\"luu-tru/blocks/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"luu-tru/blocks/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"luu-tru/blocks/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"luu-tru/blocks/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"luu-tru/blocks/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"luu-tru/blocks/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"luu-tru/blocks/(.+?)/embed/?$\";s:39:\"index.php?blocks=$matches[1]&embed=true\";s:33:\"luu-tru/blocks/(.+?)/trackback/?$\";s:33:\"index.php?blocks=$matches[1]&tb=1\";s:53:\"luu-tru/blocks/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?blocks=$matches[1]&feed=$matches[2]\";s:48:\"luu-tru/blocks/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?blocks=$matches[1]&feed=$matches[2]\";s:41:\"luu-tru/blocks/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&paged=$matches[2]\";s:48:\"luu-tru/blocks/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?blocks=$matches[1]&cpage=$matches[2]\";s:38:\"luu-tru/blocks/(.+?)/wc-api(/(.*))?/?$\";s:47:\"index.php?blocks=$matches[1]&wc-api=$matches[3]\";s:44:\"luu-tru/blocks/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"luu-tru/blocks/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"luu-tru/blocks/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?blocks=$matches[1]&page=$matches[2]\";s:55:\"luu-tru/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"luu-tru/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"luu-tru/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:43:\"luu-tru/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:40:\"luu-tru/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:25:\"luu-tru/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:52:\"luu-tru/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:47:\"luu-tru/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:28:\"luu-tru/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:40:\"luu-tru/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:37:\"luu-tru/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:22:\"luu-tru/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:53:\"luu-tru/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:48:\"luu-tru/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:29:\"luu-tru/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:41:\"luu-tru/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:23:\"luu-tru/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:65:\"luu-tru/block_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:60:\"luu-tru/block_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?taxonomy=block_categories&term=$matches[1]&feed=$matches[2]\";s:41:\"luu-tru/block_categories/([^/]+)/embed/?$\";s:63:\"index.php?taxonomy=block_categories&term=$matches[1]&embed=true\";s:53:\"luu-tru/block_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?taxonomy=block_categories&term=$matches[1]&paged=$matches[2]\";s:35:\"luu-tru/block_categories/([^/]+)/?$\";s:52:\"index.php?taxonomy=block_categories&term=$matches[1]\";s:41:\"luu-tru/popup/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"luu-tru/popup/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"luu-tru/popup/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"luu-tru/popup/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"luu-tru/popup/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"luu-tru/popup/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"luu-tru/popup/([^/]+)/embed/?$\";s:53:\"index.php?post_type=popup&name=$matches[1]&embed=true\";s:34:\"luu-tru/popup/([^/]+)/trackback/?$\";s:47:\"index.php?post_type=popup&name=$matches[1]&tb=1\";s:42:\"luu-tru/popup/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?post_type=popup&name=$matches[1]&paged=$matches[2]\";s:49:\"luu-tru/popup/([^/]+)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?post_type=popup&name=$matches[1]&cpage=$matches[2]\";s:39:\"luu-tru/popup/([^/]+)/wc-api(/(.*))?/?$\";s:61:\"index.php?post_type=popup&name=$matches[1]&wc-api=$matches[3]\";s:45:\"luu-tru/popup/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"luu-tru/popup/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"luu-tru/popup/([^/]+)(?:/([0-9]+))?/?$\";s:59:\"index.php?post_type=popup&name=$matches[1]&page=$matches[2]\";s:30:\"luu-tru/popup/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"luu-tru/popup/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"luu-tru/popup/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"luu-tru/popup/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"luu-tru/popup/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"luu-tru/popup/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"luu-tru/popup_theme/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"luu-tru/popup_theme/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"luu-tru/popup_theme/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"luu-tru/popup_theme/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"luu-tru/popup_theme/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"luu-tru/popup_theme/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"luu-tru/popup_theme/([^/]+)/embed/?$\";s:59:\"index.php?post_type=popup_theme&name=$matches[1]&embed=true\";s:40:\"luu-tru/popup_theme/([^/]+)/trackback/?$\";s:53:\"index.php?post_type=popup_theme&name=$matches[1]&tb=1\";s:48:\"luu-tru/popup_theme/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?post_type=popup_theme&name=$matches[1]&paged=$matches[2]\";s:55:\"luu-tru/popup_theme/([^/]+)/comment-page-([0-9]{1,})/?$\";s:66:\"index.php?post_type=popup_theme&name=$matches[1]&cpage=$matches[2]\";s:45:\"luu-tru/popup_theme/([^/]+)/wc-api(/(.*))?/?$\";s:67:\"index.php?post_type=popup_theme&name=$matches[1]&wc-api=$matches[3]\";s:51:\"luu-tru/popup_theme/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:62:\"luu-tru/popup_theme/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:44:\"luu-tru/popup_theme/([^/]+)(?:/([0-9]+))?/?$\";s:65:\"index.php?post_type=popup_theme&name=$matches[1]&page=$matches[2]\";s:36:\"luu-tru/popup_theme/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"luu-tru/popup_theme/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"luu-tru/popup_theme/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"luu-tru/popup_theme/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"luu-tru/popup_theme/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"luu-tru/popup_theme/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:48:\"tu-khoa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:43:\"tu-khoa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:24:\"tu-khoa/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:36:\"tu-khoa/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:18:\"tu-khoa/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"luu-tru/es_template/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"luu-tru/es_template/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"luu-tru/es_template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"luu-tru/es_template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"luu-tru/es_template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"luu-tru/es_template/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"luu-tru/es_template/([^/]+)/embed/?$\";s:44:\"index.php?es_template=$matches[1]&embed=true\";s:40:\"luu-tru/es_template/([^/]+)/trackback/?$\";s:38:\"index.php?es_template=$matches[1]&tb=1\";s:48:\"luu-tru/es_template/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?es_template=$matches[1]&paged=$matches[2]\";s:55:\"luu-tru/es_template/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?es_template=$matches[1]&cpage=$matches[2]\";s:45:\"luu-tru/es_template/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?es_template=$matches[1]&wc-api=$matches[3]\";s:51:\"luu-tru/es_template/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:62:\"luu-tru/es_template/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:44:\"luu-tru/es_template/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?es_template=$matches[1]&page=$matches[2]\";s:36:\"luu-tru/es_template/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"luu-tru/es_template/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"luu-tru/es_template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"luu-tru/es_template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"luu-tru/es_template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"luu-tru/es_template/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"luu-tru/featured_item/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"luu-tru/featured_item/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"luu-tru/featured_item/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"luu-tru/featured_item/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"luu-tru/featured_item/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"luu-tru/featured_item/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"luu-tru/featured_item/(.+?)/embed/?$\";s:46:\"index.php?featured_item=$matches[1]&embed=true\";s:40:\"luu-tru/featured_item/(.+?)/trackback/?$\";s:40:\"index.php?featured_item=$matches[1]&tb=1\";s:60:\"luu-tru/featured_item/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:55:\"luu-tru/featured_item/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?featured_item=$matches[1]&feed=$matches[2]\";s:48:\"luu-tru/featured_item/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&paged=$matches[2]\";s:55:\"luu-tru/featured_item/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?featured_item=$matches[1]&cpage=$matches[2]\";s:45:\"luu-tru/featured_item/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?featured_item=$matches[1]&wc-api=$matches[3]\";s:51:\"luu-tru/featured_item/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:62:\"luu-tru/featured_item/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:44:\"luu-tru/featured_item/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?featured_item=$matches[1]&page=$matches[2]\";s:71:\"luu-tru/featured_item_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:66:\"luu-tru/featured_item_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?featured_item_category=$matches[1]&feed=$matches[2]\";s:47:\"luu-tru/featured_item_category/([^/]+)/embed/?$\";s:55:\"index.php?featured_item_category=$matches[1]&embed=true\";s:59:\"luu-tru/featured_item_category/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?featured_item_category=$matches[1]&paged=$matches[2]\";s:41:\"luu-tru/featured_item_category/([^/]+)/?$\";s:44:\"index.php?featured_item_category=$matches[1]\";s:66:\"luu-tru/featured_item_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:61:\"luu-tru/featured_item_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?featured_item_tag=$matches[1]&feed=$matches[2]\";s:42:\"luu-tru/featured_item_tag/([^/]+)/embed/?$\";s:50:\"index.php?featured_item_tag=$matches[1]&embed=true\";s:54:\"luu-tru/featured_item_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?featured_item_tag=$matches[1]&paged=$matches[2]\";s:36:\"luu-tru/featured_item_tag/([^/]+)/?$\";s:39:\"index.php?featured_item_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:55:\"luu-tru/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:50:\"luu-tru/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:31:\"luu-tru/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:43:\"luu-tru/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:40:\"luu-tru/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:25:\"luu-tru/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:82:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:77:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:58:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:70:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:67:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:52:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:69:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:64:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:45:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:57:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:54:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:39:\"luu-tru/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:56:\"luu-tru/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:51:\"luu-tru/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:32:\"luu-tru/date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:44:\"luu-tru/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:41:\"luu-tru/date/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:26:\"luu-tru/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:36:\"luu-tru/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"luu-tru/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"luu-tru/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"luu-tru/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"luu-tru/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"luu-tru/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"luu-tru/([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:29:\"luu-tru/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:49:\"luu-tru/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:44:\"luu-tru/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:37:\"luu-tru/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:44:\"luu-tru/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:34:\"luu-tru/([0-9]+)/wc-api(/(.*))?/?$\";s:42:\"index.php?p=$matches[1]&wc-api=$matches[3]\";s:40:\"luu-tru/[0-9]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"luu-tru/[0-9]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"luu-tru/([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:25:\"luu-tru/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"luu-tru/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"luu-tru/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"luu-tru/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"luu-tru/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"luu-tru/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(1748, 'wpseo_sitemap_attachment_cache_validator', '3kYwt', 'no'),
(1754, 'wpseo_sitemap_page_cache_validator', 'aqxU', 'no'),
(1817, 'wpseo_sitemap_customize_changeset_cache_validator', '2xSgD', 'no'),
(1822, 'tt_font_theme_options', 'a:3:{s:15:\"tt_default_body\";a:39:{s:6:\"subset\";s:3:\"all\";s:7:\"font_id\";s:5:\"arial\";s:9:\"font_name\";s:5:\"Arial\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";i:400;s:10:\"font_style\";s:6:\"normal\";s:17:\"font_weight_style\";s:3:\"400\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:9:\"underline\";s:14:\"text_transform\";s:10:\"capitalize\";s:11:\"line_height\";d:2.1000000000000001;s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";i:15;s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_1\";a:39:{s:6:\"subset\";s:6:\"arabic\";s:7:\"font_id\";s:7:\"katibeh\";s:9:\"font_name\";s:7:\"Katibeh\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";i:400;s:10:\"font_style\";s:6:\"normal\";s:17:\"font_weight_style\";s:7:\"regular\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:55:\"https://fonts.googleapis.com/css?family=Katibeh:regular\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_2\";a:39:{s:6:\"subset\";s:9:\"latin,all\";s:7:\"font_id\";s:14:\"century_gothic\";s:9:\"font_name\";s:14:\"Century Gothic\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";i:400;s:10:\"font_style\";s:6:\"normal\";s:17:\"font_weight_style\";s:3:\"400\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}}', 'yes'),
(1826, 'wpseo_sitemap_nav_menu_item_cache_validator', '2dHsW', 'no'),
(1853, 'wpseo_sitemap_227_cache_validator', '2bydo', 'no');
INSERT INTO `wp_shopxemayoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1941, '_transient_tt_font_theme_options', 'a:7:{s:15:\"tt_default_body\";a:39:{s:6:\"subset\";s:3:\"all\";s:7:\"font_id\";s:5:\"arial\";s:9:\"font_name\";s:5:\"Arial\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";i:400;s:10:\"font_style\";s:6:\"normal\";s:17:\"font_weight_style\";s:3:\"400\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:9:\"underline\";s:14:\"text_transform\";s:10:\"capitalize\";s:11:\"line_height\";d:2.1000000000000001;s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";i:15;s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_1\";a:39:{s:6:\"subset\";s:6:\"arabic\";s:7:\"font_id\";s:7:\"katibeh\";s:9:\"font_name\";s:7:\"Katibeh\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";i:400;s:10:\"font_style\";s:6:\"normal\";s:17:\"font_weight_style\";s:7:\"regular\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:55:\"https://fonts.googleapis.com/css?family=Katibeh:regular\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_2\";a:39:{s:6:\"subset\";s:9:\"latin,all\";s:7:\"font_id\";s:14:\"century_gothic\";s:9:\"font_name\";s:14:\"Century Gothic\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";i:400;s:10:\"font_style\";s:6:\"normal\";s:17:\"font_weight_style\";s:3:\"400\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_3\";a:39:{s:6:\"subset\";s:9:\"latin,all\";s:7:\"font_id\";s:0:\"\";s:9:\"font_name\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:17:\"font_weight_style\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_4\";a:39:{s:6:\"subset\";s:9:\"latin,all\";s:7:\"font_id\";s:0:\"\";s:9:\"font_name\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:17:\"font_weight_style\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_5\";a:39:{s:6:\"subset\";s:9:\"latin,all\";s:7:\"font_id\";s:0:\"\";s:9:\"font_name\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:17:\"font_weight_style\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}s:20:\"tt_default_heading_6\";a:39:{s:6:\"subset\";s:9:\"latin,all\";s:7:\"font_id\";s:0:\"\";s:9:\"font_name\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:17:\"font_weight_style\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:14:\"stylesheet_url\";s:0:\"\";s:15:\"text_decoration\";s:0:\"\";s:14:\"text_transform\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:7:\"display\";s:0:\"\";s:9:\"font_size\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"letter_spacing\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:10:\"margin_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"margin_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"margin_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"margin_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:11:\"padding_top\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:13:\"padding_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:14:\"padding_bottom\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:12:\"padding_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:22:\"border_radius_top_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:23:\"border_radius_top_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:26:\"border_radius_bottom_right\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:25:\"border_radius_bottom_left\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:16:\"border_top_color\";s:0:\"\";s:16:\"border_top_style\";s:0:\"\";s:16:\"border_top_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:19:\"border_bottom_color\";s:0:\"\";s:19:\"border_bottom_style\";s:0:\"\";s:19:\"border_bottom_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:17:\"border_left_color\";s:0:\"\";s:17:\"border_left_style\";s:0:\"\";s:17:\"border_left_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}s:18:\"border_right_color\";s:0:\"\";s:18:\"border_right_style\";s:0:\"\";s:18:\"border_right_width\";a:2:{s:6:\"amount\";s:0:\"\";s:4:\"unit\";s:2:\"px\";}}}', 'yes'),
(1988, 'ossdl_off_cdn_url', 'http://localhost/shopphukienxemay', 'yes'),
(1989, 'ossdl_off_blog_url', 'http://localhost/shopphukienxemay', 'yes'),
(1990, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(1991, 'ossdl_off_exclude', '.php', 'yes'),
(1992, 'ossdl_cname', '', 'yes'),
(1998, 'wpsupercache_start', '1533228958', 'yes'),
(1999, 'wpsupercache_count', '0', 'yes'),
(2000, 'wpsupercache_gc_time', '1544340361', 'yes'),
(2001, 'supercache_stats', 'a:3:{s:9:\"generated\";i:1533229828;s:10:\"supercache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}s:7:\"wpcache\";a:5:{s:7:\"expired\";i:0;s:6:\"cached\";i:0;s:5:\"fsize\";i:0;s:11:\"cached_list\";a:0:{}s:12:\"expired_list\";a:0:{}}}', 'yes'),
(2010, 'wp_super_cache_index_detected', '1', 'no'),
(2025, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"tanhieu2014@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533276897;}', 'no'),
(2097, 'tp_image_optimizer_installed', 'true', 'yes'),
(2098, 'tpio_error_count', '0', 'yes'),
(2099, 'tp_image_optimizer_sizes', 'thumbnail,medium,medium_large,large,woocommerce_thumbnail,woocommerce_single,woocommerce_gallery_thumbnail,shop_catalog,shop_single,shop_thumbnail,full', 'yes'),
(2100, 'tp_image_optimizer_compress_level', '2', 'yes'),
(2105, '_transient_tpio_count', '31', 'yes'),
(2106, 'tp_image_optimizer_token', '5b2f67a3-257f7d06-7880e59b-532bba12', 'yes'),
(2107, 'tpio_id_processing', '211', 'yes'),
(2108, 'tpio_timeout_count', '8', 'yes'),
(2113, 'tp_image_optimizer_error', '1', 'yes'),
(2295, '_transient_timeout_external_ip_address_::1', '1544945160', 'no'),
(2296, '_transient_external_ip_address_::1', '27.78.169.159', 'no'),
(2298, '_transient_timeout_wc_term_counts', '1546932367', 'no'),
(2299, '_transient_wc_term_counts', 'a:27:{i:17;s:1:\"4\";i:19;s:1:\"4\";i:20;s:1:\"4\";i:18;s:1:\"4\";i:21;s:1:\"4\";i:22;s:1:\"1\";i:15;s:0:\"\";i:42;s:1:\"3\";i:23;s:1:\"1\";i:24;s:1:\"1\";i:25;s:1:\"1\";i:26;s:1:\"1\";i:27;s:1:\"1\";i:28;s:1:\"1\";i:29;s:1:\"1\";i:30;s:1:\"1\";i:31;s:1:\"1\";i:32;s:1:\"1\";i:33;s:1:\"1\";i:34;s:1:\"1\";i:43;s:1:\"1\";i:44;s:1:\"1\";i:45;s:1:\"1\";i:46;s:1:\"1\";i:47;s:1:\"1\";i:48;s:1:\"1\";i:49;s:1:\"1\";}', 'no'),
(2300, '_transient_timeout_wc_products_onsale', '1546932365', 'no'),
(2301, '_transient_wc_products_onsale', 'a:15:{i:0;i:38;i:1;i:44;i:2;i:48;i:3;i:54;i:4;i:65;i:5;i:149;i:6;i:150;i:7;i:151;i:8;i:163;i:9;i:165;i:10;i:167;i:11;i:169;i:12;i:171;i:13;i:173;i:14;i:175;}', 'no'),
(2302, '_transient_timeout_wc_product_loop841a1532944920', '1546932366', 'no'),
(2303, '_transient_wc_product_loop841a1532944920', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:65;i:1;i:163;i:2;i:151;i:3;i:150;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2304, '_transient_timeout_wc_product_loopf8571532944920', '1546932366', 'no'),
(2305, '_transient_wc_product_loopf8571532944920', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:65;i:1;i:38;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2307, '_transient_timeout_wc_product_loop90af1532944920', '1546932368', 'no'),
(2308, '_transient_wc_product_loop90af1532944920', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:163;i:1;i:167;i:2;i:165;i:3;i:38;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(2309, '_transient_timeout_wc_product_loop641d1532944920', '1546932369', 'no'),
(2310, '_transient_wc_product_loop641d1532944920', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:151;i:1;i:169;i:2;i:171;i:3;i:44;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}', 'no'),
(2311, '_transient_timeout_wc_product_loop96091532944920', '1546932369', 'no'),
(2312, '_transient_wc_product_loop96091532944920', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:150;i:1;i:149;i:2;i:48;i:3;i:173;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2313, '_transient_timeout_wc_product_loop5cce1532944920', '1546932370', 'no'),
(2314, '_transient_wc_product_loop5cce1532944920', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:65;i:1;i:150;i:2;i:175;i:3;i:54;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(2315, '_site_transient_timeout_theme_roots', '1544342171', 'no'),
(2316, '_site_transient_theme_roots', 'a:4:{s:17:\"flatsome/flatsome\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(2319, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.0.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/vi/wordpress-5.0.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1544340382;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(2320, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1544340383;s:7:\"checked\";a:4:{s:17:\"flatsome/flatsome\";s:5:\"3.3.4\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.1.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.8.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.6.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(2321, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1544340386;s:7:\"checked\";a:18:{s:53:\"accesspress-social-icons/accesspress-social-icons.php\";s:5:\"1.7.0\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:29:\"ap-mega-menu/ap-mega-menu.php\";s:5:\"2.0.2\";s:35:\"call-now-button/call-now-button.php\";s:5:\"0.3.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.3\";s:39:\"easy-google-fonts/easy-google-fonts.php\";s:5:\"1.4.3\";s:39:\"email-subscribers/email-subscribers.php\";s:5:\"3.5.3\";s:9:\"hello.php\";s:3:\"1.7\";s:19:\"jetpack/jetpack.php\";s:5:\"6.3.2\";s:27:\"popup-maker/popup-maker.php\";s:6:\"1.7.29\";s:61:\"facebook-page-feed-graph-api/facebook-page-feed-graph-api.php\";s:5:\"1.6.3\";s:31:\"seo-data-transporter/plugin.php\";s:5:\"1.0.0\";s:34:\"tidio-live-chat/tidio-elements.php\";s:5:\"3.3.0\";s:41:\"tp-image-optimizer/tp-image-optimizer.php\";s:5:\"2.1.1\";s:51:\"wonderplugin-video-embed/wonderpluginvideoembed.php\";s:3:\"1.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.3\";s:27:\"wp-super-cache/wp-cache.php\";s:5:\"1.6.2\";s:24:\"wordpress-seo/wp-seo.php\";s:3:\"7.9\";}s:8:\"response\";a:13:{s:53:\"accesspress-social-icons/accesspress-social-icons.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/accesspress-social-icons\";s:4:\"slug\";s:24:\"accesspress-social-icons\";s:6:\"plugin\";s:53:\"accesspress-social-icons/accesspress-social-icons.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/accesspress-social-icons/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/accesspress-social-icons.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/accesspress-social-icons/assets/icon-256x256.jpg?rev=1027880\";s:2:\"1x\";s:77:\"https://ps.w.org/accesspress-social-icons/assets/icon-128x128.jpg?rev=1027880\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/accesspress-social-icons/assets/banner-1544x500.jpg?rev=1032977\";s:2:\"1x\";s:79:\"https://ps.w.org/accesspress-social-icons/assets/banner-772x250.jpg?rev=1032977\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.8.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"ap-mega-menu/ap-mega-menu.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/ap-mega-menu\";s:4:\"slug\";s:12:\"ap-mega-menu\";s:6:\"plugin\";s:29:\"ap-mega-menu/ap-mega-menu.php\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/ap-mega-menu/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/ap-mega-menu.2.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ap-mega-menu/assets/icon-256x256.png?rev=1567011\";s:2:\"1x\";s:65:\"https://ps.w.org/ap-mega-menu/assets/icon-128x128.png?rev=1567011\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ap-mega-menu/assets/banner-1544x500.png?rev=1567011\";s:2:\"1x\";s:67:\"https://ps.w.org/ap-mega-menu/assets/banner-772x250.jpg?rev=1567011\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"call-now-button/call-now-button.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/call-now-button\";s:4:\"slug\";s:15:\"call-now-button\";s:6:\"plugin\";s:35:\"call-now-button/call-now-button.php\";s:11:\"new_version\";s:5:\"0.3.5\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/call-now-button/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/call-now-button.0.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/call-now-button/assets/icon-256x256.png?rev=1793650\";s:2:\"1x\";s:68:\"https://ps.w.org/call-now-button/assets/icon-128x128.png?rev=1793650\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/call-now-button/assets/banner-1544x500.jpg?rev=1793650\";s:2:\"1x\";s:70:\"https://ps.w.org/call-now-button/assets/banner-772x250.jpg?rev=1793650\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"email-subscribers/email-subscribers.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/email-subscribers\";s:4:\"slug\";s:17:\"email-subscribers\";s:6:\"plugin\";s:39:\"email-subscribers/email-subscribers.php\";s:11:\"new_version\";s:6:\"3.5.17\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/email-subscribers/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/email-subscribers.3.5.17.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/email-subscribers/assets/icon-256x256.png?rev=1348697\";s:2:\"1x\";s:70:\"https://ps.w.org/email-subscribers/assets/icon-128x128.png?rev=1348697\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/email-subscribers/assets/banner-772x250.png?rev=1523132\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"6.8.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.6.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"popup-maker/popup-maker.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/popup-maker\";s:4:\"slug\";s:11:\"popup-maker\";s:6:\"plugin\";s:27:\"popup-maker/popup-maker.php\";s:11:\"new_version\";s:6:\"1.7.30\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/popup-maker/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/popup-maker.1.7.30.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/popup-maker/assets/icon-256x256.jpg?rev=1549995\";s:2:\"1x\";s:64:\"https://ps.w.org/popup-maker/assets/icon-128x128.jpg?rev=1549995\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/popup-maker/assets/banner-1544x500.jpg?rev=1610951\";s:2:\"1x\";s:66:\"https://ps.w.org/popup-maker/assets/banner-772x250.jpg?rev=1610947\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"tidio-live-chat/tidio-elements.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/tidio-live-chat\";s:4:\"slug\";s:15:\"tidio-live-chat\";s:6:\"plugin\";s:34:\"tidio-live-chat/tidio-elements.php\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/tidio-live-chat/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/tidio-live-chat.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tidio-live-chat/assets/icon-256x256.jpg?rev=1703686\";s:2:\"1x\";s:68:\"https://ps.w.org/tidio-live-chat/assets/icon-128x128.jpg?rev=1703686\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/tidio-live-chat/assets/banner-1544x500.jpg?rev=1703745\";s:2:\"1x\";s:70:\"https://ps.w.org/tidio-live-chat/assets/banner-772x250.jpg?rev=1703745\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"wonderplugin-video-embed/wonderpluginvideoembed.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/wonderplugin-video-embed\";s:4:\"slug\";s:24:\"wonderplugin-video-embed\";s:6:\"plugin\";s:51:\"wonderplugin-video-embed/wonderpluginvideoembed.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/wonderplugin-video-embed/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wonderplugin-video-embed.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/wonderplugin-video-embed/assets/icon-128x128.png?rev=1834093\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/wp-super-cache\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"9.2.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.9.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:39:\"easy-google-fonts/easy-google-fonts.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/easy-google-fonts\";s:4:\"slug\";s:17:\"easy-google-fonts\";s:6:\"plugin\";s:39:\"easy-google-fonts/easy-google-fonts.php\";s:11:\"new_version\";s:5:\"1.4.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/easy-google-fonts/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/easy-google-fonts.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/easy-google-fonts/assets/icon-256x256.png?rev=991207\";s:2:\"1x\";s:69:\"https://ps.w.org/easy-google-fonts/assets/icon-128x128.png?rev=991207\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/easy-google-fonts/assets/banner-772x250.png?rev=990172\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:61:\"facebook-page-feed-graph-api/facebook-page-feed-graph-api.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/facebook-page-feed-graph-api\";s:4:\"slug\";s:28:\"facebook-page-feed-graph-api\";s:6:\"plugin\";s:61:\"facebook-page-feed-graph-api/facebook-page-feed-graph-api.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/facebook-page-feed-graph-api/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/facebook-page-feed-graph-api.1.6.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/facebook-page-feed-graph-api/assets/icon-128x128.jpg?rev=1147991\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/facebook-page-feed-graph-api/assets/banner-772x250.jpg?rev=1430452\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"seo-data-transporter/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/seo-data-transporter\";s:4:\"slug\";s:20:\"seo-data-transporter\";s:6:\"plugin\";s:31:\"seo-data-transporter/plugin.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/seo-data-transporter/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/seo-data-transporter.1.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/seo-data-transporter/assets/icon-256x256.png?rev=1335722\";s:2:\"1x\";s:73:\"https://ps.w.org/seo-data-transporter/assets/icon-128x128.png?rev=1335722\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/seo-data-transporter/assets/banner-1544x500.png?rev=1335722\";s:2:\"1x\";s:75:\"https://ps.w.org/seo-data-transporter/assets/banner-772x250.png?rev=1335722\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"tp-image-optimizer/tp-image-optimizer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/tp-image-optimizer\";s:4:\"slug\";s:18:\"tp-image-optimizer\";s:6:\"plugin\";s:41:\"tp-image-optimizer/tp-image-optimizer.php\";s:11:\"new_version\";s:5:\"2.1.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/tp-image-optimizer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/tp-image-optimizer.2.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/tp-image-optimizer/assets/icon-128x128.jpg?rev=1657349\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/tp-image-optimizer/assets/banner-772x250.jpg?rev=1657349\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(2323, '_transient_timeout_jetpack_idc_allowed', '1544343990', 'no'),
(2324, '_transient_jetpack_idc_allowed', '1', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaypostmeta`
--

CREATE TABLE `wp_shopxemaypostmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaypostmeta`
--

INSERT INTO `wp_shopxemaypostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_footer', 'normal'),
(5, 5, '_wp_page_template', 'default'),
(6, 5, '_edit_lock', '1532316302:1'),
(7, 8, '_edit_lock', '1531647696:1'),
(8, 12, '_edit_last', '1'),
(9, 12, '_edit_lock', '1531647856:1'),
(10, 12, '_footer', 'normal'),
(11, 12, '_wp_page_template', 'default'),
(12, 14, '_edit_last', '1'),
(13, 14, '_edit_lock', '1532624421:1'),
(14, 14, '_footer', 'normal'),
(15, 14, '_wp_page_template', 'default'),
(16, 16, '_edit_last', '1'),
(17, 16, '_edit_lock', '1532316604:1'),
(18, 16, '_footer', 'normal'),
(19, 16, '_wp_page_template', 'default'),
(21, 20, '_wp_attached_file', '2018/07/slider.jpg'),
(22, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:331;s:6:\"height\";i:152;s:4:\"file\";s:18:\"2018/07/slider.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider-300x138.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"slider-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"slider-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 21, '_menu_item_type', 'post_type'),
(26, 21, '_menu_item_menu_item_parent', '0'),
(27, 21, '_menu_item_object_id', '16'),
(28, 21, '_menu_item_object', 'page'),
(29, 21, '_menu_item_target', ''),
(30, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 21, '_menu_item_xfn', ''),
(32, 21, '_menu_item_url', ''),
(34, 22, '_menu_item_type', 'post_type'),
(35, 22, '_menu_item_menu_item_parent', '0'),
(36, 22, '_menu_item_object_id', '14'),
(37, 22, '_menu_item_object', 'page'),
(38, 22, '_menu_item_target', ''),
(39, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 22, '_menu_item_xfn', ''),
(41, 22, '_menu_item_url', ''),
(43, 23, '_menu_item_type', 'post_type'),
(44, 23, '_menu_item_menu_item_parent', '0'),
(45, 23, '_menu_item_object_id', '5'),
(46, 23, '_menu_item_object', 'page'),
(47, 23, '_menu_item_target', ''),
(48, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 23, '_menu_item_xfn', ''),
(50, 23, '_menu_item_url', ''),
(52, 24, '_wp_attached_file', '2018/07/5030.jpg'),
(53, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:16:\"2018/07/5030.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"5030-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"5030-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"5030-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"5030-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"5030-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"5030-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"5030-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"5030-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"5030-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"5030-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 25, '_menu_item_type', 'taxonomy'),
(55, 25, '_menu_item_menu_item_parent', '184'),
(56, 25, '_menu_item_object_id', '17'),
(57, 25, '_menu_item_object', 'product_cat'),
(58, 25, '_menu_item_target', ''),
(59, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 25, '_menu_item_xfn', ''),
(61, 25, '_menu_item_url', ''),
(63, 26, '_menu_item_type', 'taxonomy'),
(64, 26, '_menu_item_menu_item_parent', '184'),
(65, 26, '_menu_item_object_id', '21'),
(66, 26, '_menu_item_object', 'product_cat'),
(67, 26, '_menu_item_target', ''),
(68, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 26, '_menu_item_xfn', ''),
(70, 26, '_menu_item_url', ''),
(72, 27, '_menu_item_type', 'taxonomy'),
(73, 27, '_menu_item_menu_item_parent', '25'),
(74, 27, '_menu_item_object_id', '22'),
(75, 27, '_menu_item_object', 'product_cat'),
(76, 27, '_menu_item_target', ''),
(77, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 27, '_menu_item_xfn', ''),
(79, 27, '_menu_item_url', ''),
(81, 28, '_menu_item_type', 'taxonomy'),
(82, 28, '_menu_item_menu_item_parent', '25'),
(83, 28, '_menu_item_object_id', '19'),
(84, 28, '_menu_item_object', 'product_cat'),
(85, 28, '_menu_item_target', ''),
(86, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 28, '_menu_item_xfn', ''),
(88, 28, '_menu_item_url', ''),
(90, 29, '_menu_item_type', 'taxonomy'),
(91, 29, '_menu_item_menu_item_parent', '25'),
(92, 29, '_menu_item_object_id', '20'),
(93, 29, '_menu_item_object', 'product_cat'),
(94, 29, '_menu_item_target', ''),
(95, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 29, '_menu_item_xfn', ''),
(97, 29, '_menu_item_url', ''),
(99, 30, '_menu_item_type', 'taxonomy'),
(100, 30, '_menu_item_menu_item_parent', '25'),
(101, 30, '_menu_item_object_id', '18'),
(102, 30, '_menu_item_object', 'product_cat'),
(103, 30, '_menu_item_target', ''),
(104, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 30, '_menu_item_xfn', ''),
(106, 30, '_menu_item_url', ''),
(109, 32, '_wp_attached_file', '2018/07/150617_093010_ron-may-phu-tung-xe-may.jpg'),
(110, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:500;s:4:\"file\";s:49:\"2018/07/150617_093010_ron-may-phu-tung-xe-may.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-768x274.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:274;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"150617_093010_ron-may-phu-tung-xe-may-1024x366.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-600x214.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-600x214.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"150617_093010_ron-may-phu-tung-xe-may-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 33, '_wp_attached_file', '2018/07/slider-1.jpg'),
(112, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2018/07/slider-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider-1-300x90.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-1-768x230.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"slider-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"slider-1-600x180.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"slider-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"slider-1-600x180.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(113, 34, '_wp_attached_file', '2018/07/su-kien-ab-nhan-qua-600x338.jpg'),
(114, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:338;s:4:\"file\";s:39:\"2018/07/su-kien-ab-nhan-qua-600x338.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"su-kien-ab-nhan-qua-600x338-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 38, '_wc_review_count', '1'),
(116, 38, '_wc_rating_count', 'a:1:{i:3;i:1;}'),
(117, 38, '_wc_average_rating', '3.00'),
(118, 38, '_edit_last', '1'),
(119, 38, '_edit_lock', '1531654606:1'),
(120, 39, '_wp_attached_file', '2018/07/tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468.jpg'),
(121, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:69:\"2018/07/tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:69:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 40, '_wp_attached_file', '2018/07/review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb.jpg'),
(123, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:746;s:4:\"file\";s:75:\"2018/07/review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-300x224.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-768x573.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:573;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-600x448.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-600x448.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:448;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:75:\"review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 41, '_wp_attached_file', '2018/07/tay-thắng-biker-6-số-gãy-00-600x600.jpg'),
(125, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:57:\"2018/07/tay-thắng-biker-6-số-gãy-00-600x600.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:57:\"tay-thắng-biker-6-số-gãy-00-600x600-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 42, '_wp_attached_file', '2018/07/tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1.jpg'),
(127, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:71:\"2018/07/tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:71:\"tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 43, '_wp_attached_file', '2018/07/tay-thang-kieu-xe-may-ab-900x900.jpg'),
(129, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:44:\"2018/07/tay-thang-kieu-xe-may-ab-900x900.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"tay-thang-kieu-xe-may-ab-900x900-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 38, '_thumbnail_id', '39'),
(131, 38, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(132, 38, '_sku', ''),
(133, 38, '_regular_price', '1500000'),
(134, 38, '_sale_price', '1280000'),
(135, 38, '_sale_price_dates_from', ''),
(136, 38, '_sale_price_dates_to', ''),
(137, 38, 'total_sales', '0'),
(138, 38, '_tax_status', 'taxable'),
(139, 38, '_tax_class', ''),
(140, 38, '_manage_stock', 'no'),
(141, 38, '_backorders', 'no'),
(142, 38, '_sold_individually', 'no'),
(143, 38, '_weight', ''),
(144, 38, '_length', ''),
(145, 38, '_width', ''),
(146, 38, '_height', ''),
(147, 38, '_upsell_ids', 'a:0:{}'),
(148, 38, '_crosssell_ids', 'a:0:{}'),
(149, 38, '_purchase_note', ''),
(150, 38, '_default_attributes', 'a:0:{}'),
(151, 38, '_virtual', 'no'),
(152, 38, '_downloadable', 'no'),
(153, 38, '_product_image_gallery', '40,42,43'),
(154, 38, '_download_limit', '-1'),
(155, 38, '_download_expiry', '-1'),
(156, 38, '_stock', NULL),
(157, 38, '_stock_status', 'instock'),
(158, 38, '_product_version', '3.4.3'),
(159, 38, '_price', '1280000'),
(160, 44, '_wc_review_count', '0'),
(161, 44, '_wc_rating_count', 'a:0:{}'),
(162, 44, '_wc_average_rating', '0'),
(163, 44, '_edit_last', '1'),
(164, 44, '_edit_lock', '1531654742:1'),
(165, 45, '_wp_attached_file', '2018/07/Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539.png'),
(166, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:52:\"2018/07/Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 46, '_wp_attached_file', '2018/07/3525926_val.jpg'),
(168, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:23:\"2018/07/3525926_val.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"3525926_val-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"3525926_val-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"3525926_val-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 47, '_wp_attached_file', '2018/07/cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b.jpg'),
(170, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:576;s:6:\"height\";i:768;s:4:\"file\";s:99:\"2018/07/cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:99:\"cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:99:\"cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:99:\"cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:99:\"cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:99:\"cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:99:\"cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"22\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"NIKON D2X\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1178888832\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(171, 44, '_thumbnail_id', '45'),
(172, 44, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(173, 44, '_sku', ''),
(174, 44, '_regular_price', '80000'),
(175, 44, '_sale_price', '76000'),
(176, 44, '_sale_price_dates_from', ''),
(177, 44, '_sale_price_dates_to', ''),
(178, 44, 'total_sales', '0'),
(179, 44, '_tax_status', 'taxable'),
(180, 44, '_tax_class', ''),
(181, 44, '_manage_stock', 'no'),
(182, 44, '_backorders', 'no'),
(183, 44, '_sold_individually', 'no'),
(184, 44, '_weight', ''),
(185, 44, '_length', ''),
(186, 44, '_width', ''),
(187, 44, '_height', ''),
(188, 44, '_upsell_ids', 'a:0:{}'),
(189, 44, '_crosssell_ids', 'a:0:{}'),
(190, 44, '_purchase_note', ''),
(191, 44, '_default_attributes', 'a:0:{}'),
(192, 44, '_virtual', 'no'),
(193, 44, '_downloadable', 'no'),
(194, 44, '_product_image_gallery', '45,46,47'),
(195, 44, '_download_limit', '-1'),
(196, 44, '_download_expiry', '-1'),
(197, 44, '_stock', NULL),
(198, 44, '_stock_status', 'instock'),
(199, 44, '_product_version', '3.4.3'),
(200, 44, '_price', '76000'),
(201, 48, '_wc_review_count', '0'),
(202, 48, '_wc_rating_count', 'a:0:{}'),
(203, 48, '_wc_average_rating', '0'),
(204, 48, '_edit_last', '1'),
(205, 48, '_edit_lock', '1531654871:1'),
(206, 49, '_wp_attached_file', '2018/07/gang-tay-probiker-kin-ngon-di-phuot.png'),
(207, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:47:\"2018/07/gang-tay-probiker-kin-ngon-di-phuot.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"gang-tay-probiker-kin-ngon-di-phuot-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 50, '_wp_attached_file', '2018/07/gang-tay-ngon-cut-pro-biker-co-gu-inox-84974.jpg'),
(209, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:56:\"2018/07/gang-tay-ngon-cut-pro-biker-co-gu-inox-84974.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"gang-tay-ngon-cut-pro-biker-co-gu-inox-84974-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(210, 51, '_wp_attached_file', '2018/07/gang-tay-probiker-kin-ngon-di-phuot-1.png'),
(211, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:49:\"2018/07/gang-tay-probiker-kin-ngon-di-phuot-1.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"gang-tay-probiker-kin-ngon-di-phuot-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 52, '_wp_attached_file', '2018/07/gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544.jpg'),
(213, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:544;s:4:\"file\";s:60:\"2018/07/gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-600x466.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-600x466.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 48, '_thumbnail_id', '49'),
(215, 48, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(216, 48, '_sku', ''),
(217, 48, '_regular_price', '780000'),
(218, 48, '_sale_price', '560000'),
(219, 48, '_sale_price_dates_from', ''),
(220, 48, '_sale_price_dates_to', ''),
(221, 48, 'total_sales', '1'),
(222, 48, '_tax_status', 'taxable'),
(223, 48, '_tax_class', ''),
(224, 48, '_manage_stock', 'no'),
(225, 48, '_backorders', 'no'),
(226, 48, '_sold_individually', 'no'),
(227, 48, '_weight', ''),
(228, 48, '_length', ''),
(229, 48, '_width', ''),
(230, 48, '_height', ''),
(231, 48, '_upsell_ids', 'a:0:{}'),
(232, 48, '_crosssell_ids', 'a:0:{}'),
(233, 48, '_purchase_note', ''),
(234, 48, '_default_attributes', 'a:0:{}'),
(235, 48, '_virtual', 'no'),
(236, 48, '_downloadable', 'no'),
(237, 48, '_product_image_gallery', '50,51,52'),
(238, 48, '_download_limit', '-1'),
(239, 48, '_download_expiry', '-1'),
(240, 48, '_stock', NULL),
(241, 48, '_stock_status', 'instock'),
(242, 48, '_product_version', '3.4.3'),
(243, 48, '_price', '560000'),
(247, 54, '_wc_review_count', '0'),
(248, 54, '_wc_rating_count', 'a:0:{}'),
(249, 54, '_wc_average_rating', '0'),
(250, 54, '_edit_last', '1'),
(251, 54, '_edit_lock', '1531654993:1'),
(252, 55, '_wp_attached_file', '2018/07/20131016_f1dcebe55de505110a78228a79052014_1381914741-1.jpg'),
(253, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:66:\"2018/07/20131016_f1dcebe55de505110a78228a79052014_1381914741-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:66:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 56, '_wp_attached_file', '2018/07/20131016_f1dcebe55de505110a78228a79052014_1381914741.jpg'),
(255, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:64:\"2018/07/20131016_f1dcebe55de505110a78228a79052014_1381914741.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"20131016_f1dcebe55de505110a78228a79052014_1381914741-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 57, '_wp_attached_file', '2018/07/CTJIdw_simg_ab1f47_350x350_maxb.jpg');
INSERT INTO `wp_shopxemaypostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(257, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:43:\"2018/07/CTJIdw_simg_ab1f47_350x350_maxb.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"CTJIdw_simg_ab1f47_350x350_maxb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"CTJIdw_simg_ab1f47_350x350_maxb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"CTJIdw_simg_ab1f47_350x350_maxb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"CTJIdw_simg_ab1f47_350x350_maxb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"CTJIdw_simg_ab1f47_350x350_maxb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"CTJIdw_simg_ab1f47_350x350_maxb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(258, 58, '_wp_attached_file', '2018/07/review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d.jpg'),
(259, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:704;s:4:\"file\";s:99:\"2018/07/review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:99:\"review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:99:\"review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d-213x300.jpg\";s:5:\"width\";i:213;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:99:\"review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:99:\"review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:99:\"review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:99:\"review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:19:\"Canon PowerShot G12\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1321006113\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.1\";s:3:\"iso\";s:3:\"500\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(260, 54, '_thumbnail_id', '58'),
(261, 54, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(262, 54, '_sku', ''),
(263, 54, '_regular_price', '500000'),
(264, 54, '_sale_price', '430000'),
(265, 54, '_sale_price_dates_from', ''),
(266, 54, '_sale_price_dates_to', ''),
(267, 54, 'total_sales', '1'),
(268, 54, '_tax_status', 'taxable'),
(269, 54, '_tax_class', ''),
(270, 54, '_manage_stock', 'no'),
(271, 54, '_backorders', 'no'),
(272, 54, '_sold_individually', 'no'),
(273, 54, '_weight', ''),
(274, 54, '_length', ''),
(275, 54, '_width', ''),
(276, 54, '_height', ''),
(277, 54, '_upsell_ids', 'a:0:{}'),
(278, 54, '_crosssell_ids', 'a:0:{}'),
(279, 54, '_purchase_note', ''),
(280, 54, '_default_attributes', 'a:0:{}'),
(281, 54, '_virtual', 'no'),
(282, 54, '_downloadable', 'no'),
(283, 54, '_product_image_gallery', '55,56,57'),
(284, 54, '_download_limit', '-1'),
(285, 54, '_download_expiry', '-1'),
(286, 54, '_stock', NULL),
(287, 54, '_stock_status', 'instock'),
(288, 54, '_product_version', '3.4.3'),
(289, 54, '_price', '430000'),
(290, 65, '_wc_review_count', '1'),
(291, 65, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(292, 65, '_wc_average_rating', '5.00'),
(293, 65, '_edit_last', '1'),
(294, 65, '_edit_lock', '1532944403:1'),
(295, 66, '_wp_attached_file', '2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a.jpg'),
(296, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:481;s:6:\"height\";i:481;s:4:\"file\";s:100:\"2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:100:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:100:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:100:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:100:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:100:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:100:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 67, '_wp_attached_file', '2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1.jpg'),
(298, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:481;s:6:\"height\";i:481;s:4:\"file\";s:102:\"2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:102:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:102:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:102:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:102:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:102:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:102:\"den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 68, '_wp_attached_file', '2018/07/den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4.jpg'),
(300, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:695;s:6:\"height\";i:695;s:4:\"file\";s:107:\"2018/07/den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:107:\"den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 65, '_thumbnail_id', '66'),
(302, 65, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(303, 65, '_sku', ''),
(304, 65, '_regular_price', '1280000'),
(305, 65, '_sale_price', '1230000'),
(306, 65, '_sale_price_dates_from', ''),
(307, 65, '_sale_price_dates_to', ''),
(308, 65, 'total_sales', '1'),
(309, 65, '_tax_status', 'taxable'),
(310, 65, '_tax_class', ''),
(311, 65, '_manage_stock', 'no'),
(312, 65, '_backorders', 'no'),
(313, 65, '_sold_individually', 'no'),
(314, 65, '_weight', ''),
(315, 65, '_length', ''),
(316, 65, '_width', ''),
(317, 65, '_height', ''),
(318, 65, '_upsell_ids', 'a:0:{}'),
(319, 65, '_crosssell_ids', 'a:0:{}'),
(320, 65, '_purchase_note', ''),
(321, 65, '_default_attributes', 'a:0:{}'),
(322, 65, '_virtual', 'no'),
(323, 65, '_downloadable', 'no'),
(324, 65, '_product_image_gallery', '67,68'),
(325, 65, '_download_limit', '-1'),
(326, 65, '_download_expiry', '-1'),
(327, 65, '_stock', NULL),
(328, 65, '_stock_status', 'instock'),
(329, 65, '_product_version', '3.4.3'),
(330, 65, '_price', '1230000'),
(345, 76, '_menu_item_type', 'post_type'),
(346, 76, '_menu_item_menu_item_parent', '83'),
(347, 76, '_menu_item_object_id', '16'),
(348, 76, '_menu_item_object', 'page'),
(349, 76, '_menu_item_target', ''),
(350, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 76, '_menu_item_xfn', ''),
(352, 76, '_menu_item_url', ''),
(408, 83, '_menu_item_type', 'post_type'),
(409, 83, '_menu_item_menu_item_parent', '0'),
(410, 83, '_menu_item_object_id', '5'),
(411, 83, '_menu_item_object', 'page'),
(412, 83, '_menu_item_target', ''),
(413, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(414, 83, '_menu_item_xfn', ''),
(415, 83, '_menu_item_url', ''),
(417, 84, '_menu_item_type', 'taxonomy'),
(418, 84, '_menu_item_menu_item_parent', '76'),
(419, 84, '_menu_item_object_id', '18'),
(420, 84, '_menu_item_object', 'product_cat'),
(421, 84, '_menu_item_target', ''),
(422, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(423, 84, '_menu_item_xfn', ''),
(424, 84, '_menu_item_url', ''),
(426, 85, '_menu_item_type', 'taxonomy'),
(427, 85, '_menu_item_menu_item_parent', '76'),
(428, 85, '_menu_item_object_id', '17'),
(429, 85, '_menu_item_object', 'product_cat'),
(430, 85, '_menu_item_target', ''),
(431, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(432, 85, '_menu_item_xfn', ''),
(433, 85, '_menu_item_url', ''),
(435, 86, '_menu_item_type', 'taxonomy'),
(436, 86, '_menu_item_menu_item_parent', '76'),
(437, 86, '_menu_item_object_id', '21'),
(438, 86, '_menu_item_object', 'product_cat'),
(439, 86, '_menu_item_target', ''),
(440, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(441, 86, '_menu_item_xfn', ''),
(442, 86, '_menu_item_url', ''),
(444, 87, '_menu_item_type', 'taxonomy'),
(445, 87, '_menu_item_menu_item_parent', '76'),
(446, 87, '_menu_item_object_id', '19'),
(447, 87, '_menu_item_object', 'product_cat'),
(448, 87, '_menu_item_target', ''),
(449, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(450, 87, '_menu_item_xfn', ''),
(451, 87, '_menu_item_url', ''),
(453, 88, '_menu_item_type', 'taxonomy'),
(454, 88, '_menu_item_menu_item_parent', '76'),
(455, 88, '_menu_item_object_id', '20'),
(456, 88, '_menu_item_object', 'product_cat'),
(457, 88, '_menu_item_target', ''),
(458, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(459, 88, '_menu_item_xfn', ''),
(460, 88, '_menu_item_url', ''),
(462, 83, '_wpmegamenu', 'a:7:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"3\";s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:10:\"fa fa-home\";}s:16:\"submenu_ordering\";s:6:\"forced\";}'),
(464, 89, '_menu_item_type', 'custom'),
(465, 89, '_menu_item_menu_item_parent', '83'),
(466, 89, '_menu_item_object_id', '89'),
(467, 89, '_menu_item_object', 'custom'),
(468, 89, '_menu_item_target', ''),
(469, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(470, 89, '_menu_item_xfn', ''),
(471, 89, '_menu_item_url', '#'),
(473, 90, '_menu_item_type', 'custom'),
(474, 90, '_menu_item_menu_item_parent', '89'),
(475, 90, '_menu_item_object_id', '90'),
(476, 90, '_menu_item_object', 'custom'),
(477, 90, '_menu_item_target', ''),
(478, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(479, 90, '_menu_item_xfn', ''),
(480, 90, '_menu_item_url', '#'),
(482, 91, '_menu_item_type', 'custom'),
(483, 91, '_menu_item_menu_item_parent', '89'),
(484, 91, '_menu_item_object_id', '91'),
(485, 91, '_menu_item_object', 'custom'),
(486, 91, '_menu_item_target', ''),
(487, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(488, 91, '_menu_item_xfn', ''),
(489, 91, '_menu_item_url', '#'),
(491, 92, '_menu_item_type', 'custom'),
(492, 92, '_menu_item_menu_item_parent', '83'),
(493, 92, '_menu_item_object_id', '92'),
(494, 92, '_menu_item_object', 'custom'),
(495, 92, '_menu_item_target', ''),
(496, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(497, 92, '_menu_item_xfn', ''),
(498, 92, '_menu_item_url', '#'),
(500, 92, '_wpmegamenu', 'a:9:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"3\";s:16:\"general_settings\";a:10:{s:12:\"disable_text\";s:4:\"true\";s:9:\"menu_icon\";s:7:\"enabled\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";s:11:\"active_link\";s:5:\"false\";s:19:\"visible_hidden_menu\";s:5:\"false\";s:10:\"hide_arrow\";s:5:\"false\";s:14:\"hide_on_mobile\";s:5:\"false\";s:15:\"hide_on_desktop\";s:5:\"false\";s:18:\"active_single_menu\";s:8:\"disabled\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:11:\"fa fa-blank\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:12:\"custom-image\";s:26:\"default_thumbnail_imageurl\";s:153:\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a.jpg\";s:16:\"show_desc_length\";s:2:\"10\";s:13:\"readmore_text\";s:0:\"\";s:13:\"text_position\";s:9:\"onlyimage\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:0:\"\";s:16:\"show_description\";s:5:\"false\";s:16:\"display_readmore\";s:5:\"false\";s:17:\"display_post_date\";s:5:\"false\";s:19:\"display_author_name\";s:5:\"false\";s:16:\"display_cat_name\";s:5:\"false\";}s:18:\"mega_menu_settings\";a:4:{s:16:\"show_top_content\";s:5:\"false\";s:19:\"show_bottom_content\";s:5:\"false\";s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:16:\"submenu_ordering\";s:6:\"forced\";s:13:\"wp_menu_order\";a:1:{i:83;i:3;}}'),
(501, 76, '_wpmegamenu', 'a:8:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"3\";s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:10:\"fa fa-home\";}s:16:\"submenu_ordering\";s:6:\"forced\";s:13:\"wp_menu_order\";a:1:{i:83;i:1;}}'),
(502, 89, '_wpmegamenu', 'a:8:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"3\";s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:10:\"fa fa-home\";}s:16:\"submenu_ordering\";s:6:\"forced\";s:13:\"wp_menu_order\";a:1:{i:83;i:2;}}'),
(503, 93, '_menu_item_type', 'custom'),
(504, 93, '_menu_item_menu_item_parent', '0'),
(505, 93, '_menu_item_object_id', '93'),
(506, 93, '_menu_item_object', 'custom'),
(507, 93, '_menu_item_target', ''),
(508, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(509, 93, '_menu_item_xfn', ''),
(510, 93, '_menu_item_url', '#'),
(512, 93, '_wpmegamenu', 'a:7:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"6\";s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:15:\"fa fa-file-text\";}s:16:\"submenu_ordering\";s:6:\"forced\";}'),
(513, 94, '_menu_item_type', 'custom'),
(514, 94, '_menu_item_menu_item_parent', '0'),
(515, 94, '_menu_item_object_id', '94'),
(516, 94, '_menu_item_object', 'custom'),
(517, 94, '_menu_item_target', ''),
(518, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(519, 94, '_menu_item_xfn', ''),
(520, 94, '_menu_item_url', '#'),
(522, 94, '_wpmegamenu', 'a:7:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"6\";s:16:\"submenu_ordering\";s:6:\"forced\";s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:13:\"fa fa-android\";}}'),
(543, 97, '_menu_item_type', 'custom'),
(544, 97, '_menu_item_menu_item_parent', '94'),
(545, 97, '_menu_item_object_id', '97'),
(546, 97, '_menu_item_object', 'custom'),
(547, 97, '_menu_item_target', ''),
(548, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(549, 97, '_menu_item_xfn', ''),
(550, 97, '_menu_item_url', '#'),
(552, 98, '_menu_item_type', 'custom'),
(553, 98, '_menu_item_menu_item_parent', '94'),
(554, 98, '_menu_item_object_id', '98'),
(555, 98, '_menu_item_object', 'custom'),
(556, 98, '_menu_item_target', ''),
(557, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(558, 98, '_menu_item_xfn', ''),
(559, 98, '_menu_item_url', '#'),
(561, 97, '_wpmegamenu', 'a:5:{s:16:\"general_settings\";a:10:{s:12:\"disable_text\";s:4:\"true\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";s:11:\"active_link\";s:5:\"false\";s:19:\"visible_hidden_menu\";s:5:\"false\";s:10:\"hide_arrow\";s:5:\"false\";s:14:\"hide_on_mobile\";s:5:\"false\";s:15:\"hide_on_desktop\";s:5:\"false\";s:9:\"menu_icon\";s:8:\"disabled\";s:18:\"active_single_menu\";s:8:\"disabled\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:0:\"\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:12:\"custom-image\";s:26:\"default_thumbnail_imageurl\";s:155:\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1.jpg\";s:16:\"show_desc_length\";s:2:\"10\";s:13:\"readmore_text\";s:0:\"\";s:13:\"text_position\";s:9:\"onlyimage\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:5:\"200px\";s:16:\"show_description\";s:5:\"false\";s:16:\"display_readmore\";s:5:\"false\";s:17:\"display_post_date\";s:5:\"false\";s:19:\"display_author_name\";s:5:\"false\";s:16:\"display_cat_name\";s:5:\"false\";}s:18:\"mega_menu_settings\";a:4:{s:16:\"show_top_content\";s:5:\"false\";s:19:\"show_bottom_content\";s:5:\"false\";s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}}s:22:\"wpmm_mega_menu_columns\";i:3;}'),
(562, 98, '_wpmegamenu', 'a:5:{s:22:\"wpmm_mega_menu_columns\";i:3;s:16:\"general_settings\";a:10:{s:12:\"disable_text\";s:4:\"true\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";s:11:\"active_link\";s:5:\"false\";s:19:\"visible_hidden_menu\";s:5:\"false\";s:10:\"hide_arrow\";s:5:\"false\";s:14:\"hide_on_mobile\";s:5:\"false\";s:15:\"hide_on_desktop\";s:5:\"false\";s:9:\"menu_icon\";s:8:\"disabled\";s:18:\"active_single_menu\";s:8:\"disabled\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:0:\"\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:12:\"custom-image\";s:26:\"default_thumbnail_imageurl\";s:155:\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1.jpg\";s:16:\"show_desc_length\";s:2:\"10\";s:13:\"readmore_text\";s:0:\"\";s:13:\"text_position\";s:9:\"onlyimage\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:5:\"200px\";s:16:\"show_description\";s:5:\"false\";s:16:\"display_readmore\";s:5:\"false\";s:17:\"display_post_date\";s:5:\"false\";s:19:\"display_author_name\";s:5:\"false\";s:16:\"display_cat_name\";s:5:\"false\";}s:18:\"mega_menu_settings\";a:4:{s:16:\"show_top_content\";s:5:\"false\";s:19:\"show_bottom_content\";s:5:\"false\";s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}}}'),
(563, 99, '_menu_item_type', 'custom'),
(564, 99, '_menu_item_menu_item_parent', '0'),
(565, 99, '_menu_item_object_id', '99'),
(566, 99, '_menu_item_object', 'custom'),
(567, 99, '_menu_item_target', ''),
(568, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(569, 99, '_menu_item_xfn', ''),
(570, 99, '_menu_item_url', '#'),
(572, 99, '_wpmegamenu', 'a:6:{s:9:\"menu_type\";s:6:\"flyout\";s:13:\"panel_columns\";s:1:\"1\";s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:14:\"fa fa-calendar\";}}'),
(573, 100, '_menu_item_type', 'taxonomy'),
(574, 100, '_menu_item_menu_item_parent', '99'),
(575, 100, '_menu_item_object_id', '38'),
(576, 100, '_menu_item_object', 'category'),
(577, 100, '_menu_item_target', ''),
(578, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(579, 100, '_menu_item_xfn', ''),
(580, 100, '_menu_item_url', ''),
(582, 101, '_menu_item_type', 'taxonomy'),
(583, 101, '_menu_item_menu_item_parent', '100'),
(584, 101, '_menu_item_object_id', '39'),
(585, 101, '_menu_item_object', 'category'),
(586, 101, '_menu_item_target', ''),
(587, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(588, 101, '_menu_item_xfn', ''),
(589, 101, '_menu_item_url', ''),
(591, 102, '_menu_item_type', 'taxonomy'),
(592, 102, '_menu_item_menu_item_parent', '100'),
(593, 102, '_menu_item_object_id', '40'),
(594, 102, '_menu_item_object', 'category'),
(595, 102, '_menu_item_target', ''),
(596, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(597, 102, '_menu_item_xfn', ''),
(598, 102, '_menu_item_url', ''),
(600, 103, '_menu_item_type', 'taxonomy'),
(601, 103, '_menu_item_menu_item_parent', '99'),
(602, 103, '_menu_item_object_id', '37'),
(603, 103, '_menu_item_object', 'category'),
(604, 103, '_menu_item_target', ''),
(605, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(606, 103, '_menu_item_xfn', ''),
(607, 103, '_menu_item_url', ''),
(609, 104, '_menu_item_type', 'taxonomy'),
(610, 104, '_menu_item_menu_item_parent', '99'),
(611, 104, '_menu_item_object_id', '36'),
(612, 104, '_menu_item_object', 'category'),
(613, 104, '_menu_item_target', ''),
(614, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(615, 104, '_menu_item_xfn', ''),
(616, 104, '_menu_item_url', ''),
(618, 105, '_menu_item_type', 'custom'),
(619, 105, '_menu_item_menu_item_parent', '0'),
(620, 105, '_menu_item_object_id', '105'),
(621, 105, '_menu_item_object', 'custom'),
(622, 105, '_menu_item_target', ''),
(623, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(624, 105, '_menu_item_xfn', ''),
(625, 105, '_menu_item_url', '#'),
(627, 105, '_wpmegamenu', 'a:7:{s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"4\";s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:12:\"Mới nhất\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:14:\"fa fa-envelope\";}s:16:\"submenu_ordering\";s:6:\"forced\";}'),
(628, 106, '_edit_last', '1'),
(629, 106, '_edit_lock', '1531803166:1'),
(630, 106, '_thumbnail_id', '49'),
(633, 108, '_edit_last', '1'),
(634, 108, '_thumbnail_id', '57'),
(637, 108, '_edit_lock', '1531803182:1'),
(638, 110, '_edit_last', '1'),
(639, 110, '_thumbnail_id', '52'),
(642, 110, '_edit_lock', '1531803212:1'),
(643, 112, '_edit_last', '1'),
(644, 112, '_thumbnail_id', '42'),
(647, 112, '_edit_lock', '1531803234:1'),
(648, 114, '_menu_item_type', 'post_type'),
(649, 114, '_menu_item_menu_item_parent', '105'),
(650, 114, '_menu_item_object_id', '112'),
(651, 114, '_menu_item_object', 'post'),
(652, 114, '_menu_item_target', ''),
(653, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(654, 114, '_menu_item_xfn', ''),
(655, 114, '_menu_item_url', ''),
(657, 115, '_menu_item_type', 'post_type'),
(658, 115, '_menu_item_menu_item_parent', '105'),
(659, 115, '_menu_item_object_id', '110'),
(660, 115, '_menu_item_object', 'post'),
(661, 115, '_menu_item_target', ''),
(662, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(663, 115, '_menu_item_xfn', ''),
(664, 115, '_menu_item_url', ''),
(666, 116, '_menu_item_type', 'post_type'),
(667, 116, '_menu_item_menu_item_parent', '105'),
(668, 116, '_menu_item_object_id', '108'),
(669, 116, '_menu_item_object', 'post'),
(670, 116, '_menu_item_target', ''),
(671, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(672, 116, '_menu_item_xfn', ''),
(673, 116, '_menu_item_url', ''),
(675, 117, '_menu_item_type', 'post_type'),
(676, 117, '_menu_item_menu_item_parent', '105'),
(677, 117, '_menu_item_object_id', '112'),
(678, 117, '_menu_item_object', 'post'),
(679, 117, '_menu_item_target', ''),
(680, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(681, 117, '_menu_item_xfn', ''),
(682, 117, '_menu_item_url', ''),
(684, 114, '_wpmegamenu', 'a:10:{s:22:\"wpmm_mega_menu_columns\";i:1;s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:12:\"Mới nhất\";s:13:\"submenu_align\";s:4:\"left\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:14:\"fa fa-envelope\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:14:\"featured-image\";s:26:\"default_thumbnail_imageurl\";s:0:\"\";s:16:\"show_description\";s:4:\"true\";s:16:\"show_desc_length\";s:2:\"30\";s:16:\"display_readmore\";s:4:\"true\";s:13:\"readmore_text\";s:16:\"Đọc tiếp >>\";s:17:\"display_post_date\";s:4:\"true\";s:19:\"display_author_name\";s:4:\"true\";s:16:\"display_cat_name\";s:4:\"true\";s:13:\"text_position\";s:3:\"top\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:0:\"\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"4\";s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:16:\"submenu_ordering\";s:6:\"forced\";s:13:\"wp_menu_order\";a:1:{i:105;i:1;}}'),
(685, 115, '_wpmegamenu', 'a:9:{s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:12:\"Mới nhất\";s:13:\"submenu_align\";s:4:\"left\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:14:\"fa fa-envelope\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:14:\"featured-image\";s:26:\"default_thumbnail_imageurl\";s:0:\"\";s:16:\"show_description\";s:4:\"true\";s:16:\"show_desc_length\";s:2:\"30\";s:16:\"display_readmore\";s:4:\"true\";s:13:\"readmore_text\";s:16:\"Đọc tiếp >>\";s:17:\"display_post_date\";s:4:\"true\";s:19:\"display_author_name\";s:4:\"true\";s:16:\"display_cat_name\";s:4:\"true\";s:13:\"text_position\";s:3:\"top\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:0:\"\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"4\";s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:16:\"submenu_ordering\";s:6:\"forced\";s:13:\"wp_menu_order\";a:1:{i:105;i:2;}}'),
(686, 116, '_wpmegamenu', 'a:9:{s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:12:\"Mới nhất\";s:13:\"submenu_align\";s:4:\"left\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:14:\"fa fa-envelope\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:14:\"featured-image\";s:26:\"default_thumbnail_imageurl\";s:0:\"\";s:16:\"show_description\";s:4:\"true\";s:16:\"show_desc_length\";s:2:\"30\";s:16:\"display_readmore\";s:4:\"true\";s:13:\"readmore_text\";s:16:\"Đọc tiếp >>\";s:17:\"display_post_date\";s:4:\"true\";s:19:\"display_author_name\";s:4:\"true\";s:16:\"display_cat_name\";s:4:\"true\";s:13:\"text_position\";s:3:\"top\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:0:\"\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"4\";s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:16:\"submenu_ordering\";s:6:\"forced\";s:13:\"wp_menu_order\";a:1:{i:105;i:3;}}'),
(687, 117, '_wpmegamenu', 'a:9:{s:16:\"general_settings\";a:4:{s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:12:\"Mới nhất\";s:13:\"submenu_align\";s:4:\"left\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:14:\"fa fa-envelope\";}s:21:\"upload_image_settings\";a:13:{s:19:\"use_custom_settings\";s:4:\"true\";s:20:\"display_posts_images\";s:14:\"featured-image\";s:26:\"default_thumbnail_imageurl\";s:0:\"\";s:16:\"show_description\";s:4:\"true\";s:16:\"show_desc_length\";s:2:\"30\";s:16:\"display_readmore\";s:4:\"true\";s:13:\"readmore_text\";s:16:\"Đọc tiếp >>\";s:17:\"display_post_date\";s:4:\"true\";s:19:\"display_author_name\";s:4:\"true\";s:16:\"display_cat_name\";s:4:\"true\";s:13:\"text_position\";s:3:\"top\";s:10:\"image_size\";s:7:\"default\";s:12:\"custom_width\";s:0:\"\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:9:\"menu_type\";s:8:\"megamenu\";s:13:\"panel_columns\";s:1:\"4\";s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:16:\"submenu_ordering\";s:6:\"forced\";s:13:\"wp_menu_order\";a:1:{i:105;i:4;}}'),
(698, 119, '_form', '<label> Họ và Tên (bắt buộc)\n    [text* your-name] </label>\n\n<label> Phone (bắt buộc)\n     [tel* tel-258]</label>\n\n<label> Email (bắt buộc)\n    [email* your-email] </label>\n\n<label> Tiêu đề\n    [text your-subject] </label>\n\n<label> Tin nhắn\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]'),
(699, 119, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:49:\"Shop phụ kiện xe máy online \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <tanhieu2014@gmail.com>\";s:9:\"recipient\";s:21:\"tanhieu2014@gmail.com\";s:4:\"body\";s:204:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(700, 119, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:49:\"Shop phụ kiện xe máy online \"[your-subject]\"\";s:6:\"sender\";s:56:\"Shop phụ kiện xe máy online <tanhieu2014@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:146:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\";s:18:\"additional_headers\";s:31:\"Reply-To: tanhieu2014@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(701, 119, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(702, 119, '_additional_settings', ''),
(703, 119, '_locale', 'vi'),
(704, 120, '_menu_item_type', 'custom'),
(705, 120, '_menu_item_menu_item_parent', '0'),
(706, 120, '_menu_item_object_id', '120'),
(707, 120, '_menu_item_object', 'custom'),
(708, 120, '_menu_item_target', ''),
(709, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(710, 120, '_menu_item_xfn', ''),
(711, 120, '_menu_item_url', '#'),
(712, 25, '_wpmegamenu', 'a:6:{s:9:\"menu_type\";s:6:\"flyout\";s:13:\"panel_columns\";s:1:\"1\";s:16:\"general_settings\";a:3:{s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:5:\"right\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:5:\"right\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:0:\"\";}}'),
(713, 121, '_menu_item_type', 'custom'),
(714, 121, '_menu_item_menu_item_parent', '0'),
(715, 121, '_menu_item_object_id', '121'),
(716, 121, '_menu_item_object', 'custom'),
(717, 121, '_menu_item_target', ''),
(718, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(719, 121, '_menu_item_xfn', ''),
(720, 121, '_menu_item_url', 'https://www.facebook.com/C%C3%B4ng-Ty-Thi%E1%BA%BFt-K%E1%BA%BF-Website-Extrasite-Uy-T%C3%ADn-Chuy%C3%AAn-Nghi%E1%BB%87p-1799638030082043/?modal=admin_todo_tour'),
(722, 122, '_menu_item_type', 'custom'),
(723, 122, '_menu_item_menu_item_parent', '0'),
(724, 122, '_menu_item_object_id', '122'),
(725, 122, '_menu_item_object', 'custom'),
(726, 122, '_menu_item_target', ''),
(727, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(728, 122, '_menu_item_xfn', ''),
(729, 122, '_menu_item_url', '#'),
(731, 123, '_menu_item_type', 'custom'),
(732, 123, '_menu_item_menu_item_parent', '0'),
(733, 123, '_menu_item_object_id', '123'),
(734, 123, '_menu_item_object', 'custom'),
(735, 123, '_menu_item_target', ''),
(736, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(737, 123, '_menu_item_xfn', ''),
(738, 123, '_menu_item_url', '#'),
(740, 123, '_wpmegamenu', 'a:6:{s:9:\"menu_type\";s:6:\"flyout\";s:13:\"panel_columns\";s:1:\"1\";s:16:\"general_settings\";a:5:{s:12:\"disable_text\";s:4:\"true\";s:9:\"menu_icon\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:11:\"search_type\";s:14:\"custom_content\";s:63:\" [wp_megamenu_search_form template_type=\"megamenu-type-search\"]\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:12:\"fa fa-search\";}}'),
(741, 121, '_wpmegamenu', 'a:6:{s:9:\"menu_type\";s:6:\"flyout\";s:13:\"panel_columns\";s:1:\"1\";s:16:\"general_settings\";a:7:{s:12:\"disable_text\";s:4:\"true\";s:11:\"active_link\";s:4:\"true\";s:9:\"menu_icon\";s:7:\"enabled\";s:18:\"active_single_menu\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:14:\"fa fa-facebook\";}}');
INSERT INTO `wp_shopxemaypostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(742, 122, '_wpmegamenu', 'a:6:{s:9:\"menu_type\";s:6:\"flyout\";s:13:\"panel_columns\";s:1:\"1\";s:16:\"general_settings\";a:7:{s:12:\"disable_text\";s:4:\"true\";s:11:\"active_link\";s:4:\"true\";s:9:\"menu_icon\";s:7:\"enabled\";s:18:\"active_single_menu\";s:7:\"enabled\";s:10:\"menu_align\";s:4:\"left\";s:14:\"top_menu_label\";s:0:\"\";s:13:\"submenu_align\";s:4:\"left\";}s:18:\"mega_menu_settings\";a:6:{s:3:\"top\";a:4:{s:16:\"top_content_type\";s:9:\"text_only\";s:11:\"top_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:6:\"bottom\";a:4:{s:19:\"bottom_content_type\";s:9:\"text_only\";s:14:\"bottom_content\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:12:\"html_content\";s:0:\"\";}s:24:\"horizontal-menu-position\";s:10:\"full-width\";s:22:\"vertical-menu-position\";s:11:\"full-height\";s:16:\"choose_menu_type\";s:7:\"default\";s:14:\"custom_content\";s:0:\"\";}s:15:\"flyout_settings\";a:2:{s:15:\"flyout-position\";s:4:\"left\";s:17:\"vertical-position\";s:11:\"full-height\";}s:14:\"icons_settings\";a:1:{s:11:\"icon_choose\";s:13:\"fa fa-twitter\";}}'),
(752, 127, 'es_template_type', 'Post Notification'),
(753, 128, 'es_template_type', 'Newsletter'),
(756, 130, '_menu_item_type', 'post_type'),
(757, 130, '_menu_item_menu_item_parent', '0'),
(758, 130, '_menu_item_object_id', '14'),
(759, 130, '_menu_item_object', 'page'),
(760, 130, '_menu_item_target', ''),
(761, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(762, 130, '_menu_item_xfn', ''),
(763, 130, '_menu_item_url', ''),
(765, 131, '_menu_item_type', 'post_type'),
(766, 131, '_menu_item_menu_item_parent', '0'),
(767, 131, '_menu_item_object_id', '12'),
(768, 131, '_menu_item_object', 'page'),
(769, 131, '_menu_item_target', ''),
(770, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(771, 131, '_menu_item_xfn', ''),
(772, 131, '_menu_item_url', ''),
(774, 132, '_menu_item_type', 'post_type'),
(775, 132, '_menu_item_menu_item_parent', '0'),
(776, 132, '_menu_item_object_id', '10'),
(777, 132, '_menu_item_object', 'page'),
(778, 132, '_menu_item_target', ''),
(779, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(780, 132, '_menu_item_xfn', ''),
(781, 132, '_menu_item_url', ''),
(783, 133, '_menu_item_type', 'post_type'),
(784, 133, '_menu_item_menu_item_parent', '0'),
(785, 133, '_menu_item_object_id', '9'),
(786, 133, '_menu_item_object', 'page'),
(787, 133, '_menu_item_target', ''),
(788, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(789, 133, '_menu_item_xfn', ''),
(790, 133, '_menu_item_url', ''),
(792, 134, '_menu_item_type', 'post_type'),
(793, 134, '_menu_item_menu_item_parent', '0'),
(794, 134, '_menu_item_object_id', '8'),
(795, 134, '_menu_item_object', 'page'),
(796, 134, '_menu_item_target', ''),
(797, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(798, 134, '_menu_item_xfn', ''),
(799, 134, '_menu_item_url', ''),
(805, 149, '_wc_review_count', '0'),
(806, 149, '_wc_rating_count', 'a:0:{}'),
(807, 149, '_wc_average_rating', '0'),
(808, 149, '_edit_last', '1'),
(809, 149, '_edit_lock', '1532059959:1'),
(810, 149, '_thumbnail_id', '52'),
(811, 149, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(812, 149, '_sku', ''),
(813, 149, '_regular_price', '1500000'),
(814, 149, '_sale_price', '1280000'),
(815, 149, '_sale_price_dates_from', ''),
(816, 149, '_sale_price_dates_to', ''),
(817, 149, 'total_sales', '0'),
(818, 149, '_tax_status', 'taxable'),
(819, 149, '_tax_class', ''),
(820, 149, '_manage_stock', 'no'),
(821, 149, '_backorders', 'no'),
(822, 149, '_sold_individually', 'no'),
(823, 149, '_weight', ''),
(824, 149, '_length', ''),
(825, 149, '_width', ''),
(826, 149, '_height', ''),
(827, 149, '_upsell_ids', 'a:0:{}'),
(828, 149, '_crosssell_ids', 'a:0:{}'),
(829, 149, '_purchase_note', ''),
(830, 149, '_default_attributes', 'a:0:{}'),
(831, 149, '_virtual', 'no'),
(832, 149, '_downloadable', 'no'),
(833, 149, '_product_image_gallery', '66,58,57'),
(834, 149, '_download_limit', '-1'),
(835, 149, '_download_expiry', '-1'),
(836, 149, '_stock', NULL),
(837, 149, '_stock_status', 'instock'),
(838, 149, '_product_version', '3.4.3'),
(839, 149, '_price', '1280000'),
(840, 150, '_wc_review_count', '0'),
(841, 150, '_wc_rating_count', 'a:0:{}'),
(842, 150, '_wc_average_rating', '0'),
(843, 150, '_edit_last', '1'),
(844, 150, '_edit_lock', '1532059999:1'),
(845, 150, '_thumbnail_id', '43'),
(846, 150, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(847, 150, '_sku', ''),
(848, 150, '_regular_price', '780000'),
(849, 150, '_sale_price', '560000'),
(850, 150, '_sale_price_dates_from', ''),
(851, 150, '_sale_price_dates_to', ''),
(852, 150, 'total_sales', '0'),
(853, 150, '_tax_status', 'taxable'),
(854, 150, '_tax_class', ''),
(855, 150, '_manage_stock', 'no'),
(856, 150, '_backorders', 'no'),
(857, 150, '_sold_individually', 'no'),
(858, 150, '_weight', ''),
(859, 150, '_length', ''),
(860, 150, '_width', ''),
(861, 150, '_height', ''),
(862, 150, '_upsell_ids', 'a:0:{}'),
(863, 150, '_crosssell_ids', 'a:0:{}'),
(864, 150, '_purchase_note', ''),
(865, 150, '_default_attributes', 'a:0:{}'),
(866, 150, '_virtual', 'no'),
(867, 150, '_downloadable', 'no'),
(868, 150, '_product_image_gallery', '67,68,49'),
(869, 150, '_download_limit', '-1'),
(870, 150, '_download_expiry', '-1'),
(871, 150, '_stock', NULL),
(872, 150, '_stock_status', 'instock'),
(873, 150, '_product_version', '3.4.3'),
(874, 150, '_price', '560000'),
(875, 151, '_wc_review_count', '0'),
(876, 151, '_wc_rating_count', 'a:0:{}'),
(877, 151, '_wc_average_rating', '0'),
(878, 151, '_edit_last', '1'),
(879, 151, '_edit_lock', '1532060072:1'),
(880, 151, '_thumbnail_id', '46'),
(881, 151, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(882, 151, '_sku', ''),
(883, 151, '_regular_price', '1500000'),
(884, 151, '_sale_price', '430000'),
(885, 151, '_sale_price_dates_from', ''),
(886, 151, '_sale_price_dates_to', ''),
(887, 151, 'total_sales', '1'),
(888, 151, '_tax_status', 'taxable'),
(889, 151, '_tax_class', ''),
(890, 151, '_manage_stock', 'no'),
(891, 151, '_backorders', 'no'),
(892, 151, '_sold_individually', 'no'),
(893, 151, '_weight', ''),
(894, 151, '_length', ''),
(895, 151, '_width', ''),
(896, 151, '_height', ''),
(897, 151, '_upsell_ids', 'a:0:{}'),
(898, 151, '_crosssell_ids', 'a:0:{}'),
(899, 151, '_purchase_note', ''),
(900, 151, '_default_attributes', 'a:0:{}'),
(901, 151, '_virtual', 'no'),
(902, 151, '_downloadable', 'no'),
(903, 151, '_product_image_gallery', '47,45'),
(904, 151, '_download_limit', '-1'),
(905, 151, '_download_expiry', '-1'),
(906, 151, '_stock', NULL),
(907, 151, '_stock_status', 'instock'),
(908, 151, '_product_version', '3.4.3'),
(909, 151, '_price', '430000'),
(910, 163, '_wc_review_count', '0'),
(911, 163, '_wc_rating_count', 'a:0:{}'),
(912, 163, '_wc_average_rating', '0'),
(913, 163, '_edit_last', '1'),
(914, 163, '_edit_lock', '1532314272:1'),
(915, 164, '_wp_attached_file', '2018/07/kinh-rizoma-851-179-slide-55c9c9365afb8.jpg'),
(916, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:51:\"2018/07/kinh-rizoma-851-179-slide-55c9c9365afb8.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"kinh-rizoma-851-179-slide-55c9c9365afb8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(917, 163, '_thumbnail_id', '164'),
(918, 163, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(919, 163, '_sku', ''),
(920, 163, '_regular_price', '390000'),
(921, 163, '_sale_price', '280000'),
(922, 163, '_sale_price_dates_from', ''),
(923, 163, '_sale_price_dates_to', ''),
(924, 163, 'total_sales', '0'),
(925, 163, '_tax_status', 'taxable'),
(926, 163, '_tax_class', ''),
(927, 163, '_manage_stock', 'no'),
(928, 163, '_backorders', 'no'),
(929, 163, '_sold_individually', 'no'),
(930, 163, '_weight', ''),
(931, 163, '_length', ''),
(932, 163, '_width', ''),
(933, 163, '_height', ''),
(934, 163, '_upsell_ids', 'a:0:{}'),
(935, 163, '_crosssell_ids', 'a:0:{}'),
(936, 163, '_purchase_note', ''),
(937, 163, '_default_attributes', 'a:0:{}'),
(938, 163, '_virtual', 'no'),
(939, 163, '_downloadable', 'no'),
(940, 163, '_product_image_gallery', '164,68'),
(941, 163, '_download_limit', '-1'),
(942, 163, '_download_expiry', '-1'),
(943, 163, '_stock', NULL),
(944, 163, '_stock_status', 'instock'),
(945, 163, '_product_version', '3.4.3'),
(946, 163, '_price', '280000'),
(947, 165, '_wc_review_count', '0'),
(948, 165, '_wc_rating_count', 'a:0:{}'),
(949, 165, '_wc_average_rating', '0'),
(950, 165, '_edit_last', '1'),
(951, 165, '_edit_lock', '1532945083:1'),
(952, 166, '_wp_attached_file', '2018/07/op-dau-honda-winner-150-442-slide-products-57aad457d7bb8.jpg'),
(953, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:900;s:4:\"file\";s:68:\"2018/07/op-dau-honda-winner-150-442-slide-products-57aad457d7bb8.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:68:\"op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(954, 165, '_thumbnail_id', '166'),
(955, 165, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(956, 165, '_sku', ''),
(957, 165, '_regular_price', '1500000'),
(958, 165, '_sale_price', '430000'),
(959, 165, '_sale_price_dates_from', ''),
(960, 165, '_sale_price_dates_to', ''),
(961, 165, 'total_sales', '0'),
(962, 165, '_tax_status', 'taxable'),
(963, 165, '_tax_class', 'thue-hai-quan'),
(964, 165, '_manage_stock', 'no'),
(965, 165, '_backorders', 'no'),
(966, 165, '_sold_individually', 'no'),
(967, 165, '_weight', ''),
(968, 165, '_length', ''),
(969, 165, '_width', ''),
(970, 165, '_height', ''),
(971, 165, '_upsell_ids', 'a:0:{}'),
(972, 165, '_crosssell_ids', 'a:0:{}'),
(973, 165, '_purchase_note', ''),
(974, 165, '_default_attributes', 'a:0:{}'),
(975, 165, '_virtual', 'no'),
(976, 165, '_downloadable', 'no'),
(977, 165, '_product_image_gallery', '166,164'),
(978, 165, '_download_limit', '-1'),
(979, 165, '_download_expiry', '-1'),
(980, 165, '_stock', NULL),
(981, 165, '_stock_status', 'instock'),
(982, 165, '_product_version', '3.4.3'),
(983, 165, '_price', '430000'),
(984, 167, '_wc_review_count', '0'),
(985, 167, '_wc_rating_count', 'a:0:{}'),
(986, 167, '_wc_average_rating', '0'),
(987, 167, '_edit_last', '1'),
(988, 167, '_edit_lock', '1532314594:1'),
(989, 168, '_wp_attached_file', '2018/07/oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605.jpg'),
(990, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:540;s:4:\"file\";s:111:\"2018/07/oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:111:\"oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:111:\"oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:111:\"oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:111:\"oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:111:\"oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:111:\"oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(991, 167, '_thumbnail_id', '168'),
(992, 167, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(993, 167, '_sku', ''),
(994, 167, '_regular_price', '780000'),
(995, 167, '_sale_price', '560000'),
(996, 167, '_sale_price_dates_from', ''),
(997, 167, '_sale_price_dates_to', ''),
(998, 167, 'total_sales', '0'),
(999, 167, '_tax_status', 'taxable'),
(1000, 167, '_tax_class', ''),
(1001, 167, '_manage_stock', 'no'),
(1002, 167, '_backorders', 'no'),
(1003, 167, '_sold_individually', 'no'),
(1004, 167, '_weight', ''),
(1005, 167, '_length', ''),
(1006, 167, '_width', ''),
(1007, 167, '_height', ''),
(1008, 167, '_upsell_ids', 'a:0:{}'),
(1009, 167, '_crosssell_ids', 'a:0:{}'),
(1010, 167, '_purchase_note', ''),
(1011, 167, '_default_attributes', 'a:0:{}'),
(1012, 167, '_virtual', 'no'),
(1013, 167, '_downloadable', 'no'),
(1014, 167, '_product_image_gallery', '168,166,164'),
(1015, 167, '_download_limit', '-1'),
(1016, 167, '_download_expiry', '-1'),
(1017, 167, '_stock', NULL),
(1018, 167, '_stock_status', 'instock'),
(1019, 167, '_product_version', '3.4.3'),
(1020, 167, '_price', '560000'),
(1021, 169, '_wc_review_count', '0'),
(1022, 169, '_wc_rating_count', 'a:0:{}'),
(1023, 169, '_wc_average_rating', '0'),
(1024, 169, '_edit_last', '1'),
(1025, 169, '_edit_lock', '1532314702:1'),
(1026, 170, '_wp_attached_file', '2018/07/image.png'),
(1027, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1240;s:6:\"height\";i:1754;s:4:\"file\";s:17:\"2018/07/image.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"image-212x300.png\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"image-768x1086.png\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"image-724x1024.png\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"image-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"image-600x849.png\";s:5:\"width\";i:600;s:6:\"height\";i:849;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"image-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"image-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"image-600x849.png\";s:5:\"width\";i:600;s:6:\"height\";i:849;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"image-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1028, 169, '_thumbnail_id', '170'),
(1029, 169, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(1030, 169, '_sku', ''),
(1031, 169, '_regular_price', '1500000'),
(1032, 169, '_sale_price', '430000'),
(1033, 169, '_sale_price_dates_from', ''),
(1034, 169, '_sale_price_dates_to', ''),
(1035, 169, 'total_sales', '0'),
(1036, 169, '_tax_status', 'taxable'),
(1037, 169, '_tax_class', ''),
(1038, 169, '_manage_stock', 'no'),
(1039, 169, '_backorders', 'no'),
(1040, 169, '_sold_individually', 'no'),
(1041, 169, '_weight', ''),
(1042, 169, '_length', ''),
(1043, 169, '_width', ''),
(1044, 169, '_height', ''),
(1045, 169, '_upsell_ids', 'a:0:{}'),
(1046, 169, '_crosssell_ids', 'a:0:{}'),
(1047, 169, '_purchase_note', ''),
(1048, 169, '_default_attributes', 'a:0:{}'),
(1049, 169, '_virtual', 'no'),
(1050, 169, '_downloadable', 'no'),
(1051, 169, '_product_image_gallery', '170,47,45,46'),
(1052, 169, '_download_limit', '-1'),
(1053, 169, '_download_expiry', '-1'),
(1054, 169, '_stock', NULL),
(1055, 169, '_stock_status', 'instock'),
(1056, 169, '_product_version', '3.4.3'),
(1057, 169, '_price', '430000'),
(1058, 171, '_wc_review_count', '0'),
(1059, 171, '_wc_rating_count', 'a:0:{}'),
(1060, 171, '_wc_average_rating', '0'),
(1061, 171, '_edit_last', '1'),
(1062, 171, '_edit_lock', '1532314823:1'),
(1063, 172, '_wp_attached_file', '2018/07/nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb.jpg'),
(1064, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:82:\"2018/07/nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:82:\"nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:82:\"nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:82:\"nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:82:\"nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:82:\"nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:82:\"nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1065, 171, '_thumbnail_id', '172'),
(1066, 171, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(1067, 171, '_sku', ''),
(1068, 171, '_regular_price', '1500000'),
(1069, 171, '_sale_price', '430000'),
(1070, 171, '_sale_price_dates_from', ''),
(1071, 171, '_sale_price_dates_to', ''),
(1072, 171, 'total_sales', '0'),
(1073, 171, '_tax_status', 'taxable'),
(1074, 171, '_tax_class', ''),
(1075, 171, '_manage_stock', 'no'),
(1076, 171, '_backorders', 'no'),
(1077, 171, '_sold_individually', 'no'),
(1078, 171, '_weight', ''),
(1079, 171, '_length', ''),
(1080, 171, '_width', ''),
(1081, 171, '_height', ''),
(1082, 171, '_upsell_ids', 'a:0:{}'),
(1083, 171, '_crosssell_ids', 'a:0:{}'),
(1084, 171, '_purchase_note', ''),
(1085, 171, '_default_attributes', 'a:0:{}'),
(1086, 171, '_virtual', 'no'),
(1087, 171, '_downloadable', 'no'),
(1088, 171, '_product_image_gallery', '172,170,45'),
(1089, 171, '_download_limit', '-1'),
(1090, 171, '_download_expiry', '-1'),
(1091, 171, '_stock', NULL),
(1092, 171, '_stock_status', 'instock'),
(1093, 171, '_product_version', '3.4.3'),
(1094, 171, '_price', '430000'),
(1095, 173, '_wc_review_count', '0'),
(1096, 173, '_wc_rating_count', 'a:0:{}'),
(1097, 173, '_wc_average_rating', '0'),
(1098, 173, '_edit_last', '1'),
(1099, 173, '_edit_lock', '1532314957:1'),
(1100, 174, '_wp_attached_file', '2018/07/phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh-.jpg'),
(1101, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:64:\"2018/07/phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh-.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:65:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:64:\"phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh--100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1102, 173, '_thumbnail_id', '174'),
(1103, 173, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(1104, 173, '_sku', ''),
(1105, 173, '_regular_price', '780000'),
(1106, 173, '_sale_price', '560000'),
(1107, 173, '_sale_price_dates_from', ''),
(1108, 173, '_sale_price_dates_to', ''),
(1109, 173, 'total_sales', '0'),
(1110, 173, '_tax_status', 'taxable'),
(1111, 173, '_tax_class', ''),
(1112, 173, '_manage_stock', 'no'),
(1113, 173, '_backorders', 'no'),
(1114, 173, '_sold_individually', 'no'),
(1115, 173, '_weight', ''),
(1116, 173, '_length', ''),
(1117, 173, '_width', ''),
(1118, 173, '_height', ''),
(1119, 173, '_upsell_ids', 'a:0:{}'),
(1120, 173, '_crosssell_ids', 'a:0:{}'),
(1121, 173, '_purchase_note', ''),
(1122, 173, '_default_attributes', 'a:0:{}'),
(1123, 173, '_virtual', 'no'),
(1124, 173, '_downloadable', 'no'),
(1125, 173, '_product_image_gallery', '164,174,42'),
(1126, 173, '_download_limit', '-1'),
(1127, 173, '_download_expiry', '-1'),
(1128, 173, '_stock', NULL),
(1129, 173, '_stock_status', 'instock'),
(1130, 173, '_product_version', '3.4.3'),
(1131, 173, '_price', '560000'),
(1132, 175, '_wc_review_count', '0'),
(1133, 175, '_wc_rating_count', 'a:0:{}'),
(1134, 175, '_wc_average_rating', '0'),
(1135, 175, '_edit_last', '1'),
(1136, 175, '_edit_lock', '1532315041:1'),
(1137, 175, '_thumbnail_id', '166'),
(1138, 175, 'wc_productdata_options', 'a:1:{i:0;a:9:{s:11:\"_bubble_new\";s:0:\"\";s:12:\"_bubble_text\";s:0:\"\";s:17:\"_custom_tab_title\";s:0:\"\";s:11:\"_custom_tab\";s:0:\"\";s:14:\"_product_video\";s:0:\"\";s:19:\"_product_video_size\";s:0:\"\";s:24:\"_product_video_placement\";s:0:\"\";s:12:\"_top_content\";s:0:\"\";s:15:\"_bottom_content\";s:0:\"\";}}'),
(1139, 175, '_sku', ''),
(1140, 175, '_regular_price', '1500000'),
(1141, 175, '_sale_price', '430000'),
(1142, 175, '_sale_price_dates_from', ''),
(1143, 175, '_sale_price_dates_to', ''),
(1144, 175, 'total_sales', '0'),
(1145, 175, '_tax_status', 'taxable'),
(1146, 175, '_tax_class', ''),
(1147, 175, '_manage_stock', 'no'),
(1148, 175, '_backorders', 'no'),
(1149, 175, '_sold_individually', 'no'),
(1150, 175, '_weight', ''),
(1151, 175, '_length', ''),
(1152, 175, '_width', ''),
(1153, 175, '_height', ''),
(1154, 175, '_upsell_ids', 'a:0:{}'),
(1155, 175, '_crosssell_ids', 'a:0:{}'),
(1156, 175, '_purchase_note', ''),
(1157, 175, '_default_attributes', 'a:0:{}'),
(1158, 175, '_virtual', 'no'),
(1159, 175, '_downloadable', 'no'),
(1160, 175, '_product_image_gallery', '164,166'),
(1161, 175, '_download_limit', '-1'),
(1162, 175, '_download_expiry', '-1'),
(1163, 175, '_stock', NULL),
(1164, 175, '_stock_status', 'instock'),
(1165, 175, '_product_version', '3.4.3'),
(1166, 175, '_price', '430000'),
(1167, 5, '_thumbnail_id', ''),
(1172, 183, '_menu_item_type', 'custom'),
(1173, 183, '_menu_item_menu_item_parent', '0'),
(1174, 183, '_menu_item_object_id', '183'),
(1175, 183, '_menu_item_object', 'custom'),
(1176, 183, '_menu_item_target', ''),
(1177, 183, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1178, 183, '_menu_item_xfn', ''),
(1179, 183, '_menu_item_url', 'http://localhost/shopphukienxemay/wp-login.php?action=register'),
(1181, 184, '_menu_item_type', 'custom'),
(1182, 184, '_menu_item_menu_item_parent', '0'),
(1183, 184, '_menu_item_object_id', '184'),
(1184, 184, '_menu_item_object', 'custom'),
(1185, 184, '_menu_item_target', ''),
(1186, 184, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1187, 184, '_menu_item_xfn', ''),
(1188, 184, '_menu_item_url', '#'),
(1190, 185, '_order_key', 'wc_order_5b55765047d38'),
(1191, 185, '_customer_user', '1'),
(1192, 185, '_payment_method', 'cod'),
(1193, 185, '_payment_method_title', 'Trả tiền mặt khi nhận hàng'),
(1194, 185, '_transaction_id', ''),
(1195, 185, '_customer_ip_address', '::1'),
(1196, 185, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36'),
(1197, 185, '_created_via', 'checkout'),
(1198, 185, '_date_completed', ''),
(1199, 185, '_completed_date', ''),
(1200, 185, '_date_paid', ''),
(1201, 185, '_paid_date', ''),
(1202, 185, '_cart_hash', '28e026950e9a037d56fbd94e17464486'),
(1203, 185, '_billing_first_name', 'Hoàng'),
(1204, 185, '_billing_last_name', 'Hưng'),
(1205, 185, '_billing_company', 'Công ty Nam Việt'),
(1206, 185, '_billing_address_1', '429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM'),
(1207, 185, '_billing_address_2', ''),
(1208, 185, '_billing_city', 'TPHCM'),
(1209, 185, '_billing_state', ''),
(1210, 185, '_billing_postcode', '700000'),
(1211, 185, '_billing_country', 'VN'),
(1212, 185, '_billing_email', 'tanhieu2014@gmail.com'),
(1213, 185, '_billing_phone', '0932023992'),
(1214, 185, '_shipping_first_name', 'Hoàng'),
(1215, 185, '_shipping_last_name', 'Hưng'),
(1216, 185, '_shipping_company', 'Công ty Nam Việt'),
(1217, 185, '_shipping_address_1', '429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM'),
(1218, 185, '_shipping_address_2', ''),
(1219, 185, '_shipping_city', 'TPHCM'),
(1220, 185, '_shipping_state', ''),
(1221, 185, '_shipping_postcode', '700000'),
(1222, 185, '_shipping_country', 'VN'),
(1223, 185, '_order_currency', 'VND'),
(1224, 185, '_cart_discount', '0'),
(1225, 185, '_cart_discount_tax', '0'),
(1226, 185, '_order_shipping', '0'),
(1227, 185, '_order_shipping_tax', '0'),
(1228, 185, '_order_tax', '0'),
(1229, 185, '_order_total', '2650000'),
(1230, 185, '_order_version', '3.4.3'),
(1231, 185, '_prices_include_tax', 'no'),
(1232, 185, '_billing_address_index', 'Hoàng Hưng Công ty Nam Việt 429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM  TPHCM  700000 VN tanhieu2014@gmail.com 0932023992'),
(1233, 185, '_shipping_address_index', 'Hoàng Hưng Công ty Nam Việt 429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM  TPHCM  700000 VN'),
(1234, 185, '_download_permissions_granted', 'yes'),
(1235, 185, '_recorded_sales', 'yes'),
(1236, 185, '_recorded_coupon_usage_counts', 'yes'),
(1237, 185, '_order_stock_reduced', 'yes'),
(1238, 185, '_edit_lock', '1532327493:1'),
(1239, 185, '_edit_last', '1'),
(1243, 188, '_edit_lock', '1532440059:1'),
(1244, 188, '_edit_last', '1'),
(1245, 188, 'discount_type', 'percent'),
(1246, 188, 'coupon_amount', '10'),
(1247, 188, 'individual_use', 'yes'),
(1248, 188, 'product_ids', ''),
(1249, 188, 'exclude_product_ids', ''),
(1250, 188, 'usage_limit', '5'),
(1251, 188, 'usage_limit_per_user', '1'),
(1252, 188, 'limit_usage_to_x_items', '0'),
(1253, 188, 'usage_count', '0'),
(1254, 188, 'date_expires', '1535043600'),
(1255, 188, 'expiry_date', '2018-08-24'),
(1256, 188, 'free_shipping', 'yes'),
(1257, 188, 'product_categories', 'a:0:{}'),
(1258, 188, 'exclude_product_categories', 'a:0:{}'),
(1259, 188, 'exclude_sale_items', 'no'),
(1260, 188, 'minimum_amount', '2000000'),
(1261, 188, 'maximum_amount', ''),
(1262, 188, 'customer_email', 'a:0:{}'),
(1263, 190, '_edit_lock', '1532440357:1'),
(1264, 190, '_edit_last', '1'),
(1265, 190, 'discount_type', 'fixed_cart'),
(1266, 190, 'coupon_amount', '4000000'),
(1267, 190, 'individual_use', 'yes'),
(1268, 190, 'product_ids', ''),
(1269, 190, 'exclude_product_ids', ''),
(1270, 190, 'usage_limit', '5'),
(1271, 190, 'usage_limit_per_user', '1'),
(1272, 190, 'limit_usage_to_x_items', '0'),
(1273, 190, 'usage_count', '0'),
(1274, 190, 'date_expires', '1535043600'),
(1275, 190, 'expiry_date', '2018-08-24'),
(1276, 190, 'free_shipping', 'yes'),
(1277, 190, 'product_categories', 'a:0:{}'),
(1278, 190, 'exclude_product_categories', 'a:0:{}'),
(1279, 190, 'exclude_sale_items', 'no'),
(1280, 190, 'minimum_amount', '10000000'),
(1281, 190, 'maximum_amount', ''),
(1282, 190, 'customer_email', 'a:0:{}'),
(1283, 191, '_edit_lock', '1532440804:1'),
(1284, 191, '_edit_last', '1'),
(1285, 191, 'discount_type', 'fixed_product'),
(1286, 191, 'coupon_amount', '100000'),
(1287, 191, 'individual_use', 'yes'),
(1288, 191, 'product_ids', '175,38,165'),
(1289, 191, 'exclude_product_ids', ''),
(1290, 191, 'usage_limit', '5'),
(1291, 191, 'usage_limit_per_user', '1'),
(1292, 191, 'limit_usage_to_x_items', '0'),
(1293, 191, 'usage_count', '0'),
(1294, 191, 'date_expires', '1535043600'),
(1295, 191, 'expiry_date', '2018-08-24'),
(1296, 191, 'free_shipping', 'yes'),
(1297, 191, 'product_categories', 'a:0:{}'),
(1298, 191, 'exclude_product_categories', 'a:0:{}'),
(1299, 191, 'exclude_sale_items', 'no'),
(1300, 191, 'minimum_amount', '1000000'),
(1301, 191, 'maximum_amount', ''),
(1302, 191, 'customer_email', 'a:0:{}'),
(1303, 202, '_form', '<label> Tên của bạn (bắt buộc)\n    [text* your-name placeholder \"Làm ơn nhập họ và tên...\"] </label>\n\n<label> Số Điện Thoại\n[tel Hotline placeholder \"Làm ơn nhập số điện thoại...\"]</label>\n\n<label> Địa chỉ Email (bắt buộc)\n    [email* your-email placeholder \"Làm ơn nhập số email...\"] </label>\n\n<label> Tiêu đề:\n    [text your-subject] </label>\n\n<label> Thông điệp\n    [textarea your-message] </label>\n\n[submit \"Gửi đi\"]'),
(1304, 202, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:49:\"Shop phụ kiện xe máy online \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <tanhieu2014@gmail.com>\";s:9:\"recipient\";s:21:\"tanhieu2014@gmail.com\";s:4:\"body\";s:258:\"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1305, 202, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:49:\"Shop phụ kiện xe máy online \"[your-subject]\"\";s:6:\"sender\";s:56:\"Shop phụ kiện xe máy online <tanhieu2014@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:183:\"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\";s:18:\"additional_headers\";s:31:\"Reply-To: tanhieu2014@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1306, 202, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:53:\"Xin cảm ơn, form đã được gửi thành công.\";s:12:\"mail_sent_ng\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:16:\"validation_error\";s:86:\"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\";s:4:\"spam\";s:118:\"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\";s:12:\"accept_terms\";s:67:\"Bạn phải chấp nhận điều khoản trước khi gửi form.\";s:16:\"invalid_required\";s:28:\"Mục này là bắt buộc.\";s:16:\"invalid_too_long\";s:36:\"Nhập quá số kí tự cho phép.\";s:17:\"invalid_too_short\";s:44:\"Nhập ít hơn số kí tự tối thiểu.\";s:12:\"invalid_date\";s:46:\"Định dạng ngày tháng không hợp lệ.\";s:14:\"date_too_early\";s:58:\"Ngày này trước ngày sớm nhất được cho phép.\";s:13:\"date_too_late\";s:54:\"Ngày này quá ngày gần nhất được cho phép.\";s:13:\"upload_failed\";s:36:\"Tải file lên không thành công.\";s:24:\"upload_file_type_invalid\";s:69:\"Bạn không được phép tải lên file theo định dạng này.\";s:21:\"upload_file_too_large\";s:31:\"File kích thước quá lớn.\";s:23:\"upload_failed_php_error\";s:36:\"Tải file lên không thành công.\";s:14:\"invalid_number\";s:38:\"Định dạng số không hợp lệ.\";s:16:\"number_too_small\";s:48:\"Con số nhỏ hơn số nhỏ nhất cho phép.\";s:16:\"number_too_large\";s:48:\"Con số lớn hơn số lớn nhất cho phép.\";s:23:\"quiz_answer_not_correct\";s:30:\"Câu trả lời chưa đúng.\";s:17:\"captcha_not_match\";s:34:\"Bạn đã nhập sai mã CAPTCHA.\";s:13:\"invalid_email\";s:38:\"Địa chỉ e-mail không hợp lệ.\";s:11:\"invalid_url\";s:22:\"URL không hợp lệ.\";s:11:\"invalid_tel\";s:39:\"Số điện thoại không hợp lệ.\";}'),
(1307, 202, '_additional_settings', ''),
(1308, 202, '_locale', 'vi'),
(1309, 204, '_pum_built_in', 'default-theme'),
(1310, 204, '_pum_default_theme', '1'),
(1311, 204, 'popup_theme_overlay_background_color', '#ffffff'),
(1312, 204, 'popup_theme_overlay_background_opacity', '100'),
(1313, 204, 'popup_theme_container_padding', '18'),
(1314, 204, 'popup_theme_container_background_color', '#f9f9f9'),
(1315, 204, 'popup_theme_container_background_opacity', '100'),
(1316, 204, 'popup_theme_container_border_style', 'none'),
(1317, 204, 'popup_theme_container_border_color', '#000000'),
(1318, 204, 'popup_theme_container_border_width', '1'),
(1319, 204, 'popup_theme_container_border_radius', '0'),
(1320, 204, 'popup_theme_container_boxshadow_inset', 'no'),
(1321, 204, 'popup_theme_container_boxshadow_horizontal', '1'),
(1322, 204, 'popup_theme_container_boxshadow_vertical', '1'),
(1323, 204, 'popup_theme_container_boxshadow_blur', '3'),
(1324, 204, 'popup_theme_container_boxshadow_spread', '0'),
(1325, 204, 'popup_theme_container_boxshadow_color', '#020202'),
(1326, 204, 'popup_theme_container_boxshadow_opacity', '23'),
(1327, 204, 'popup_theme_title_font_color', '#000000'),
(1328, 204, 'popup_theme_title_line_height', '36'),
(1329, 204, 'popup_theme_title_font_size', '32'),
(1330, 204, 'popup_theme_title_font_family', 'inherit'),
(1331, 204, 'popup_theme_title_font_weight', 'inherit'),
(1332, 204, 'popup_theme_title_font_style', 'normal'),
(1333, 204, 'popup_theme_title_text_align', 'left'),
(1334, 204, 'popup_theme_title_textshadow_horizontal', '0'),
(1335, 204, 'popup_theme_title_textshadow_vertical', '0'),
(1336, 204, 'popup_theme_title_textshadow_blur', '0'),
(1337, 204, 'popup_theme_title_textshadow_color', '#020202'),
(1338, 204, 'popup_theme_title_textshadow_opacity', '23'),
(1339, 204, 'popup_theme_content_font_color', '#8c8c8c'),
(1340, 204, 'popup_theme_content_font_family', 'inherit'),
(1341, 204, 'popup_theme_content_font_weight', 'inherit'),
(1342, 204, 'popup_theme_content_font_style', 'normal'),
(1343, 204, 'popup_theme_close_text', 'CLOSE'),
(1344, 204, 'popup_theme_close_location', 'topright'),
(1345, 204, 'popup_theme_close_position_top', '0'),
(1346, 204, 'popup_theme_close_position_left', '0'),
(1347, 204, 'popup_theme_close_position_bottom', '0'),
(1348, 204, 'popup_theme_close_position_right', '0'),
(1349, 204, 'popup_theme_close_padding', '8'),
(1350, 204, 'popup_theme_close_height', '0'),
(1351, 204, 'popup_theme_close_width', '0'),
(1352, 204, 'popup_theme_close_background_color', '#00b7cd'),
(1353, 204, 'popup_theme_close_background_opacity', '100'),
(1354, 204, 'popup_theme_close_font_color', '#ffffff'),
(1355, 204, 'popup_theme_close_line_height', '14'),
(1356, 204, 'popup_theme_close_font_size', '12'),
(1357, 204, 'popup_theme_close_font_family', 'inherit'),
(1358, 204, 'popup_theme_close_font_weight', 'inherit'),
(1359, 204, 'popup_theme_close_font_style', 'normal'),
(1360, 204, 'popup_theme_close_border_style', 'none'),
(1361, 204, 'popup_theme_close_border_color', '#ffffff'),
(1362, 204, 'popup_theme_close_border_width', '1'),
(1363, 204, 'popup_theme_close_border_radius', '0'),
(1364, 204, 'popup_theme_close_boxshadow_inset', 'no'),
(1365, 204, 'popup_theme_close_boxshadow_horizontal', '0'),
(1366, 204, 'popup_theme_close_boxshadow_vertical', '0'),
(1367, 204, 'popup_theme_close_boxshadow_blur', '0'),
(1368, 204, 'popup_theme_close_boxshadow_spread', '0'),
(1369, 204, 'popup_theme_close_boxshadow_color', '#020202'),
(1370, 204, 'popup_theme_close_boxshadow_opacity', '23'),
(1371, 204, 'popup_theme_close_textshadow_horizontal', '0'),
(1372, 204, 'popup_theme_close_textshadow_vertical', '0'),
(1373, 204, 'popup_theme_close_textshadow_blur', '0'),
(1374, 204, 'popup_theme_close_textshadow_color', '#000000'),
(1375, 204, 'popup_theme_close_textshadow_opacity', '23'),
(1376, 205, 'popup_theme_overlay', 'a:2:{s:16:\"background_color\";s:7:\"#dbdbdb\";s:18:\"background_opacity\";s:2:\"60\";}'),
(1377, 205, 'popup_theme_container', 'a:14:{s:16:\"background_color\";s:7:\"#ffffff\";s:7:\"padding\";s:2:\"30\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"1\";s:12:\"border_color\";s:7:\"#1e73be\";s:12:\"border_style\";s:6:\"groove\";s:12:\"border_width\";s:1:\"5\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"4\";s:18:\"boxshadow_vertical\";s:1:\"1\";s:15:\"boxshadow_color\";s:7:\"#1e73be\";s:14:\"boxshadow_blur\";s:2:\"25\";s:17:\"boxshadow_opacity\";s:2:\"67\";s:16:\"boxshadow_spread\";s:2:\"-1\";}'),
(1378, 205, 'popup_theme_title', 'a:12:{s:11:\"line_height\";s:2:\"35\";s:9:\"font_size\";s:2:\"33\";s:11:\"font_family\";s:7:\"ABeeZee\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:6:\"center\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#dd3333\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),
(1379, 205, 'popup_theme_content', 'a:4:{s:10:\"font_color\";s:7:\"#000000\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),
(1380, 205, 'popup_theme_close', 'a:33:{s:4:\"text\";s:1:\"X\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:3:\"-24\";s:11:\"line_height\";s:2:\"26\";s:13:\"position_left\";s:1:\"0\";s:12:\"position_top\";s:3:\"-24\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:2:\"33\";s:5:\"width\";s:2:\"39\";s:9:\"font_size\";s:2:\"24\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:2:\"30\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:7:\"topleft\";s:12:\"border_style\";s:5:\"solid\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"2\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#ffffff\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:2:\"15\";s:16:\"boxshadow_spread\";s:1:\"1\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"75\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),
(1381, 205, '_pum_built_in', 'lightbox'),
(1382, 206, 'popup_theme_overlay', 'a:2:{s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"70\";}'),
(1383, 206, 'popup_theme_container', 'a:14:{s:16:\"background_color\";s:7:\"#ffffff\";s:7:\"padding\";s:2:\"28\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"5\";s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_width\";s:1:\"1\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:2:\"10\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:2:\"25\";s:17:\"boxshadow_opacity\";s:2:\"50\";s:16:\"boxshadow_spread\";s:1:\"4\";}'),
(1384, 206, 'popup_theme_title', 'a:12:{s:11:\"line_height\";s:2:\"36\";s:9:\"font_size\";s:2:\"34\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#315b7c\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),
(1385, 206, 'popup_theme_content', 'a:4:{s:10:\"font_color\";s:7:\"#2d2d2d\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),
(1386, 206, 'popup_theme_close', 'a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:1:\"8\";s:11:\"line_height\";s:2:\"20\";s:13:\"position_left\";s:1:\"0\";s:12:\"position_top\";s:1:\"8\";s:7:\"padding\";s:1:\"4\";s:6:\"height\";s:2:\"28\";s:5:\"width\";s:2:\"28\";s:9:\"font_size\";s:2:\"20\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:2:\"42\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#ffffff\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#315b7c\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"23\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),
(1387, 206, '_pum_built_in', 'enterprise-blue'),
(1388, 207, 'popup_theme_overlay', 'a:2:{s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"75\";}');
INSERT INTO `wp_shopxemaypostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1389, 207, 'popup_theme_container', 'a:14:{s:16:\"background_color\";s:7:\"#ffffff\";s:7:\"padding\";s:2:\"30\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:2:\"80\";s:12:\"border_color\";s:7:\"#81d742\";s:12:\"border_style\";s:5:\"solid\";s:12:\"border_width\";s:2:\"14\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:1:\"0\";s:17:\"boxshadow_opacity\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";}'),
(1390, 207, 'popup_theme_title', 'a:12:{s:11:\"line_height\";s:2:\"36\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:10:\"Montserrat\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#2d2d2d\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),
(1391, 207, 'popup_theme_content', 'a:4:{s:10:\"font_color\";s:7:\"#2d2d2d\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),
(1392, 207, 'popup_theme_close', 'a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:3:\"-30\";s:11:\"line_height\";s:2:\"28\";s:13:\"position_left\";s:3:\"-30\";s:12:\"position_top\";s:3:\"-30\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:1:\"0\";s:5:\"width\";s:1:\"0\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:2:\"28\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#2d2d2d\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#ffffff\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"23\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),
(1393, 207, '_pum_built_in', 'hello-box'),
(1394, 208, 'popup_theme_overlay', 'a:2:{s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"50\";}'),
(1395, 208, 'popup_theme_container', 'a:14:{s:16:\"background_color\";s:7:\"#1e73be\";s:7:\"padding\";s:2:\"18\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"0\";s:12:\"border_color\";s:7:\"#000000\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_width\";s:1:\"1\";s:15:\"boxshadow_inset\";s:2:\"no\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:2:\"10\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:2:\"25\";s:17:\"boxshadow_opacity\";s:2:\"50\";s:16:\"boxshadow_spread\";s:1:\"0\";}'),
(1396, 208, 'popup_theme_title', 'a:12:{s:11:\"line_height\";s:2:\"28\";s:9:\"font_size\";s:2:\"26\";s:11:\"font_family\";s:10:\"Sans-Serif\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#ffffff\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),
(1397, 208, 'popup_theme_content', 'a:4:{s:10:\"font_color\";s:7:\"#ffffff\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),
(1398, 208, 'popup_theme_close', 'a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:1:\"0\";s:11:\"line_height\";s:2:\"24\";s:13:\"position_left\";s:1:\"0\";s:12:\"position_top\";s:1:\"0\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:2:\"24\";s:5:\"width\";s:2:\"24\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:1:\"0\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:2:\"-1\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"1\";s:15:\"textshadow_blur\";s:1:\"1\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#1e73be\";s:20:\"boxshadow_horizontal\";s:2:\"-1\";s:18:\"boxshadow_vertical\";s:1:\"1\";s:14:\"boxshadow_blur\";s:1:\"1\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#eeee22\";s:18:\"background_opacity\";s:3:\"100\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"10\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"10\";}'),
(1399, 208, '_pum_built_in', 'cutting-edge'),
(1400, 209, 'popup_theme_overlay', 'a:2:{s:16:\"background_color\";s:7:\"#ffffff\";s:18:\"background_opacity\";s:2:\"50\";}'),
(1401, 209, 'popup_theme_container', 'a:14:{s:16:\"background_color\";s:7:\"#fffbef\";s:7:\"padding\";s:2:\"18\";s:18:\"background_opacity\";s:3:\"100\";s:13:\"border_radius\";s:1:\"0\";s:12:\"border_color\";s:7:\"#dd3333\";s:12:\"border_style\";s:6:\"outset\";s:12:\"border_width\";s:2:\"20\";s:15:\"boxshadow_inset\";s:3:\"yes\";s:20:\"boxshadow_horizontal\";s:1:\"1\";s:18:\"boxshadow_vertical\";s:1:\"1\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:14:\"boxshadow_blur\";s:1:\"3\";s:17:\"boxshadow_opacity\";s:2:\"97\";s:16:\"boxshadow_spread\";s:1:\"0\";}'),
(1402, 209, 'popup_theme_title', 'a:12:{s:11:\"line_height\";s:2:\"36\";s:9:\"font_size\";s:2:\"32\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";s:10:\"text_align\";s:4:\"left\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:18:\"textshadow_opacity\";s:2:\"23\";s:10:\"font_color\";s:7:\"#000000\";s:16:\"textshadow_color\";s:7:\"#020202\";}'),
(1403, 209, 'popup_theme_content', 'a:4:{s:10:\"font_color\";s:7:\"#2d2d2d\";s:11:\"font_family\";s:7:\"inherit\";s:11:\"font_weight\";s:0:\"\";s:10:\"font_style\";s:0:\"\";}'),
(1404, 209, 'popup_theme_close', 'a:33:{s:4:\"text\";s:2:\"×\";s:15:\"position_bottom\";s:1:\"0\";s:14:\"position_right\";s:3:\"-20\";s:11:\"line_height\";s:2:\"20\";s:13:\"position_left\";s:3:\"-20\";s:12:\"position_top\";s:3:\"-20\";s:7:\"padding\";s:1:\"0\";s:6:\"height\";s:2:\"20\";s:5:\"width\";s:2:\"20\";s:9:\"font_size\";s:2:\"20\";s:11:\"font_family\";s:4:\"Acme\";s:11:\"font_weight\";s:0:\"\";s:13:\"border_radius\";s:1:\"0\";s:10:\"font_style\";s:0:\"\";s:12:\"border_color\";s:7:\"#ffffff\";s:8:\"location\";s:8:\"topright\";s:12:\"border_style\";s:4:\"none\";s:21:\"textshadow_horizontal\";s:1:\"0\";s:12:\"border_width\";s:1:\"1\";s:19:\"textshadow_vertical\";s:1:\"0\";s:15:\"textshadow_blur\";s:1:\"0\";s:15:\"boxshadow_inset\";s:2:\"no\";s:10:\"font_color\";s:7:\"#ffffff\";s:20:\"boxshadow_horizontal\";s:1:\"0\";s:18:\"boxshadow_vertical\";s:1:\"0\";s:14:\"boxshadow_blur\";s:1:\"0\";s:16:\"boxshadow_spread\";s:1:\"0\";s:16:\"background_color\";s:7:\"#000000\";s:18:\"background_opacity\";s:2:\"55\";s:15:\"boxshadow_color\";s:7:\"#020202\";s:17:\"boxshadow_opacity\";s:2:\"23\";s:16:\"textshadow_color\";s:7:\"#000000\";s:18:\"textshadow_opacity\";s:2:\"23\";}'),
(1405, 209, '_pum_built_in', 'framed-border'),
(1406, 210, 'data_version', '3'),
(1407, 210, 'popup_open_count', '49'),
(1408, 210, '_edit_lock', '1532847429:1'),
(1409, 210, '_edit_last', '1'),
(1410, 211, '_wp_attached_file', '2018/07/popup.jpg'),
(1411, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:817;s:4:\"file\";s:17:\"2018/07/popup.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"popup-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"popup-294x300.jpg\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"popup-768x784.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:784;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"popup-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"popup-600x613.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"popup-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"popup-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"popup-600x613.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"popup-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1412, 210, 'popup_title', 'Khuyến mãi lớn ngày hè dành cho biker'),
(1413, 210, 'popup_settings', 'a:33:{s:19:\"disable_form_reopen\";b:0;s:17:\"disable_on_mobile\";b:0;s:17:\"disable_on_tablet\";b:0;s:18:\"custom_height_auto\";b:0;s:18:\"scrollable_content\";b:0;s:21:\"position_from_trigger\";b:0;s:14:\"position_fixed\";b:0;s:16:\"overlay_disabled\";b:0;s:9:\"stackable\";b:0;s:18:\"disable_reposition\";b:0;s:22:\"close_on_overlay_click\";s:1:\"1\";s:18:\"close_on_esc_press\";s:1:\"1\";s:17:\"close_on_f4_press\";b:0;s:8:\"triggers\";a:1:{i:0;a:2:{s:4:\"type\";s:9:\"auto_open\";s:8:\"settings\";a:2:{s:11:\"cookie_name\";s:0:\"\";s:5:\"delay\";s:4:\"1000\";}}}s:10:\"conditions\";a:1:{i:0;a:2:{i:0;a:1:{s:6:\"target\";s:13:\"is_front_page\";}i:1;a:1:{s:6:\"target\";s:7:\"is_shop\";}}}s:8:\"theme_id\";s:3:\"205\";s:4:\"size\";s:5:\"small\";s:20:\"responsive_min_width\";s:2:\"0%\";s:20:\"responsive_max_width\";s:4:\"100%\";s:12:\"custom_width\";s:5:\"640px\";s:13:\"custom_height\";s:5:\"380px\";s:14:\"animation_type\";s:5:\"slide\";s:15:\"animation_speed\";s:3:\"350\";s:16:\"animation_origin\";s:10:\"center top\";s:8:\"location\";s:10:\"center top\";s:12:\"position_top\";s:3:\"100\";s:15:\"position_bottom\";s:1:\"0\";s:13:\"position_left\";s:1:\"0\";s:14:\"position_right\";s:1:\"0\";s:6:\"zindex\";s:10:\"1999999999\";s:10:\"close_text\";s:1:\"X\";s:18:\"close_button_delay\";s:1:\"0\";s:7:\"cookies\";a:0:{}}'),
(1414, 210, 'popup_open_count_total', '49'),
(1415, 210, 'popup_last_opened', '1544365583'),
(1416, 205, '_edit_lock', '1532847428:1'),
(1417, 205, '_edit_last', '1'),
(1418, 205, 'popup_theme_defaults_set', 'true'),
(1419, 205, '_pum_user_modified', '1'),
(1420, 219, '_edit_lock', '1533026550:1'),
(1421, 219, '_edit_last', '1'),
(1422, 220, '_edit_lock', '1533026285:1'),
(1423, 220, '_edit_last', '1'),
(1426, 220, '_yoast_wpseo_content_score', '60'),
(1427, 220, '_yoast_wpseo_primary_category', ''),
(1428, 172, '_wp_attachment_image_alt', 'Các loại bố thắng xe'),
(1429, 222, '_edit_lock', '1533029715:1'),
(1430, 222, '_edit_last', '1'),
(1431, 166, '_wp_attachment_image_alt', 'Mua phuột xe độ giá rẻ'),
(1432, 224, '_edit_lock', '1533029715:1'),
(1433, 224, '_edit_last', '1'),
(1436, 224, '_yoast_wpseo_content_score', '60'),
(1437, 224, '_yoast_wpseo_primary_category', ''),
(1460, 232, '_menu_item_type', 'post_type'),
(1461, 232, '_menu_item_menu_item_parent', '0'),
(1462, 232, '_menu_item_object_id', '12'),
(1463, 232, '_menu_item_object', 'page'),
(1464, 232, '_menu_item_target', ''),
(1465, 232, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1466, 232, '_menu_item_xfn', ''),
(1467, 232, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayposts`
--

CREATE TABLE `wp_shopxemayposts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayposts`
--

INSERT INTO `wp_shopxemayposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-15 09:24:56', '2018-07-15 09:24:56', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-07-15 09:24:56', '2018-07-15 09:24:56', '', 0, 'http://localhost/shopphukienxemay/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-15 09:24:56', '2018-07-15 09:24:56', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/shopphukienxemay/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-07-15 09:24:56', '2018-07-15 09:24:56', '', 0, 'http://localhost/shopphukienxemay/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-15 09:24:56', '2018-07-15 09:24:56', '<h2>Who we are</h2><p>Our website address is: http://localhost/shopphukienxemay.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-07-15 09:24:56', '2018-07-15 09:24:56', '', 0, 'http://localhost/shopphukienxemay/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-15 16:34:34', '2018-07-15 09:34:34', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\" per_page=\"4\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\" per_page=\"4\"]</p>\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[ux_products type=\"row\" cat=\"19\"]\n\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-07-23 10:07:49', '2018-07-23 03:07:49', '', 0, 'http://localhost/shopphukienxemay/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-07-15 16:34:34', '2018-07-15 09:34:34', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 16:34:34', '2018-07-15 09:34:34', '', 5, 'http://localhost/shopphukienxemay/2018/07/15/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-07-15 16:37:36', '2018-07-15 09:37:36', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', 'cua-hang', '', '', '2018-07-15 16:37:36', '2018-07-15 09:37:36', '', 0, 'http://localhost/shopphukienxemay/cua-hang/', 0, 'page', '', 0),
(8, 1, '2018-07-15 16:37:36', '2018-07-15 09:37:36', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2018-07-15 16:37:36', '2018-07-15 09:37:36', '', 0, 'http://localhost/shopphukienxemay/gio-hang/', 0, 'page', '', 0),
(9, 1, '2018-07-15 16:37:37', '2018-07-15 09:37:37', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2018-07-15 16:37:37', '2018-07-15 09:37:37', '', 0, 'http://localhost/shopphukienxemay/thanh-toan/', 0, 'page', '', 0),
(10, 1, '2018-07-15 16:37:37', '2018-07-15 09:37:37', '[woocommerce_my_account]', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2018-07-15 16:37:37', '2018-07-15 09:37:37', '', 0, 'http://localhost/shopphukienxemay/tai-khoan/', 0, 'page', '', 0),
(12, 1, '2018-07-15 16:46:05', '2018-07-15 09:46:05', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2018-07-15 16:46:05', '2018-07-15 09:46:05', '', 0, 'http://localhost/shopphukienxemay/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-07-15 16:46:05', '2018-07-15 09:46:05', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-07-15 16:46:05', '2018-07-15 09:46:05', '', 12, 'http://localhost/shopphukienxemay/2018/07/15/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-07-15 16:46:49', '2018-07-15 09:46:49', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n</tr>\r\n\r\n<tr>\r\n\r\n<td>\r\n\r\n<p>Cừa hàng Shop Phụ kiện Xe máy Tân Việt</p>\r\n<p>Email: Youremail@gmail.com</p>\r\n<p>Hotline: 09090909 - 090909909</p>\r\n<p>Địa chỉ : 32 Đổ Duy Thừa,Quận 5,Tphcm</p>\r\n\r\n</td>\r\n\r\n<td>\r\n[contact-form-7 id=\"202\" title=\"Form lien hệ\"]\r\n</td>\r\n\r\n</tr>\r\n\r\n</table>\r\n', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2018-07-26 23:58:34', '2018-07-26 16:58:34', '', 0, 'http://localhost/shopphukienxemay/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-07-15 16:46:49', '2018-07-15 09:46:49', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-15 16:46:49', '2018-07-15 09:46:49', '', 14, 'http://localhost/shopphukienxemay/2018/07/15/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-07-15 16:47:03', '2018-07-15 09:47:03', '', 'Sản phẩm mới', '', 'publish', 'closed', 'closed', '', 'san-pham-moi', '', '', '2018-07-15 16:47:03', '2018-07-15 09:47:03', '', 0, 'http://localhost/shopphukienxemay/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-07-15 16:47:03', '2018-07-15 09:47:03', '', 'Sản phẩm mới', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-07-15 16:47:03', '2018-07-15 09:47:03', '', 16, 'http://localhost/shopphukienxemay/2018/07/15/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-07-15 16:55:33', '2018-07-15 09:55:33', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider', '', '', '2018-07-15 16:55:33', '2018-07-15 09:55:33', '', 0, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/slider.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-07-15 18:08:08', '2018-07-15 11:08:08', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-08-01 11:38:43', '2018-08-01 04:38:43', '', 0, 'http://localhost/shopphukienxemay/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2018-07-15 18:08:08', '2018-07-15 11:08:08', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-08-01 11:38:45', '2018-08-01 04:38:45', '', 0, 'http://localhost/shopphukienxemay/?p=22', 12, 'nav_menu_item', '', 0),
(23, 1, '2018-07-15 18:08:07', '2018-07-15 11:08:07', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-08-01 11:38:43', '2018-08-01 04:38:43', '', 0, 'http://localhost/shopphukienxemay/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-07-15 18:11:01', '2018-07-15 11:11:01', '', '50(30)', '', 'inherit', 'open', 'closed', '', '5030', '', '', '2018-07-15 18:11:01', '2018-07-15 11:11:01', '', 0, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/5030.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-07-15 18:16:05', '2018-07-15 11:16:05', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 0, 'http://localhost/shopphukienxemay/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2018-07-15 18:16:06', '2018-07-15 11:16:06', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 17, 'http://localhost/shopphukienxemay/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2018-07-15 18:16:06', '2018-07-15 11:16:06', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 21, 'http://localhost/shopphukienxemay/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2018-07-15 18:16:08', '2018-07-15 11:16:08', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 0, 'http://localhost/shopphukienxemay/?p=28', 9, 'nav_menu_item', '', 0),
(29, 1, '2018-07-15 18:16:07', '2018-07-15 11:16:07', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 0, 'http://localhost/shopphukienxemay/?p=29', 7, 'nav_menu_item', '', 0),
(30, 1, '2018-07-15 18:16:07', '2018-07-15 11:16:07', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 0, 'http://localhost/shopphukienxemay/?p=30', 8, 'nav_menu_item', '', 0),
(31, 1, '2018-07-15 18:22:45', '2018-07-15 11:22:45', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:22:45', '2018-07-15 11:22:45', '', 5, 'http://localhost/shopphukienxemay/luu-tru/31', 0, 'revision', '', 0),
(32, 1, '2018-07-15 18:25:16', '2018-07-15 11:25:16', '', '150617_093010_ron-may-phu-tung-xe-may', '', 'inherit', 'open', 'closed', '', '150617_093010_ron-may-phu-tung-xe-may', '', '', '2018-07-15 18:25:16', '2018-07-15 11:25:16', '', 0, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/150617_093010_ron-may-phu-tung-xe-may.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-07-15 18:25:17', '2018-07-15 11:25:17', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider-2', '', '', '2018-07-15 18:25:17', '2018-07-15 11:25:17', '', 0, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/slider-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-07-15 18:25:18', '2018-07-15 11:25:18', '', 'su-kien-ab-nhan-qua-600x338', '', 'inherit', 'open', 'closed', '', 'su-kien-ab-nhan-qua-600x338', '', '', '2018-07-15 18:25:18', '2018-07-15 11:25:18', '', 0, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/su-kien-ab-nhan-qua-600x338.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-07-15 18:27:57', '2018-07-15 11:27:57', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:27:57', '2018-07-15 11:27:57', '', 5, 'http://localhost/shopphukienxemay/luu-tru/35', 0, 'revision', '', 0),
(36, 1, '2018-07-15 18:32:21', '2018-07-15 11:32:21', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:32:21', '2018-07-15 11:32:21', '', 5, 'http://localhost/shopphukienxemay/luu-tru/36', 0, 'revision', '', 0),
(37, 1, '2018-07-15 18:34:07', '2018-07-15 11:34:07', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products]\n\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:34:07', '2018-07-15 11:34:07', '', 5, 'http://localhost/shopphukienxemay/luu-tru/37', 0, 'revision', '', 0),
(38, 1, '2018-07-15 18:38:46', '2018-07-15 11:38:46', 'Tay thắng IRC hàng siêu chuẩn 1;1 so với zin, thiết kế CNC rất độc đáo với 4 chế độ tăng chỉnh đưa xa gần, phụ hợp với mọi kích thước bàn tay của người lái để có thể bóp thắng chuẩn hơn, an toàn khi vận hành, không bị mỏi tay khi đi xa hoặc gần.\r\nTay thắng IRC dành cho Honda SH đi 2 thắng đĩa các đời SH150, SH300 đều gắn được.', 'Tay thắng loại 1', 'Tay thắng IRC hàng siêu chuẩn 1;1 so với zin, thiết kế CNC rất độc đáo với 4 chế độ tăng chỉnh đưa xa gần, phụ hợp với mọi kích thước bàn tay của người lái để có thể bóp thắng chuẩn hơn, an toàn khi vận hành, không bị mỏi tay khi đi xa hoặc gần.\r\nTay thắng IRC dành cho Honda SH đi 2 thắng đĩa các đời SH150, SH300 đều gắn được.', 'publish', 'open', 'closed', '', 'tay-thang-loai-1', '', '', '2018-07-15 18:38:54', '2018-07-15 11:38:54', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=38', 0, 'product', '', 1),
(39, 1, '2018-07-15 18:37:28', '2018-07-15 11:37:28', '', 'tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468', '', 'inherit', 'open', 'closed', '', 'tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468', '', '', '2018-07-15 18:37:28', '2018-07-15 11:37:28', '', 38, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-07-15 18:38:28', '2018-07-15 11:38:28', '', 'review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb', '', 'inherit', 'open', 'closed', '', 'review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb', '', '', '2018-07-15 18:38:28', '2018-07-15 11:38:28', '', 38, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/review-tay-thang-do-cho-cac-dong-xe-22-1385520169-52955c29c47bb.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-07-15 18:38:29', '2018-07-15 11:38:29', '', 'tay-thắng-biker-6-số-gãy-00-600x600', '', 'inherit', 'open', 'closed', '', 'tay-tha%cc%86ng-biker-6-so%cc%82-ga%cc%83y-00-600x600', '', '', '2018-07-15 18:38:29', '2018-07-15 11:38:29', '', 38, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/tay-thắng-biker-6-số-gãy-00-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-07-15 18:38:30', '2018-07-15 11:38:30', '', 'tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468', '', 'inherit', 'open', 'closed', '', 'tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-2', '', '', '2018-07-15 18:38:30', '2018-07-15 11:38:30', '', 38, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/tay-thang-crg-rc2-cho-ex-165-slide-products-55d44103a4468-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-07-15 18:38:31', '2018-07-15 11:38:31', '', 'tay-thang-kieu-xe-may-ab-900x900', '', 'inherit', 'open', 'closed', '', 'tay-thang-kieu-xe-may-ab-900x900', '', '', '2018-07-15 18:38:31', '2018-07-15 11:38:31', '', 38, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/tay-thang-kieu-xe-may-ab-900x900.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-07-15 18:41:12', '2018-07-15 11:41:12', 'nhớt xe máy giá rẻ', 'nhớt xe máy 1', 'nhớt xe máy giá rẻ', 'publish', 'open', 'closed', '', 'nhot-xe-may-1', '', '', '2018-07-15 18:41:19', '2018-07-15 11:41:19', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=44', 0, 'product', '', 0),
(45, 1, '2018-07-15 18:40:06', '2018-07-15 11:40:06', '', 'Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539', '', 'inherit', 'open', 'closed', '', 'nhot-xe-may-liqui-moly-molygen-5w20-8539', '', '', '2018-07-15 18:40:06', '2018-07-15 11:40:06', '', 44, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/Nhot-xe-may-Liqui-Moly-MOLYGEN-5W20-8539.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2018-07-15 18:40:51', '2018-07-15 11:40:51', '', '3525926_val', '', 'inherit', 'open', 'closed', '', '3525926_val', '', '', '2018-07-15 18:40:51', '2018-07-15 11:40:51', '', 44, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/3525926_val.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-07-15 18:40:52', '2018-07-15 11:40:52', '', 'cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b', '', 'inherit', 'open', 'closed', '', 'cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b', '', '', '2018-07-15 18:40:52', '2018-07-15 11:40:52', '', 44, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/cac-loai-dau-nhot-tot-nhat-cho-xe-may-theo-tung-phan-khuc-2273-1389692539-52d5067b7b30b.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-07-15 18:43:14', '2018-07-15 11:43:14', 'Phụ kiện cho biker 1', 'Phụ kiện cho biker 1', 'Phụ kiện cho biker 1', 'publish', 'open', 'closed', '', 'phu-kien-cho-biker-1', '', '', '2018-07-15 18:43:21', '2018-07-15 11:43:21', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2018-07-15 18:42:27', '2018-07-15 11:42:27', '', 'gang-tay-probiker-kin-ngon-di-phuot', '', 'inherit', 'open', 'closed', '', 'gang-tay-probiker-kin-ngon-di-phuot', '', '', '2018-07-15 18:42:27', '2018-07-15 11:42:27', '', 48, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/gang-tay-probiker-kin-ngon-di-phuot.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-07-15 18:43:03', '2018-07-15 11:43:03', '', 'gang-tay-ngon-cut-pro-biker-co-gu-inox-84974', '', 'inherit', 'open', 'closed', '', 'gang-tay-ngon-cut-pro-biker-co-gu-inox-84974', '', '', '2018-07-15 18:43:03', '2018-07-15 11:43:03', '', 48, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/gang-tay-ngon-cut-pro-biker-co-gu-inox-84974.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-07-15 18:43:04', '2018-07-15 11:43:04', '', 'gang-tay-probiker-kin-ngon-di-phuot', '', 'inherit', 'open', 'closed', '', 'gang-tay-probiker-kin-ngon-di-phuot-2', '', '', '2018-07-15 18:43:04', '2018-07-15 11:43:04', '', 48, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/gang-tay-probiker-kin-ngon-di-phuot-1.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-07-15 18:43:06', '2018-07-15 11:43:06', '', 'gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544', '', 'inherit', 'open', 'closed', '', 'gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544', '', '', '2018-07-15 18:43:06', '2018-07-15 11:43:06', '', 48, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/gang-tay-pro-biker-mcs-04-cut-ngon-den-5-700x544.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-07-15 18:45:19', '2018-07-15 11:45:19', 'Phuột xe máy zin', 'Phuột xe máy zin', 'Phuột xe máy zin', 'publish', 'open', 'closed', '', 'phuot-xe-may-zin', '', '', '2018-07-15 18:45:24', '2018-07-15 11:45:24', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2018-07-15 18:44:59', '2018-07-15 11:44:59', '', '20131016_f1dcebe55de505110a78228a79052014_1381914741 (1)', '', 'inherit', 'open', 'closed', '', '20131016_f1dcebe55de505110a78228a79052014_1381914741-1', '', '', '2018-07-15 18:44:59', '2018-07-15 11:44:59', '', 54, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/20131016_f1dcebe55de505110a78228a79052014_1381914741-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-07-15 18:45:00', '2018-07-15 11:45:00', '', '20131016_f1dcebe55de505110a78228a79052014_1381914741', '', 'inherit', 'open', 'closed', '', '20131016_f1dcebe55de505110a78228a79052014_1381914741', '', '', '2018-07-15 18:45:00', '2018-07-15 11:45:00', '', 54, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/20131016_f1dcebe55de505110a78228a79052014_1381914741.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-07-15 18:45:01', '2018-07-15 11:45:01', '', 'CTJIdw_simg_ab1f47_350x350_maxb', '', 'inherit', 'open', 'closed', '', 'ctjidw_simg_ab1f47_350x350_maxb', '', '', '2018-07-15 18:45:01', '2018-07-15 11:45:01', '', 54, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/CTJIdw_simg_ab1f47_350x350_maxb.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-07-15 18:45:02', '2018-07-15 11:45:02', '', 'review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d', '', 'inherit', 'open', 'closed', '', 'review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d', '', '', '2018-07-15 18:45:02', '2018-07-15 11:45:02', '', 54, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/review-cac-loai-phuoc-do-danh-cho-xe-so-cua-honda-va-suzuki-22-1386156776-529f12e8c092d.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-07-15 18:50:50', '2018-07-15 11:50:50', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:50:50', '2018-07-15 11:50:50', '', 5, 'http://localhost/shopphukienxemay/luu-tru/59', 0, 'revision', '', 0),
(60, 1, '2018-07-20 11:26:48', '2018-07-20 04:26:48', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n&nbsp;\n\n[ux_products type=\"row\"]\n\n&nbsp;\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[product_category category=\"do-choi-xe-may\"]\n\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[product_category category=\"nhot-xe-may\"]\n\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[product_category category=\"phu-kien-cho-biker\" per_page=\"2\"]\n\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[product_category category=\"phu-tung-thay-the\" per_page=\"2\"]\n\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[ux_products type=\"row\" cat=\"19\"]\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-07-20 11:26:48', '2018-07-20 04:26:48', '', 5, 'http://localhost/shopphukienxemay/luu-tru/60', 0, 'revision', '', 0),
(61, 1, '2018-07-15 18:53:48', '2018-07-15 11:53:48', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n&nbsp;\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:53:48', '2018-07-15 11:53:48', '', 5, 'http://localhost/shopphukienxemay/luu-tru/61', 0, 'revision', '', 0),
(62, 1, '2018-07-15 18:54:58', '2018-07-15 11:54:58', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:54:58', '2018-07-15 11:54:58', '', 5, 'http://localhost/shopphukienxemay/luu-tru/62', 0, 'revision', '', 0),
(63, 1, '2018-07-15 18:56:25', '2018-07-15 11:56:25', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:56:25', '2018-07-15 11:56:25', '', 5, 'http://localhost/shopphukienxemay/luu-tru/63', 0, 'revision', '', 0),
(64, 1, '2018-07-15 18:58:34', '2018-07-15 11:58:34', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 18:58:34', '2018-07-15 11:58:34', '', 5, 'http://localhost/shopphukienxemay/luu-tru/64', 0, 'revision', '', 0),
(65, 1, '2018-07-15 19:01:56', '2018-07-15 12:01:56', 'Đèn led 2 tầng cho LEAD 125 2013-2016 chính hãng ZHI.PAT thay thế cho đèn theo xe hiện nay trên thị trường vẫn đang sử dụng bóng đèn Halogen vàng với công suất tiêu thụ của các bóng Halogen từ 35W. Đèn ZIN theo xe có ánh sáng vàng truyền thống đã quá quen thuộc với người đi xe máy. Hiện nay, các công nghệ tiết kiệm điện và ánh sáng LED trắng đang được áp dụng rộng rãi cho các dòng xe thế hệ mới để đáp ứng nhu cầu của khách hàng mua xe. Ngoài ra còn là món phụ tùng thay thế khi đèn zin bị hư hỏng, cũ, vàng ố.\r\nĐèn Led 2 tầng cho LEAD 125 với thiết kế hiện đại &amp; thời trang với những thay đổi mới mẻ về diện mạo sử dụng. Hệ thống chóa 2 tầng sử dụng công nghệ LED Lighting trang bị 6 bóng led siêu sáng với ánh trắng vàng bám đường. Không gây chóa xe đối diện khi di chuyển trên đường.\r\nĐèn led 2 tầng ZHI.PAT cho Honda Lead 125 2013-2016 có 2 màu: đen, trắng và được bảo hành 12 tháng chính hãng.', 'Đèn led xe máy 520', 'Đèn led 2 tầng cho LEAD 125 2013-2016 chính hãng ZHI.PAT thay thế cho đèn theo xe hiện nay trên thị trường vẫn đang sử dụng bóng đèn Halogen vàng với công suất tiêu thụ của các bóng Halogen từ 35W. Đèn ZIN theo xe có ánh sáng vàng truyền thống đã quá quen thuộc với người đi xe máy. Hiện nay, các công nghệ tiết kiệm điện và ánh sáng LED trắng đang được áp dụng rộng rãi cho các dòng xe thế hệ mới để đáp ứng nhu cầu của khách hàng mua xe. Ngoài ra còn là món phụ tùng thay thế khi đèn zin bị hư hỏng, cũ, vàng ố.\r\nĐèn Led 2 tầng cho LEAD 125 với thiết kế hiện đại &amp; thời trang với những thay đổi mới mẻ về diện mạo sử dụng. Hệ thống chóa 2 tầng sử dụng công nghệ LED Lighting trang bị 6 bóng led siêu sáng với ánh trắng vàng bám đường. Không gây chóa xe đối diện khi di chuyển trên đường.\r\nĐèn led 2 tầng ZHI.PAT cho Honda Lead 125 2013-2016 có 2 màu: đen, trắng và được bảo hành 12 tháng chính hãng.', 'publish', 'open', 'closed', '', 'den-led-xe-may-520', '', '', '2018-07-30 16:44:32', '2018-07-30 09:44:32', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=65', 0, 'product', '', 1),
(66, 1, '2018-07-15 19:01:33', '2018-07-15 12:01:33', '', 'den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a', '', 'inherit', 'open', 'closed', '', 'den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a', '', '', '2018-07-15 19:01:33', '2018-07-15 12:01:33', '', 65, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-07-15 19:01:43', '2018-07-15 12:01:43', '', 'den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a', '', 'inherit', 'open', 'closed', '', 'den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-2', '', '', '2018-07-15 19:01:43', '2018-07-15 12:01:43', '', 65, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/den-led-2-tang-cho-lead-125-2013-2016-chinh-hang-zhipat-689-slide-products-5a78205b2fb4a-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-07-15 19:01:44', '2018-07-15 12:01:44', '', 'den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4', '', 'inherit', 'open', 'closed', '', 'den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4', '', '', '2018-07-15 19:01:44', '2018-07-15 12:01:44', '', 65, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/den-led-2-tang-cho-lead-125-mau-cu-2013-2016-chinh-hang-zhipat-689-slide-products-5a654f0a371d4.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-07-15 20:10:26', '2018-07-15 13:10:26', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 20:10:26', '2018-07-15 13:10:26', '', 5, 'http://localhost/shopphukienxemay/luu-tru/70', 0, 'revision', '', 0),
(75, 1, '2018-07-15 20:30:50', '2018-07-15 13:30:50', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-15 20:30:50', '2018-07-15 13:30:50', '', 5, 'http://localhost/shopphukienxemay/luu-tru/75', 0, 'revision', '', 0),
(76, 1, '2018-07-16 09:42:10', '2018-07-16 02:42:10', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2018-07-17 23:00:23', '2018-07-17 16:00:23', '', 0, 'http://localhost/shopphukienxemay/?p=76', 2, 'nav_menu_item', '', 0),
(83, 1, '2018-07-16 09:42:09', '2018-07-16 02:42:09', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-07-17 23:00:23', '2018-07-17 16:00:23', '', 0, 'http://localhost/shopphukienxemay/?p=83', 1, 'nav_menu_item', '', 0),
(84, 1, '2018-07-16 09:42:10', '2018-07-16 02:42:10', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=84', 3, 'nav_menu_item', '', 0),
(85, 1, '2018-07-16 09:42:11', '2018-07-16 02:42:11', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=85', 4, 'nav_menu_item', '', 0),
(86, 1, '2018-07-16 09:42:11', '2018-07-16 02:42:11', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 17, 'http://localhost/shopphukienxemay/?p=86', 5, 'nav_menu_item', '', 0),
(87, 1, '2018-07-16 09:42:12', '2018-07-16 02:42:12', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=87', 6, 'nav_menu_item', '', 0),
(88, 1, '2018-07-16 09:42:12', '2018-07-16 02:42:12', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=88', 7, 'nav_menu_item', '', 0),
(89, 1, '2018-07-16 09:51:36', '2018-07-16 02:51:36', '', 'Chế độ bảo hành', '', 'publish', 'closed', 'closed', '', 'che-do-bao-hanh', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=89', 8, 'nav_menu_item', '', 0),
(90, 1, '2018-07-16 09:52:36', '2018-07-16 02:52:36', '', 'Chế độ bảo hành yamaha', '', 'publish', 'closed', 'closed', '', 'che-do-bao-hanh-yamaha', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=90', 9, 'nav_menu_item', '', 0),
(91, 1, '2018-07-16 09:52:36', '2018-07-16 02:52:36', '', 'Chế độ bảo hành Suzuki', '', 'publish', 'closed', 'closed', '', 'che-do-bao-hanh-suzuki', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=91', 10, 'nav_menu_item', '', 0),
(92, 1, '2018-07-16 09:54:29', '2018-07-16 02:54:29', '', 'Image', '', 'publish', 'closed', 'closed', '', 'image', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=92', 11, 'nav_menu_item', '', 0),
(93, 1, '2018-07-16 12:01:41', '2018-07-16 05:01:41', '', 'Giới thiệu công ty', '', 'publish', 'closed', 'closed', '', 'gioi-thieu-cong-ty', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=93', 12, 'nav_menu_item', '', 0),
(94, 1, '2018-07-17 09:57:42', '2018-07-17 02:57:42', '', 'Sản phẩm bán chạy', '', 'publish', 'closed', 'closed', '', 'san-pham-ban-chay', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=94', 13, 'nav_menu_item', '', 0),
(97, 1, '2018-07-17 10:07:54', '2018-07-17 03:07:54', '', 'Image', '', 'publish', 'closed', 'closed', '', 'image-4', '', '', '2018-07-17 23:00:24', '2018-07-17 16:00:24', '', 0, 'http://localhost/shopphukienxemay/?p=97', 14, 'nav_menu_item', '', 0),
(98, 1, '2018-07-17 10:07:54', '2018-07-17 03:07:54', '', 'Image', '', 'publish', 'closed', 'closed', '', 'image-5', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 0, 'http://localhost/shopphukienxemay/?p=98', 15, 'nav_menu_item', '', 0),
(99, 1, '2018-07-17 11:18:00', '2018-07-17 04:18:00', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 0, 'http://localhost/shopphukienxemay/?p=99', 16, 'nav_menu_item', '', 0),
(100, 1, '2018-07-17 11:22:14', '2018-07-17 04:22:14', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 0, 'http://localhost/shopphukienxemay/?p=100', 17, 'nav_menu_item', '', 0),
(101, 1, '2018-07-17 11:22:14', '2018-07-17 04:22:14', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 38, 'http://localhost/shopphukienxemay/?p=101', 18, 'nav_menu_item', '', 0),
(102, 1, '2018-07-17 11:22:15', '2018-07-17 04:22:15', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 38, 'http://localhost/shopphukienxemay/?p=102', 19, 'nav_menu_item', '', 0);
INSERT INTO `wp_shopxemayposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2018-07-17 11:22:15', '2018-07-17 04:22:15', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 0, 'http://localhost/shopphukienxemay/?p=103', 20, 'nav_menu_item', '', 0),
(104, 1, '2018-07-17 11:22:16', '2018-07-17 04:22:16', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 0, 'http://localhost/shopphukienxemay/?p=104', 21, 'nav_menu_item', '', 0),
(105, 1, '2018-07-17 11:52:48', '2018-07-17 04:52:48', '', 'Bài viết nổi bật', '', 'publish', 'closed', 'closed', '', 'bai-viet-noi-bat', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 0, 'http://localhost/shopphukienxemay/?p=105', 22, 'nav_menu_item', '', 0),
(106, 1, '2018-07-17 11:55:02', '2018-07-17 04:55:02', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', '', '', '2018-07-17 11:55:02', '2018-07-17 04:55:02', '', 0, 'http://localhost/shopphukienxemay/?p=106', 0, 'post', '', 0),
(107, 1, '2018-07-17 11:55:02', '2018-07-17 04:55:02', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-07-17 11:55:02', '2018-07-17 04:55:02', '', 106, 'http://localhost/shopphukienxemay/luu-tru/107', 0, 'revision', '', 0),
(108, 1, '2018-07-17 11:55:21', '2018-07-17 04:55:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-2', '', '', '2018-07-17 11:55:21', '2018-07-17 04:55:21', '', 0, 'http://localhost/shopphukienxemay/?p=108', 0, 'post', '', 0),
(109, 1, '2018-07-17 11:55:21', '2018-07-17 04:55:21', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-17 11:55:21', '2018-07-17 04:55:21', '', 108, 'http://localhost/shopphukienxemay/luu-tru/109', 0, 'revision', '', 0),
(110, 1, '2018-07-17 11:55:50', '2018-07-17 04:55:50', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-3', '', '', '2018-07-17 11:55:50', '2018-07-17 04:55:50', '', 0, 'http://localhost/shopphukienxemay/?p=110', 0, 'post', '', 0),
(111, 1, '2018-07-17 11:55:50', '2018-07-17 04:55:50', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-07-17 11:55:50', '2018-07-17 04:55:50', '', 110, 'http://localhost/shopphukienxemay/luu-tru/111', 0, 'revision', '', 0),
(112, 1, '2018-07-17 11:56:13', '2018-07-17 04:56:13', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'publish', 'open', 'open', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-4', '', '', '2018-07-17 11:56:13', '2018-07-17 04:56:13', '', 0, 'http://localhost/shopphukienxemay/?p=112', 0, 'post', '', 0),
(113, 1, '2018-07-17 11:56:13', '2018-07-17 04:56:13', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. <strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-07-17 11:56:13', '2018-07-17 04:56:13', '', 112, 'http://localhost/shopphukienxemay/luu-tru/113', 0, 'revision', '', 0),
(114, 1, '2018-07-17 11:57:17', '2018-07-17 04:57:17', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2018-07-17 23:00:25', '2018-07-17 16:00:25', '', 0, 'http://localhost/shopphukienxemay/?p=114', 23, 'nav_menu_item', '', 0),
(115, 1, '2018-07-17 11:57:17', '2018-07-17 04:57:17', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2018-07-17 23:00:26', '2018-07-17 16:00:26', '', 0, 'http://localhost/shopphukienxemay/?p=115', 24, 'nav_menu_item', '', 0),
(116, 1, '2018-07-17 11:57:18', '2018-07-17 04:57:18', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2018-07-17 23:00:26', '2018-07-17 16:00:26', '', 0, 'http://localhost/shopphukienxemay/?p=116', 25, 'nav_menu_item', '', 0),
(117, 1, '2018-07-17 11:57:19', '2018-07-17 04:57:19', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2018-07-17 23:00:26', '2018-07-17 16:00:26', '', 0, 'http://localhost/shopphukienxemay/?p=117', 26, 'nav_menu_item', '', 0),
(119, 1, '2018-07-17 22:42:10', '2018-07-17 15:42:10', '<label> Họ và Tên (bắt buộc)\r\n    [text* your-name] </label>\r\n\r\n<label> Phone (bắt buộc)\r\n     [tel* tel-258]</label>\r\n\r\n<label> Email (bắt buộc)\r\n    [email* your-email] </label>\r\n\r\n<label> Tiêu đề\r\n    [text your-subject] </label>\r\n\r\n<label> Tin nhắn\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Gửi đi\"]\n1\nShop phụ kiện xe máy online \"[your-subject]\"\n[your-name] <tanhieu2014@gmail.com>\ntanhieu2014@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\nReply-To: [your-email]\n\n\n\n\nShop phụ kiện xe máy online \"[your-subject]\"\nShop phụ kiện xe máy online <tanhieu2014@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\nReply-To: tanhieu2014@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-07-17 22:45:26', '2018-07-17 15:45:26', '', 0, 'http://localhost/shopphukienxemay/?post_type=wpcf7_contact_form&#038;p=119', 0, 'wpcf7_contact_form', '', 0),
(120, 1, '2018-07-17 23:00:26', '2018-07-17 16:00:26', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2018-07-17 23:00:26', '2018-07-17 16:00:26', '', 0, 'http://localhost/shopphukienxemay/?p=120', 27, 'nav_menu_item', '', 0),
(121, 1, '2018-07-18 08:19:10', '2018-07-18 01:19:10', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-08-01 11:38:45', '2018-08-01 04:38:45', '', 0, 'http://localhost/shopphukienxemay/?p=121', 13, 'nav_menu_item', '', 0),
(122, 1, '2018-07-18 08:19:10', '2018-07-18 01:19:10', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-08-01 11:38:45', '2018-08-01 04:38:45', '', 0, 'http://localhost/shopphukienxemay/?p=122', 14, 'nav_menu_item', '', 0),
(123, 1, '2018-07-18 08:19:11', '2018-07-18 01:19:11', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2018-08-01 11:38:45', '2018-08-01 04:38:45', '', 0, 'http://localhost/shopphukienxemay/?p=123', 15, 'nav_menu_item', '', 0),
(127, 1, '2018-07-19 12:57:52', '2018-07-19 05:57:52', 'Hello {{NAME}},\r\n\r\nWe have published a new blog article on our website : {{POSTTITLE}}\r\n{{POSTIMAGE}}\r\n\r\nYou can view it from this link : {{POSTLINK}}\r\n\r\nThanks & Regards,\r\nAdmin\r\n\r\nYou received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'New Post Published - {{POSTTITLE}}', '', 'publish', 'closed', 'closed', '', 'new-post-published-posttitle', '', '', '2018-07-19 12:57:52', '2018-07-19 05:57:52', '', 0, 'http://localhost/shopphukienxemay/luu-tru/127', 0, 'es_template', '', 0),
(128, 1, '2018-07-19 12:57:52', '2018-07-19 05:57:52', '<strong style=\"color: #990000\">What can you achieve using Email Subscribers?</strong><p>Add subscription forms on website, send HTML newsletters & automatically notify subscribers about new blog posts once it is published. You can also Import or Export subscribers from any list to Email Subscribers.</p> <strong style=\"color: #990000\">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to create emails.</li> </ol> <strong>Thanks & Regards,</strong><br>Admin', 'Welcome To Email Subscribers', '', 'publish', 'closed', 'closed', '', 'welcome-to-email-subscribers', '', '', '2018-07-19 12:57:52', '2018-07-19 05:57:52', '', 0, 'http://localhost/shopphukienxemay/luu-tru/128', 0, 'es_template', '', 0),
(130, 1, '2018-07-19 13:40:29', '2018-07-19 06:40:29', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2018-07-19 13:40:29', '2018-07-19 06:40:29', '', 0, 'http://localhost/shopphukienxemay/?p=130', 5, 'nav_menu_item', '', 0),
(131, 1, '2018-07-19 13:40:26', '2018-07-19 06:40:26', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2018-07-19 13:40:26', '2018-07-19 06:40:26', '', 0, 'http://localhost/shopphukienxemay/?p=131', 2, 'nav_menu_item', '', 0),
(132, 1, '2018-07-19 13:40:28', '2018-07-19 06:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2018-07-19 13:40:28', '2018-07-19 06:40:28', '', 0, 'http://localhost/shopphukienxemay/?p=132', 4, 'nav_menu_item', '', 0),
(133, 1, '2018-07-19 13:40:28', '2018-07-19 06:40:28', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2018-07-19 13:40:28', '2018-07-19 06:40:28', '', 0, 'http://localhost/shopphukienxemay/?p=133', 3, 'nav_menu_item', '', 0),
(134, 1, '2018-07-19 13:40:26', '2018-07-19 06:40:26', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2018-07-19 13:40:26', '2018-07-19 06:40:26', '', 0, 'http://localhost/shopphukienxemay/?p=134', 1, 'nav_menu_item', '', 0),
(136, 1, '2018-07-20 10:52:45', '2018-07-20 03:52:45', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products per_page=\"2\" type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:52:45', '2018-07-20 03:52:45', '', 5, 'http://localhost/shopphukienxemay/luu-tru/136', 0, 'revision', '', 0),
(137, 1, '2018-07-20 10:53:03', '2018-07-20 03:53:03', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:53:03', '2018-07-20 03:53:03', '', 5, 'http://localhost/shopphukienxemay/luu-tru/137', 0, 'revision', '', 0),
(138, 1, '2018-07-20 10:53:18', '2018-07-20 03:53:18', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" per_page=\"1\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:53:18', '2018-07-20 03:53:18', '', 5, 'http://localhost/shopphukienxemay/luu-tru/138', 0, 'revision', '', 0),
(139, 1, '2018-07-20 10:53:32', '2018-07-20 03:53:32', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" ]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:53:32', '2018-07-20 03:53:32', '', 5, 'http://localhost/shopphukienxemay/luu-tru/139', 0, 'revision', '', 0),
(140, 1, '2018-07-20 10:53:38', '2018-07-20 03:53:38', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\" columns=\"3\" animate=\"fadeInLeft\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:53:38', '2018-07-20 03:53:38', '', 5, 'http://localhost/shopphukienxemay/luu-tru/140', 0, 'revision', '', 0),
(141, 1, '2018-07-20 10:55:35', '2018-07-20 03:55:35', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[featured_products]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:55:35', '2018-07-20 03:55:35', '', 5, 'http://localhost/shopphukienxemay/luu-tru/141', 0, 'revision', '', 0),
(142, 1, '2018-07-20 10:56:57', '2018-07-20 03:56:57', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:56:57', '2018-07-20 03:56:57', '', 5, 'http://localhost/shopphukienxemay/luu-tru/142', 0, 'revision', '', 0),
(143, 1, '2018-07-20 10:58:58', '2018-07-20 03:58:58', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n//[ux_products type=\"row\"]\r\n\r\n[products orderby=\"date\" order=\"desc\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:58:58', '2018-07-20 03:58:58', '', 5, 'http://localhost/shopphukienxemay/luu-tru/143', 0, 'revision', '', 0),
(144, 1, '2018-07-20 10:59:27', '2018-07-20 03:59:27', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:59:27', '2018-07-20 03:59:27', '', 5, 'http://localhost/shopphukienxemay/luu-tru/144', 0, 'revision', '', 0),
(145, 1, '2018-07-20 10:59:56', '2018-07-20 03:59:56', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\"]\r\n\r\n[products orderby=\"date\" order=\"desc\" per_page=\"4\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 10:59:56', '2018-07-20 03:59:56', '', 5, 'http://localhost/shopphukienxemay/luu-tru/145', 0, 'revision', '', 0),
(146, 1, '2018-07-20 11:02:07', '2018-07-20 04:02:07', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\" products=\"4\"]\n\n[products per_page=\"4\" orderby=\"date\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:02:07', '2018-07-20 04:02:07', '', 5, 'http://localhost/shopphukienxemay/luu-tru/146', 0, 'revision', '', 0),
(147, 1, '2018-07-20 11:07:03', '2018-07-20 04:07:03', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\" products=\"4\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:07:03', '2018-07-20 04:07:03', '', 5, 'http://localhost/shopphukienxemay/luu-tru/147', 0, 'revision', '', 0),
(148, 1, '2018-07-20 11:09:27', '2018-07-20 04:09:27', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:09:27', '2018-07-20 04:09:27', '', 5, 'http://localhost/shopphukienxemay/luu-tru/148', 0, 'revision', '', 0),
(149, 1, '2018-07-20 11:14:37', '2018-07-20 04:14:37', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'publish', 'open', 'closed', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-lorem-ipsum-has-been-the-industrys-standard-dummy-text-ever-since-the-1500s', '', '', '2018-07-20 11:14:43', '2018-07-20 04:14:43', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=149', 0, 'product', '', 0),
(150, 1, '2018-07-20 11:15:32', '2018-07-20 04:15:32', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'publish', 'open', 'closed', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', '', '', '2018-07-20 11:15:37', '2018-07-20 04:15:37', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=150', 0, 'product', '', 0),
(151, 1, '2018-07-20 11:16:09', '2018-07-20 04:16:09', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'publish', 'open', 'closed', '', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry-2', '', '', '2018-07-20 11:16:14', '2018-07-20 04:16:14', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 1, '2018-07-20 11:17:19', '2018-07-20 04:17:19', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n&nbsp;\r\n\r\n[ux_products type=\"slider\"]\r\n\r\n&nbsp;\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:17:19', '2018-07-20 04:17:19', '', 5, 'http://localhost/shopphukienxemay/luu-tru/152', 0, 'revision', '', 0),
(153, 1, '2018-07-20 11:17:39', '2018-07-20 04:17:39', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n&nbsp;\r\n\r\n[ux_products type=\"row\"]\r\n\r\n&nbsp;\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:17:39', '2018-07-20 04:17:39', '', 5, 'http://localhost/shopphukienxemay/luu-tru/153', 0, 'revision', '', 0),
(154, 1, '2018-07-20 11:20:01', '2018-07-20 04:20:01', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:20:01', '2018-07-20 04:20:01', '', 5, 'http://localhost/shopphukienxemay/luu-tru/154', 0, 'revision', '', 0);
INSERT INTO `wp_shopxemayposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(155, 1, '2018-07-20 11:21:05', '2018-07-20 04:21:05', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:21:05', '2018-07-20 04:21:05', '', 5, 'http://localhost/shopphukienxemay/luu-tru/155', 0, 'revision', '', 0),
(156, 1, '2018-07-20 11:23:44', '2018-07-20 04:23:44', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\"]</p>\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[ux_products type=\"row\" cat=\"19\"]\n\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:23:44', '2018-07-20 04:23:44', '', 5, 'http://localhost/shopphukienxemay/luu-tru/156', 0, 'revision', '', 0),
(157, 1, '2018-07-20 11:25:23', '2018-07-20 04:25:23', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\"]\r\n\r\n&nbsp;\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\" per_page=\"1\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" per_page=\"1\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[ux_products type=\"row\" cat=\"19\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:25:23', '2018-07-20 04:25:23', '', 5, 'http://localhost/shopphukienxemay/luu-tru/157', 0, 'revision', '', 0),
(158, 1, '2018-07-20 11:25:46', '2018-07-20 04:25:46', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\"]\r\n\r\n&nbsp;\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[ux_products type=\"row\" cat=\"19\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:25:46', '2018-07-20 04:25:46', '', 5, 'http://localhost/shopphukienxemay/luu-tru/158', 0, 'revision', '', 0),
(159, 1, '2018-07-20 11:27:12', '2018-07-20 04:27:12', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n&nbsp;\r\n\r\n[ux_products type=\"row\"]\r\n\r\n[products orderby=\"date\" order=\"desc\" per_page=\"4\"]\r\n\r\n&nbsp;\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[ux_products type=\"row\" cat=\"19\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:27:12', '2018-07-20 04:27:12', '', 5, 'http://localhost/shopphukienxemay/luu-tru/159', 0, 'revision', '', 0),
(160, 1, '2018-07-20 11:27:45', '2018-07-20 04:27:45', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[products orderby=\"date\" order=\"desc\" per_page=\"8\"]\r\n\r\n&nbsp;\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[ux_products type=\"row\" cat=\"19\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:27:45', '2018-07-20 04:27:45', '', 5, 'http://localhost/shopphukienxemay/luu-tru/160', 0, 'revision', '', 0),
(161, 1, '2018-07-20 11:28:20', '2018-07-20 04:28:20', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" per_page=\"2\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[ux_products type=\"row\" cat=\"19\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-20 11:28:20', '2018-07-20 04:28:20', '', 5, 'http://localhost/shopphukienxemay/luu-tru/161', 0, 'revision', '', 0),
(163, 1, '2018-07-23 09:53:02', '2018-07-23 02:53:02', 'Kính chiếu hậu Rizoma 851 là một trong những loại kính được ưa chuộng nhất thị trường, với kiểu dáng thể thao, nhỏ gọn nhưng vẫn đúng chuẩn khi lưu thông tại VN', 'Kính Rizoma 851Kính Rizoma 851 Kính Rizoma 851', 'Kính chiếu hậu Rizoma 851 là một trong những loại kính được ưa chuộng nhất thị trường, với kiểu dáng thể thao, nhỏ gọn nhưng vẫn đúng chuẩn khi lưu thông tại VN', 'publish', 'open', 'closed', '', 'kinh-rizoma-851kinh-rizoma-851-kinh-rizoma-851', '', '', '2018-07-23 09:53:07', '2018-07-23 02:53:07', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=163', 0, 'product', '', 0),
(164, 1, '2018-07-23 09:52:49', '2018-07-23 02:52:49', '', 'kinh-rizoma-851-179-slide-55c9c9365afb8', '', 'inherit', 'open', 'closed', '', 'kinh-rizoma-851-179-slide-55c9c9365afb8', '', '', '2018-07-23 09:52:49', '2018-07-23 02:52:49', '', 163, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/kinh-rizoma-851-179-slide-55c9c9365afb8.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2018-07-23 09:54:20', '2018-07-23 02:54:20', '<h1>Ốp đầu Honda Winner 150 trong suốt và nhiều màu khác làm cho xe trở nên cực ngầu.</h1>\r\n<h1></h1>', 'Ốp đầu Honda Winner 150', '', 'publish', 'open', 'closed', '', 'op-dau-honda-winner-150', '', '', '2018-07-30 17:01:59', '2018-07-30 10:01:59', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=165', 0, 'product', '', 0),
(166, 1, '2018-07-23 09:54:11', '2018-07-23 02:54:11', 'Mua phuột xe độ giá rẻ', 'op-dau-honda-winner-150-442-slide-products-57aad457d7bb8', 'Mua phuột xe độ giá rẻ', 'inherit', 'open', 'closed', '', 'op-dau-honda-winner-150-442-slide-products-57aad457d7bb8', '', '', '2018-07-31 15:57:05', '2018-07-31 08:57:05', '', 165, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/op-dau-honda-winner-150-442-slide-products-57aad457d7bb8.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2018-07-23 09:57:53', '2018-07-23 02:57:53', '<h1>Ốc nhớt nam châm Kozi cho Exciter 135, Exciter 150, Winner, Wave/Dream</h1>', 'Ốc nhớt nam châm Kozi cho Exciter 135, Exciter 150, Winner, Wave/Dream', '<h1>Ốc nhớt nam châm Kozi cho Exciter 135, Exciter 150, Winner, Wave/Dream</h1>', 'publish', 'open', 'closed', '', 'oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wave-dream', '', '', '2018-07-23 09:57:59', '2018-07-23 02:57:59', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=167', 0, 'product', '', 0),
(168, 1, '2018-07-23 09:57:41', '2018-07-23 02:57:41', '', 'oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605', '', 'inherit', 'open', 'closed', '', 'oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605', '', '', '2018-07-23 09:57:41', '2018-07-23 02:57:41', '', 167, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/oc-nhot-nam-cham-kozi-cho-exciter-135-exciter-150-winner-wavedream-637-slide-products-59be2c3b1f605.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2018-07-23 10:00:28', '2018-07-23 03:00:28', '<h1>Bảng tên xe Titan loại dày cao cấp cho Vario /Click /Satria</h1>', 'Nhớt xe máy', '<h1>Bảng tên xe Titan loại dày cao cấp cho Vario /Click /Satria</h1>', 'publish', 'open', 'closed', '', 'nhot-xe-may', '', '', '2018-07-23 10:00:32', '2018-07-23 03:00:32', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=169', 0, 'product', '', 0),
(170, 1, '2018-07-23 10:00:13', '2018-07-23 03:00:13', '', 'image', '', 'inherit', 'open', 'closed', '', 'image-2', '', '', '2018-07-23 10:00:13', '2018-07-23 03:00:13', '', 169, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/image.png', 0, 'attachment', 'image/png', 0),
(171, 1, '2018-07-23 10:02:05', '2018-07-23 03:02:05', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'Nhớt xe máy', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', 'publish', 'open', 'closed', '', 'nhot-xe-may-2', '', '', '2018-07-23 10:02:10', '2018-07-23 03:02:10', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=171', 0, 'product', '', 0),
(172, 1, '2018-07-23 10:01:52', '2018-07-23 03:01:52', 'Các loại bố thắng xe', 'nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb', 'Các loại bố thắng xe', 'inherit', 'open', 'closed', '', 'nhot-xe-may-cao-cap-zic-m9-10w40-1m4g3-y9yhpc_simg_ab1f47_350x350_maxb', '', '', '2018-07-31 15:37:56', '2018-07-31 08:37:56', '', 171, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/nhot-xe-may-cao-cap-zic-m9-10w40-1m4G3-y9YhpC_simg_ab1f47_350x350_maxb.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2018-07-23 10:03:50', '2018-07-23 03:03:50', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Tay thắng cho biker', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'publish', 'open', 'closed', '', 'tay-thang-cho-biker', '', '', '2018-07-23 10:04:38', '2018-07-23 03:04:38', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=173', 0, 'product', '', 0),
(174, 1, '2018-07-23 10:03:37', '2018-07-23 03:03:37', '', 'phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh-', '', 'inherit', 'open', 'closed', '', 'phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh', '', '', '2018-07-23 10:03:37', '2018-07-23 03:03:37', '', 173, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/phu-kien-do-choi-biker-chinh-hang-cao-cap-cho-xe-sh-.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2018-07-23 10:05:51', '2018-07-23 03:05:51', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'Phụ tùng 1', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', 'publish', 'open', 'closed', '', 'phu-tung-1', '', '', '2018-07-23 10:05:56', '2018-07-23 03:05:56', '', 0, 'http://localhost/shopphukienxemay/?post_type=product&#038;p=175', 0, 'product', '', 0),
(176, 1, '2018-07-23 10:06:46', '2018-07-23 03:06:46', '[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[ux_slider]\r\n\r\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\r\n\r\n[/ux_slider]\r\n\r\n[/col]\r\n\r\n[/row]\r\n[row]\r\n\r\n[col span=\"4\" span__sm=\"12\"]\r\n\r\n[ux_sidebar style=\"boxed\"]\r\n\r\n[/col]\r\n[col span=\"8\" span__sm=\"12\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\r\n\r\n[ux_products type=\"row\"]\r\n\r\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"do-choi-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"nhot-xe-may\"]\r\n\r\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-kien-cho-biker\" per_page=\"4\"]\r\n\r\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[product_category category=\"phu-tung-thay-the\" per_page=\"4\"]\r\n\r\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(81, 130, 167)\" icon=\"icon-shopping-bag\" size=\"84\"]\r\n\r\n[ux_products type=\"row\" cat=\"19\"]\r\n\r\n[/col]\r\n\r\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-23 10:06:46', '2018-07-23 03:06:46', '', 5, 'http://localhost/shopphukienxemay/luu-tru/176', 0, 'revision', '', 0),
(177, 1, '2018-07-23 10:07:49', '2018-07-23 03:07:49', '[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_image id=\"24\" image_hover=\"zoom-fade\" link=\"http://localhost/shopphukienxemay/san-pham-moi\" target=\"_blank\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[ux_slider]\n\n[ux_image id=\"34\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"33\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n[ux_image id=\"32\" height=\"250px\" image_hover=\"zoom-long\" animate=\"fadeInRight\"]\n\n\n[/ux_slider]\n\n[/col]\n\n[/row]\n[row]\n\n[col span=\"4\" span__sm=\"12\"]\n\n[ux_sidebar style=\"boxed\"]\n\n\n[/col]\n[col span=\"8\" span__sm=\"12\"]\n\n[title style=\"center\" text=\"Sản phẩm mới nhất\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\" link=\"http://localhost/shopphukienxemay/san-pham-moi\"]\n\n[ux_products type=\"row\"]\n\n[title style=\"center\" text=\"Đồ chơi xe máy\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"do-choi-xe-may\"]</p>\n[title style=\"center\" text=\"Nhớt xe máy\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"nhot-xe-may\"]</p>\n[title style=\"center\" text=\"Phụ kiện cho biker\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-kien-cho-biker\" per_page=\"4\"]</p>\n[title style=\"center\" text=\"Phụ tùng thay thế\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n<p>[product_category category=\"phu-tung-thay-the\" per_page=\"4\"]</p>\n[title style=\"center\" text=\"Sản phẩm khác\" color=\"rgb(255, 6, 0)\" icon=\"icon-shopping-bag\" size=\"84\"]\n\n[ux_products type=\"row\" cat=\"19\"]\n\n\n[/col]\n\n[/row]', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-07-23 10:07:49', '2018-07-23 03:07:49', '', 5, 'http://localhost/shopphukienxemay/luu-tru/177', 0, 'revision', '', 0),
(183, 1, '2018-07-23 13:14:22', '2018-07-23 06:14:22', '', 'Đăng ký', '', 'publish', 'closed', 'closed', '', 'dang-ky-thanh-vien', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 0, 'http://localhost/shopphukienxemay/?p=183', 10, 'nav_menu_item', '', 0),
(184, 1, '2018-07-23 13:15:53', '2018-07-23 06:15:53', '', 'Danh mục sản phẩm', '', 'publish', 'closed', 'closed', '', 'danh-muc-san-pham', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 0, 'http://localhost/shopphukienxemay/?p=184', 3, 'nav_menu_item', '', 0),
(185, 1, '2018-07-23 13:31:44', '2018-07-23 06:31:44', '', 'Order &ndash; Tháng Bảy 23, 2018 @ 01:31 Chiều', 'Giao hàng nhận tiền tại chỗ nhé.', 'wc-processing', 'closed', 'closed', 'order_5b55765051978', 'don-hang-jul-23-2018-0631-am', '', '', '2018-07-23 13:33:18', '2018-07-23 06:33:18', '', 0, 'http://localhost/shopphukienxemay/?post_type=shop_order&#038;p=185', 0, 'shop_order', '', 1),
(188, 1, '2018-07-24 20:48:55', '2018-07-24 13:48:55', '', 'h7896', 'Giảm giá phần trăm 10% trên giỏ hàng tối thiểu 2 triệu', 'publish', 'closed', 'closed', '', 'h7896', '', '', '2018-07-24 20:48:55', '2018-07-24 13:48:55', '', 0, 'http://localhost/shopphukienxemay/?post_type=shop_coupon&#038;p=188', 0, 'shop_coupon', '', 0),
(190, 1, '2018-07-24 20:52:37', '2018-07-24 13:52:37', '', 'G98465', 'Giảm giá 2 triệu cho giỏ hàng.', 'publish', 'closed', 'closed', '', 'g98465', '', '', '2018-07-24 20:54:40', '2018-07-24 13:54:40', '', 0, 'http://localhost/shopphukienxemay/?post_type=shop_coupon&#038;p=190', 0, 'shop_coupon', '', 0),
(191, 1, '2018-07-24 20:58:36', '2018-07-24 13:58:36', '', 'F7856', 'Giảm 100k trên sản phẫm xyz', 'publish', 'closed', 'closed', '', 'f7856', '', '', '2018-07-24 21:00:55', '2018-07-24 14:00:55', '', 0, 'http://localhost/shopphukienxemay/?post_type=shop_coupon&#038;p=191', 0, 'shop_coupon', '', 0),
(192, 1, '2018-07-26 23:48:13', '2018-07-26 16:48:13', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:48:13', '2018-07-26 16:48:13', '', 14, 'http://localhost/shopphukienxemay/luu-tru/192', 0, 'revision', '', 0),
(193, 1, '2018-07-26 23:54:50', '2018-07-26 16:54:50', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\n\n<table border=\"1\">\n\n<tr>\n<td>Thông tin Cửa hàng</td>\n<td>Liên hệ cửa hàng</td>\n</tr>\n\n<tr>\n<td>\n<p>Cừa hàng Shop Phụ kiện Xe máy Tân Việt</p>\n<p>Email: Youremail@gmail.com</p>\n\n</td>\n<td>2</td>\n</tr>\n\n</table>\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2018-07-26 23:54:50', '2018-07-26 16:54:50', '', 14, 'http://localhost/shopphukienxemay/luu-tru/193', 0, 'revision', '', 0),
(194, 1, '2018-07-26 23:49:42', '2018-07-26 16:49:42', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:49:42', '2018-07-26 16:49:42', '', 14, 'http://localhost/shopphukienxemay/luu-tru/194', 0, 'revision', '', 0),
(195, 1, '2018-07-26 23:51:47', '2018-07-26 16:51:47', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table>\r\n\r\n<tr>\r\n\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n</tr>\r\n\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:51:47', '2018-07-26 16:51:47', '', 14, 'http://localhost/shopphukienxemay/luu-tru/195', 0, 'revision', '', 0),
(196, 1, '2018-07-26 23:52:11', '2018-07-26 16:52:11', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n</tr>\r\n\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:52:11', '2018-07-26 16:52:11', '', 14, 'http://localhost/shopphukienxemay/luu-tru/196', 0, 'revision', '', 0),
(197, 1, '2018-07-26 23:52:46', '2018-07-26 16:52:46', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:52:46', '2018-07-26 16:52:46', '', 14, 'http://localhost/shopphukienxemay/luu-tru/197', 0, 'revision', '', 0),
(198, 1, '2018-07-26 23:53:09', '2018-07-26 16:53:09', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:53:09', '2018-07-26 16:53:09', '', 14, 'http://localhost/shopphukienxemay/luu-tru/198', 0, 'revision', '', 0),
(199, 1, '2018-07-26 23:53:47', '2018-07-26 16:53:47', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>1</td>\r\n<td>2</td>\r\n</tr>\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:53:47', '2018-07-26 16:53:47', '', 14, 'http://localhost/shopphukienxemay/luu-tru/199', 0, 'revision', '', 0),
(200, 1, '2018-07-26 23:55:33', '2018-07-26 16:55:33', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>\r\n\r\n<p>Cừa hàng Shop Phụ kiện Xe máy Tân Việt</p>\r\n<p>Email: Youremail@gmail.com</p>\r\n<p>Hotline: 09090909 - 090909909</p>\r\n<p>Địa chỉ : 32 Đổ Duy Thừa,Quận 5,Tphcm</p>\r\n\r\n</td>\r\n<td>2</td>\r\n</tr>\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:55:33', '2018-07-26 16:55:33', '', 14, 'http://localhost/shopphukienxemay/luu-tru/200', 0, 'revision', '', 0),
(201, 1, '2018-07-26 23:56:06', '2018-07-26 16:56:06', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n</tr>\r\n\r\n<tr>\r\n\r\n<td>\r\n\r\n<p>Cừa hàng Shop Phụ kiện Xe máy Tân Việt</p>\r\n<p>Email: Youremail@gmail.com</p>\r\n<p>Hotline: 09090909 - 090909909</p>\r\n<p>Địa chỉ : 32 Đổ Duy Thừa,Quận 5,Tphcm</p>\r\n\r\n</td>\r\n\r\n<td>\r\n\r\n</td>\r\n\r\n</tr>\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:56:06', '2018-07-26 16:56:06', '', 14, 'http://localhost/shopphukienxemay/luu-tru/201', 0, 'revision', '', 0),
(202, 1, '2018-07-26 23:57:50', '2018-07-26 16:57:50', '<label> Tên của bạn (bắt buộc)\r\n    [text* your-name placeholder \"Làm ơn nhập họ và tên...\"] </label>\r\n\r\n<label> Số Điện Thoại\r\n[tel Hotline placeholder \"Làm ơn nhập số điện thoại...\"]</label>\r\n\r\n<label> Địa chỉ Email (bắt buộc)\r\n    [email* your-email placeholder \"Làm ơn nhập số email...\"] </label>\r\n\r\n<label> Tiêu đề:\r\n    [text your-subject] </label>\r\n\r\n<label> Thông điệp\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Gửi đi\"]\n1\nShop phụ kiện xe máy online \"[your-subject]\"\n[your-name] <tanhieu2014@gmail.com>\ntanhieu2014@gmail.com\nGửi đến từ: [your-name] <[your-email]>\r\nTiêu đề: [your-subject]\r\n\r\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\nReply-To: [your-email]\n\n\n\n\nShop phụ kiện xe máy online \"[your-subject]\"\nShop phụ kiện xe máy online <tanhieu2014@gmail.com>\n[your-email]\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website Shop phụ kiện xe máy online (http://localhost/shopphukienxemay)\nReply-To: tanhieu2014@gmail.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.', 'Form lien hệ', '', 'publish', 'closed', 'closed', '', 'form-lien-he', '', '', '2018-07-27 00:00:58', '2018-07-26 17:00:58', '', 0, 'http://localhost/shopphukienxemay/?post_type=wpcf7_contact_form&#038;p=202', 0, 'wpcf7_contact_form', '', 0),
(203, 1, '2018-07-26 23:58:34', '2018-07-26 16:58:34', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5671556131533!2d106.66068088866282!3d10.801023647357393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529308cd1801d%3A0x62a8034b76013218!2zMzg0LCA4IEPhu5luZyBIw7JhLCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1532623630261\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<table border=\"1\">\r\n\r\n<tr>\r\n<td>Thông tin Cửa hàng</td>\r\n<td>Liên hệ cửa hàng</td>\r\n</tr>\r\n\r\n<tr>\r\n\r\n<td>\r\n\r\n<p>Cừa hàng Shop Phụ kiện Xe máy Tân Việt</p>\r\n<p>Email: Youremail@gmail.com</p>\r\n<p>Hotline: 09090909 - 090909909</p>\r\n<p>Địa chỉ : 32 Đổ Duy Thừa,Quận 5,Tphcm</p>\r\n\r\n</td>\r\n\r\n<td>\r\n[contact-form-7 id=\"202\" title=\"Form lien hệ\"]\r\n</td>\r\n\r\n</tr>\r\n\r\n</table>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-26 23:58:34', '2018-07-26 16:58:34', '', 14, 'http://localhost/shopphukienxemay/luu-tru/203', 0, 'revision', '', 0),
(204, 1, '2018-07-29 13:01:08', '2018-07-29 06:01:08', '', 'Default Theme', '', 'publish', 'closed', 'closed', '', 'default-theme', '', '', '2018-07-29 13:01:08', '2018-07-29 06:01:08', '', 0, 'http://localhost/shopphukienxemay/luu-tru/popup_theme/default-theme', 0, 'popup_theme', '', 0),
(205, 1, '2018-07-29 13:01:13', '2018-07-29 06:01:13', '', 'Light Box', '', 'publish', 'closed', 'closed', '', 'lightbox', '', '', '2018-07-29 13:11:42', '2018-07-29 06:11:42', '', 0, 'http://localhost/shopphukienxemay/luu-tru/popup_theme/lightbox', 0, 'popup_theme', '', 0),
(206, 1, '2018-07-29 13:01:13', '2018-07-29 06:01:13', '', 'Enterprise Blue', '', 'publish', 'closed', 'closed', '', 'enterprise-blue', '', '', '2018-07-29 13:01:13', '2018-07-29 06:01:13', '', 0, 'http://localhost/shopphukienxemay/luu-tru/popup_theme/enterprise-blue', 0, 'popup_theme', '', 0),
(207, 1, '2018-07-29 13:01:14', '2018-07-29 06:01:14', '', 'Hello Box', '', 'publish', 'closed', 'closed', '', 'hello-box', '', '', '2018-07-29 13:01:14', '2018-07-29 06:01:14', '', 0, 'http://localhost/shopphukienxemay/luu-tru/popup_theme/hello-box', 0, 'popup_theme', '', 0),
(208, 1, '2018-07-29 13:01:14', '2018-07-29 06:01:14', '', 'Cutting Edge', '', 'publish', 'closed', 'closed', '', 'cutting-edge', '', '', '2018-07-29 13:01:14', '2018-07-29 06:01:14', '', 0, 'http://localhost/shopphukienxemay/luu-tru/popup_theme/cutting-edge', 0, 'popup_theme', '', 0),
(209, 1, '2018-07-29 13:01:14', '2018-07-29 06:01:14', '', 'Framed Border', '', 'publish', 'closed', 'closed', '', 'framed-border', '', '', '2018-07-29 13:01:14', '2018-07-29 06:01:14', '', 0, 'http://localhost/shopphukienxemay/luu-tru/popup_theme/framed-border', 0, 'popup_theme', '', 0),
(210, 1, '2018-07-29 13:04:26', '2018-07-29 06:04:26', '<h3 style=\"text-align: center;\"><strong>Ngày khuyến mãi : 29/07 cho đến ngày 29/08/2018</strong>\r\n<img class=\"alignnone size-medium wp-image-211\" src=\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/popup-294x300.jpg\" alt=\"\" width=\"100%\" height=\"300\" /></h3>', 'Khuyến mãi biker hè lớn', '', 'publish', 'closed', 'closed', '', 'khuyen-mai-biker-he-lon', '', '', '2018-07-29 13:23:25', '2018-07-29 06:23:25', '', 0, 'http://localhost/shopphukienxemay/?post_type=popup&#038;p=210', 0, 'popup', '', 0),
(211, 1, '2018-07-29 13:03:59', '2018-07-29 06:03:59', '', 'popup', '', 'inherit', 'open', 'closed', '', 'popup', '', '', '2018-07-29 13:03:59', '2018-07-29 06:03:59', '', 0, 'http://localhost/shopphukienxemay/wp-content/uploads/2018/07/popup.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2018-07-29 13:04:26', '2018-07-29 06:04:26', '<img src=\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/popup-294x300.jpg\" alt=\"\" width=\"500\" height=\"300\" class=\"alignnone size-medium wp-image-211\" />', 'Khuyến mãi biker hè lớn', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-07-29 13:04:26', '2018-07-29 06:04:26', '', 210, 'http://localhost/shopphukienxemay/luu-tru/212', 0, 'revision', '', 0),
(213, 1, '2018-07-29 13:11:42', '2018-07-29 06:11:42', '', 'Light Box', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2018-07-29 13:11:42', '2018-07-29 06:11:42', '', 205, 'http://localhost/shopphukienxemay/luu-tru/213', 0, 'revision', '', 0),
(214, 1, '2018-07-29 13:13:12', '2018-07-29 06:13:12', '<img src=\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/popup-294x300.jpg\" alt=\"\" width=\"400\" height=\"300\" class=\"alignnone size-medium wp-image-211\" />', 'Khuyến mãi biker hè lớn', '', 'inherit', 'closed', 'closed', '', '210-autosave-v1', '', '', '2018-07-29 13:13:12', '2018-07-29 06:13:12', '', 210, 'http://localhost/shopphukienxemay/luu-tru/214', 0, 'revision', '', 0),
(215, 1, '2018-07-29 13:15:24', '2018-07-29 06:15:24', '<img src=\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/popup-294x300.jpg\" alt=\"\" width=\"400\" height=\"300\" class=\"alignnone size-medium wp-image-211\" />', 'Khuyến mãi biker hè lớn', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-07-29 13:15:24', '2018-07-29 06:15:24', '', 210, 'http://localhost/shopphukienxemay/luu-tru/215', 0, 'revision', '', 0),
(216, 1, '2018-07-29 13:16:02', '2018-07-29 06:16:02', '<img src=\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/popup-294x300.jpg\" alt=\"\" width=\"100%\" height=\"300\" class=\"alignnone size-medium wp-image-211\" />', 'Khuyến mãi biker hè lớn', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-07-29 13:16:02', '2018-07-29 06:16:02', '', 210, 'http://localhost/shopphukienxemay/luu-tru/216', 0, 'revision', '', 0),
(217, 1, '2018-07-29 13:17:09', '2018-07-29 06:17:09', '<h3 style=\"text-align: center;\"><strong>Ngày khuyến mãi : 29/07 cho đến ngày 29/08/2018</strong>\r\n<img class=\"alignnone size-medium wp-image-211\" src=\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/popup-294x300.jpg\" alt=\"\" width=\"100%\" height=\"300\" /></h3>', 'Khuyến mãi biker hè lớn', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-07-29 13:17:09', '2018-07-29 06:17:09', '', 210, 'http://localhost/shopphukienxemay/luu-tru/217', 0, 'revision', '', 0),
(219, 1, '2018-07-31 15:42:30', '0000-00-00 00:00:00', '', 'Các loại bố thắng xe', '', 'draft', 'open', 'open', '', '', '', '', '2018-07-31 15:42:30', '2018-07-31 08:42:30', '', 0, 'http://localhost/shopphukienxemay/?p=219', 0, 'post', '', 0),
(220, 1, '2018-07-31 15:35:05', '2018-07-31 08:35:05', 'external link', 'external link', '', 'publish', 'open', 'open', '', 'external-link', '', '', '2018-07-31 15:35:05', '2018-07-31 08:35:05', '', 0, 'http://localhost/shopphukienxemay/?p=220', 0, 'post', '', 0),
(221, 1, '2018-07-31 15:35:05', '2018-07-31 08:35:05', 'external link', 'external link', '', 'inherit', 'closed', 'closed', '', '220-revision-v1', '', '', '2018-07-31 15:35:05', '2018-07-31 08:35:05', '', 220, 'http://localhost/shopphukienxemay/luu-tru/221', 0, 'revision', '', 0);
INSERT INTO `wp_shopxemayposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(222, 1, '2018-07-31 16:02:47', '0000-00-00 00:00:00', '<h1 style=\"text-align: center;\">Mua phuộc độ xe giá rẻ</h1>\n<h4><strong>Mua phuộc xe giá rẻ . suốt nhất hiện nay.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Mua phuộc xe giá rẻ</strong></h4>\nMua phuột xe độ giá rẻ . text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<strong>Mua phuộc xe giá rẻ</strong> It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard <strong>Mua phuộc xe giá rẻ</strong> dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.when an unknown printer took a galley of type and scrambled it to make a type specimen book<strong>Mua phuộc xe giá rẻ</strong>. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised<strong>Mua phuộc xe giá rẻ</strong> in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n[caption id=\"attachment_166\" align=\"alignnone\" width=\"300\"]<img class=\"wp-image-166 size-medium\" src=\"http://localhost/shopphukienxemay/wp-content/uploads/2018/07/op-dau-honda-winner-150-442-slide-products-57aad457d7bb8-300x300.jpg\" alt=\"Mua phuột xe độ giá rẻ\" width=\"300\" height=\"300\" /> Mua phuột xe độ giá rẻ[/caption]\n\nXin mời các bạn mua tại shop <strong>outbound link</strong> : <a href=\"http://shop2banh.vn\">shop2banh.com</a>\n\nXin mời các bạn xem bai viet mới về <a href=\"http://localhost/shopphukienxemay/?p=224&amp;preview=true\">cách lựa chọn phuộc xe chất lượng </a>\n\n&nbsp;', 'Mua phuột xe giá rẻ', '', 'draft', 'open', 'open', '', '', '', '', '2018-07-31 16:02:47', '2018-07-31 09:02:47', '', 0, 'http://localhost/shopphukienxemay/?p=222', 0, 'post', '', 0),
(224, 1, '2018-07-31 15:58:53', '2018-07-31 08:58:53', 'Cách choạn lựa phuộc tốt', 'Cách choạn lựa phuộc tốt', '', 'publish', 'open', 'open', '', 'cach-choan-lua-phuoc-tot', '', '', '2018-07-31 15:58:53', '2018-07-31 08:58:53', '', 0, 'http://localhost/shopphukienxemay/?p=224', 0, 'post', '', 0),
(225, 1, '2018-07-31 15:58:53', '2018-07-31 08:58:53', 'Cách choạn lựa phuộc tốt', 'Cách choạn lựa phuộc tốt', '', 'inherit', 'closed', 'closed', '', '224-revision-v1', '', '', '2018-07-31 15:58:53', '2018-07-31 08:58:53', '', 224, 'http://localhost/shopphukienxemay/luu-tru/225', 0, 'revision', '', 0),
(232, 1, '2018-08-01 11:38:44', '2018-08-01 04:38:44', ' ', '', '', 'publish', 'closed', 'closed', '', '232', '', '', '2018-08-01 11:38:44', '2018-08-01 04:38:44', '', 0, 'http://localhost/shopphukienxemay/?p=232', 11, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaytermmeta`
--

CREATE TABLE `wp_shopxemaytermmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaytermmeta`
--

INSERT INTO `wp_shopxemaytermmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'display_type', ''),
(3, 17, 'thumbnail_id', '24'),
(4, 18, 'order', '0'),
(5, 18, 'display_type', ''),
(6, 18, 'thumbnail_id', '24'),
(7, 19, 'order', '0'),
(8, 19, 'display_type', ''),
(9, 19, 'thumbnail_id', '24'),
(10, 20, 'order', '0'),
(11, 20, 'display_type', ''),
(12, 20, 'thumbnail_id', '24'),
(13, 21, 'order', '0'),
(14, 21, 'display_type', ''),
(15, 21, 'thumbnail_id', '24'),
(16, 21, 'cat_meta', 'a:2:{s:10:\"cat_header\";s:0:\"\";s:10:\"cat_footer\";s:0:\"\";}'),
(17, 22, 'order', '0'),
(18, 22, 'display_type', ''),
(19, 22, 'thumbnail_id', '24'),
(20, 17, 'product_count_product_cat', '4'),
(21, 21, 'product_count_product_cat', '4'),
(22, 23, 'product_count_product_tag', '1'),
(23, 24, 'product_count_product_tag', '1'),
(24, 25, 'product_count_product_tag', '1'),
(25, 19, 'product_count_product_cat', '4'),
(26, 26, 'product_count_product_tag', '1'),
(27, 27, 'product_count_product_tag', '1'),
(28, 20, 'product_count_product_cat', '4'),
(29, 28, 'product_count_product_tag', '1'),
(30, 29, 'product_count_product_tag', '1'),
(31, 18, 'product_count_product_cat', '4'),
(32, 30, 'product_count_product_tag', '1'),
(33, 31, 'product_count_product_tag', '1'),
(34, 32, 'product_count_product_tag', '1'),
(35, 33, 'product_count_product_tag', '1'),
(36, 34, 'product_count_product_tag', '1'),
(37, 42, 'product_count_product_tag', '3'),
(38, 43, 'product_count_product_tag', '1'),
(39, 22, 'product_count_product_cat', '1'),
(40, 44, 'product_count_product_tag', '1'),
(41, 45, 'product_count_product_tag', '1'),
(42, 46, 'product_count_product_tag', '1'),
(43, 47, 'product_count_product_tag', '1'),
(44, 48, 'product_count_product_tag', '1'),
(45, 49, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayterms`
--

CREATE TABLE `wp_shopxemayterms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayterms`
--

INSERT INTO `wp_shopxemayterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Chưa phân loại', 'chua-phan-loai', 0),
(16, 'Menu Ngang', 'menu-ngang', 0),
(17, 'Đồ chơi xe máy', 'do-choi-xe-may', 0),
(18, 'Phụ tùng thay thế', 'phu-tung-thay-the', 0),
(19, 'Nhớt xe máy', 'nhot-xe-may', 0),
(20, 'Phụ kiện cho biker', 'phu-kien-cho-biker', 0),
(21, 'Tay thắng', 'tay-thang', 0),
(22, 'Tay thắng xe số', 'tay-thang-xe-so', 0),
(23, 'tay thang xe so', 'tay-thang-xe-so', 0),
(24, 'tay thang dep', 'tay-thang-dep', 0),
(25, 'tay thang gia re', 'tay-thang-gia-re', 0),
(26, 'nhot xe máy gia re', 'nhot-xe-may-gia-re', 0),
(27, 'nhot xe máy ngoai nhap', 'nhot-xe-may-ngoai-nhap', 0),
(28, 'phu kien bider chat', 'phu-kien-bider-chat', 0),
(29, 'phu kien biker ngon', 'phu-kien-biker-ngon', 0),
(30, 'phu tung xe may', 'phu-tung-xe-may', 0),
(31, 'den led yamaha', 'den-led-yamaha', 0),
(32, 'den led chinh hãng', 'den-led-chinh-hang', 0),
(33, 'den led biker', 'den-led-biker', 0),
(34, 'den led loai 1', 'den-led-loai-1', 0),
(35, 'Vertical Menu', 'vertical-menu', 0),
(36, 'Xe máy', 'xe-may', 0),
(37, 'Đua Xe F1', 'dua-xe-f1', 0),
(38, 'Độ xe', 'do-xe', 0),
(39, 'Lắp ráp xe độ', 'lap-rap-xe-do', 0),
(40, 'Lựa chọn phụ kiện', 'lua-chon-phu-kien', 0),
(41, 'Top Bar Menu', 'top-bar-menu', 0),
(42, 'phu tung', 'phu-tung', 0),
(43, 'tay thắng', 'tay-thang', 0),
(44, 'op dau xe máy', 'op-dau-xe-may', 0),
(45, 'oc nhot xe máy', 'oc-nhot-xe-may', 0),
(46, 'Nhớt xe', 'nhot-xe', 0),
(47, 'Nhớt xe máy', 'nhot-xe-may', 0),
(48, 'Tay thắng biker', 'tay-thang-biker', 0),
(49, 'Phụ tùng cho biker', 'phu-tung-cho-biker', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayterm_relationships`
--

CREATE TABLE `wp_shopxemayterm_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayterm_relationships`
--

INSERT INTO `wp_shopxemayterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 16, 0),
(22, 16, 0),
(23, 16, 0),
(25, 16, 0),
(26, 16, 0),
(27, 16, 0),
(28, 16, 0),
(29, 16, 0),
(30, 16, 0),
(38, 2, 0),
(38, 12, 0),
(38, 17, 0),
(38, 21, 0),
(38, 23, 0),
(38, 24, 0),
(38, 25, 0),
(44, 2, 0),
(44, 19, 0),
(44, 26, 0),
(44, 27, 0),
(48, 2, 0),
(48, 20, 0),
(48, 28, 0),
(48, 29, 0),
(54, 2, 0),
(54, 18, 0),
(54, 30, 0),
(65, 2, 0),
(65, 14, 0),
(65, 18, 0),
(65, 31, 0),
(65, 32, 0),
(65, 33, 0),
(65, 34, 0),
(76, 35, 0),
(83, 35, 0),
(84, 35, 0),
(85, 35, 0),
(86, 35, 0),
(87, 35, 0),
(88, 35, 0),
(89, 35, 0),
(90, 35, 0),
(91, 35, 0),
(92, 35, 0),
(93, 35, 0),
(94, 35, 0),
(97, 35, 0),
(98, 35, 0),
(99, 35, 0),
(100, 35, 0),
(101, 35, 0),
(102, 35, 0),
(103, 35, 0),
(104, 35, 0),
(105, 35, 0),
(106, 37, 0),
(108, 38, 0),
(110, 36, 0),
(112, 39, 0),
(114, 35, 0),
(115, 35, 0),
(116, 35, 0),
(117, 35, 0),
(120, 35, 0),
(121, 16, 0),
(122, 16, 0),
(123, 16, 0),
(130, 41, 0),
(131, 41, 0),
(132, 41, 0),
(133, 41, 0),
(134, 41, 0),
(149, 2, 0),
(149, 20, 0),
(149, 42, 0),
(150, 2, 0),
(150, 18, 0),
(150, 20, 0),
(150, 42, 0),
(151, 2, 0),
(151, 19, 0),
(151, 42, 0),
(163, 2, 0),
(163, 17, 0),
(163, 21, 0),
(163, 43, 0),
(165, 2, 0),
(165, 17, 0),
(165, 22, 0),
(165, 44, 0),
(167, 2, 0),
(167, 17, 0),
(167, 21, 0),
(167, 45, 0),
(169, 2, 0),
(169, 19, 0),
(169, 46, 0),
(171, 2, 0),
(171, 19, 0),
(171, 47, 0),
(173, 2, 0),
(173, 20, 0),
(173, 48, 0),
(175, 2, 0),
(175, 18, 0),
(175, 49, 0),
(183, 16, 0),
(184, 16, 0),
(219, 1, 0),
(220, 1, 0),
(222, 1, 0),
(224, 1, 0),
(232, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayterm_taxonomy`
--

CREATE TABLE `wp_shopxemayterm_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayterm_taxonomy`
--

INSERT INTO `wp_shopxemayterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 15),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 1),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 1),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 15),
(17, 17, 'product_cat', '', 0, 4),
(18, 18, 'product_cat', '', 0, 4),
(19, 19, 'product_cat', '', 0, 4),
(20, 20, 'product_cat', '', 0, 4),
(21, 21, 'product_cat', '', 17, 3),
(22, 22, 'product_cat', '', 21, 1),
(23, 23, 'product_tag', '', 0, 1),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'product_tag', '', 0, 1),
(26, 26, 'product_tag', '', 0, 1),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 1),
(31, 31, 'product_tag', '', 0, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 1),
(35, 35, 'nav_menu', '', 0, 27),
(36, 36, 'category', '', 0, 1),
(37, 37, 'category', '', 0, 1),
(38, 38, 'category', '', 0, 1),
(39, 39, 'category', '', 38, 1),
(40, 40, 'category', '', 38, 0),
(41, 41, 'nav_menu', '', 0, 5),
(42, 42, 'product_tag', '', 0, 3),
(43, 43, 'product_tag', '', 0, 1),
(44, 44, 'product_tag', '', 0, 1),
(45, 45, 'product_tag', '', 0, 1),
(46, 46, 'product_tag', '', 0, 1),
(47, 47, 'product_tag', '', 0, 1),
(48, 48, 'product_tag', '', 0, 1),
(49, 49, 'product_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaytp_image_optimizer`
--

CREATE TABLE `wp_shopxemaytp_image_optimizer` (
  `id` mediumint(9) NOT NULL,
  `size_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_id` mediumint(10) NOT NULL,
  `origin_size` mediumint(10) NOT NULL,
  `current_size` mediumint(10) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaytp_image_optimizer`
--

INSERT INTO `wp_shopxemaytp_image_optimizer` (`id`, `size_name`, `attachment_id`, `origin_size`, `current_size`, `status`) VALUES
(1, 'full', 20, 5615, 5615, 'pending'),
(2, 'full', 24, 148051, 148051, 'pending'),
(3, 'full', 32, 145945, 145945, 'pending'),
(4, 'full', 33, 153720, 153720, 'pending'),
(5, 'full', 34, 50649, 50649, 'pending'),
(6, 'full', 39, 109363, 109363, 'pending'),
(7, 'full', 40, 175828, 175828, 'pending'),
(8, 'full', 41, 41128, 41128, 'pending'),
(9, 'full', 42, 109363, 109363, 'pending'),
(10, 'full', 43, 47617, 47617, 'pending'),
(11, 'full', 45, 467889, 467889, 'pending'),
(12, 'full', 46, 10617, 10617, 'pending'),
(13, 'full', 47, 49379, 49379, 'pending'),
(14, 'full', 49, 509364, 509364, 'pending'),
(15, 'full', 50, 190764, 190764, 'pending'),
(16, 'full', 51, 509364, 509364, 'pending'),
(17, 'full', 52, 81979, 81979, 'pending'),
(18, 'full', 55, 204353, 204353, 'pending'),
(19, 'full', 56, 204353, 204353, 'pending'),
(20, 'full', 57, 34066, 34066, 'pending'),
(21, 'full', 58, 128434, 128434, 'pending'),
(22, 'full', 66, 152679, 152679, 'pending'),
(23, 'full', 67, 152679, 152679, 'pending'),
(24, 'full', 68, 321697, 321697, 'pending'),
(25, 'full', 164, 230244, 230244, 'pending'),
(26, 'full', 166, 464460, 464460, 'pending'),
(27, 'full', 168, 209257, 209257, 'pending'),
(28, 'full', 170, 1882409, 1882409, 'pending'),
(29, 'full', 172, 21414, 21414, 'pending'),
(30, 'full', 174, 476242, 476242, 'pending'),
(31, 'full', 211, 289478, 289478, 'error'),
(32, 'thumbnail', 211, 8323, 8323, 'pending'),
(33, 'medium', 211, 23342, 23342, 'pending'),
(34, 'thumbnail', 56, 5822, 5822, 'pending'),
(35, 'medium', 56, 15343, 15343, 'pending'),
(36, 'woocommerce_thumbnail', 56, 15343, 15343, 'pending'),
(37, 'woocommerce_single', 56, 41570, 41570, 'pending'),
(38, 'woocommerce_gallery_thumbnail', 56, 3431, 3431, 'pending'),
(39, 'shop_catalog', 56, 15343, 15343, 'pending'),
(40, 'shop_single', 56, 41570, 41570, 'pending'),
(41, 'shop_thumbnail', 56, 3431, 3431, 'pending'),
(42, 'medium_large', 211, 93743, 93743, 'pending'),
(43, 'woocommerce_thumbnail', 211, 23399, 23399, 'pending'),
(44, 'woocommerce_single', 211, 66384, 66384, 'pending'),
(45, 'woocommerce_gallery_thumbnail', 211, 4582, 4582, 'pending'),
(46, 'shop_catalog', 211, 23399, 23399, 'pending'),
(47, 'shop_single', 211, 66384, 66384, 'pending'),
(48, 'shop_thumbnail', 211, 4582, 4582, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayusermeta`
--

CREATE TABLE `wp_shopxemayusermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayusermeta`
--

INSERT INTO `wp_shopxemayusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Hoàng'),
(3, 1, 'last_name', 'Hưng'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_shopxemaycapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_shopxemayuser_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_shopxemaydashboard_quick_press_last_post_id', '236'),
(18, 1, 'jetpack_tracks_anon_id', 'jetpack:X/6c7zZeNC9eFqYBYdvdI2AF'),
(20, 1, 'wc_last_active', '1535328000'),
(21, 1, 'wp_shopxemayuser-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_shopxemayuser-settings-time', '1532845026'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:9:{i:0;s:20:\"add-post-type-blocks\";i:1;s:21:\"add-post-type-product\";i:2;s:27:\"add-post-type-featured_item\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-post_format\";i:5;s:20:\"add-block_categories\";i:6;s:15:\"add-product_tag\";i:7;s:26:\"add-featured_item_category\";i:8;s:21:\"add-featured_item_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '16'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(27, 2, 'nickname', 'shopmanager'),
(28, 2, 'first_name', 'shopmanager'),
(29, 2, 'last_name', 'Shop'),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_shopxemaycapabilities', 'a:1:{s:12:\"shop_manager\";b:1;}'),
(39, 2, 'wp_shopxemayuser_level', '9'),
(40, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(42, 2, 'wc_last_active', '1532304000'),
(43, 2, 'wp_shopxemaydashboard_quick_press_last_post_id', '180'),
(44, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(46, 3, 'nickname', 'customer'),
(47, 3, 'first_name', 'Tan Hieu'),
(48, 3, 'last_name', 'Truong'),
(49, 3, 'description', ''),
(50, 3, 'rich_editing', 'true'),
(51, 3, 'syntax_highlighting', 'true'),
(52, 3, 'comment_shortcuts', 'false'),
(53, 3, 'admin_color', 'fresh'),
(54, 3, 'use_ssl', '0'),
(55, 3, 'show_admin_bar_front', 'true'),
(56, 3, 'locale', ''),
(57, 3, 'wp_shopxemaycapabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(58, 3, 'wp_shopxemayuser_level', '0'),
(59, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(61, 3, 'wc_last_active', '1532304000'),
(62, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(64, 4, 'nickname', 'thanhviendangky'),
(65, 4, 'first_name', 'Tan Hieu'),
(66, 4, 'last_name', 'Truong'),
(67, 4, 'description', ''),
(68, 4, 'rich_editing', 'true'),
(69, 4, 'syntax_highlighting', 'true'),
(70, 4, 'comment_shortcuts', 'false'),
(71, 4, 'admin_color', 'fresh'),
(72, 4, 'use_ssl', '0'),
(73, 4, 'show_admin_bar_front', 'true'),
(74, 4, 'locale', ''),
(75, 4, 'wp_shopxemaycapabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(76, 4, 'wp_shopxemayuser_level', '0'),
(77, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(79, 4, 'wc_last_active', '1532304000'),
(80, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(82, 5, 'nickname', 'congtacvien'),
(83, 5, 'first_name', 'Tan Hieu'),
(84, 5, 'last_name', 'Truong'),
(85, 5, 'description', ''),
(86, 5, 'rich_editing', 'true'),
(87, 5, 'syntax_highlighting', 'true'),
(88, 5, 'comment_shortcuts', 'false'),
(89, 5, 'admin_color', 'fresh'),
(90, 5, 'use_ssl', '0'),
(91, 5, 'show_admin_bar_front', 'true'),
(92, 5, 'locale', ''),
(93, 5, 'wp_shopxemaycapabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(94, 5, 'wp_shopxemayuser_level', '1'),
(95, 5, 'dismissed_wp_pointers', 'wp496_privacy'),
(97, 5, 'wc_last_active', '1532304000'),
(98, 5, 'wp_shopxemaydashboard_quick_press_last_post_id', '182'),
(99, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(100, 1, 'session_tokens', 'a:1:{s:64:\"a189ae95a778100ec7bc8d6f27550b4963f810a4af7c091852d13c353d9ed063\";a:4:{s:10:\"expiration\";i:1535533496;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1535360696;}}'),
(101, 6, 'nickname', 'thanhvienmoi'),
(102, 6, 'first_name', ''),
(103, 6, 'last_name', ''),
(104, 6, 'description', ''),
(105, 6, 'rich_editing', 'true'),
(106, 6, 'syntax_highlighting', 'true'),
(107, 6, 'comment_shortcuts', 'false'),
(108, 6, 'admin_color', 'fresh'),
(109, 6, 'use_ssl', '0'),
(110, 6, 'show_admin_bar_front', 'true'),
(111, 6, 'locale', ''),
(112, 6, 'wp_shopxemaycapabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(113, 6, 'wp_shopxemayuser_level', '0'),
(114, 6, 'default_password_nag', ''),
(115, 6, 'billing_first_name', ''),
(116, 6, 'billing_last_name', ''),
(117, 6, 'billing_company', ''),
(118, 6, 'billing_address_1', ''),
(119, 6, 'billing_address_2', ''),
(120, 6, 'billing_city', ''),
(121, 6, 'billing_postcode', ''),
(122, 6, 'billing_country', ''),
(123, 6, 'billing_state', ''),
(124, 6, 'billing_phone', ''),
(125, 6, 'billing_email', 'thanhvienmoi@gmail.com'),
(126, 6, 'shipping_first_name', ''),
(127, 6, 'shipping_last_name', ''),
(128, 6, 'shipping_company', ''),
(129, 6, 'shipping_address_1', ''),
(130, 6, 'shipping_address_2', ''),
(131, 6, 'shipping_city', ''),
(132, 6, 'shipping_postcode', ''),
(133, 6, 'shipping_country', ''),
(134, 6, 'shipping_state', ''),
(135, 6, 'last_update', '1532326773'),
(137, 6, 'wc_last_active', '1532304000'),
(138, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:5:{s:32:\"642e92efb79421734881b53e1e1b18b6\";a:11:{s:3:\"key\";s:32:\"642e92efb79421734881b53e1e1b18b6\";s:10:\"product_id\";i:48;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:560000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:560000;s:8:\"line_tax\";i:0;}s:32:\"fc490ca45c00b1249bbe3554a4fdf6fb\";a:11:{s:3:\"key\";s:32:\"fc490ca45c00b1249bbe3554a4fdf6fb\";s:10:\"product_id\";i:65;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:1230000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:1230000;s:8:\"line_tax\";i:0;}s:32:\"a684eceee76fc522773286a895bc8436\";a:11:{s:3:\"key\";s:32:\"a684eceee76fc522773286a895bc8436\";s:10:\"product_id\";i:54;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:430000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:430000;s:8:\"line_tax\";i:0;}s:32:\"a8f15eda80c50adb0e71943adc8015cf\";a:11:{s:3:\"key\";s:32:\"a8f15eda80c50adb0e71943adc8015cf\";s:10:\"product_id\";i:151;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:430000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:430000;s:8:\"line_tax\";i:0;}s:32:\"a4a042cf4fd6bfb47701cbc8a1653ada\";a:11:{s:3:\"key\";s:32:\"a4a042cf4fd6bfb47701cbc8a1653ada\";s:10:\"product_id\";i:171;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:430000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:430000;s:8:\"line_tax\";i:0;}}}'),
(140, 1, 'last_update', '1532327501'),
(141, 1, 'billing_first_name', 'Hoàng'),
(142, 1, 'billing_last_name', 'Hưng'),
(143, 1, 'billing_company', 'Công ty Nam Việt'),
(144, 1, 'billing_address_1', '429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM'),
(145, 1, 'billing_city', 'TPHCM'),
(146, 1, 'billing_postcode', '700000'),
(147, 1, 'billing_country', 'VN'),
(148, 1, 'billing_email', 'tanhieu2014@gmail.com'),
(149, 1, 'billing_phone', '0932023992'),
(150, 1, 'shipping_first_name', 'Hoàng'),
(151, 1, 'shipping_last_name', 'Hưng'),
(152, 1, 'shipping_company', 'Công ty Nam Việt'),
(153, 1, 'shipping_address_1', '429/4/20 KP1,Phường Tân Thới Hiệp,Quận 12,TPHCM'),
(154, 1, 'shipping_city', 'TPHCM'),
(155, 1, 'shipping_postcode', '700000'),
(156, 1, 'shipping_country', 'VN'),
(157, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(159, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"9766527f2b5d3e95d4a733fcfb77bd7e\";a:11:{s:3:\"key\";s:32:\"9766527f2b5d3e95d4a733fcfb77bd7e\";s:10:\"product_id\";i:165;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:2:{i:7;d:86000;i:8;d:129000;}s:5:\"total\";a:2:{i:7;d:86000;i:8;d:129000;}}s:13:\"line_subtotal\";d:430000;s:17:\"line_subtotal_tax\";d:215000;s:10:\"line_total\";d:430000;s:8:\"line_tax\";d:215000;}}}'),
(160, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"9766527f2b5d3e95d4a733fcfb77bd7e\";a:11:{s:3:\"key\";s:32:\"9766527f2b5d3e95d4a733fcfb77bd7e\";s:10:\"product_id\";i:165;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:2:{i:7;d:86000;i:8;d:129000;}s:5:\"total\";a:2:{i:7;d:86000;i:8;d:129000;}}s:13:\"line_subtotal\";d:430000;s:17:\"line_subtotal_tax\";d:215000;s:10:\"line_total\";d:430000;s:8:\"line_tax\";d:215000;}}}'),
(161, 1, 'closedpostboxes_shop_coupon', 'a:0:{}'),
(162, 1, 'metaboxhidden_shop_coupon', 'a:0:{}'),
(163, 1, 'wp_shopxemayyoast_notifications', 'a:5:{i:0;a:2:{s:7:\"message\";s:657:\"<p>Như bạn thấy, có bản dịch cho gói mở rộng này trong Vietnamese. Bản dịch hiện tại hoàn thành 87%. Chúng tôi cần bạn giúp đỡ để hoàn thành và sửa lỗi. Vui lòng đăng ký <a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Translating WordPress</a> để hỗ trợ hoàn thành bản dịch cho Vietnamese!</p><p><a href=\"https://translate.wordpress.org/projects/wp-plugins/wordpress-seo/\">Đăng ký ngay &raquo;</a></p><a class=\"button\" href=\"/shopphukienxemay/wp-admin/admin.php?page=wpseo_licenses&#038;remove_i18n_promo=1\">Không hiển thị những thông báo này nữa</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:31:\"i18nModuleTranslationAssistance\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:20:\"wpseo_manage_options\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:1307:\"Chúng tôi nhận thấy bạn đã sử dụng Yoast SEO được một thời gian; chúng tôi mong bạn yêu thích nó! Chúng tôi sẽ vô cùng cảm động nếu bạn có thể <a href=\"https://yoa.st/rate-yoast-seo?php_version=5.6.36&platform=wordpress&platform_version=4.9.8&software=free&software_version=7.9&role=administrator\">cho chúng tôi một đánh giá 5 sao trên WordPress.org</a>!\n\nNếu bạn gặp phải sự cố, <a href=\"https://yoa.st/bugreport?php_version=5.6.36&platform=wordpress&platform_version=4.9.8&software=free&software_version=7.9&role=administrator\">vui lòng gửi báo cáo lỗi</a> và chúng tôi sẽ cố hết sức để giúp bạn.\n\nNgoài ra, bạn có biết chúng tôi cũng có <a href=\'https://yoa.st/premium-notification?php_version=5.6.36&platform=wordpress&platform_version=4.9.8&software=free&software_version=7.9&role=administrator\'>Phần mở rộng trả phí</a>? Nó cung cấp những tính năng nâng cao, ví dụ như công cụ quản lý điều hướng và hỗ trợ nhiều từ khóa một lúc. Nó cũng bao gồm dịch vụ hỗ trợ cá nhân 24/7,\n\n<a class=\"button\" href=\"http://localhost/shopphukienxemay/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Không hiển thị những thông báo này nữa</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:462:\"Yoast SEO và WooCommerce có thể làm việc chung tốt hơn nhiều bằng cách thêm gói mở rộng giúp đỡ. Vui lòng cài đặt Yoast WooCommerce SEO để cuộc đời tốt hơn. <a href=\"https://yoa.st/1o0?php_version=5.6.36&platform=wordpress&platform_version=4.9.8&software=free&software_version=7.9&role=administrator\" aria-label=\"Thông tin thêm về Yoast WooCommerce SEO\" target=\"_blank\" rel=\"noopener noreferrer\">Thông tin thêm</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:44:\"wpseo-suggested-plugin-yoast-woocommerce-seo\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:3;a:2:{s:7:\"message\";s:244:\"Đừng bỏ qua lỗi máy tìm kiếm thu thập thông tin trang web của bạn:  <a href=\"http://localhost/shopphukienxemay/wp-admin/admin.php?page=wpseo_search_console&tab=settings\"> kết nối với Google Search Console ở đây </a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:4;a:2:{s:7:\"message\";s:388:\"Bạn không có tên bài viết/trang trong URL của bài viết và trang, việc này được khuyến nghị cao. Xem xét cài đặt cấu trúc đường dẫn tĩnh của bạn thành <strong>/%postname%/</strong>.<br/>Bạn có thể sửa lỗi này trong <a href=\"http://localhost/shopphukienxemay/wp-admin/options-permalink.php\">Trang cài đặt đường dẫn tĩnh</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:30:\"wpseo-dismiss-permalink-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayusers`
--

CREATE TABLE `wp_shopxemayusers` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayusers`
--

INSERT INTO `wp_shopxemayusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJgdX794YQI4TFeqcNX68VI9T4nSLX.', 'admin', 'tanhieu2014@gmail.com', '', '2018-07-15 09:24:54', '', 0, 'admin'),
(2, 'shopmanager', '$P$BcqRvENZYTzadQDRW.EyMThtqFz.0Z/', 'shopmanager', 'shopmanager@gmail.com', 'http://Shop%20Phu%20kien', '2018-07-23 05:39:23', '1532324367:$P$BjuBy5Xk/DXIZRYtIFOnCbP5m55W37/', 0, 'Shop shopmanager'),
(3, 'customer', '$P$B.Ckfo0WynO6zCt/GCJVMWLs94Ytl00', 'customer', 'customer@gmail.com', 'http://Shop%20May%20tính', '2018-07-23 05:43:09', '1532324592:$P$BEPCwuj3.YCKc21zVejet4hUy7xotd/', 0, 'Truong Tan Hieu'),
(4, 'thanhviendangky', '$P$BjVH8EPOuFPij/X5y3B080vIg/Rhau/', 'thanhviendangky', 'thanhviendangky@gmail.com', 'http://Shop%20May%20tính', '2018-07-23 05:45:06', '1532324708:$P$B.CniDFP8EqkTg09TAclUmclB0OIpH0', 0, 'Truong Tan Hieu'),
(5, 'congtacvien', '$P$BZ6bGBIzkSbQRN3NVTap3stV7EwiSY.', 'congtacvien', 'congtacvien@gmail.com', 'http://Shop%20May%20tính', '2018-07-23 05:46:58', '1532324820:$P$BJzfUmBShJn8x3vOTIX4BXUlz.Nkiz.', 0, 'Truong Tan Hieu'),
(6, 'thanhvienmoi', '$P$BZep6yb130ZwJhJJJUa5UhKP.4zged/', 'thanhvienmoi', 'thanhvienmoi@gmail.com', '', '2018-07-23 06:18:35', '1532326717:$P$BDYY04OzSB6IExJ73UfQCJvrhYTwnO/', 0, 'thanhvienmoi');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywc_download_log`
--

CREATE TABLE `wp_shopxemaywc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywc_webhooks`
--

CREATE TABLE `wp_shopxemaywc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_api_keys`
--

CREATE TABLE `wp_shopxemaywoocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_shopxemaywoocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_shopxemaywoocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_log`
--

CREATE TABLE `wp_shopxemaywoocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_order_itemmeta`
--

CREATE TABLE `wp_shopxemaywoocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaywoocommerce_order_itemmeta`
--

INSERT INTO `wp_shopxemaywoocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '48'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '560000'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '560000'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '65'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '1230000'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '1230000'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, '_product_id', '54'),
(20, 3, '_variation_id', '0'),
(21, 3, '_qty', '1'),
(22, 3, '_tax_class', ''),
(23, 3, '_line_subtotal', '430000'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 3, '_line_total', '430000'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(28, 4, '_product_id', '151'),
(29, 4, '_variation_id', '0'),
(30, 4, '_qty', '1'),
(31, 4, '_tax_class', ''),
(32, 4, '_line_subtotal', '430000'),
(33, 4, '_line_subtotal_tax', '0'),
(34, 4, '_line_total', '430000'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(37, 5, 'method_id', 'free_shipping'),
(38, 5, 'instance_id', '1'),
(39, 5, 'cost', '0'),
(40, 5, 'total_tax', '0'),
(41, 5, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(42, 5, 'Mặt hàng', 'Phụ kiện cho biker 1 &times; 1, Đèn led xe máy 520 &times; 1, Phuột xe máy zin &times; 1, Lorem Ipsum is simply dummy text of the printing and typesetting industry &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_order_items`
--

CREATE TABLE `wp_shopxemaywoocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaywoocommerce_order_items`
--

INSERT INTO `wp_shopxemaywoocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Phụ kiện cho biker 1', 'line_item', 185),
(2, 'Đèn led xe máy 520', 'line_item', 185),
(3, 'Phuột xe máy zin', 'line_item', 185),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'line_item', 185),
(5, 'Giao hàng miễn phí', 'shipping', 185);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_shopxemaywoocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_payment_tokens`
--

CREATE TABLE `wp_shopxemaywoocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_sessions`
--

CREATE TABLE `wp_shopxemaywoocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_shipping_zones`
--

CREATE TABLE `wp_shopxemaywoocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaywoocommerce_shipping_zones`
--

INSERT INTO `wp_shopxemaywoocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Hà nội - HCM - Hai Phong', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_shopxemaywoocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaywoocommerce_shipping_zone_locations`
--

INSERT INTO `wp_shopxemaywoocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(2, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_shopxemaywoocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaywoocommerce_shipping_zone_methods`
--

INSERT INTO `wp_shopxemaywoocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 0),
(0, 2, 'free_shipping', 1, 1),
(1, 4, 'flat_rate', 2, 1),
(1, 5, 'local_pickup', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_tax_rates`
--

CREATE TABLE `wp_shopxemaywoocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaywoocommerce_tax_rates`
--

INSERT INTO `wp_shopxemaywoocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(5, 'VN', '', '10.0000', 'Thuế chuẩn', 1, 0, 1, 0, ''),
(6, 'VN', '', '5.0000', 'Thuế xuất hàng', 2, 0, 1, 1, ''),
(7, 'VN', '', '20.0000', 'Thuế Giấy Tờ', 1, 0, 1, 0, 'thue-hai-quan'),
(8, 'VN', '', '30.0000', 'Thuế Xuất Siêu', 2, 0, 1, 0, 'thue-hai-quan');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemaywoocommerce_tax_rate_locations`
--

CREATE TABLE `wp_shopxemaywoocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemaywoocommerce_tax_rate_locations`
--

INSERT INTO `wp_shopxemaywoocommerce_tax_rate_locations` (`location_id`, `location_code`, `tax_rate_id`, `location_type`) VALUES
(9, '700000', 5, 'postcode'),
(10, 'TPHCM', 5, 'city'),
(11, '700000', 6, 'postcode'),
(12, 'TPHCM', 6, 'city'),
(13, '700000', 7, 'postcode'),
(14, 'TPHCM', 7, 'city'),
(15, '700000', 8, 'postcode'),
(16, 'TPHCM', 8, 'city');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayyoast_seo_links`
--

CREATE TABLE `wp_shopxemayyoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayyoast_seo_links`
--

INSERT INTO `wp_shopxemayyoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(16, 'http://shop2banh.vn', 222, 0, 'external');

-- --------------------------------------------------------

--
-- Table structure for table `wp_shopxemayyoast_seo_meta`
--

CREATE TABLE `wp_shopxemayyoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_shopxemayyoast_seo_meta`
--

INSERT INTO `wp_shopxemayyoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(19, 0, 0),
(69, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(129, 0, 0),
(135, 0, 0),
(179, 0, 0),
(187, 0, 0),
(189, 0, 0),
(218, 0, 0),
(219, 0, 0),
(220, 0, 0),
(222, 0, 0),
(223, 0, 0),
(224, 0, 0),
(226, 0, 0),
(227, 0, 0),
(228, 0, 0),
(229, 0, 0),
(230, 0, 0),
(231, 0, 0),
(233, 0, 0),
(234, 0, 0),
(235, 0, 0),
(236, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_shopxemayapmm_custom_theme`
--
ALTER TABLE `wp_shopxemayapmm_custom_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `wp_shopxemayaps_social_icons`
--
ALTER TABLE `wp_shopxemayaps_social_icons`
  ADD PRIMARY KEY (`si_id`);

--
-- Indexes for table `wp_shopxemaycommentmeta`
--
ALTER TABLE `wp_shopxemaycommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_shopxemaycomments`
--
ALTER TABLE `wp_shopxemaycomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_shopxemayes_deliverreport`
--
ALTER TABLE `wp_shopxemayes_deliverreport`
  ADD PRIMARY KEY (`es_deliver_id`);

--
-- Indexes for table `wp_shopxemayes_emaillist`
--
ALTER TABLE `wp_shopxemayes_emaillist`
  ADD PRIMARY KEY (`es_email_id`);

--
-- Indexes for table `wp_shopxemayes_notification`
--
ALTER TABLE `wp_shopxemayes_notification`
  ADD PRIMARY KEY (`es_note_id`);

--
-- Indexes for table `wp_shopxemayes_sentdetails`
--
ALTER TABLE `wp_shopxemayes_sentdetails`
  ADD PRIMARY KEY (`es_sent_id`);

--
-- Indexes for table `wp_shopxemaylinks`
--
ALTER TABLE `wp_shopxemaylinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_shopxemayoptions`
--
ALTER TABLE `wp_shopxemayoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_shopxemaypostmeta`
--
ALTER TABLE `wp_shopxemaypostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_shopxemayposts`
--
ALTER TABLE `wp_shopxemayposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_shopxemaytermmeta`
--
ALTER TABLE `wp_shopxemaytermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_shopxemayterms`
--
ALTER TABLE `wp_shopxemayterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_shopxemayterm_relationships`
--
ALTER TABLE `wp_shopxemayterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_shopxemayterm_taxonomy`
--
ALTER TABLE `wp_shopxemayterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_shopxemaytp_image_optimizer`
--
ALTER TABLE `wp_shopxemaytp_image_optimizer`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `attachment_id` (`attachment_id`);

--
-- Indexes for table `wp_shopxemayusermeta`
--
ALTER TABLE `wp_shopxemayusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_shopxemayusers`
--
ALTER TABLE `wp_shopxemayusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_shopxemaywc_download_log`
--
ALTER TABLE `wp_shopxemaywc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_shopxemaywc_webhooks`
--
ALTER TABLE `wp_shopxemaywc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_shopxemaywoocommerce_api_keys`
--
ALTER TABLE `wp_shopxemaywoocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_shopxemaywoocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_shopxemaywoocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_shopxemaywoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_shopxemaywoocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_shopxemaywoocommerce_log`
--
ALTER TABLE `wp_shopxemaywoocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_shopxemaywoocommerce_order_itemmeta`
--
ALTER TABLE `wp_shopxemaywoocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_shopxemaywoocommerce_order_items`
--
ALTER TABLE `wp_shopxemaywoocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_shopxemaywoocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_shopxemaywoocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_shopxemaywoocommerce_payment_tokens`
--
ALTER TABLE `wp_shopxemaywoocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_shopxemaywoocommerce_sessions`
--
ALTER TABLE `wp_shopxemaywoocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_shopxemaywoocommerce_shipping_zones`
--
ALTER TABLE `wp_shopxemaywoocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_shopxemaywoocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_shopxemaywoocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_shopxemaywoocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_shopxemaywoocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_shopxemaywoocommerce_tax_rates`
--
ALTER TABLE `wp_shopxemaywoocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_shopxemaywoocommerce_tax_rate_locations`
--
ALTER TABLE `wp_shopxemaywoocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_shopxemayyoast_seo_links`
--
ALTER TABLE `wp_shopxemayyoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_shopxemayyoast_seo_meta`
--
ALTER TABLE `wp_shopxemayyoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_shopxemayapmm_custom_theme`
--
ALTER TABLE `wp_shopxemayapmm_custom_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_shopxemayaps_social_icons`
--
ALTER TABLE `wp_shopxemayaps_social_icons`
  MODIFY `si_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_shopxemaycommentmeta`
--
ALTER TABLE `wp_shopxemaycommentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_shopxemaycomments`
--
ALTER TABLE `wp_shopxemaycomments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_shopxemayes_deliverreport`
--
ALTER TABLE `wp_shopxemayes_deliverreport`
  MODIFY `es_deliver_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_shopxemayes_emaillist`
--
ALTER TABLE `wp_shopxemayes_emaillist`
  MODIFY `es_email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_shopxemayes_notification`
--
ALTER TABLE `wp_shopxemayes_notification`
  MODIFY `es_note_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_shopxemayes_sentdetails`
--
ALTER TABLE `wp_shopxemayes_sentdetails`
  MODIFY `es_sent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_shopxemaylinks`
--
ALTER TABLE `wp_shopxemaylinks`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemayoptions`
--
ALTER TABLE `wp_shopxemayoptions`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2325;

--
-- AUTO_INCREMENT for table `wp_shopxemaypostmeta`
--
ALTER TABLE `wp_shopxemaypostmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1468;

--
-- AUTO_INCREMENT for table `wp_shopxemayposts`
--
ALTER TABLE `wp_shopxemayposts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `wp_shopxemaytermmeta`
--
ALTER TABLE `wp_shopxemaytermmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `wp_shopxemayterms`
--
ALTER TABLE `wp_shopxemayterms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `wp_shopxemayterm_taxonomy`
--
ALTER TABLE `wp_shopxemayterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `wp_shopxemaytp_image_optimizer`
--
ALTER TABLE `wp_shopxemaytp_image_optimizer`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wp_shopxemayusermeta`
--
ALTER TABLE `wp_shopxemayusermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `wp_shopxemayusers`
--
ALTER TABLE `wp_shopxemayusers`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_shopxemaywc_download_log`
--
ALTER TABLE `wp_shopxemaywc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywc_webhooks`
--
ALTER TABLE `wp_shopxemaywc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_api_keys`
--
ALTER TABLE `wp_shopxemaywoocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_shopxemaywoocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_shopxemaywoocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_log`
--
ALTER TABLE `wp_shopxemaywoocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_order_itemmeta`
--
ALTER TABLE `wp_shopxemaywoocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_order_items`
--
ALTER TABLE `wp_shopxemaywoocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_shopxemaywoocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_payment_tokens`
--
ALTER TABLE `wp_shopxemaywoocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_sessions`
--
ALTER TABLE `wp_shopxemaywoocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_shipping_zones`
--
ALTER TABLE `wp_shopxemaywoocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_shopxemaywoocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_shopxemaywoocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_tax_rates`
--
ALTER TABLE `wp_shopxemaywoocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_shopxemaywoocommerce_tax_rate_locations`
--
ALTER TABLE `wp_shopxemaywoocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_shopxemayyoast_seo_links`
--
ALTER TABLE `wp_shopxemayyoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_shopxemaywc_download_log`
--
ALTER TABLE `wp_shopxemaywc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_shopxemaywoocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

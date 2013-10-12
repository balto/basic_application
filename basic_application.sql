-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2013 at 06:46 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `basic_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `file_descriptor`
--

CREATE TABLE IF NOT EXISTS `file_descriptor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_id` bigint(20) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (file_id) REFERENCES file_store(id)',
  `file_name` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `mime_type` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `size` bigint(20) NOT NULL,
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `description` text COLLATE utf8_hungarian_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id_idx` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `file_store`
--

CREATE TABLE IF NOT EXISTS `file_store` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=binary AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `description` text COLLATE utf8_hungarian_ci,
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (updated_by) REFERENCES user(id)',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=69 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`, `title`, `description`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(49, 'user_list', 'Felhasználó lista', 'Megtekintheti a felhasználók listáját', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(50, 'user_show', 'Felhasználó adatlap megtekintése', 'Megtekintheti egy felhasználó adatlapját', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(51, 'user_profile_show', 'Felhasználó saját adatlapjának megtekintése', 'Megtekintheti a felhasználó a saját adatlapját', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(52, 'user_edit', 'Felhasználó adatok módosítása', 'Szerkesztheti egy felhasználó adatait', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(53, 'user_delete', 'Felhasználó törlése', 'Törölhet egy felhasználót', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(54, 'user_generate_password', 'Felhasználó számára új kezdeti jelszó generálása', 'Generálhat új jelszót a felhasználónak', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(55, 'user_toggle_active', 'Felhasználó aktiválása/letiltása', 'Aktiválhatja/letilthatja a felhasználót', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(56, 'user_group_list', 'Felhasználó csoport lista', 'Megtekintheti a felhasználó csoportok listáját', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(57, 'user_group_show', 'Felhasználó csoport adatlap megtekintése', 'Megtekintheti egy felhasználó csoport adatlapját', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(58, 'user_group_edit', 'Felhasználó csoport adatainak szerkesztése', 'Módosíthatja egy felhasználó csoport adatait', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(59, 'user_group_delete', 'Felhasználó csoport törlése', 'Törölhet egy felhasználó csoportot', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(60, 'user_permission_list', 'Jogosultság lista', 'Megtekintheti a jogosultságok listáját', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(61, 'user_permission_show', 'Jogosultság adatlap megtekintése', 'Megtekintheti egy jogosultság adatlapját', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(62, 'user_permission_reload', 'Jogosultságok újratöltése', 'A meglévő jogosultságok frissítése, új jogosultságok importálása', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(63, 'editIndividualPermissions', 'Felhasználó egyéni jogok szerkesztése', 'Jogosultság a felhasználókhoz tartozó egyéni jogok szerkesztéséhez', 1, '2012-06-14 08:43:28', 3, '2012-11-25 15:30:27'),
(64, 'codetable_list', 'Törzsadat lista', 'Megtekintheti a törzsadatok listáját', 1, '2012-08-01 08:52:42', 3, '2012-11-25 15:30:27'),
(65, 'codetable_show', 'Törzsadat adatlap megtekintése', 'Megtekintheti egy törzsadat adatlapját', 1, '2012-08-01 08:52:42', 3, '2012-11-25 15:30:27'),
(66, 'codetable_edit', 'Törzsadat módosítása', 'Szerkesztheti a törzsadatot', 1, '2012-08-01 08:52:42', 3, '2012-11-25 15:30:27'),
(67, 'codetable_delete', 'Törzsadat törlése', 'Törölhet egy törzsadatot', 1, '2012-08-01 08:52:42', 3, '2012-11-25 15:30:27'),
(68, 'codetable_toggle_active', 'Törzsadat aktiválása/inaktiválása', 'Aktiválhatja/inaktiválhatja a törzsadatot', 1, '2012-08-01 08:52:42', 3, '2012-11-25 15:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `sess_id` varchar(64) COLLATE utf8_hungarian_ci NOT NULL,
  `sess_data` text COLLATE utf8_hungarian_ci NOT NULL,
  `sess_time` bigint(20) NOT NULL,
  KEY `sess_id` (`sess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sess_id`, `sess_data`, `sess_time`) VALUES
('l22gl5aibk5b6usn5gam3pc744', '', 1353873730),
('mb6ohcd9gutb7j9aplnplvmcd6', '', 1353873883),
('ud367c43r7cn98nvdukjcm70m4', '', 1353944891),
('vbvvk5pp76cr4iorf7ed0jnb76', 'e671b48dc2ac68238b9141978777acb0Login_csrf_token|s:40:"a55a903ebac0945c9169a7877dcbeb2e51fdb368";', 1358784143),
('a1epuqq7ofojmnp9dcjsi49vd2', 'e671b48dc2ac68238b9141978777acb0Login_csrf_token|s:40:"5e0c79010efc96cb18a7cdadcb15402e875be806";', 1381682707),
('e8q6dp7qdak1bkin2hj63q9qu6', 'e671b48dc2ac68238b9141978777acb0Login_csrf_token|s:40:"5e0c79010efc96cb18a7cdadcb15402e875be806";e671b48dc2ac68238b9141978777acb0__id|s:1:"3";e671b48dc2ac68238b9141978777acb0__name|s:6:"balazs";e671b48dc2ac68238b9141978777acb0__states|a:0:{}e671b48dc2ac68238b9141978777acb0permissions|a:20:{s:9:"user_list";a:4:{s:2:"id";s:2:"49";s:4:"name";s:9:"user_list";s:5:"title";s:19:"Felhasználó lista";s:11:"description";s:41:"Megtekintheti a felhasználók listáját";}s:9:"user_show";a:4:{s:2:"id";s:2:"50";s:4:"name";s:9:"user_show";s:5:"title";s:35:"Felhasználó adatlap megtekintése";s:11:"description";s:43:"Megtekintheti egy felhasználó adatlapját";}s:17:"user_profile_show";a:4:{s:2:"id";s:2:"51";s:4:"name";s:17:"user_profile_show";s:5:"title";s:48:"Felhasználó saját adatlapjának megtekintése";s:11:"description";s:50:"Megtekintheti a felhasználó a saját adatlapját";}s:9:"user_edit";a:4:{s:2:"id";s:2:"52";s:4:"name";s:9:"user_edit";s:5:"title";s:34:"Felhasználó adatok módosítása";s:11:"description";s:39:"Szerkesztheti egy felhasználó adatait";}s:11:"user_delete";a:4:{s:2:"id";s:2:"53";s:4:"name";s:11:"user_delete";s:5:"title";s:23:"Felhasználó törlése";s:11:"description";s:29:"Törölhet egy felhasználót";}s:22:"user_generate_password";a:4:{s:2:"id";s:2:"54";s:4:"name";s:22:"user_generate_password";s:5:"title";s:56:"Felhasználó számára új kezdeti jelszó generálása";s:11:"description";s:43:"Generálhat új jelszót a felhasználónak";}s:18:"user_toggle_active";a:4:{s:2:"id";s:2:"55";s:4:"name";s:18:"user_toggle_active";s:5:"title";s:37:"Felhasználó aktiválása/letiltása";s:11:"description";s:42:"Aktiválhatja/letilthatja a felhasználót";}s:15:"user_group_list";a:4:{s:2:"id";s:2:"56";s:4:"name";s:15:"user_group_list";s:5:"title";s:27:"Felhasználó csoport lista";s:11:"description";s:50:"Megtekintheti a felhasználó csoportok listáját";}s:15:"user_group_show";a:4:{s:2:"id";s:2:"57";s:4:"name";s:15:"user_group_show";s:5:"title";s:43:"Felhasználó csoport adatlap megtekintése";s:11:"description";s:51:"Megtekintheti egy felhasználó csoport adatlapját";}s:15:"user_group_edit";a:4:{s:2:"id";s:2:"58";s:4:"name";s:15:"user_group_edit";s:5:"title";s:45:"Felhasználó csoport adatainak szerkesztése";s:11:"description";s:48:"Módosíthatja egy felhasználó csoport adatait";}s:17:"user_group_delete";a:4:{s:2:"id";s:2:"59";s:4:"name";s:17:"user_group_delete";s:5:"title";s:31:"Felhasználó csoport törlése";s:11:"description";s:38:"Törölhet egy felhasználó csoportot";}s:20:"user_permission_list";a:4:{s:2:"id";s:2:"60";s:4:"name";s:20:"user_permission_list";s:5:"title";s:18:"Jogosultság lista";s:11:"description";s:41:"Megtekintheti a jogosultságok listáját";}s:20:"user_permission_show";a:4:{s:2:"id";s:2:"61";s:4:"name";s:20:"user_permission_show";s:5:"title";s:34:"Jogosultság adatlap megtekintése";s:11:"description";s:42:"Megtekintheti egy jogosultság adatlapját";}s:22:"user_permission_reload";a:4:{s:2:"id";s:2:"62";s:4:"name";s:22:"user_permission_reload";s:5:"title";s:29:"Jogosultságok újratöltése";s:11:"description";s:73:"A meglévő jogosultságok frissítése, új jogosultságok importálása";}s:25:"editIndividualPermissions";a:4:{s:2:"id";s:2:"63";s:4:"name";s:25:"editIndividualPermissions";s:5:"title";s:41:"Felhasználó egyéni jogok szerkesztése";s:11:"description";s:73:"Jogosultság a felhasználókhoz tartozó egyéni jogok szerkesztéséhez";}s:14:"codetable_list";a:4:{s:2:"id";s:2:"64";s:4:"name";s:14:"codetable_list";s:5:"title";s:16:"Törzsadat lista";s:11:"description";s:39:"Megtekintheti a törzsadatok listáját";}s:14:"codetable_show";a:4:{s:2:"id";s:2:"65";s:4:"name";s:14:"codetable_show";s:5:"title";s:32:"Törzsadat adatlap megtekintése";s:11:"description";s:40:"Megtekintheti egy törzsadat adatlapját";}s:14:"codetable_edit";a:4:{s:2:"id";s:2:"66";s:4:"name";s:14:"codetable_edit";s:5:"title";s:24:"Törzsadat módosítása";s:11:"description";s:28:"Szerkesztheti a törzsadatot";}s:16:"codetable_delete";a:4:{s:2:"id";s:2:"67";s:4:"name";s:16:"codetable_delete";s:5:"title";s:20:"Törzsadat törlése";s:11:"description";s:27:"Törölhet egy törzsadatot";}s:23:"codetable_toggle_active";a:4:{s:2:"id";s:2:"68";s:4:"name";s:23:"codetable_toggle_active";s:5:"title";s:38:"Törzsadat aktiválása/inaktiválása";s:11:"description";s:44:"Aktiválhatja/inaktiválhatja a törzsadatot";}}e671b48dc2ac68238b9141978777acb0lasturl|s:21:"/user/userGroup/index";e671b48dc2ac68238b9141978777acb0lasturl_jx_params|s:2:"{}";e671b48dc2ac68238b9141978777acb0UserGroup_csrf_token|s:40:"ab7f30f3364489ea2f72b5480f9017adae458c77";e671b48dc2ac68238b9141978777acb0User_csrf_token|s:40:"208f004a3fed9d0e49b7753e1e5d46b471b58c9e";e671b48dc2ac68238b9141978777acb0Profile_csrf_token|s:40:"ff42082059de4c23d130a812527a0959c8af4932";', 1381682758);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `loginname` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `tokenname` varchar(128) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `algorithm` varchar(128) COLLATE utf8_hungarian_ci NOT NULL DEFAULT 'sha1',
  `salt` varchar(128) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `is_first_password` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `is_super_admin` tinyint(1) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `failed_logins` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(64) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginname` (`loginname`),
  KEY `is_active_idx_idx` (`is_active`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `loginname`, `tokenname`, `algorithm`, `salt`, `password`, `is_first_password`, `is_active`, `is_super_admin`, `last_login`, `failed_logins`, `session_id`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'Varga Balázs', 'balazs', NULL, 'sha1', 'fd90dbe2badfd76ee327498d886e822f', 'de4302ab4be337fadbfec43b2ef06bd34cc7243e', 0, 1, 1, '2013-10-12 16:45:18', 0, 'e8q6dp7qdak1bkin2hj63q9qu6', 0, '2011-12-08 13:33:47', '2013-10-12 18:45:48'),
(4, 'Teszt Elek', 'tesztelek', NULL, 'sha1', '0ee97272795b8bf216cd468853220819', '3876938454ad62696d5ea9fbc1ae4b1ca3c8e1f2', 0, 1, 0, NULL, 1, NULL, 3, '2012-11-25 16:42:15', '2013-01-16 21:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `description` text COLLATE utf8_hungarian_ci,
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permission`
--

CREATE TABLE IF NOT EXISTS `user_group_permission` (
  `user_group_id` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (user_group_id) REFERENCES user_group(id)',
  `permission_id` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (permission_id) REFERENCES permission(id)',
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`user_group_id`,`permission_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE IF NOT EXISTS `user_permission` (
  `user_id` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (user_id) REFERENCES user(id)',
  `permission_id` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (permission_id) REFERENCES permission(id)',
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (updated_by) REFERENCES user(id)',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`user_id`, `permission_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(3, 49, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 50, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 51, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 52, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 53, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 54, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 55, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 56, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 57, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 58, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 59, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 60, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 61, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 62, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 63, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 64, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 65, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 66, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 67, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 68, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 69, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 70, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 71, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40'),
(3, 72, 5, '2012-08-03 13:31:59', 5, '2012-08-03 13:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (user_id) REFERENCES user(id)',
  `tel` varchar(30) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `mobil` varchar(30) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `hash` varchar(64) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (updated_by) REFERENCES user(id)',
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `tel`, `mobil`, `email`, `hash`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(3, 3, '12312312312312', '+36705623540', 'vargabalazslaszlo@freemail.hu', 'bc19f045ee8f03f9e7e16b0940c482a9ce3a9236 	', 1, '2011-12-12 11:01:04', 3, '2013-10-12 18:45:48'),
(4, 4, NULL, NULL, 'jackson2005@freemail.hu', NULL, 3, '2012-11-25 16:42:15', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_user_group`
--

CREATE TABLE IF NOT EXISTS `user_user_group` (
  `user_id` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (user_id) REFERENCES user(id)',
  `user_group_id` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (user_group_id) REFERENCES user_group(id)',
  `created_by` int(11) NOT NULL COMMENT 'CONSTRAINT FOREIGN KEY (created_by) REFERENCES user(id)',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`),
  KEY `group_id` (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

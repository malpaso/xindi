-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.8 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2012-04-22 08:39:22
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for xindi
CREATE DATABASE IF NOT EXISTS `xindi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `xindi`;


-- Dumping structure for table xindi.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_uuid` varchar(150) DEFAULT NULL,
  `page_left` int(11) DEFAULT NULL,
  `page_right` int(11) DEFAULT NULL,
  `page_title` varchar(150) DEFAULT NULL,
  `page_navigationtitle` varchar(150) DEFAULT NULL,
  `page_content` longtext,
  `page_metatitle` varchar(200) DEFAULT NULL,
  `page_metadescription` varchar(200) DEFAULT NULL,
  `page_metakeywords` varchar(200) DEFAULT NULL,
  `page_created` datetime DEFAULT NULL,
  `page_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table xindi.pages: ~0 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`page_id`, `page_uuid`, `page_left`, `page_right`, `page_title`, `page_navigationtitle`, `page_content`, `page_metatitle`, `page_metadescription`, `page_metakeywords`, `page_created`, `page_updated`) VALUES
	(1, 'home', 1, 28, 'Welcome to Xindi', 'Home', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:17', '2012-04-22 08:35:17'),
	(2, 'page2', 2, 3, 'Page 2', 'Page 2', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:17', '2012-04-22 08:35:17'),
	(3, 'page3', 4, 13, 'Page 3', 'Page 3', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:27', '2012-04-22 08:35:27'),
	(4, 'page4', 14, 15, 'Page 4', 'Page 4', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:33', '2012-04-22 08:35:33'),
	(5, 'page5', 16, 17, 'Page 5', 'Page 5', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:39', '2012-04-22 08:35:39'),
	(6, 'page6', 18, 19, 'Page 6', 'Page 6', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:44', '2012-04-22 08:35:44'),
	(7, 'page7', 20, 21, 'Page 7', 'Page 7', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:51', '2012-04-22 08:35:51'),
	(8, 'page8', 22, 23, 'Page 8', 'Page 8', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:35:57', '2012-04-22 08:35:57'),
	(9, 'page9', 24, 25, 'Page 9', 'Page 9', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:36:02', '2012-04-22 08:36:02'),
	(10, 'page10', 26, 27, 'Page 10', 'Page 10', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:36:10', '2012-04-22 08:36:10'),
	(11, 'page11', 5, 6, 'Page 11', 'Page 11', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:36:29', '2012-04-22 08:36:29'),
	(12, 'page12', 7, 10, 'Page 12', 'Page 12', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:36:39', '2012-04-22 08:36:39'),
	(13, 'page13', 11, 12, 'Page 13', 'Page 13', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:36:47', '2012-04-22 08:36:47'),
	(14, 'page14', 8, 9, 'Page 14', 'Page 14', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget viverra odio? Curabitur molestie tincidunt congue? In hac habitasse platea dictumst. Pellentesque non velit at dui egestas sagittis in sed velit. Suspendisse bibendum metus a quam auctor malesuada. Morbi accumsan mauris euismod nunc ultrices rutrum. Vestibulum vel odio a lectus pellentesque lobortis vel sit amet nibh. Maecenas porttitor pellentesque enim ut aliquam! Donec libero dolor, elementum quis convallis non, consequat eget nisl. Aenean tortor nibh, posuere ut convallis nec; dignissim quis justo. Vivamus lobortis vestibulum tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas egestas mauris id metus elementum varius. Proin nec purus nec nisl sollicitudin porta.\r\n</p>\r\n\r\n<p>\r\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc mattis, ligula ullamcorper egestas adipiscing, purus risus mattis leo, eget vestibulum lectus nisi id justo. Duis at feugiat odio. Donec convallis adipiscing mauris, tempus volutpat velit blandit et. Nullam a aliquam massa. Duis quis augue neque, ut laoreet felis? Ut ac aliquam libero. Mauris eget mollis lorem. Fusce scelerisque aliquet mauris gravida euismod. Pellentesque volutpat imperdiet est, ac fringilla neque dapibus ut.\r\n</p>\r\n\r\n<p>\r\nSed sodales rutrum erat, quis placerat massa malesuada ut. Morbi placerat tincidunt metus, quis congue ipsum pharetra in! Sed ultrices tortor in metus semper sed fermentum augue iaculis. Nullam eu tempus nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed eleifend faucibus luctus. Sed tortor odio, mollis eu adipiscing at, ullamcorper eu dui. Mauris molestie leo vitae neque sodales porta. Sed hendrerit accumsan odio vel pretium. Integer at nunc orci, a commodo purus? Praesent suscipit ornare dolor, in malesuada dolor eleifend iaculis. Donec blandit vulputate justo, sit amet venenatis purus suscipit aliquet? Donec auctor odio et elit auctor posuere! Suspendisse non nibh ut tortor facilisis sagittis. Sed fermentum arcu vel nisl cursus et ornare ligula sodales. Pellentesque ac tortor fringilla elit placerat dapibus nec in est.\r\n</p>', '', '', '', '2012-04-22 08:37:05', '2012-04-22 08:37:05');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table xindi.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_firstname` varchar(50) DEFAULT NULL,
  `user_lastname` varchar(50) DEFAULT NULL,
  `user_email` varchar(150) DEFAULT NULL,
  `user_username` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_created` datetime DEFAULT NULL,
  `user_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table xindi.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_username`, `user_password`, `user_created`, `user_updated`) VALUES
	(1, 'Simon', 'Bingham', 'me@simonbingham.me.uk', 'admin', 'admin', '2012-04-22 08:39:07', '2012-04-22 08:39:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
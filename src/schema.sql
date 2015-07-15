CREATE TABLE IF NOT EXISTS `items` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` enum('SNACKS','FRUITS','DRINKS') DEFAULT NULL,
  `wish_list` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;
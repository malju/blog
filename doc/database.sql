-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2014 at 12:21 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'Facebook supleb reklaamirahas', 'Lennukaid majandustulemusi näidanud Facebook on reklaamijad kenasti konksu otsa saanud ning korjab neilt raha nii mis mühiseb. \r\n\r\nNagu ütles Financial Timesile SunTrust Robinson Humphrey analüütik Robert Peck, on eile 82-protsendilise kasumikasvu ette kandnud sotsiaalvõrgustikul õnnestunud panna ettevõtjad üha kallimat reklaamipinda ostma, kuna nood näevad selles tugevat tulu.\r\n\r\nAlgatuseks meelitas Facebook suured brändid ligi, pakkudes neile võimalust reklaamida end oma üüratule kliendibaasile tasuta – kõik mis tuli teha, oli luua oma lehekülg ja hakata inimestele «meeldima». Siis sai rõõmsalt reklaamida, selleks sentigi kulutamata.\r\n\r\nNüüd, kus reklaamijaid tungleb hulgana – Facebooki mullune kogukäive kerkis 7,9 miljardi dollari kõrgustesse – ning neil on soov oma reklaamidega üha täpsemalt märki tabada, tuleb nähtavuse eest tasuda.\r\n\r\nGlobaalsel reklaamiturul, USA digireklaamiturul ja ülemaailmsel mobiilreklaamiturul jääb Facebook nüüd maha veel üksnes Google’ist, näitavad eMarketeri andmed. Samas kinnitab Socialbakersi analüütik Jan Rezab, et mõnes mõttes on Facebook turundajate meelest etem.\r\n\r\n«Google eeldab sirvimise alusel, et sulle meeldib see või too. Facebook teab, sest ta on sinuga otseühenduses,» selgitas Rezab – Facebook ei ole üksnes kursis sellega, mis leheküljed sulle meeldivad, vaid on samuti kursis, millist sisu sa agaralt tarbid (seda näiteks kommenteerides). ', '2014-01-31 22:30:46', 1),
(2, 'Apple veel iPodi ei hülga', 'Kuigi iPodide müük on drastiliselt langenud, on turule oodata vähemalt veel ühte põlvkonda Apple´i muusikapleiereid, kirjutab Techradar.\r\n\r\nApple tutvustas oma iPodi pleierit 2001. aastal, kuid peale 2008. aastat on müügitulemused nutitelefonide turu plahvatusliku kasvu tõttu kokku kuivanud.\r\n\r\nEelmise aasta viimases kvartalis langes iPodide müük aastases võrdluses 52 protsenti 6 miljoni seadmeni.\r\n\r\nSamas ei plaani Apple ilmselt veel lähiajal muusikapleierite tootmist lõpetada. Nimelt otsib ettevõte iPodi üksusesse uusi toote- ja müügijuhte, mis Techradari hinnangul tähendab, et oodata on veel vähemalt ühte uut põlvkonda Apple´i muusikapleiereid.', '2014-01-31 22:30:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`) VALUES
(1, 'demo', 'demo', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
SET FOREIGN_KEY_CHECKS=1;

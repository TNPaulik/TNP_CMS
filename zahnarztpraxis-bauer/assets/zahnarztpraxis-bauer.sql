-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 25. Nov 2014 um 13:30
-- Server Version: 5.5.38-0ubuntu0.14.04.1
-- PHP-Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `zahnarztpraxis-bauer`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adressen`
--

DROP TABLE IF EXISTS `adressen`;
CREATE TABLE IF NOT EXISTS `adressen` (
  `adressen_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `strasse` varchar(255) NOT NULL,
  `hausnummer` varchar(10) NOT NULL,
  `plz` int(11) NOT NULL,
  `ort` varchar(255) NOT NULL,
  `land` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `telefax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `oeffnungszeiten` varchar(255) NOT NULL,
  PRIMARY KEY (`adressen_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `adressen`
--

INSERT INTO `adressen` (`adressen_id`, `name`, `strasse`, `hausnummer`, `plz`, `ort`, `land`, `telefon`, `telefax`, `email`, `link`, `oeffnungszeiten`) VALUES
(1, 'Pflegezentrum Moritz', 'Georg-Knon-Straße', '17', 94121, 'Salzweg', 'Deutschland', '0851 75 66 466', '', 'info@pflegezentrum-moritz.de', 'http://www.pflegezentrum-moritz.de', 'Mo, Mi, Fr: 8:00 – 14:00 Uhr  - Di, Do: 8:00 – 16:00 Uhr'),
(2, 'Tagespflege „Am Pangerlberg“', 'Am Pangerlberg', '9', 94124, 'Büchlberg', 'Deutschland', '08505 91 88 200', '', 'info@tagespflege-moritz.de', 'http://www.tagespflege-moritz.de', 'Mo, Di, Mi, Fr: 8:00 – 17:00 Uhr');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bilder`
--

DROP TABLE IF EXISTS `bilder`;
CREATE TABLE IF NOT EXISTS `bilder` (
  `bild_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategorie` varchar(255) NOT NULL COMMENT 'Normales bild oder slider widescreen',
  PRIMARY KEY (`bild_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

--
-- Daten für Tabelle `bilder`
--

INSERT INTO `bilder` (`bild_id`, `kategorie`) VALUES
(98, 'bild'),
(99, 'bild'),
(100, 'bild'),
(101, 'bild'),
(102, 'bild'),
(103, 'bild'),
(104, 'bild'),
(105, 'bild'),
(106, 'bild'),
(107, 'bild'),
(108, 'bild'),
(109, 'bild'),
(110, 'bild'),
(111, 'bild'),
(112, 'bild'),
(113, 'bild'),
(114, 'bild'),
(115, 'bild'),
(116, 'bild'),
(117, 'bild'),
(118, 'bild'),
(119, 'bild'),
(120, 'bild'),
(121, 'bild');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `seite` varchar(255) NOT NULL,
  `platz` varchar(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `unterzeile` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `bild_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`),
  KEY `bild_id` (`bild_id`),
  KEY `seite` (`seite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Daten für Tabelle `content`
--

INSERT INTO `content` (`content_id`, `seite`, `platz`, `titel`, `unterzeile`, `text`, `bild_id`) VALUES
(1, 'index', 'top_links', 'Pflegezentrum Moritz', '„Dort gepflegt werden, wo man Zuhause ist“', '<p>\r\n	Menschenw&uuml;rdige, zuverl&auml;ssige und fachlich hochqualifizierte Pflege nach den individuellen Bed&uuml;rfnissen der Patienten hat sich das Pflegezentrum Moritz auf seine Fahnen geschrieben.</p>\r\n<p>\r\n	Wir unterst&uuml;tzen Sie bei allen Leistungen der Pflegeversicherung nach SGB XI, bei allen behandlungspflegerischen Leistungen nach SGB V und bei Betreuungsleistungen nach &sect; 45b SGB XI.</p>\r\n', 8),
(2, 'index', 'top_rechts', 'Tagespflege „Am Pangerlberg“', '„Tagsüber bestens versorgt, abends wieder in den eigenen vier Wänden“', '<p>\r\n	Tagespflegest&auml;tten sind Orte, in denen pflegebed&uuml;rftige und gerontopsychiatrisch erkrankte Menschen stundenweise betreut und versorgt werden und wo sie selbstbestimmt ihren individuellen Freiraum gestalten k&ouml;nnen.</p>\r\n<p>\r\n	Pflegende Angeh&ouml;rige werden dadurch bei der t&auml;glichen Pflege sp&uuml;rbar entlastet.</p>\r\n', 84),
(3, 'pflegedienst', 'leistungen', 'Leistungen', '', '<p>\n	Grundpflegerische und hauswirtschaftliche Versorgung:</p>\n<p>\n	&bull; Hilfestellung bei der K&ouml;rperpflege<br />\n	&bull; Duschen und Baden, Hautpflege<br />\n	&bull; Inkontinenzversorgung etc.<br />\n	&bull; Reinigung der Wohnung, W&auml;sche waschen, b&uuml;geln etc.<br />\n	<br />\n	Medizinische Versorgung:</p>\n<p>\n	&bull; Verabreichen von Injektionen (z. B. Insulin) und Blutzucker-Messungen<br />\n	&bull; Herrichten und Verabreichen von Medikamenten<br />\n	&bull; Wundversorgung etc.<br />\n	&nbsp;&nbsp;&nbsp;<br />\n	Betreuung:</p>\n<p>\n	&bull; Gespr&auml;che f&uuml;hren, Spazieren gehen Spiele, Begleitung bei Aktivit&auml;ten<br />\n	&bull; Stundenweise Beaufsichtigung</p>\n<p>\n	<br />\n	Dar&uuml;ber hinaus:</p>\n<p>\n	&bull; unterst&uuml;tzen wir Sie bei Antr&auml;gen an die Kranken- und Pflegekasse sowie an Beh&ouml;rden<br />\n	&bull; unterst&uuml;tzen wir Sie bei Antr&auml;gen auf Pflegestufe bzw. H&ouml;herstufungsantr&auml;gen und Verhinderungspflege<br />\n	&bull; vermitteln wir bei Bedarf Hausnotruf, Essen auf R&auml;dern, Fu&szlig;pflege und mehr<br />\n	&bull; beraten und unterst&uuml;tzen wir Angeh&ouml;rige in allen pflegerelevanten Bereichen<br />\n	&nbsp;</p>\n', 0),
(4, 'pflegedienst', 'pflegeversicherung', 'Pflegeversicherung', '', '<p>\n	<strong>Leistungen - Pflegeversicherung</strong></p>\n<p>\n	Die Pflegeversicherung stellt pflegebed&uuml;rftigen Menschen finanzielle Mittel/Leistungen&nbsp; zur Verf&uuml;gung. Grunds&auml;tzlich gilt, dass diese Leistungen jedoch erst nach Begutachtung/Einstufung&nbsp; durch den MDK bzw. bei Vorliegen einer Pflegestufe abgerufen werden k&ouml;nnen.<br />\n	Das Leistungsspektrum der Pflegeversicherung ist sehr umfangreich und hat eine sehr gro&szlig;e Bandbreite,&nbsp; weswegen Angeh&ouml;rige oder&nbsp; Pflegebed&uuml;rftige&nbsp; damit oft &uuml;berfordert sind.<br />\n	<strong>Nehmen Sie diesbez&uuml;glich bitte Kontakt mit uns auf &ndash; gerne beraten wir Sie in allen relevanten Belangen.</strong></p>\n<p>\n	Genaue und aktuelle Informationen zu allen Pflegeleistungen finden sie unter folgenden Links:</p>\n<p>\n	<a href="http://www.bmg.bund.de/pflege/leistungen/leistungen-der-pflegeversicherung.html" target="_blank">http://www.bmg.bund.de/pflege/leistungen/leistungen-der-pflegeversicherung.html</a></p>\n', 0),
(5, 'tagespflege', 'informationen', 'Informationen', '', '<p>\n	Tagespflegest&auml;tten sind Orte, in denen pflegebed&uuml;rftige und gerontopsychiatrisch erkrankte Menschen stundenweise betreut und versorgt werden und wo sie selbstbestimmt ihren individuellen Freiraum gestalten k&ouml;nnen. Pflegende Angeh&ouml;rige werden dadurch bei der t&auml;glichen Pflege sp&uuml;rbar entlastet.</p>\n<p>\n	Unser Neubau ist komplett barrierefrei, besitzt einen gro&szlig;en Garten sowie&nbsp; eine sonnige Terrasse.&nbsp; Es stehen mehrere Ruher&auml;ume zum R&uuml;ckzug zur Verf&uuml;gung. F&uuml;r eine ausgewogene Verpflegung sowie&nbsp; eine fachliche, abwechslungsreiche und liebevolle Betreuung ist gesorgt.</p>\n<p>\n	Ihre Pflegeversicherung stellt Ihnen finanzielle Mittel f&uuml;r teilstation&auml;re Leistungen zu Verf&uuml;gung. Sogar, wenn Sie bereits Leistungen zur h&auml;uslichen Pflege erhalten, bleiben diese bei Inanspruchnahme von Tagespflege-Leistungen unber&uuml;hrt.</p>\n<p>\n	Gerne beraten wir Sie diesbez&uuml;glich in einem pers&ouml;nlichen Gespr&auml;ch.</p>\n', 0),
(6, 'pflegeueberleitung', 'informationen', 'Informationen', '', '<h1>\n	Kooperationspartner</h1>\n<p>\n	&nbsp;</p>\n<p>\n	Das Pflegezentrum Moritz ist&nbsp; als Kooperationspartner des Passauer Klinikums f&uuml;r den&nbsp; Bereich &Uuml;berleitungspflege zust&auml;ndig. Nach der Entlassung eines Pflegebed&uuml;rftigen aus dem Krankenhaus werden Angeh&ouml;rige oft vor scheinbar unl&ouml;sbare Aufgaben gestellt, beispielsweise in der Frage der notwendigen Hilfsmittel oder welche Hilfen es durch die Pflegeversicherung gibt.&nbsp; In diesen Belangen stehen die Fachpflegeberaterinnen der &Uuml;berleitungspflege Versicherten und pflegenden Angeh&ouml;rigen unterst&uuml;tzend zur Seite. Besonderen Wert legen wir&nbsp; auf einen reibungslosen &Uuml;bergang vom Klinikaufenthalt zur h&auml;uslichen oder station&auml;ren Weiterversorgung.</p>\n<p>\n	Die Pflegeberatung ist ein Zusatzservice von uns und f&uuml;r die Versicherten und deren Angeh&ouml;rigen immer kostenfrei!<br />\n	&nbsp;</p>\n<p>\n	<strong>Kontakt:<br />\n	<strong>Klinikum Passau: (0851) 5300 1508 </strong></strong></p>\n<p>\n	&nbsp;</p>\n', 0),
(7, 'impressum', 'impressum', 'Impressum', '', '<p>\n	<br />\n	<strong>Angaben gem&auml;&szlig; &sect; 5 TMG:</strong>ffff<br />\n	Heinz Moritz<br />\n	Georg-Knon-Str. 17<br />\n	94121 Salzweg</p>\n<p>\n	<strong>Kontakt:</strong><br />\n	Telefon: 0851/7566466<br />\n	Telefax: 0851/7566467<br />\n	E-Mail: info@pflegezentrum-moritz.de<br />\n	&nbsp;</p>\n<p>\n	<strong>Verantwortlich f&uuml;r den Inhalt nach &sect; 55 Abs. 2 RStV:</strong><br />\n	Heinz Moritz<br />\n	Georg-Knon-Str. 17<br />\n	94121 Salzweg<br />\n	<br />\n	<strong>Quellenangaben f&uuml;r die verwendeten Bilder und Grafiken:</strong><br />\n	Melcak / Marketingagentur dasWerkzeug GbR<br />\n	Pflegezentrum Moritz</p>\n<p>\n	<br />\n	<strong><span style="font-size:18px;">Haftungsausschluss</span><br />\n	<br />\n	Haftung f&uuml;r Inhalte</strong><br />\n	Als Diensteanbieter sind wir gem&auml;&szlig; &sect; 7 Abs.1 TMG f&uuml;r eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach &sect;&sect; 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, &uuml;bermittelte oder gespeicherte fremde Informationen zu &uuml;berwachen oder nach Umst&auml;nden zu forschen, die auf eine rechtswidrige T&auml;tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber&uuml;hrt. Eine diesbez&uuml;gliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung m&ouml;glich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.<br />\n	<br />\n	<strong>Haftung f&uuml;r Links</strong><br />\n	Unser Angebot enth&auml;lt Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb k&ouml;nnen wir f&uuml;r diese fremden Inhalte auch keine Gew&auml;hr &uuml;bernehmen. F&uuml;r die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf m&ouml;gliche Rechtsverst&ouml;&szlig;e &uuml;berpr&uuml;ft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.<br />\n	<br />\n	<strong>Urheberrecht</strong><br />\n	Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielf&auml;ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung au&szlig;erhalb der Grenzen des Urheberrechtes bed&uuml;rfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur f&uuml;r den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n<p>\n	<strong>Datenschutz</strong><br />\n	Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten m&ouml;glich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit m&ouml;glich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdr&uuml;ckliche Zustimmung nicht an Dritte weitergegeben.<br />\n	Wir weisen darauf hin, dass die Daten&uuml;bertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitsl&uuml;cken aufweisen kann. Ein l&uuml;ckenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht m&ouml;glich.<br />\n	Der Nutzung von im Rahmen der Impressumspflicht ver&ouml;ffentlichten Kontaktdaten durch Dritte zur &Uuml;bersendung von nicht ausdr&uuml;cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr&uuml;cklich widersprochen. Die Betreiber der Seiten behalten sich ausdr&uuml;cklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `elements`
--

DROP TABLE IF EXISTS `elements`;
CREATE TABLE IF NOT EXISTS `elements` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `foreign_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`element_id`),
  KEY `elementtype` (`type`),
  KEY `foreignid` (`foreign_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=340 ;

--
-- Daten für Tabelle `elements`
--

INSERT INTO `elements` (`element_id`, `name`, `type`, `foreign_id`) VALUES
(2, 'Startseite Bild', 'bilder', 0),
(12, 'Startseite Seo1', 'text', 4),
(13, 'Startseite Seo2', 'text', 5),
(14, 'Startseite Titel', 'text', 2),
(15, 'Startseite Slider', 'slider', 2),
(16, 'Startseite Text', 'text', 1),
(17, 'Startseite Sortiment 1 Bild', 'bilder', 110),
(18, 'Startseite Sortiment 1 Titel', 'text', 6),
(19, 'Startseite Sortiment 1 Text', 'text', 7),
(20, 'Startseite Sortiment 1 Hover', 'text', 8),
(21, 'Startseite Sortiment 2 Bild', 'bilder', 112),
(22, 'Startseite Sortiment 2 Hover', 'text', 11),
(23, 'Startseite Sortiment 2 Text', 'text', 10),
(24, 'Startseite Sortiment 2 Titel', 'text', 9),
(25, 'Startseite Sortiment 3 Bild', 'bilder', 106),
(26, 'Startseite Sortiment 3 Hover', 'text', 12),
(27, 'Startseite Sortiment 3 Text', 'text', 14),
(28, 'Startseite Sortiment 3 Titel', 'text', 13),
(29, 'Startseite Sortiment 4 Bild', 'bilder', 119),
(30, 'Startseite Sortiment 4 Hover', 'text', 15),
(31, 'Startseite Sortiment 4 Text', 'text', 16),
(32, 'Startseite Sortiment 4 Titel', 'text', 17),
(33, 'Startseite Sortiment 5 Bild', 'bilder', 115),
(34, 'Startseite Sortiment 5 Hover', 'text', 18),
(35, 'Startseite Sortiment 5 Text', 'text', 19),
(36, 'Startseite Sortiment 5 Titel', 'text', 20),
(37, 'Startseite Sortiment 6 Bild', 'bilder', 113),
(38, 'Startseite Sortiment 6 Hover', 'text', 21),
(39, 'Startseite Sortiment 6 Text', 'text', 22),
(40, 'Startseite Sortiment 6 Titel', 'text', 23),
(41, 'Orthopädietechnik 1 Bild', 'bilder', 0),
(42, 'Orthopädietechnik 1 Text', 'text', 25),
(43, 'Orthopädietechnik 1 Titel', 'text', 24),
(44, 'Orthopädietechnik 2 Bild', 'bilder', 0),
(45, 'Orthopädietechnik 2 Titel', 'text', 26),
(46, 'Orthopädietechnik 2 Text', 'text', 27),
(47, 'Orthopädietechnik 3 Bild', 'bilder', 0),
(48, 'Orthopädietechnik 3 Text', 'text', 29),
(49, 'Orthopädietechnik 3 Titel', 'text', 28),
(50, 'Orthopädietechnik 4 Bild', 'bilder', 0),
(51, 'Orthopädietechnik 4 Titel', 'text', 31),
(52, 'Orthopädietechnik 4 Text', 'text', 30),
(53, 'Orthopädietechnik 5 Bild', 'bilder', 0),
(54, 'Orthopädietechnik 5 Titel', 'text', 33),
(55, 'Orthopädietechnik 5 Text', 'text', 32),
(56, 'Orthopädietechnik 6 Bild', 'bilder', 0),
(57, 'Orthopädietechnik 6 Titel', 'text', 34),
(58, 'Orthopädietechnik 6 Text', 'text', 35),
(59, 'Orthopädietechnik 7 Bild', 'bilder', 0),
(60, 'Orthopädietechnik 7 Titel', 'text', 36),
(61, 'Orthopädietechnik 7 Text', 'text', 37),
(62, 'Orthopädietechnik 8 Bild', 'bilder', 0),
(63, 'Orthopädietechnik 8 Titel', 'text', 38),
(64, 'Orthopädietechnik 8 Text', 'text', 39),
(65, 'Reha-Technik 1 Bild', 'bilder', 0),
(66, 'Reha-Technik 1 Titel', 'text', 41),
(67, 'Reha-Technik 1 Text', 'text', 42),
(68, 'Reha-Technik 2 Bild', 'bilder', 0),
(69, 'Reha-Technik 2 Titel', 'text', 43),
(70, 'Reha-Technik 2 Text', 'text', 44),
(71, 'Reha-Technik 3 Bild', 'bilder', 0),
(72, 'Reha-Technik 3 Titel', 'text', 45),
(73, 'Reha-Technik 3 Text', 'text', 46),
(74, 'Reha-Technik 4 Bild', 'bilder', 0),
(75, 'Reha-Technik 4 Titel', 'text', 47),
(76, 'Reha-Technik 4 Text', 'text', 48),
(77, 'Reha-Technik 5 Bild', 'bilder', 112),
(78, 'Reha-Technik 5 Titel', 'text', 49),
(79, 'Reha-Technik 5 Text', 'text', 50),
(80, 'Reha-Technik 6 Bild ', 'bilder', 0),
(81, 'Reha-Technik 6 Titel', 'text', 51),
(82, 'Reha-Technik 6 Text', 'text', 52),
(83, 'Reha-Technik 7 Bild', 'bilder', 0),
(84, 'Reha-Technik 7 Titel', 'text', 53),
(85, 'Reha-Technik 7 Text', 'text', 54),
(86, 'autocreate', 'bilder', 0),
(87, 'autocreate', 'text', 0),
(88, 'autocreate', 'text', 0),
(89, 'autocreate', 'text', 0),
(90, 'autocreate', 'text', 0),
(91, 'autocreate', 'bilder', 0),
(92, 'autocreate', 'text', 0),
(93, 'autocreate', 'text', 0),
(94, 'autocreate', 'text', 0),
(95, 'autocreate', 'text', 0),
(96, 'autocreate', 'bilder', 0),
(97, 'autocreate', 'text', 0),
(98, 'autocreate', 'text', 0),
(99, 'autocreate', 'text', 0),
(100, 'autocreate', 'text', 0),
(101, 'autocreate', 'bilder', 0),
(102, 'autocreate', 'bilder', 0),
(103, 'autocreate', 'text', 56),
(104, 'autocreate', 'text', 57),
(105, 'autocreate', 'text', 58),
(106, 'autocreate', 'text', 59),
(107, 'autocreate', 'bilder', 0),
(108, 'autocreate', 'text', 60),
(109, 'autocreate', 'text', 61),
(110, 'autocreate', 'text', 62),
(111, 'autocreate', 'text', 63),
(112, 'autocreate', 'bilder', 0),
(113, 'autocreate', 'text', 64),
(114, 'autocreate', 'text', 65),
(115, 'autocreate', 'text', 66),
(116, 'autocreate', 'text', 67),
(117, 'autocreate', 'bilder', 0),
(118, 'autocreate', 'text', 68),
(119, 'autocreate', 'text', 69),
(120, 'autocreate', 'text', 70),
(121, 'autocreate', 'text', 71),
(122, 'autocreate', 'bilder', 0),
(123, 'autocreate', 'text', 72),
(124, 'autocreate', 'text', 73),
(125, 'autocreate', 'text', 74),
(126, 'autocreate', 'text', 75),
(127, 'Reha-Technik 1 Bild Kopie', 'bilder', 0),
(128, 'Reha-Technik 1 Titel Kopie', 'text', 76),
(129, 'Reha-Technik 1 Text Kopie', 'text', 77),
(130, 'autocreate', 'bilder', 0),
(131, 'autocreate', 'text', 78),
(132, 'autocreate', 'text', 79),
(133, 'autocreate', 'bilder', 0),
(134, 'autocreate', 'text', 80),
(135, 'autocreate', 'text', 81),
(136, 'autocreate', 'bilder', 115),
(137, 'autocreate', 'text', 82),
(138, 'autocreate', 'text', 83),
(139, 'autocreate', 'bilder', 0),
(140, 'autocreate', 'text', 84),
(141, 'autocreate', 'text', 85),
(142, 'autocreate', 'bilder', 0),
(143, 'autocreate', 'text', 86),
(144, 'autocreate', 'text', 87),
(145, 'autocreate Kopie', 'bilder', 121),
(146, 'autocreate Kopie', 'text', 88),
(147, 'autocreate Kopie', 'text', 89),
(148, 'autocreate', 'text', 90),
(149, 'autocreate', 'text', 91),
(150, 'autocreate', 'text', 92),
(151, 'autocreate', 'text', 93),
(152, 'autocreate', 'text', 94),
(153, 'autocreate', 'text', 95),
(154, 'autocreate', 'text', 96),
(155, 'autocreate', 'text', 97),
(156, 'autocreate', 'text', 98),
(157, 'autocreate', 'text', 99),
(158, 'Orthopädietechnik 2 Bild Kopie', 'bilder', 0),
(159, 'Orthopädietechnik 2 Titel Kopie', 'text', 100),
(160, 'Orthopädietechnik 2 Text Kopie', 'text', 101),
(161, 'Orthopädietechnik 1 Bild Kopie', 'bilder', 0),
(162, 'Orthopädietechnik 1 Titel Kopie', 'text', 102),
(163, 'Orthopädietechnik 1 Text Kopie', 'text', 103),
(164, 'Orthopädietechnik 1 Bild Kopie Kopie', 'bilder', 0),
(165, 'Orthopädietechnik 1 Titel Kopie Kopie', 'text', 104),
(166, 'Orthopädietechnik 1 Text Kopie Kopie', 'text', 105),
(167, 'Orthopädietechnik 1 Bild Kopie Kopie', 'bilder', 0),
(168, 'Orthopädietechnik 1 Titel Kopie Kopie', 'text', 106),
(169, 'Orthopädietechnik 1 Text Kopie Kopie', 'text', 107),
(170, 'Orthopädietechnik 2 Bild Kopie', 'bilder', 0),
(171, 'Orthopädietechnik 2 Titel Kopie', 'text', 108),
(172, 'Orthopädietechnik 2 Text Kopie', 'text', 109),
(173, 'Orthopädietechnik 2 Bild Kopie Kopie', 'bilder', 0),
(174, 'Orthopädietechnik 2 Titel Kopie Kopie', 'text', 110),
(175, 'Orthopädietechnik 2 Text Kopie Kopie', 'text', 111),
(176, 'Orthopädietechnik 2 Bild Kopie Kopie', 'bilder', 0),
(177, 'Orthopädietechnik 2 Titel Kopie Kopie', 'text', 112),
(178, 'Orthopädietechnik 2 Text Kopie Kopie', 'text', 113),
(179, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie', 'bilder', 0),
(180, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie', 'text', 114),
(181, 'Orthopädietechnik 2 Text Kopie Kopie Kopie', 'text', 115),
(182, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie Kopie', 'bilder', 0),
(183, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie', 'text', 116),
(184, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie', 'text', 117),
(185, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie Kopie Kopie', 'bilder', 0),
(186, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie Kopie', 'text', 118),
(187, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie Kopie', 'text', 119),
(188, 'autocreate Kopie', 'bilder', 119),
(189, 'autocreate Kopie', 'text', 120),
(190, 'autocreate Kopie', 'text', 121),
(191, 'autocreate Kopie Kopie', 'bilder', 121),
(192, 'autocreate Kopie Kopie', 'text', 122),
(193, 'autocreate Kopie Kopie', 'text', 123),
(194, 'autocreate Kopie Kopie Kopie', 'bilder', 0),
(195, 'autocreate Kopie Kopie Kopie', 'text', 124),
(196, 'autocreate Kopie Kopie Kopie', 'text', 125),
(197, 'autocreate Kopie Kopie Kopie Kopie', 'bilder', 0),
(198, 'autocreate Kopie Kopie Kopie Kopie', 'text', 126),
(199, 'autocreate Kopie Kopie Kopie Kopie', 'text', 127),
(200, 'autocreate', 'bilder', 0),
(201, 'autocreate', 'text', 128),
(202, 'autocreate', 'text', 129),
(203, 'autocreate', 'text', 130),
(204, 'autocreate', 'text', 131),
(205, 'autocreate', 'bilder', 0),
(206, 'autocreate', 'text', 132),
(207, 'autocreate', 'text', 133),
(208, 'autocreate', 'text', 134),
(209, 'autocreate', 'text', 135),
(210, 'autocreate', 'bilder', 0),
(211, 'autocreate', 'text', 136),
(212, 'autocreate', 'text', 137),
(213, 'autocreate', 'text', 138),
(214, 'autocreate', 'text', 139),
(215, 'autocreate', 'bilder', 0),
(216, 'autocreate', 'text', 140),
(217, 'autocreate', 'text', 141),
(218, 'autocreate', 'text', 142),
(219, 'autocreate', 'text', 143),
(220, 'autocreate', 'text', 144),
(221, 'autocreate', 'text', 145),
(222, 'autocreate', 'text', 146),
(223, 'autocreate', 'text', 147),
(224, 'autocreate', 'text', 148),
(225, 'autocreate', 'text', 149),
(226, 'autocreate', 'bilder', 0),
(227, 'autocreate', 'text', 150),
(228, 'autocreate', 'text', 151),
(229, 'autocreate', 'text', 152),
(230, 'autocreate', 'text', 153),
(231, 'autocreate', 'bilder', 0),
(232, 'autocreate', 'text', 154),
(233, 'autocreate', 'text', 155),
(234, 'autocreate', 'text', 156),
(235, 'autocreate', 'text', 157),
(236, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie Kopie', 'bilder', 0),
(237, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie', 'text', 158),
(238, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie', 'text', 159),
(239, 'autocreate', 'text', 160),
(240, 'autocreate', 'bilder', 98),
(241, 'autocreate', 'text', 161),
(242, 'Orthopädietechnik 2 Bild Kopie', 'bilder', 0),
(243, 'Orthopädietechnik 2 Titel Kopie', 'text', 162),
(244, 'Orthopädietechnik 2 Text Kopie', 'text', 163),
(245, 'autocreate Kopie', 'text', 164),
(246, 'autocreate Kopie', 'bilder', 0),
(247, 'autocreate Kopie', 'text', 165),
(248, 'autocreate Kopie', 'text', 166),
(249, 'autocreate Kopie', 'bilder', 99),
(250, 'autocreate Kopie', 'text', 167),
(251, 'autocreate Kopie', 'text', 168),
(252, 'autocreate Kopie', 'bilder', 100),
(253, 'autocreate Kopie', 'text', 169),
(254, 'autocreate Kopie Kopie', 'text', 170),
(255, 'autocreate Kopie Kopie', 'bilder', 101),
(256, 'autocreate Kopie Kopie', 'text', 171),
(257, 'autocreate Kopie', 'text', 172),
(258, 'autocreate Kopie', 'bilder', 102),
(259, 'autocreate Kopie', 'text', 173),
(260, 'autocreate Kopie Kopie Kopie', 'text', 174),
(261, 'autocreate Kopie Kopie Kopie', 'bilder', 103),
(262, 'autocreate Kopie Kopie Kopie', 'text', 175),
(263, 'autocreate Kopie Kopie Kopie Kopie', 'text', 176),
(264, 'autocreate Kopie Kopie Kopie Kopie', 'bilder', 104),
(265, 'autocreate Kopie Kopie Kopie Kopie', 'text', 177),
(266, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'text', 178),
(267, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'bilder', 0),
(268, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'text', 179),
(269, 'autocreate Kopie Kopie Kopie Kopie Kopie Kopie', 'text', 180),
(270, 'autocreate Kopie Kopie Kopie Kopie Kopie Kopie', 'bilder', 0),
(271, 'autocreate Kopie Kopie Kopie Kopie Kopie Kopie', 'text', 181),
(272, 'autocreate', 'bilder', 0),
(273, 'autocreate', 'text', 182),
(274, 'autocreate', 'text', 183),
(275, 'autocreate', 'text', 184),
(276, 'autocreate', 'text', 185),
(277, 'autocreate', 'text', 186),
(278, 'autocreate', 'text', 187),
(279, 'autocreate', 'bilder', 0),
(280, 'autocreate', 'text', 188),
(281, 'autocreate', 'text', 189),
(282, 'autocreate', 'bilder', 119),
(283, 'autocreate', 'text', 190),
(284, 'autocreate', 'text', 191),
(285, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie', 'bilder', 111),
(286, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie', 'text', 192),
(287, 'Orthopädietechnik 2 Text Kopie Kopie Kopie', 'text', 193),
(288, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie', 'bilder', 109),
(289, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie', 'text', 194),
(290, 'Orthopädietechnik 2 Text Kopie Kopie Kopie', 'text', 195),
(291, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie', 'bilder', 111),
(292, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie', 'text', 196),
(293, 'Orthopädietechnik 2 Text Kopie Kopie Kopie', 'text', 197),
(294, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie Kopie', 'bilder', 109),
(295, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie', 'text', 198),
(296, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie', 'text', 199),
(297, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie', 'bilder', 111),
(298, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie', 'text', 200),
(299, 'Orthopädietechnik 2 Text Kopie Kopie Kopie', 'text', 201),
(300, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie Kopie', 'bilder', 109),
(301, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie', 'text', 202),
(302, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie', 'text', 203),
(303, 'Orthopädietechnik 2 Bild Kopie Kopie Kopie', 'bilder', 111),
(304, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie', 'text', 204),
(305, 'Orthopädietechnik 2 Text Kopie Kopie Kopie', 'text', 205),
(306, 'Reha-Technik 5 Bild Kopie', 'bilder', 112),
(307, 'Reha-Technik 5 Titel Kopie', 'text', 206),
(308, 'Reha-Technik 5 Text Kopie', 'text', 207),
(309, 'Reha-Technik 5 Bild Kopie', 'bilder', 112),
(310, 'Reha-Technik 5 Titel Kopie', 'text', 208),
(311, 'Reha-Technik 5 Text Kopie', 'text', 209),
(312, 'Reha-Technik 5 Bild Kopie', 'bilder', 112),
(313, 'Reha-Technik 5 Titel Kopie', 'text', 210),
(314, 'Reha-Technik 5 Text Kopie', 'text', 211),
(315, 'Reha-Technik 5 Bild Kopie', 'bilder', 112),
(316, 'Reha-Technik 5 Titel Kopie', 'text', 212),
(317, 'Reha-Technik 5 Text Kopie', 'text', 213),
(318, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'text', 214),
(319, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'bilder', 104),
(320, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'text', 215),
(321, 'autocreate Kopie Kopie', 'text', 216),
(322, 'autocreate Kopie Kopie', 'bilder', 102),
(323, 'autocreate Kopie Kopie', 'text', 217),
(324, 'autocreate', 'bilder', 119),
(325, 'autocreate', 'text', 218),
(326, 'autocreate', 'text', 219),
(327, 'autocreate', 'text', 220),
(328, 'autocreate Kopie Kopie', 'bilder', 121),
(329, 'autocreate Kopie Kopie', 'text', 221),
(330, 'autocreate Kopie Kopie', 'text', 222),
(331, 'autocreate Kopie Kopie Kopie', 'bilder', 121),
(332, 'autocreate Kopie Kopie Kopie', 'text', 223),
(333, 'autocreate Kopie Kopie Kopie', 'text', 224),
(334, 'autocreate Kopie Kopie Kopie Kopie', 'bilder', 121),
(335, 'autocreate Kopie Kopie Kopie Kopie', 'text', 225),
(336, 'autocreate Kopie Kopie Kopie Kopie', 'text', 226),
(337, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'bilder', 121),
(338, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'text', 227),
(339, 'autocreate Kopie Kopie Kopie Kopie Kopie', 'text', 228);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `galerie`
--

DROP TABLE IF EXISTS `galerie`;
CREATE TABLE IF NOT EXISTS `galerie` (
  `galerie_id` int(11) NOT NULL AUTO_INCREMENT,
  `seite` varchar(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `datum` date NOT NULL,
  `text` text NOT NULL,
  `bild_id` int(11) NOT NULL,
  PRIMARY KEY (`galerie_id`),
  KEY `seite` (`seite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `galerie`
--

INSERT INTO `galerie` (`galerie_id`, `seite`, `titel`, `datum`, `text`, `bild_id`) VALUES
(9, 'tagespflege', 'Impressionen Tagespflege Büchlberg', '2013-11-01', '', 84),
(10, 'pflegedienst', 'Impressionen Ambulanter Pflegedienst Salzweg', '2013-11-11', '\r\n            ', 50);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `galeriebilder`
--

DROP TABLE IF EXISTS `galeriebilder`;
CREATE TABLE IF NOT EXISTS `galeriebilder` (
  `galerie_id` int(11) NOT NULL,
  `bilder_id` int(11) NOT NULL,
  KEY `galerie_id` (`galerie_id`,`bilder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `galeriebilder`
--

INSERT INTO `galeriebilder` (`galerie_id`, `bilder_id`) VALUES
(2, 3),
(2, 6),
(2, 14),
(2, 17),
(3, 3),
(3, 5),
(3, 9),
(4, 3),
(4, 4),
(4, 8),
(4, 9),
(6, 7),
(6, 19),
(6, 24),
(6, 29),
(6, 36),
(6, 37),
(6, 38),
(9, 3),
(9, 34),
(9, 36),
(9, 45),
(9, 57),
(9, 58),
(9, 66),
(9, 73),
(9, 74),
(9, 76),
(9, 77),
(9, 78),
(9, 81),
(10, 5),
(10, 33),
(10, 59),
(10, 72);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `itemelements`
--

DROP TABLE IF EXISTS `itemelements`;
CREATE TABLE IF NOT EXISTS `itemelements` (
  `item_id` int(10) unsigned NOT NULL,
  `element_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  UNIQUE KEY `integrety` (`item_id`,`position`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `itemelements`
--

INSERT INTO `itemelements` (`item_id`, `element_id`, `position`) VALUES
(27, 12, 1),
(27, 13, 2),
(30, 2, 1),
(30, 14, 2),
(30, 16, 3),
(30, 15, 4),
(31, 17, 1),
(31, 18, 2),
(31, 19, 3),
(31, 20, 4),
(32, 21, 1),
(32, 24, 2),
(32, 23, 3),
(32, 22, 4),
(33, 25, 1),
(33, 28, 2),
(33, 27, 3),
(33, 26, 4),
(34, 29, 1),
(34, 32, 2),
(34, 31, 3),
(34, 30, 4),
(35, 33, 1),
(35, 36, 2),
(35, 35, 3),
(35, 34, 4),
(36, 37, 1),
(36, 40, 2),
(36, 39, 3),
(36, 38, 4),
(37, 15, 1),
(38, 41, 1),
(38, 43, 2),
(38, 42, 3),
(39, 44, 1),
(39, 45, 2),
(39, 46, 3),
(40, 47, 1),
(40, 49, 2),
(40, 48, 3),
(41, 50, 1),
(41, 51, 2),
(41, 52, 3),
(42, 53, 1),
(42, 54, 2),
(42, 55, 3),
(43, 56, 1),
(43, 57, 2),
(43, 58, 3),
(44, 59, 1),
(44, 60, 2),
(44, 61, 3),
(46, 65, 1),
(46, 66, 2),
(46, 67, 3),
(47, 68, 1),
(47, 69, 2),
(47, 70, 3),
(48, 71, 1),
(48, 72, 2),
(48, 73, 3),
(49, 74, 1),
(49, 75, 2),
(49, 76, 3),
(50, 77, 1),
(50, 78, 2),
(50, 79, 3),
(51, 80, 1),
(51, 81, 2),
(51, 82, 3),
(52, 83, 1),
(52, 84, 2),
(52, 85, 3),
(70, 102, 1),
(70, 103, 2),
(70, 104, 3),
(70, 105, 4),
(70, 106, 5),
(71, 107, 1),
(71, 108, 2),
(71, 109, 3),
(71, 110, 4),
(71, 111, 5),
(72, 112, 1),
(72, 113, 2),
(72, 114, 3),
(72, 115, 4),
(72, 116, 5),
(73, 117, 1),
(73, 118, 2),
(73, 119, 3),
(73, 120, 4),
(73, 121, 5),
(74, 122, 1),
(74, 123, 2),
(74, 124, 3),
(74, 125, 4),
(74, 126, 5),
(75, 127, 1),
(75, 128, 2),
(75, 129, 3),
(76, 130, 1),
(76, 131, 2),
(76, 132, 3),
(77, 133, 1),
(77, 134, 2),
(77, 135, 3),
(78, 136, 1),
(78, 137, 2),
(78, 138, 3),
(81, 145, 1),
(81, 146, 2),
(81, 147, 3),
(82, 148, 1),
(82, 149, 2),
(83, 150, 1),
(83, 151, 2),
(84, 152, 1),
(84, 153, 2),
(85, 154, 1),
(85, 155, 2),
(86, 156, 1),
(86, 157, 2),
(87, 158, 1),
(87, 159, 2),
(87, 160, 3),
(88, 161, 1),
(88, 162, 2),
(88, 163, 3),
(89, 164, 1),
(89, 165, 2),
(89, 166, 3),
(90, 167, 1),
(90, 168, 2),
(90, 169, 3),
(91, 170, 1),
(91, 171, 2),
(91, 172, 3),
(92, 173, 1),
(92, 174, 2),
(92, 175, 3),
(93, 176, 1),
(93, 177, 2),
(93, 178, 3),
(94, 179, 1),
(94, 180, 2),
(94, 181, 3),
(95, 182, 1),
(95, 183, 2),
(95, 184, 3),
(96, 185, 1),
(96, 186, 2),
(96, 187, 3),
(97, 188, 1),
(97, 189, 2),
(97, 190, 3),
(98, 191, 1),
(98, 192, 2),
(98, 193, 3),
(99, 194, 1),
(99, 195, 2),
(99, 196, 3),
(100, 197, 1),
(100, 198, 2),
(100, 199, 3),
(101, 200, 1),
(101, 201, 2),
(101, 202, 3),
(101, 203, 4),
(101, 204, 5),
(102, 205, 1),
(102, 206, 2),
(102, 207, 3),
(102, 208, 4),
(102, 209, 5),
(103, 210, 1),
(103, 211, 2),
(103, 212, 3),
(103, 213, 4),
(103, 214, 5),
(104, 215, 1),
(104, 216, 2),
(104, 217, 3),
(104, 218, 4),
(104, 219, 5),
(105, 220, 1),
(105, 221, 2),
(105, 222, 3),
(106, 223, 1),
(106, 224, 2),
(106, 225, 3),
(107, 226, 1),
(107, 227, 2),
(107, 228, 3),
(107, 229, 4),
(107, 230, 5),
(108, 231, 1),
(108, 232, 2),
(108, 233, 3),
(108, 234, 4),
(108, 235, 5),
(109, 236, 1),
(109, 237, 2),
(109, 238, 3),
(110, 239, 1),
(110, 240, 2),
(110, 241, 3),
(111, 242, 1),
(111, 243, 2),
(111, 244, 3),
(112, 245, 1),
(112, 246, 2),
(112, 247, 3),
(113, 248, 1),
(113, 249, 2),
(113, 250, 3),
(114, 251, 1),
(114, 252, 2),
(114, 253, 3),
(115, 254, 1),
(115, 255, 2),
(115, 256, 3),
(116, 257, 1),
(116, 258, 2),
(116, 259, 3),
(117, 260, 1),
(117, 261, 2),
(117, 262, 3),
(118, 263, 1),
(118, 264, 2),
(118, 265, 3),
(119, 266, 1),
(119, 267, 2),
(119, 268, 3),
(120, 269, 1),
(120, 270, 2),
(120, 271, 3),
(121, 272, 1),
(121, 273, 2),
(121, 274, 3),
(121, 275, 4),
(121, 276, 5),
(122, 277, 1),
(123, 278, 1),
(124, 279, 1),
(124, 280, 2),
(124, 281, 3),
(125, 282, 1),
(125, 283, 2),
(125, 284, 3),
(126, 285, 1),
(126, 286, 2),
(126, 287, 3),
(127, 288, 1),
(127, 289, 2),
(127, 290, 3),
(128, 291, 1),
(128, 292, 2),
(128, 293, 3),
(129, 294, 1),
(129, 295, 2),
(129, 296, 3),
(130, 297, 1),
(130, 298, 2),
(130, 299, 3),
(131, 300, 1),
(131, 301, 2),
(131, 302, 3),
(132, 303, 1),
(132, 304, 2),
(132, 305, 3),
(133, 306, 1),
(133, 307, 2),
(133, 308, 3),
(134, 309, 1),
(134, 310, 2),
(134, 311, 3),
(135, 312, 1),
(135, 313, 2),
(135, 314, 3),
(136, 315, 1),
(136, 316, 2),
(136, 317, 3),
(137, 318, 1),
(137, 319, 2),
(137, 320, 3),
(138, 321, 1),
(138, 322, 2),
(138, 323, 3),
(139, 324, 1),
(139, 325, 2),
(139, 326, 3),
(139, 327, 4),
(140, 328, 1),
(140, 329, 2),
(140, 330, 3),
(141, 331, 1),
(141, 332, 2),
(141, 333, 3),
(142, 334, 1),
(142, 335, 2),
(142, 336, 3),
(143, 337, 1),
(143, 338, 2),
(143, 339, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=144 ;

--
-- Daten für Tabelle `items`
--

INSERT INTO `items` (`item_id`, `type`) VALUES
(27, 7),
(82, 7),
(83, 7),
(84, 7),
(85, 7),
(86, 7),
(30, 9),
(124, 9),
(125, 9),
(139, 9),
(31, 10),
(32, 10),
(33, 10),
(34, 10),
(35, 10),
(36, 10),
(37, 11),
(38, 12),
(39, 12),
(40, 12),
(41, 12),
(42, 12),
(43, 12),
(44, 12),
(46, 12),
(47, 12),
(48, 12),
(49, 12),
(50, 12),
(51, 12),
(52, 12),
(75, 12),
(76, 12),
(77, 12),
(78, 12),
(81, 12),
(87, 12),
(88, 12),
(89, 12),
(90, 12),
(91, 12),
(92, 12),
(93, 12),
(94, 12),
(95, 12),
(96, 12),
(97, 12),
(98, 12),
(99, 12),
(100, 12),
(109, 12),
(111, 12),
(126, 12),
(127, 12),
(128, 12),
(129, 12),
(130, 12),
(131, 12),
(132, 12),
(133, 12),
(134, 12),
(135, 12),
(136, 12),
(140, 12),
(141, 12),
(142, 12),
(143, 12),
(70, 13),
(71, 13),
(72, 13),
(73, 13),
(74, 13),
(101, 13),
(102, 13),
(103, 13),
(104, 13),
(107, 13),
(108, 13),
(121, 13),
(105, 17),
(106, 17),
(110, 18),
(112, 18),
(113, 18),
(114, 18),
(115, 18),
(116, 18),
(117, 18),
(118, 18),
(119, 18),
(120, 18),
(137, 18),
(138, 18),
(122, 19),
(123, 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `itemtypeelementtypes`
--

DROP TABLE IF EXISTS `itemtypeelementtypes`;
CREATE TABLE IF NOT EXISTS `itemtypeelementtypes` (
  `itemtype_id` int(11) NOT NULL,
  `elementtype` varchar(255) COLLATE utf8_bin NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  KEY `elementtpye` (`elementtype`),
  KEY `itemtype_id` (`itemtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `itemtypeelementtypes`
--

INSERT INTO `itemtypeelementtypes` (`itemtype_id`, `elementtype`, `position`, `name`) VALUES
(5, 'slider', 1, 'topslider'),
(5, 'text', 2, 'toptext'),
(3, 'bilder', 1, 'Titelbild'),
(3, 'text', 2, 'header'),
(5, 'bilder', 3, 'bigbild'),
(5, 'bilder', 4, 'smallbild'),
(3, 'text', 3, 'text'),
(6, 'text', 1, 'Header'),
(6, 'text', 2, 'text'),
(6, 'bilder', 3, 'bilddrunter'),
(3, 'slider', 4, 'sliderslide'),
(7, 'text', 1, 'seo1'),
(7, 'text', 2, 'seo2'),
(9, 'bilder', 1, 'Bild'),
(9, 'text', 2, 'Titel'),
(9, 'text', 3, 'Text'),
(10, 'bilder', 1, 'Bild'),
(10, 'text', 2, 'Titel'),
(10, 'text', 3, 'Text'),
(10, 'text', 4, 'Hover'),
(11, 'slider', 1, 'slider'),
(12, 'bilder', 1, 'Bild'),
(12, 'text', 2, 'Titel'),
(12, 'text', 3, 'Text'),
(13, 'bilder', 1, 'bild'),
(13, 'text', 2, 'abteilung'),
(13, 'text', 3, 'name'),
(13, 'text', 4, 'tel'),
(13, 'text', 5, 'mail'),
(17, 'text', 1, 'tel'),
(17, 'text', 2, 'fax'),
(17, 'text', 3, 'mail'),
(18, 'text', 1, 'header'),
(18, 'bilder', 2, 'bild'),
(18, 'text', 3, 'text'),
(19, 'text', 1, 'header'),
(20, 'text', 1, 'text'),
(9, 'text', 4, 'Subtext');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `itemtypes`
--

DROP TABLE IF EXISTS `itemtypes`;
CREATE TABLE IF NOT EXISTS `itemtypes` (
  `itemtype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`itemtype_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `itemtypes`
--

INSERT INTO `itemtypes` (`itemtype_id`, `name`) VALUES
(7, 'SEO Texte'),
(9, 'Startseite Oben'),
(10, 'Startseite Sortiment'),
(11, 'Slider'),
(12, 'Sortiment Eintrag'),
(13, 'Ansprechpartner'),
(16, 'Cooler Itemtyp'),
(17, 'Ansprechpartner Unten'),
(18, 'Mitarbeiter'),
(19, 'Headertext'),
(20, 'Öffnungszeiten');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `languages`
--

INSERT INTO `languages` (`language_id`, `name`) VALUES
(1, 'Deutsch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `languagetexts`
--

DROP TABLE IF EXISTS `languagetexts`;
CREATE TABLE IF NOT EXISTS `languagetexts` (
  `text_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `header` varchar(255) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `language2text` (`text_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `languagetexts`
--

INSERT INTO `languagetexts` (`text_id`, `language_id`, `header`, `text`) VALUES
(1, 1, '', '<p>\r\n	Wir sind ein Dienstleistungsunternehmen der Gesundheitsbranche, das sich seit mittlerweile fast 4 Jahrzehnten in Familienbesitz befindet und zu den f&uuml;hrenden H&auml;usern seiner Art in Niederbayern z&auml;hlt.<br />\r\n	<br />\r\n	Moderne Hilfsmittel und technisch ausgereifte Fertigungsmethoden gepaart mit hochqualifiziertem Personal, erm&ouml;glichen heute eine Patientenversorgung, die an Professionalit&auml;t und technischen Knowhow keine W&uuml;nsche offen l&auml;sst.<br />\r\n	<br />\r\n	<strong>Ihre Gesundheit liegt uns am Herzen!</strong></p>\r\n'),
(2, 1, '', '<h4>\r\n	Top Produkte - Zertifizierter Betrieb - freundlicher Service</h4>\r\n'),
(3, 1, '', 'Eichkätzchenschwanz'),
(4, 1, '', '<div class="teasertext" itemprop="description">\r\n	Eine akustische Installation im Bahnhof Heumarkt sorgt bei vielen Fahrg&auml;sten f&uuml;r Irritationen. Jeden Tag zu einer bestimmten Zeit wird eine Sonderfahrt angek&uuml;ndigt, doch dieser Zug kommt niemals. Der Geisterzug ist Teil eines KVB-Kunstkonzeptes.<span class="TBAutor"> &nbsp;Von <span class="Name" itemprop="author">Tim Attenberger</span> </span></div>\r\n<p>\r\n	<span class="District"><span itemprop="contentLocation">Innenstadt</span>.&nbsp;</span></p>\r\n<p itemprop="text">\r\n	Jeden Abend spielt sich seit Sonntag auf dem Bahnsteig der neuen U-Bahn-Haltestelle Heumarkt eine unheimliche und auch etwas skurrile Szene ab, die bei den Fahrg&auml;sten f&uuml;r Irritation sorgt. Auf der Anzeigentafel wird stets zwischen 20 Uhr und Mitternacht eine Sonderfahrt angezeigt. Doch die angek&uuml;ndigte Bahn wird niemals kommen, obwohl die Wartenden genau h&ouml;ren k&ouml;nnen, wie der Zug ohne anzuhalten durch die Station rast. So soll der Eindruck eines Geisterzugs entstehen, der durch das K&ouml;lner U-Bahn-Netz f&auml;hrt. M&ouml;glich machen das insgesamt 28 Lautsprecher, die entlang des Bahnsteigs und bis in die Tunnel verbaut wurden. Sie werden einmal pro Tag in den Abendstunden von einem Zufallsgenerator angesteuert. Eine wichtige Voraussetzung daf&uuml;r besteht aus Sicherheitsgr&uuml;nden darin, dass zur selben Zeit keine echte Bahn am Gleis stehen darf.</p>\r\n'),
(5, 1, '', '<p>\r\n	In welche Schule soll ich mein Kind schicken? Um diese Entscheidung zu erleichtern, bieten Grundschulen und weiterf&uuml;hrende Schulen in den kommenden Tagen Informationsveranstaltungen und Tage der offenen T&uuml;r an.<span class="TBAutor"> &nbsp;Von <span class="Name" itemprop="author">Uwe Sch&auml;fer</span> </span> <span class="District"><span itemprop="contentLocation">K&ouml;ln</span>.&nbsp;</span></p>\r\n<p itemprop="text">\r\n	An welche Schule soll ich mein Kind schicken? Das fragen sich viele Eltern, deren Kinder entweder bald eingeschult werden oder solche, deren Kinder sich bald f&uuml;r eine weiterf&uuml;hrende Schule entscheiden m&uuml;ssen. Um diese Entscheidung zu erleichtern, bieten Grundschulen und weiterf&uuml;hrende Schulen in den kommenden Tagen Informationsveranstaltungen und Tage der offenen T&uuml;r an.</p>\r\n'),
(6, 1, '', '<h3>\r\n	Implantologie | Prothetik</h3>\r\n'),
(7, 1, '', '<p>\r\n	Kronen, Br&uuml;cken, Inlays</p>\r\n'),
(8, 1, '', '<p>\r\n	BEschreibung of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\r\n'),
(9, 1, '', '<h3>\r\n	Professionelle Zahnreinigung</h3>\r\n'),
(10, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>\r\n'),
(11, 1, '', '<p>\r\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\r\n'),
(12, 1, '', '<p>\r\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\r\n'),
(13, 1, '', '<h3>\r\n	Akupunktur</h3>\r\n'),
(14, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>\r\n'),
(15, 1, '', '<p>\r\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\r\n'),
(16, 1, '', '<p>\r\n	At vero eos et accusam et justo duo dolores et ea rebum.</p>\r\n'),
(17, 1, '', '<h3>\r\n	Cerec 3D</h3>\r\n'),
(18, 1, '', '<p>\r\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\r\n'),
(19, 1, '', '<p>\r\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\r\n'),
(20, 1, '', '<h3>\r\n	Praxis und Meisterlabor</h3>\r\n'),
(21, 1, '', '<p>\r\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\r\n'),
(22, 1, '', '<p>\r\n	Unsere Mitarbeiter</p>\r\n'),
(23, 1, '', '<h3>\r\n	Spitzenteam Nr 1</h3>\r\n'),
(24, 1, '', '<h3>\r\n	Orthesen</h3>\r\n'),
(25, 1, '', '<p style="text-align: justify;">\r\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\r\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\r\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\r\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\r\n'),
(26, 1, '', '<h3>\r\n	Prothesen</h3>\r\n'),
(27, 1, '', '<p style="text-align: justify;">\r\n	<strong>Prothesen</strong><br />\r\n	<br />\r\n	In Deutschland leben ca. 250.000 Menschen mit einer Amputation und j&auml;hrlich kommen ca. 55.000 Neuamputationen hinzu.<br />\r\n	Neben Unf&auml;llen, Tumorerkrankungen, Infektionen und Verletzungsfolgen die einen verh&auml;ltnism&auml;&szlig;ig geringen Anteil der Amputationsgr&uuml;nde darstellen, sind heute Gef&auml;&szlig;erkrankungen, z.B. als Folge von Diabetes, die mit Abstand h&auml;ufigste Amputationsursache.</p>\r\n<p style="text-align: justify;">\r\n	Wurde eine Amputation durchgef&uuml;hrt, ist dies f&uuml;r den jeweils Betroffenen eine gewaltige psychische Belastung, die meist nur mit professioneller Hilfe gemeistert werden kann. Erst die Aussicht, auch mit einer Prothese sein Leben weitestgehend unabh&auml;ngig meistern zu k&ouml;nnen gibt vielen Betroffenen wieder Mut und Hoffnung f&uuml;r eine weitere Zukunft.</p>\r\n<p style="text-align: justify;">\r\n	Prothesen sind K&ouml;rperersatzst&uuml;cke die nach Amputationen oder Dysmelien (angeborenes Fehlen von Gliedma&szlig;en) ihren Einsatz finden. Gerade in der Prothesentechnik hat in den letzten 30 Jahren eine wahre technische Revolution stattgefunden. Der Einsatz modernster Materialien, wie Carbon, Silikon, Titan usw. und die Verwendung mikrochipgesteuerter Bauteile oder myoelektronischer Sensoren, machen den Prothesenbau von heute zur high technology und den Orthop&auml;die-Techniker zum absoluten Spezialisten.</p>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<br />\r\n	<strong>Prothesen der oberen Extremit&auml;t:</strong></p>\r\n<p style="text-align: justify;">\r\n	<strong>Armprothesen:</strong><br />\r\n	Armprothesen k&ouml;nnen die wichtigsten Grundfunktionen der fehlenden Hand - wie z.B. Hand &ouml;ffnen und schlie&szlig;en - ersetzen, sowie das &auml;u&szlig;ere Erscheinungsbild wiederherstellen. Wir sind heute in der Lage, Ihnen von der rein kosmetischen Armprothese bis hin zur myoelektrischen high-end Prothese,&nbsp; alle Systeme entsprechend der jeweiligen Amputationsh&ouml;he, zu fertigen.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Kosmetische Armprothesen (Habitusprothesen)</strong><br />\r\n	Kosmetische Armprothesen werden zur Wiederherstellung des &auml;u&szlig;eren Erscheinungsbildes getragen und von Patienten bevorzugt, f&uuml;r die das &auml;u&szlig;ere Erscheinungsbild von entscheidender Bedeutung ist. Die funktionellen M&ouml;glichkeiten sind meist jedoch auf ein einfaches Gegenhalten beschr&auml;nkt.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Myoelektrische Armprothesen</strong><br />\r\n	Myoelektrische Armprothesen sind fremdkraftbetrieben. Bei jeder vom Patienten gewollten Kontraktion des Muskels, entsteht auf der Haut eine elektrische Spannung, die zum Steuern der elektrisch angetriebenen Prothesen genutzt wird. Man spricht hierbei auch von gedankengesteuerten Prothesensystemen.</p>\r\n<p style="text-align: justify;">\r\n	Diese Systeme sind heute so ausgefeilt, dass man damit nicht mehr nur das einfache Hand&ouml;ffnen und -schlie&szlig;en steuert, sondern auch die Drehung des Handgelenks, sowie Beugung und Streckung des Ellenbogens.</p>\r\n<p style="text-align: justify;">\r\n	Nur wenigen Firmen in Deutschland ist es gestattet diese Prothesensysteme zu fertigen, da sie in ihrer Komplexit&auml;t enormes Fachwissen und technisches Know-how erfordern.<br />\r\n	Das Sanit&auml;tshaus F&uuml;rst hat die vom Hersteller aufgestellten f&uuml;nf Myo-Qualit&auml;tskriterien alle erreicht und steht selbst unter den qualifizierten Betrieben in einer Ausnahmeposition.&nbsp;&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unser Leistungsspektrum - f&uuml;r Ihre Mobilit&auml;t</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		kontinuierliche Aus- und Weiterbildung unserer Orthop&auml;die-Techniker</li>\r\n	<li style="text-align: justify;">\r\n		Kooperation mit speziell geschulten Therapeuten</li>\r\n	<li style="text-align: justify;">\r\n		modernste technische Ausstattung</li>\r\n	<li style="text-align: justify;">\r\n		Erfahrene Orthop&auml;die-Techniker im Myo-Prothesenbau</li>\r\n	<li style="text-align: justify;">\r\n		Qualitativ hochwertige Prothesensysteme</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r Dynamic-Arm (aktive Ellenbogenbeugung u. -streckung)</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r Michelangelo-Hand (Axon Bus System)</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r MyoBock Systeme</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r MyoBock Kinder Systeme</li>\r\n	<li style="text-align: justify;">\r\n		kostenlose Hausbesuche</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Silikonprothesen der oberen Extremit&auml;t:</strong><br />\r\n	<br />\r\n	<strong>Finger- und Teilhandprothesen aus Silikon</strong><br />\r\n	Neben ihrer Eigenschaft als Mittel der sozialen Kommunikation ist die Hand das wichtigste Werkzeug des Menschen, immer im Blick, immer einsatzbereit. Entsprechend stigmatisierend empfinden Menschen schwere Verletzungen der Hand (meist durch Unfall), in denen ein oder mehrere Finger amputiert wurden.</p>\r\n<p style="text-align: justify;">\r\n	Psychische Probleme, in einer Welt wo alles perfekt sein muss, berufliche Probleme, wenn man pl&ouml;tzlich eine Tastatur nicht mehr richtig bedienen kann, usw..<br />\r\n	Es gibt viele Gr&uuml;nde, warum Menschen den Wunsch an uns herantragen, ihnen ihre Hand wieder so herzustellen, dass diese kosmetisch perfekt und fast wieder uneingeschr&auml;nkt nutzbar ist.</p>\r\n<p style="text-align: justify;">\r\n	Voraussetzung f&uuml;r so ein Versorgungsergebnis ist eine exakte Ma&szlig;- und Abformtechnik, eine an Perfektion grenzende Fertigungstechnik und eine Farbgestaltung die sich zu fast 100 Prozent an den Vorgaben der nat&uuml;rlichen Hand orientiert.</p>\r\n<p style="text-align: justify;">\r\n	Das hohe technische Wissen, kontinuierliche Schulungen und jahrelange Erfahrung in der Verarbeitung von Silikon-Kautschuken waren der Grund, dass der weltgr&ouml;&szlig;te Hersteller von Prothesen-Passteilen, die Firma &quot;Otto Bock Health Care Deutschland GmbH&quot; aus Duderstadt, das Sanit&auml;tshaus F&uuml;rst in die erlesene Liste der Silikon-Qualit&auml;tspartner aufnahm.</p>\r\n<p style="text-align: justify;">\r\n	Zusammen mit der Firma Otto Bock fertigen wir, egal ob einzelner Finger oder Teilhand, Prothesen, die an Passgenauigkeit und kosmetischer Perfektion, keine W&uuml;nsche offen lassen.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unser Leistungsspektrum:</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		hochwertige technische Ausstattung</li>\r\n	<li style="text-align: justify;">\r\n		jahrelange Erfahrung im Bereich Silikontechnik</li>\r\n	<li style="text-align: justify;">\r\n		kontinuierliche Weiterbildungen unserer Orthop&auml;dietechniker</li>\r\n	<li style="text-align: justify;">\r\n		verfassen einer herausragenden fachlichen Expertise</li>\r\n	<li style="text-align: justify;">\r\n		Hausbesuche</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	<a href="http://www.leben-mit-fingeramputation.de" target="_blank"><br />\r\n	http://www.leben-mit-fingeramputation.de</a></p>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Prothesen der unteren Extremit&auml;t:</strong><br />\r\n	<br />\r\n	<strong> Beinprothesen</strong><br />\r\n	Mobilit&auml;t ist Lebensqualit&auml;t, in jedem Alter, auch nach einer Beinamputation. So vielf&auml;ltig unser Leben ist, so verschieden sind auch die Anforderungen an eine Prothese.</p>\r\n<p style="text-align: justify;">\r\n	Jede von uns gefertigte Prothese ist ein Unikat, die individuell f&uuml;r Ihren Nutzer hergestellt wurde.<br />\r\n	Ob Stumpfbettungen aus HTV-Silikon (Hochtemparaturvernetztes Silikon), aus Gie&szlig;harz mit oder ohne flexiblen Innenschaft, mit Silikon-, Gel- oder Polyurethan-Linern, usw. - egal welche Anforderungen Ihre Stumpfverh&auml;ltnisse an uns stellen, wir sind in der Lage diese zu erf&uuml;llen.</p>\r\n<p style="text-align: justify;">\r\n	Das menschliche Bein erf&uuml;llt eine Vielzahl von Aufgaben und somit sind auch die Anforderungen an ein Prothesenbein sehr gro&szlig;. Eine Prothese ist eine Kombination aus Prothesenschaft (Stumpfbettung) und diversen Passteilen, die sich gegenseitig so erg&auml;nzen, dass sie das menschliche Bein so gut wie m&ouml;glich ersetzen. Welche Passteile im Einzelnen verwendet werden, richtet sich nach der jeweiligen Amputationsh&ouml;he und dem Aktivit&auml;tsgrad des Patienten.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Wir unterscheiden hierbei vier Mobilit&auml;tsklassen:</strong><br />\r\n	Mobilit&auml;tsklasse 1: Innenbereichsgeher<br />\r\n	Mobilit&auml;tsklasse 2: eingeschr&auml;nkter Au&szlig;enbereichsgeher<br />\r\n	Mobilit&auml;tsklasse 3: uneingeschr&auml;nkter Au&szlig;enbereichsgeher<br />\r\n	Mobilit&auml;tsklasse 4: uneingeschr&auml;nkter Au&szlig;enbereichsgeher mit besonders hohen Anspr&uuml;chen</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unser Leistungsspektrum - f&uuml;r Ihre Mobilit&auml;t</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		kontinuierliche Aus- und Weiterbildung unserer Orthop&auml;die-Techniker</li>\r\n	<li style="text-align: justify;">\r\n		Kooperation mit speziell geschulten Therapeuten</li>\r\n	<li style="text-align: justify;">\r\n		modernste technische Ausstattung</li>\r\n	<li style="text-align: justify;">\r\n		Erfahrene Orthop&auml;die-Techniker im Prothesenbau</li>\r\n	<li style="text-align: justify;">\r\n		Qualitativ hochwertige Prothesensysteme</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r das mikroprozessorgeregelte Kniegelenk GENIUM&reg;</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r das mikroprozessorgeregelte Kniegelenk C-Leg&reg;</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r das AeroLink&reg;-Unterdrucksystem</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r Harmony&reg;-Unterdrucksystem</li>\r\n	<li style="text-align: justify;">\r\n		kostenlose Hausbesuche</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Oberschenkelprothesen</strong><br />\r\n	Eine Oberschenkelamputation oder auch transfemorale Amputation wird dann durchgef&uuml;hrt, wenn das vorhandene Kniegelenk aus medizinischen Gr&uuml;nden vom Chirurgen nicht mehr erhalten werden kann.</p>\r\n<p style="text-align: justify;">\r\n	Die l&auml;ngsovale Schaftform (CAT-CAM)&nbsp; in Kombination mit hydrostatischer Belastungsaufnahme, d.h. es wird die gesamte Stumpfoberfl&auml;che zur Lastaufnahme herangezogen, ist heute die Schaftform der Wahl. Hierbei bietet sich dem Patienten der Vorteil, gegen&uuml;ber der veralteten querovalen Schaftform, dass die Prothesenf&uuml;hrung in der Stand- und Schwungphase, durch den gro&szlig;fl&auml;chigen Kontakt erheblich verbessert wurde.<br />\r\n	Ob der Patient letztlich mit einem Saugsystem und flexiblem Innenschaft, oder einem Linersystem mit distaler Arretierung versorgt wird ist letztlich den Stumpfverh&auml;ltnissen, dem Krankheitsbild und/oder auch dem Wunsch des Patienten geschuldet.<br />\r\n	Dank kontinuierlicher Zusatzqualifikationen ist die orthop&auml;dische Werkstatt des Sanit&auml;tshauses F&uuml;rst, heute in der Lage seinen Patienten modernste Prothesenpassteile, wie z.B. die mikroprozessergeregelten Kniegelenke C-Leg&reg; oder das noch weiterentwickelte Genium&reg; zu bieten.</p>\r\n<p style="text-align: justify;">\r\n	Diese Kniegelenke unterscheiden sich ma&szlig;geblich von konventionellen mechanischen Kniegelenken, wie nachfolgend aufgef&uuml;hrt:</p>\r\n<p style="text-align: justify;">\r\n	<strong>C-Leg&reg; Kniegelenk<br />\r\n	</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		vollst&auml;ndig mikroprozessorgeregeltes Kniegelenk</li>\r\n	<li style="text-align: justify;">\r\n		unerreicht hohe Sicherheit und Dynamik</li>\r\n	<li style="text-align: justify;">\r\n		Ann&auml;herung an nat&uuml;rliches Gangbild</li>\r\n	<li style="text-align: justify;">\r\n		sicheres, harmonisches Gehen in unterschiedlichen Schrittgeschwindigkeiten und auf verschiedenen Untergr&uuml;nden</li>\r\n	<li style="text-align: justify;">\r\n		dreij&auml;hrige Garantie mit kostenfreier Serviceinspektion nach 24 Monaten</li>\r\n	<li style="text-align: justify;">\r\n		C-Leg Mobilit&auml;tsgarantie</li>\r\n	<li style="text-align: justify;">\r\n		Empfohlen f&uuml;r die Mobilit&auml;tsgrade 2 bis 4</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	und zu den bereits aufgef&uuml;hrten Punkten bietet das derzeit beste Kniegelenk folgende zus&auml;tzliche Vorteile:<br />\r\n	&nbsp;<br />\r\n	<strong> Genium&reg; Kniegelenk</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		optimiertes physiologischen Gehen</li>\r\n	<li style="text-align: justify;">\r\n		nat&uuml;rliches Treppensteigen</li>\r\n	<li style="text-align: justify;">\r\n		nat&uuml;rliches &Uuml;berwinden von Hindernissen</li>\r\n	<li style="text-align: justify;">\r\n		nat&uuml;rliches Stehen</li>\r\n	<li style="text-align: justify;">\r\n		Empfohlen f&uuml;r die Mobilit&auml;tsgrade 2 bis 4</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unterschenkelprothesen</strong></p>\r\n<p style="text-align: justify;">\r\n	Die Unterschenkelamputation oder auch transtibiale Amputation ist eine sowohl funktionell als auch kosmetisch gut zu versorgende Amputation.<br />\r\n	Die Stumpfbettung erfolgt heute in der Regel mit Linern aus Silikon, Gel oder Polyurethan, aber auch die Verwendung von Polytol&reg;- oder HTV-Innensch&auml;ften liefert gerade bei schwierigen Stumpfverh&auml;ltnissen beste Ergebnisse.<br />\r\n	Der Liner oder Innenschaft dient als&nbsp; &bdquo;zweite Haut&ldquo; zwischen den beweglichen Weichteilen des Stumpfes und der harten Schale des Schaftes, welcher die sogenannten Scherkr&auml;fte zwischen Haut und Prothesenschaft auf ein Minimum reduziert und somit den Tragekomfort der Prothese erheblich erh&ouml;ht.<br />\r\n	Je nach Aktivit&auml;tsgrad des zu versorgenden Patienten erfolgt dann die Auswahl der Fu&szlig;systems. Egal ob sicheres Stehen und vorsichtiges Gehen, dynamisches Marschieren oder schnelles Rennen f&uuml;r Sie im Vordergrund steht, bei uns bekommen Sie den Prothesenfu&szlig; der individuell auf Sie abgestimmt ist. Durch die&nbsp; Zusammenarbeit mit den weltweit f&uuml;hrenden Herstellern f&uuml;r Prothesensysteme, sind wir heute in der Lage, Ihre Prothese mit dem f&uuml;r Sie idealen Fu&szlig;system auszustatten.</p>\r\n<p style="text-align: justify;">\r\n	<br />\r\n	<strong>Fu&szlig;prothesen aus Silikon</strong></p>\r\n<p style="text-align: justify;">\r\n	Ihr Amputationsstumpf ist verheilt und weitestgehend schmerzfrei belastbar, dann ist die Zeit gekommen Sie mit einer Silikon-Fu&szlig;prothese zu versorgen, die kosmetisch und &auml;sthetisch, aber auch funktionell keine W&uuml;nsche offen l&auml;sst.<br />\r\n	Im Vordergrund dieses exklusiven Prothesensystems stehen dabei eine gleichm&auml;&szlig;ige Druckverteilung und ein verbessertes Gangbild. Eine optimale Fixierung am Amputationsstumpf verhindert Hautirritationen.<br />\r\n	Der kosmetische Aspekt vervollst&auml;ndigt auch hier die Versorgung. Barfu&szlig;laufen wird ebenso erm&ouml;glicht wie das Tragen von Konfektionsschuhen mit verschiedenen Absatzh&ouml;hen.</p>\r\n<p style="text-align: justify;">\r\n	<a href="http://www.vorfussamputation.de/" target="_blank">http://www.vorfussamputation.de/</a></p>\r\n'),
(28, 1, '', '<h3>\r\n	Schuheinlagen nach Ma&szlig;</h3>\r\n'),
(29, 1, '', '<p style="text-align: justify;">\r\n	Eine der wohl in der &Ouml;ffentlichkeit am meisten untersch&auml;tzten Versorgungsformen in der Orthop&auml;dietechnik.<br />\r\n	Kopfschmerz, H&uuml;ftschmerz, Nackenverspannungen, Wirbels&auml;ulenprobleme usw. das alles aber k&ouml;nnen Auswirkungen einer Fehlstellung der F&uuml;&szlig;e sein.<br />\r\n	Nach Verordnung Ihres Arztes fertigen wir f&uuml;r Sie Ihre individuelle Fu&szlig;bettung, nach Form- oder Computerabdruck. Egal ob f&uuml;r den Sport-, Berufs-, Arbeits- oder Freizeitschuh Ihre Einlage ist immer ein medizinisches Hilfsmittel, ein Unikat, das die Statik Ihres K&ouml;rpers neu ausrichtet, den Bewegungsablauf korrigiert und vorhandene Schmerzen beseitigt.<br />\r\n	Gegen&uuml;ber vergangen Jahren sind die heutigen Einlagenmodelle keine harten und starren Einlegeplatten mehr, sondern technisch ausgereifte Hilfsmittel die sowohl an Materialauswahl, als auch an punktuellen Korrekturm&ouml;glichkeiten keine W&uuml;nsche mehr offen lassen.<br />\r\n	Die heute h&auml;ufigsten Fu&szlig;fehlstellungen sind Knick-, Senk-, Spreiz- und Plattfu&szlig; resultierend aus schlechtem Billigschuhwerk und dem zunehmenden Alter und dem &Uuml;bergewicht der Bev&ouml;lkerung.<br />\r\n	Auch bei Kindern ist zu beobachten, dass die Zahl der Fu&szlig;fehlstellungen in den letzten zehn Jahren gravierend anstieg, &Uuml;bergewicht und Bewegungsmangel sind hier mit Sicherheit die Hauptgr&uuml;nde daf&uuml;r.<br />\r\n	Aber egal ob Jung oder Alt wir die Techniker der orthop&auml;dischen Werkstatt des Sanit&auml;tshaus F&uuml;rst haben f&uuml;r Ihre F&uuml;&szlig;e die optimale L&ouml;sung f&uuml;r eine schmerzfreie Mobilit&auml;t in die Zukunft.</p>\r\n'),
(30, 1, '', '<p>\r\n	Eine Akupunktursitzung dauert etwa 20 bis 30 Minuten. Dabei wird der Patient ruhig und entspannt gelagert, typischerweise liegt er oder sitzt bequem. Vor dem Einstich einer Nadel wird die Stelle und die unmittelbare Umgebung leicht massiert. W&auml;hrend einer Sitzung werden so wenige Punkte wie m&ouml;glich gestochen. Manche Autoren geben eine Maximalzahl von 16 an, die aber in Einzelf&auml;llen &uuml;berstiegen werden kann.</p>\r\n'),
(31, 1, '', '<h3>\r\n	Durchf&uuml;hrung</h3>\r\n'),
(32, 1, '', '<p>\r\n	Die <a href="http://de.wikipedia.org/wiki/Weltgesundheitsorganisation" title="Weltgesundheitsorganisation">Weltgesundheitsorganisation</a> (WHO) ver&ouml;ffentlichte 2003 eine <a href="http://de.wikipedia.org/wiki/Indikation" title="Indikation">Indikationsliste</a> f&uuml;r Akupunktur. Diese Ver&ouml;ffentlichung wurde unter Ausschluss der Wissenschaftsgemeinschaft erstellt und keinerlei Peer-Review unterzogen. Sie spiegelt nicht den <a class="mw-redirect" href="http://de.wikipedia.org/wiki/Stand_der_Forschung" title="Stand der Forschung">Stand der Forschung</a> &uuml;ber Akupunktur wider. Kritiker gehen davon aus, dass in diesem Fall die WHO von Akupunkturbef&uuml;rwortern, die zu dieser Zeit eine Machtposition in der Organisation erlangen konnten, instrumentalisiert wurde.<sup> </sup>Diese Liste umfasst folgende Bereiche:</p>\r\n<ul>\r\n	<li>\r\n		Erkrankungen des <a href="http://de.wikipedia.org/wiki/Atmung" title="Atmung">Atmungssystems</a> (etwa akute <a class="mw-redirect" href="http://de.wikipedia.org/wiki/Nasennebenh%C3%B6hlenentz%C3%BCndung" title="Nasennebenhöhlenentzündung">Nasennebenh&ouml;hlenentz&uuml;ndung</a>)</li>\r\n	<li>\r\n		Gastrointestinale St&ouml;rungen (etwa chronische <a href="http://de.wikipedia.org/wiki/Magengeschw%C3%BCr" title="Magengeschwür">Magengeschw&uuml;re</a>)</li>\r\n	<li>\r\n		Schlafst&ouml;rungen</li>\r\n	<li>\r\n		<a href="http://de.wikipedia.org/wiki/Asthma_bronchiale" title="Asthma bronchiale">Bronchialasthma</a></li>\r\n	<li>\r\n		Neurologische St&ouml;rungen (etwa nach <a href="http://de.wikipedia.org/wiki/Schlaganfall" title="Schlaganfall">Schlaganf&auml;llen</a>)</li>\r\n	<li>\r\n		Augenerkrankungen (etwa zentrale <a href="http://de.wikipedia.org/wiki/Retinitis" title="Retinitis">Retinitis</a>)</li>\r\n	<li>\r\n		Muskuloskeletale Erkrankungen (etwa <a class="mw-redirect" href="http://de.wikipedia.org/wiki/Cervicobrachialsyndrom" title="Cervicobrachialsyndrom">Cervicobrachialsyndrom</a>)</li>\r\n	<li>\r\n		Erkrankungen im Mundbereich (etwa Schmerzen nach <a href="http://de.wikipedia.org/wiki/Extraktion_%28Zahnmedizin%29" title="Extraktion (Zahnmedizin)">Extraktionen</a>, <a href="http://de.wikipedia.org/wiki/Gingivitis" title="Gingivitis">Gingivitis</a>).</li>\r\n</ul>\r\n<p>\r\n	Als anerkannte Indikation f&uuml;r eine Akupunkturbehandlung gelten auch <a class="mw-redirect" href="http://de.wikipedia.org/wiki/Durchbruchschmerzen" title="Durchbruchschmerzen">chronische Schmerzen</a>, wenn kein k&ouml;rperlicher Befund vorliegt und Schwangerschaftsbeschwerden.</p>\r\n<p>\r\n	Das US-amerikanische <i>National Institutes of Health</i> wertete alle vorhandenen Studien zur Akupunktur aus und bem&auml;ngelte dabei die oftmals schlechte Qualit&auml;t vieler Studien. In einem Bericht, den ein von <a href="http://de.wikipedia.org/wiki/Alternativmedizin" title="Alternativmedizin">Alternativmedizinern</a> dominiertes Komitee erstellte, wird dagegen auf vielversprechende Ergebnisse hingewiesen, die auf die Wirksamkeit in zahlreichen Bereichen hindeuten.</p>\r\n'),
(33, 1, '', '<h3>\r\n	Einsatzgebiete</h3>\r\n'),
(34, 1, '', '<h3>\r\n	Schuhzurichtungen</h3>\r\n'),
(36, 1, '', '<h3>\r\n	Diabetes</h3>\r\n'),
(41, 1, '', '<h3>\r\n	Rollst&uuml;hle</h3>\r\n'),
(42, 1, '', '<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2"><u>Standardrollstuhl</u></font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Standardrollst&uuml;hle bestehen aus einem faltbaren Rohrrahmen, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;ndern vorne, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer Sitz- und R&uuml;ckenbespannung aus Kunstleder, je nach Modell auch gepolstert.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken. Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Spezielle Ausf&uuml;hrungen f&uuml;r Beinamputierte mit nach hinten verlagertem Radstand stehen ebenfalls zur Verf&uuml;gung, bzw. Standardmodelle sind auch nachtr&auml;glich in Amputiertenrollst&uuml;hle umr&uuml;stbar.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2"><i>Download PDF</i></font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2"><u>Leichtgewichtsrollstuhl</u></font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Leichtgewichtrollst&uuml;hle bestehen aus Aluminium oder anderen Leichtmetallen, zwei gro&szlig;en R&auml;dern hinten, zwei kleine Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, ebenfalls aus Aluminium, sowie einer Sitz- und R&uuml;ckenbespannung aus textilem Material, je nach Modell auch gepolstert.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar. Leichtgewichtrollst&uuml;hle sind gegen&uuml;ber herk&ouml;mmlichen Rollst&uuml;hlen ca. 3 bis 5 kg leichter. Diese Gewichtseinsparung bedeutet jedoch nicht, dass Behinderte mit geringen Greifkr&auml;ften mit diesen Rollstuhlmodellen besser versorgt w&auml;ren. Der Fahrwiderstand von Rollst&uuml;hlen ist entscheidend und wird durch eine blo&szlig;e Gewichtsverringerung kaum beeinflusst. Das geringe Gewicht von Leichtgewichtrollst&uuml;hlen soll es Behinderten selbst erleichtern, ihren Rollstuhl selbst&auml;ndig, z.B. in einem Pkw, zu verstauen.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2"><u>Aktivrollstuhl</u></font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Aktivrollst&uuml;hle bestehen meist aus einem faltbaren Rohrrahmen (Stahl, Aluminium, Titan o.a.) gro&szlig;en Antriebsr&auml;dern hinten und kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, einer meist festen textilen R&uuml;cken- und Sitzbespannung.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Der Schwerpunkt des Rollstuhls kann durch variable Befestigungsm&ouml;glichkeiten der Antriebsr&auml;der ver&auml;ndert werden, wodurch eine Anpassung an die jeweilige Aktivit&auml;t und Behinderung des Rollstuhlbenutzers m&ouml;glich ist. Ferner ist eine Radsturzeinstellung bei einigen Modellen m&ouml;glich.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Durch die Anpassungsm&ouml;glichkeit der Radposition wird au&szlig;erdem eine bessere Kraftausnutzung erreicht. Unterschiedlich gestaltete oder verstellbare R&uuml;ckenlehnen (h&ouml;henverstellbar) unterst&uuml;tzen die Anpassung an den jeweiligen Verwendungszweck. Durch vielf&auml;ltige Ausstattungsvariationen, die den Herstellerlisten zu entnehmen sind, ist eine Anpassung an nahezu alle Aktivit&auml;ten m&ouml;glich.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Gew&ouml;hnlich stehen mehrere R&uuml;ckenteile, Seitenteile, Fu&szlig;st&uuml;tzen, Lenkrollen und Antriebsr&auml;der zur Auswahl, die jeweils auf entsprechende Aktivit&auml;ten abgestellt sind und durch ihre Kombinationsvielfalt eine ideale Anpassung erm&ouml;glichen.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Durch die Umbauf&auml;higkeit von Aktivrollst&uuml;hlen ist es m&ouml;glich, diese sowohl im normalen Umfeld als Alternative zum Standardrollstuhl und gleichzeitig als Sportrollstuhl zu verwenden. Mit Hilfe zus&auml;tzlicher Seitenteile, entsprechender R&auml;der und R&uuml;ckenteile er&uuml;brigt sich die Zweitanschaffung eines Standardrollstuhls.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2"><u>Multifunktionsrollstuhl</u></font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Multifunktionsrollst&uuml;hle sind meist nicht faltbar und verf&uuml;gen &uuml;ber eine Sitz- und R&uuml;ckenlehnenverstellung mittels mechanischem Gest&auml;nge oder &uuml;ber Gasdruckfeder, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer anatomischen Sitz- und R&uuml;ckenpolsterung.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></span></strong></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<strong><span style="font-family:comic sans ms,cursive;"><font size="2">Durch die M&ouml;glichkeit der Sitz- und R&uuml;ckenlehnenverstellung ist es Behinderten m&ouml;glich, eine ihrer Behinderung nach, physiologisch angemessene, Sitzhaltung einzunehmen.</font></span></strong></p>\r\n'),
(43, 1, '', '<h3>\r\n	Gehhilfen</h3>\r\n'),
(44, 1, '', '<p>\r\n	<span style="color:#ffd700;"><span style="font-family: tahoma,geneva,sans-serif;">Gehhilfen text</span></span></p>\r\n<p>\r\n	<span style="color:#ffd700;"><span style="font-family: tahoma,geneva,sans-serif;">Gehhilfen text</span></span></p>\r\n<p>\r\n	<span style="color:#ffd700;"><span style="font-family: tahoma,geneva,sans-serif;">Gehhilfen text</span></span></p>\r\n<p>\r\n	<span style="color:#ffd700;"><span style="font-family: tahoma,geneva,sans-serif;">Gehhilfen text</span></span></p>\r\n<p>\r\n	<span style="color:#ffd700;"><span style="font-family: tahoma,geneva,sans-serif;">Gehhilfen text</span></span></p>\r\n'),
(45, 1, '', '<h3>\r\n	Bad &amp; Toilette</h3>\r\n');
INSERT INTO `languagetexts` (`text_id`, `language_id`, `header`, `text`) VALUES
(46, 1, '', '<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2"><u>Badewannenlifter</u></font></span></span></p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Maximale Belastbarkeit 140 kg</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Keine H&ouml;henadapter erforderlich (f&uuml;r Badewannen bis zu einer Wannentiefe von 48 cm)</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Hygieneaussparung erleichtert die Intimpflege</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Sitz-und R&uuml;ckenteil sind ergonomisch geformt</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Schwimmf&auml;hige und bequeme Handsteuerung</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Akku ist in der Handsteuerung integriert und kann jederzeit geladen werden</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Ladezustand wird rechtzeitig angezeigt</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Einfach zu reinigen durch glatte Oberfl&auml;chen und geschlossene R&uuml;ckeneinheit</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Der Lift l&auml;sst sich ohne gro&szlig;e Kraftanstrengung anheben,</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Leicht zu verstauen und zu transportieren zusammengefaltet oder in 2 Teilen</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Geringer Montageaufwand</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Auf elektromagnetische Vertr&auml;glichkeit gepr&uuml;ft</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Alle Bez&uuml;ge abnehmbar und leicht zu reinigen</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">3 Jahre Garantie auf den Badewannenlift, 2 Jahre Garantie auf den Akku. Ausgenommen sind Sauger und Bez&uuml;ge</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">jetzt mit Gleitschuhen statt Rollen</font></span></span></p>\r\n	</li>\r\n</ul>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2"><u>Duschhocker</u></font></span></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Das Leichtgewicht mit maximaler Belastbarkeit</font></span></span></p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">In drei Ausf&uuml;hrungen lieferbar</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Bis zu 180 kg belastbar</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Nur 1,6 kg Eigengewicht</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Einfach zu montieren, zu zerlegen und zu reinigen</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Vielseitig einsetzbar</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Beine 3-fach h&ouml;henverstellbar</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Rostfreie, silber eloxierte Aluminiumbeine</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">4 Ablaufschlitze in der Sitzfl&auml;che</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Lieferung in praktischer Mitnahmeverpackung</font></span></span></p>\r\n	</li>\r\n</ul>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2"><u>Duschstuhl, faltbar</u></font></span></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Gibt Sicherheit im Bad</font></span></span></p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Mit nur einem Handgriff faltbar</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Einfache und platzsparende Lagerung</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Bis 130 kg belastbar</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">4-fach h&ouml;henverstellbare Beine</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Hygieneaussparung</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Wasserablaufl&ouml;cher in der Sitzfl&auml;che</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Leicht zu reinigen</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Rostfreier Rahmen aus pulverbeschichtetem Stahlrohr</font></span></span></p>\r\n	</li>\r\n</ul>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2"><u>Duschklappsitz</u></font></span></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Passt in jede Dusche - bei Nichtgebrauch einfach zusammenklappen</font></span></span></p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Platzsparend an der Wand zu montieren</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">is 130 kg belastbar</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">St&uuml;tzbeine mit Gummikappen f&uuml;r zus&auml;tzliche Stabilit&auml;t und Sicherheit</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">4-fach h&ouml;henverstellbar f&uuml;r individuelle Anpassung</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Feinjustierbarer Fu&szlig; zum Ausgleich von Bodenunebenheiten</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Mit Hygieneaussparung</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Wasserablaufl&ouml;cher in der Sitzfl&auml;che</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Lieferung mit beiliegender Bohrschablone</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Rostfreier Rahmen aus pulverbeschichtetem Stahlrohr</font></span></span></p>\r\n	</li>\r\n</ul>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2"><u>Toilettensitzerh&ouml;hung</u></font></span></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Mit Deckel</font></span></span></p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Mit zwei Hygieneaussparungen vorne und hinten</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Griffmulde am Deckel</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Fixierschraube zur schnellen und einfachen Befestigung</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Guter Halt &ndash; rutsch- und verschiebungssicher</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Auf Sicherheit gepr&uuml;ft</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Gut zu reinigen, da glatte Oberfl&auml;chen</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Lieferung in praktischer Mitnahme-Trageverpackung</font></span></span></p>\r\n	</li>\r\n</ul>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><u><font size="2">Toilettensitzerh&ouml;hung mit Armlehnen</font></u></span></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Bei der festverschraubten Toilettensitzerh&ouml;hung ist jederzeit eine individuelle Anpassung an den Nutzer ohne Werkzeug m&ouml;glich:</font></span></span></p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">drei verschiedene Sitzh&ouml;hen</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">drei verschiedene Winkel, nach vorn abfallend</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Die hochklappbaren, ergonomischen Armlehnen sorgen f&uuml;r zus&auml;tzlichen Halt beim Hinsetzen und Aufstehen. Bei Bedarf kann auch nur eine Armlehne montiert werden. Durch die Schnellspannverschraubung ist eine blitzschnelle Montage jederzeit m&ouml;glich.</font></span></span></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n			<span style="color:#00ffff;"><span style="font-family: georgia,serif;"><font size="2">Hohe Belastbarkeit: 120kg!</font></span></span></p>\r\n	</li>\r\n</ul>\r\n'),
(47, 1, '', '<h3>\r\n	Betten</h3>\r\n'),
(48, 1, '', '<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><u><span style="background-color:#ff0000;">Pflegebetten</span></u></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Elektrisch betriebene Pflegebetten bieten eine komfortable L&ouml;sung f&uuml;r die Pflege von kranken, pflegebed&uuml;rftigen, gebrechlichen und behinderten Menschen.</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><u><span style="background-color:#ff0000;">Einlegerahmen</span></u></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Die Pflege des Partners in den eigenen vier W&auml;nden erh&auml;lt eine ganz neue Dimension:</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Der Betteinsatz erm&ouml;glicht durch den Einbau in ein vorhandenes Bett den Erhalt des gewohnten M&ouml;belumfeldes. Der Betteinsatz ist in unterschiedlichen Breiten erh&auml;ltlich. Die Standf&uuml;&szlig;e fixieren den Einsatz mit Bodenausgleichsschrauben und Befestigungslaschen sicher innerhalb des Bettes. H&ouml;henverstellbar &uuml;ber Elektromotor erleichtert der Betteinsatz die Pflege. Die viergeteilte Liegefl&auml;che ist elektromotorisch verstellbar. Der Betteinsatz ist in nur wenigen Minuten zu montieren. Im Zubeh&ouml;rangebot finden sich u. a. Aufrichter mit Triangelgriff und Seitenschutz.</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Das 24 Volt Antriebssystem wird serienm&auml;&szlig;ig geliefert.</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><u><span style="background-color:#ff0000;">Nachttisch</span></u></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Technische Daten:</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Gewicht: 32 kg</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">H&ouml;he: 88 cm</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Breite: 55 cm</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Gesamttiefe: 45,5 cm</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Gesamtbreite (Bett-Tischplatte ausgeklappt): 123 cm</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Oberplatte: 53,5 x 45,5 cm</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Bett-Tischplatte: 66 x 37 cm</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Doppellaufrollen: &oslash; 50 mm, 2 Rollen feststellbar</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Ausf&uuml;hrung:</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Korpus mit zwei T&uuml;ren, einem Einlegeboden, einer ausziehbaren Schublade und einem offenen Fach</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Schublade nach beiden Seiten bis zu einem Anschlag ausziehbar, daher ist der Nachttisch von beiden Seiten des Bettes aus nutzbar</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Korpus bzw. Fronten aus 16 - 25 mm Holz-Spanplatten, kunststoffbeschichtet, Buche Dekor</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Seitlich angebrachter Bett-Tisch ist in einer seitlichen F&uuml;hrung ausklappbar</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Holzgestell mit 4 Doppellaufrollen, 2 Rollen feststellbar</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Ober- und Bett-Tischplatte sowie Zwischenboden mit 0,8 mm Kunststoffbeschichtung, Kanten der Oberplatte sowie der Bett-Tischplatte mit abgerundeten Kunsststoffanleimern</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Schublade und T&uuml;ren mit Hartkunststoffgriffen</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">Bestellnummern:</span></font></span></strong></span></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<span style="color:#00ff00;"><strong><span style="font-family: lucida sans unicode,lucida grande,sans-serif;"><font size="2"><span style="background-color:#ff0000;">61.3631.33 Nachttisch &quot;Hermann&quot; Buche Dekor, kunststoffbeschichtet</span></font></span></strong></span></p>\r\n'),
(49, 1, '', '<h3>\r\n	Indikation</h3>\r\n'),
(50, 1, '', '<p>\r\n	In jedem Mund bildet sich nach ein bis zwei Tagen ein Belag auf den Z&auml;hnen, Plaque oder auch Biofilm genannt. Dieser Biofilm besteht aus Milliarden von Bakterien, die einen regen Stoffwechsel entwickeln. Dabei werden isolierte Kohlenhydrate verwertet und S&auml;uren sowie Zellgifte ausgeschieden. Durch diese aggressiven Substanzen entstehen Zahnsch&auml;den (Zahnkaries) und Zahnfleischentz&uuml;ndungen (Gingivitis) bis hin zum Knochenabbau (Parodontitis). Vielen Patienten gelingt es auch durch eine gr&uuml;ndliche Zahnpflege nicht, alle Zwischenr&auml;ume und Nischen in der Mundh&ouml;hle zu erreichen und damit diese Bakterien zu entfernen.<br />\r\n	<br />\r\n	Insbesondere bei &auml;lteren Patienten ist eine regelm&auml;&szlig;ige gr&uuml;ndliche Reinigung des Gebisses unerl&auml;sslich, weil das Zahnfleisch zur&uuml;ckgeht. Dadurch wird die freiliegende, Belag und Bakterien ausgesetzte, Zahnoberfl&auml;che gr&ouml;&szlig;er. Au&szlig;erdem l&auml;sst die Fingerfertigkeit im Alter nach, was sich auch auf die Qualit&auml;t der Putztechnik auswirken kann. Drittens ver&auml;ndert sich der Stoffwechsel im Alter in vielen F&auml;llen ung&uuml;nstig, beispielsweise durch chronische Krankheiten oder Medikamente, und die Anf&auml;lligkeit f&uuml;r Karies und Parodontitis w&auml;chst.</p>\r\n'),
(51, 1, '', '<h3>\r\n	Dekubitustherapie</h3>\r\n'),
(53, 1, '', '<h3>\r\n	Sonderbau</h3>\r\n'),
(56, 1, '', '<p>\r\n	Kinderorthop&auml;die</p>\r\n'),
(57, 1, '', '<p>\r\n	Andreas Winzer</p>\r\n'),
(58, 1, '', '<p>\r\n	+49 (0) 851 93143-18</p>\r\n'),
(59, 1, '', '<p>\r\n	<em><a href="mailto:a.winzer@sanitaetshaus-fuerst.de">a.winzer@sanitaetshaus-fuerst.de</a></em></p>\r\n'),
(60, 1, '', '<p>\r\n	blank</p>\r\n'),
(61, 1, '', '<p>\r\n	blank</p>\r\n'),
(62, 1, '', '<p>\r\n	blank</p>\r\n'),
(63, 1, '', ''),
(64, 1, '', '<p>\r\n	Orthop&auml;dietechnik</p>\r\n'),
(65, 1, '', '<p>\r\n	Hans-Peter F&uuml;rst</p>\r\n'),
(66, 1, '', '<p>\r\n	+49 (0) 851 93143-0</p>\r\n'),
(67, 1, '', '<p>\r\n	<a href="mailto:tnpaulik@gmail.com">hp.fuerst@sanitaetshaus-fuerst.de</a></p>\r\n'),
(68, 1, '', '<p>\r\n	Homecare</p>\r\n'),
(69, 1, '', '<p>\r\n	Birgit Bauer</p>\r\n'),
(70, 1, '', '<p>\r\n	+49 (0) 851/93143-23</p>\r\n'),
(71, 1, '', '<p>\r\n	<a href="mailto:blank">b.bauer@sanitaetshaus-fuerst.de</a></p>\r\n'),
(72, 1, '', '<p>\r\n	Sanit&auml;tshaus</p>\r\n'),
(73, 1, '', 'blank'),
(74, 1, '', 'blank'),
(75, 1, '', 'blank'),
(76, 1, '', '<h3>\r\n	Rollst&uuml;hle 2</h3>\r\n'),
(77, 1, '', '<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2"><u>Standardrollstuhl</u></font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Standardrollst&uuml;hle bestehen aus einem faltbaren Rohrrahmen, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;ndern vorne, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer Sitz- und R&uuml;ckenbespannung aus Kunstleder, je nach Modell auch gepolstert.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken. Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Spezielle Ausf&uuml;hrungen f&uuml;r Beinamputierte mit nach hinten verlagertem Radstand stehen ebenfalls zur Verf&uuml;gung, bzw. Standardmodelle sind auch nachtr&auml;glich in Amputiertenrollst&uuml;hle umr&uuml;stbar.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2"><i>Download PDF</i></font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2"><u>Leichtgewichtsrollstuhl</u></font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Leichtgewichtrollst&uuml;hle bestehen aus Aluminium oder anderen Leichtmetallen, zwei gro&szlig;en R&auml;dern hinten, zwei kleine Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, ebenfalls aus Aluminium, sowie einer Sitz- und R&uuml;ckenbespannung aus textilem Material, je nach Modell auch gepolstert.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar. Leichtgewichtrollst&uuml;hle sind gegen&uuml;ber herk&ouml;mmlichen Rollst&uuml;hlen ca. 3 bis 5 kg leichter. Diese Gewichtseinsparung bedeutet jedoch nicht, dass Behinderte mit geringen Greifkr&auml;ften mit diesen Rollstuhlmodellen besser versorgt w&auml;ren. Der Fahrwiderstand von Rollst&uuml;hlen ist entscheidend und wird durch eine blo&szlig;e Gewichtsverringerung kaum beeinflusst. Das geringe Gewicht von Leichtgewichtrollst&uuml;hlen soll es Behinderten selbst erleichtern, ihren Rollstuhl selbst&auml;ndig, z.B. in einem Pkw, zu verstauen.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2"><u>Aktivrollstuhl</u></font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Aktivrollst&uuml;hle bestehen meist aus einem faltbaren Rohrrahmen (Stahl, Aluminium, Titan o.a.) gro&szlig;en Antriebsr&auml;dern hinten und kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, einer meist festen textilen R&uuml;cken- und Sitzbespannung.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Der Schwerpunkt des Rollstuhls kann durch variable Befestigungsm&ouml;glichkeiten der Antriebsr&auml;der ver&auml;ndert werden, wodurch eine Anpassung an die jeweilige Aktivit&auml;t und Behinderung des Rollstuhlbenutzers m&ouml;glich ist. Ferner ist eine Radsturzeinstellung bei einigen Modellen m&ouml;glich.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Durch die Anpassungsm&ouml;glichkeit der Radposition wird au&szlig;erdem eine bessere Kraftausnutzung erreicht. Unterschiedlich gestaltete oder verstellbare R&uuml;ckenlehnen (h&ouml;henverstellbar) unterst&uuml;tzen die Anpassung an den jeweiligen Verwendungszweck. Durch vielf&auml;ltige Ausstattungsvariationen, die den Herstellerlisten zu entnehmen sind, ist eine Anpassung an nahezu alle Aktivit&auml;ten m&ouml;glich.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Gew&ouml;hnlich stehen mehrere R&uuml;ckenteile, Seitenteile, Fu&szlig;st&uuml;tzen, Lenkrollen und Antriebsr&auml;der zur Auswahl, die jeweils auf entsprechende Aktivit&auml;ten abgestellt sind und durch ihre Kombinationsvielfalt eine ideale Anpassung erm&ouml;glichen.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Durch die Umbauf&auml;higkeit von Aktivrollst&uuml;hlen ist es m&ouml;glich, diese sowohl im normalen Umfeld als Alternative zum Standardrollstuhl und gleichzeitig als Sportrollstuhl zu verwenden. Mit Hilfe zus&auml;tzlicher Seitenteile, entsprechender R&auml;der und R&uuml;ckenteile er&uuml;brigt sich die Zweitanschaffung eines Standardrollstuhls.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<br />\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2"><u>Multifunktionsrollstuhl</u></font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Multifunktionsrollst&uuml;hle sind meist nicht faltbar und verf&uuml;gen &uuml;ber eine Sitz- und R&uuml;ckenlehnenverstellung mittels mechanischem Gest&auml;nge oder &uuml;ber Gasdruckfeder, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer anatomischen Sitz- und R&uuml;ckenpolsterung.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></font></p>\r\n<p style="margin-bottom: 0.42cm; line-height: 150%">\r\n	<font face="Calibri, sans-serif"><font size="2">Durch die M&ouml;glichkeit der Sitz- und R&uuml;ckenlehnenverstellung ist es Behinderten m&ouml;glich, eine ihrer Behinderung nach, physiologisch angemessene, Sitzhaltung einzunehmen.</font></font></p>\r\n'),
(78, 1, '', 'blank'),
(79, 1, '', 'blank'),
(80, 1, '', '<h3>\r\n	blank</h3>\r\n'),
(81, 1, '', 'blank'),
(82, 1, '', '<h3>\r\n	Praxis</h3>\r\n'),
(83, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(84, 1, '', 'blank'),
(85, 1, '', 'blank'),
(86, 1, '', 'blank'),
(87, 1, '', 'blank'),
(88, 1, '', '<h3>\r\n	Meisterlabor</h3>\r\n'),
(89, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(90, 1, '', 'blank'),
(91, 1, '', 'blank'),
(92, 1, '', 'blank'),
(93, 1, '', 'blank'),
(94, 1, '', 'blank'),
(95, 1, '', 'blank'),
(96, 1, '', 'blank'),
(97, 1, '', 'blank'),
(98, 1, '', 'blank'),
(99, 1, '', 'blank'),
(100, 1, '', '<h3>\r\n	Beinprothesen</h3>\r\n'),
(101, 1, '', '<p>\r\n	Beweglichkeit bleibt Lebensqualit&auml;t. In jedem Alter und auch nach einer Amputation der unteren Extremit&auml;t gilt dies. So vielf&auml;ltig aber unser Leben ist, so verschieden sind Ihre Anforderungen an Ihre Prothese.<br />\r\n	F&uuml;r die Versorgung, die genau zu Ihnen passt, liefert Ihnen Ihr Sanit&auml;tshaus F&uuml;rst die individuelle L&ouml;sung.<br />\r\n	Das menschliche Bein erf&uuml;llt eine Vielzahl von Funktionen und somit sind auch die Anforderungen an ein Prothesenbein sehr gro&szlig;.<br />\r\n	Eine Beinprothese ist eine Kombination von Passteilen, die sich gegenseitig so erg&auml;nzen, dass sie das menschliche Bein so gut wie m&ouml;glich ersetzen. Welche Passteile im Einzelnen verwendet werden, richtet sich nach den jeweiligen Indikationen und dem Aktivit&auml;tsgrad des Patienten.<br />\r\n	Die erste Komponente einer Prothese ist normalerweise der Liner - eine Silikonh&uuml;lle, die auf den Stumpf aufgerollt wird. Dieser Liner besteht aus einem polsternden, dehnbaren Material, das wie ein Puffer zwischen dem harten, gewichtstragenden Prothesenschaft und der empfindlichen Stumpfhaut liegt. Zudem bietet der Liner eine feste Verbindung mit der Prothese.<br />\r\n	Wenn der Liner angezogen ist, steigt der Amputierte mit seinem Stumpf in den Prothesenschaft. Dieser Schaft, der aus unterschiedlichen Materialien bestehen kann, ist individuell von unseren Orthop&auml;dietechnikern f&uuml;r ihn angefertigt worden.<br />\r\n	Bei einem oberschenkelamputierten Anwender schlie&szlig;t sich nun unterhalb des Schaftes ein Kniegelenk an. Je besser dieses Gelenk auf die Bed&uuml;rfnisse des Amputierten abgestimmt ist, desto harmonischer und nat&uuml;rlicher ist das Gangbild. Darunter folgt ein Aluminium- oder<br />\r\n	Carbon-Rohr, das in einem Fu&szlig;modul endet. Bei Prothesenf&uuml;&szlig;en sind vor allem Eigenschaften wie die F&auml;higkeit zu Energier&uuml;ckgabe und ein guter Laufkomfort entscheidend.<br />\r\n	Bei einer Unterschenkelprothese ist das Fu&szlig;modul entweder direkt mit dem Schaft verbunden oder ebenfalls &uuml;ber ein Aluminium- oder Carbon-Rohr. Der jeweilige Aufbau ist abh&auml;ngig von der K&ouml;rpergr&ouml;&szlig;e des Anwenders und der L&auml;nge seines Stumpfes.</p>\r\n'),
(102, 1, '', '<h3>\r\n	Orthesen</h3>\r\n'),
(103, 1, '', '<p>\r\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\r\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\r\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\r\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\r\n'),
(104, 1, '', '<h3>\r\n	Orthesen</h3>\r\n'),
(105, 1, '', '<p>\r\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\r\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\r\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\r\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\r\n'),
(106, 1, '', '<h3>\r\n	Orthesen</h3>\r\n'),
(107, 1, '', '<p>\r\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\r\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\r\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\r\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\r\n'),
(108, 1, '', '<h3>\r\n	Orthesen</h3>\r\n'),
(109, 1, '', '<p>\r\n	Wir bauen keine Sitzschalen im 08/15 Baukastensystem. Jede von uns gefertigte Sitzschale ist ein Unikat und individuell auf die Bed&uuml;rfnisse und das Krankheitsbild des zu versorgenden Patienten abgestimmt.<br />\r\n	Sitzschalen unterst&uuml;tzen die anatomische Sitzhaltung, sie kompensieren Sitzfehlstellungen und/oder &ndash;instabilit&auml;ten, sie geben Halt, aber lassen dem Patienten so viel Freiheit seine Umwelt sensorisch zu erfassen.</p>\r\n<p>\r\n	Deshalb gilt gerade beim Sitzschalenbau der Grundsatz, &bdquo;so wenig wie m&ouml;glich, so viel wie n&ouml;tig&ldquo;.</p>\r\n<p>\r\n	Wir fertigen deshalb Sitzschalen f&uuml;r unsere Patienten nach einem individuellen Vakuumabdruck. Der Korpus wird aus einer auch nachtr&auml;glich verstellbaren Aluminiumkonstruktion gefertigt, um auch sp&auml;ter Wachstumssch&uuml;be und Behandlungsfortschritte zeitnah in unserer Werkstatt f&uuml;r Reha-Sonderbau, ausgleichen zu k&ouml;nnen. Die Weichbettung des K&ouml;rpers erfolgt z. T. im Mehrschichtverfahren mit&nbsp; sogenannten &bdquo;intelligenten&ldquo; Kunststoffen, somit k&ouml;nnen auch sensible Bereiche vor Druckstellen gesch&uuml;tzt werden. Die Sitzbez&uuml;ge aus fr&ouml;hlichen Mustern und bunten Farben runden das Bild einer fachlich professionellen Versorgung ab, die bei Kindern, Eltern und Therapeuten gleicherma&szlig;en auf hohe Akzeptanz und Anerkennung st&ouml;&szlig;t.<br />\r\n	<br />\r\n	Der Sitzschalenbau ist die Arbeit von Spezialisten, denn bereits wenige Millimeter k&ouml;nnen entscheidend sein f&uuml;r Therapieerfolg oder Misserfolg. Die passgenaue Stabilisierung von Becken und Rumpf, sowie die Fixierung der Beine, f&uuml;hren meist zu einer gesteigerten Kontrolle von Kopf und Rumpf.<br />\r\n	Durch die neu gewonnene physiologische Sitzposition erreichen wir eine Erh&ouml;hung der Vitalfunktionen in denen Atmung und Verdauung erleichtert und die sensomotorischen F&auml;higkeiten unterst&uuml;tzt werden.</p>\r\n<p>\r\n	Was vorher oft f&uuml;r unm&ouml;glich gehalten wurde, wird nach einer Sitzschalenversorgung und dem entsprechenden therapeutischen Training oft zur Realit&auml;t:</p>\r\n<ul>\r\n	<li>\r\n		die Bedienung von manuellen und elektrischen Rollst&uuml;hlen</li>\r\n	<li>\r\n		die Benutzung von Essbestecken</li>\r\n	<li>\r\n		die Bedienung von Kommunikationshilfen</li>\r\n	<li>\r\n		eine Erh&ouml;hung der Kontrolle von Mimik, Gestik und Sprache</li>\r\n</ul>\r\n<p>\r\n	Die von uns gefertigten Sitzschalen sind mit allen handels&uuml;blichen Untergestellen adaptierbar.</p>\r\n'),
(110, 1, '', '<h3>\r\n	Titanimplantate</h3>\r\n'),
(111, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(112, 1, '', '<h3>\r\n	Orthesen</h3>\r\n');
INSERT INTO `languagetexts` (`text_id`, `language_id`, `header`, `text`) VALUES
(113, 1, '', '<p style="text-align: justify;">\r\n	<strong>untere Extremit&auml;t</strong></p>\r\n<p style="text-align: justify;">\r\n	<strong>Sprunggelenksorthese</strong><br />\r\n	Diese Orthese, wird aus sehr leichtem und d&uuml;nnem ThermoLyn&reg; Polypropylen Copolymer, im Unterdruckverfahren gefertigt. Der Einsatzbereich dieser Orthese sind starke Knickf&uuml;&szlig;e sowie Klump- und Sichelf&uuml;&szlig;e mit einer sehr geringen Spitzfu&szlig;beteiligung. Die kn&ouml;chel&uuml;bergreifende Ausf&uuml;hrung erm&ouml;glicht eine sehr gute Korrektur des Fu&szlig;es sowie des unteren Sprunggelenks und f&uuml;hrt zu einer sehr guten Stabilisierung des gesamten Kn&ouml;chelbereichs.<br />\r\n	<br />\r\n	<strong>Unterschenkelorthesen</strong><br />\r\n	Diese ebenfalls aus Kunststoff oder Carbon gefertigten Orthesen finden ihr Einsatzgebiet dann, wenn die Spitzfu&szlig;komponente in die Korrektur der Fu&szlig;fehlstellungen mit einbezogen werden soll. Um eine langfristige Korrektur des Spitzfu&szlig;es zu erreichen muss bei diesen Orthesen eine Funktionseinschr&auml;nkung des Sprunggelenkes vorgenommen werden. Die Plantarflexion (Beugung) des Sprunggelenkes wird eingeschr&auml;nkt, die Dorsalextension (Streckung) je nach motorischer Einschr&auml;nkung freigegeben, um somit einen ann&auml;hernd physiologischen Bewegungsablauf zu erm&ouml;glichen.<br />\r\n	<br />\r\n	<strong>Oberschenkelorthesen</strong><br />\r\n	Oberschenkelorthesen finden Anwendung bei H&uuml;ftgelenkserkrankungen&nbsp; (H&uuml;ftdysplasie oder H&uuml;ftkopfnekrose) bei denen eine Entlastung des H&uuml;ftgelenks/H&uuml;ftkopfes unbedingt erforderlich ist, oder Erkrankungen des Kniegelenkes bei denen es auf die Achsenf&uuml;hrung und Stabilit&auml;tssicherung ankommt. Diese Orthesen werden hierbei mit Gelenken versehen, die aber je nach Art der Erkrankung mittels eines Sperrmechanismus versteift werden k&ouml;nnen.<br />\r\n	<br />\r\n	<strong>Reziproke Beckenorthesen</strong><br />\r\n	Diese becken&uuml;bergreifenden Orthesen mit Oberschenkel- und Unterschenkelf&uuml;hrung erm&ouml;glichen mittels eines speziellen Mechanismus vielen querschnittgel&auml;hmten Kindern einen aufrechten Gang zu erlernen.<br />\r\n	Die in der Orthese verbauten Gelenke sind gegeneinander frei beweglich und unter Verwendung einer reziproken Mechanik miteinander verbunden.<br />\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>obere Extremit&auml;t</strong></p>\r\n<p style="text-align: justify;">\r\n	<strong>Unterarm-Mittelhandorthese mit oder ohne Fingerf&uuml;hrung</strong><br />\r\n	Diese aus weich gepolsterten Kunststoff oder auch aus Silikon gefertigte Orthese fixiert das Handgelenk in Funktionsstellung und erm&ouml;glicht dadurch aktives hantieren.<br />\r\n	Mit dem Einschluss der Finger erreichen wir einen positiven Einfluss auf den Muskeltonus und verringern damit die krampfende Fingerbeugung.<br />\r\n	<br />\r\n	<strong>Unterarm-Hand-Quengelorthese</strong><br />\r\n	Durch die Verwendung von statischen und dynamischen Quengelgelenken ist es m&ouml;glich, das Handgelenk in verschiedenen Stellungen zu fixieren. Durch den sich stetig in der St&auml;rke ver&auml;nderbaren Dauerzug werden Muskeln gedehnt. Dadurch erreichen wir eine deutliche Erh&ouml;hung der Beweglichkeit im Handgelenk, eine Zunahme der Durchblutung und einen Aufbau des Muskelgewebes.</p>\r\n<p style="text-align: justify;">\r\n	<br />\r\n	<strong>Rumpforthesen</strong></p>\r\n<p style="text-align: justify;">\r\n	<strong>Cheneau-Korsett</strong><br />\r\n	Das Cheneau-Korsett ist ein aktives Inspirations-Derotations-Korsett das bei jungen Patienten in der Wachstumsphase eingesetzt wird, die an einer progredienten idiopathischen Skoliose leiden. Das Korsett wird aus einem Polyethylen, nach Gipsabdruck hergestellt. Durch den asymmetrischen Bau des Cheneau-Korsetts, mit Druckpunkten (Pelotten) und gegen&uuml;berliegenden Freir&auml;umen (Expansionszonen) wird eine dreidimensionale Derotation der Wirbel vorgenommen. Durch langj&auml;hrige Erfahrung im Bau von Cheneau-Korsetten und kontinuierliche Schulungen k&ouml;nnen wir heute auf eine hervorragende Erfolgsquote, bei der Behandlung einer thorakolumbalen Skoliose, verweisen.<br />\r\n	Ein Cheneau-Korsett sollte ausschlie&szlig;lich zur K&ouml;rperhygiene abgenommen und bis zum Abschluss der Wachstumsphase getragen werden.<br />\r\n	Informieren Sie sich, die Techniker unserer orthop&auml;dischen Werkst&auml;tte stehen Ihnen gerne beratend zur Seite.</p>\r\n'),
(114, 1, '', '<h3>\r\n	Rollst&uuml;hle</h3>\r\n'),
(115, 1, '', '<p style="text-align: justify;">\r\n	<strong>Aktivrollst&uuml;hle/Adaptivrollst&uuml;hle</strong></p>\r\n<p style="text-align: justify;">\r\n	<strong>Freizeit, Schule oder Sport&hellip; f&uuml;r jede Aktivit&auml;t das richtige Modell</strong><br />\r\n	So verschieden unsere jungen Patienten sind, so unterschiedlich sind auch ihre Handicaps. Die Rollstuhlversorgung eines Kindes kann und darf sich heute nicht nach Vorgaben wie eventuellen Lagerbest&auml;nden der Kostentr&auml;ger oder einem m&ouml;glichst g&uuml;nstigen Preis richten, sondern muss individuell auf die Bed&uuml;rfnisse des jeweiligen Kindes ausgerichtet sein wie z. B. Art und schwere der Behinderung, Aktivit&auml;tsgrad, Einsatzort, Transportm&ouml;glichkeit, usw.<br />\r\n	Des Weiteren stellt sich nat&uuml;rlich auch die Frage, ist das Kind in der Lage den Rollstuhl selbst zu bedienen oder sollte dies &uuml;ber eine m&ouml;gliche Begleitperson geschehen.<br />\r\n	Wir unterscheiden heute bei manuellen Rollst&uuml;hlen zwischen Faltrollst&uuml;hlen und Rollst&uuml;hlen mit einem starren Rahmen. Rollst&uuml;hle sind heute wahre Verwandlungsk&uuml;nstler, sie unterst&uuml;tzen die Eigenaktivit&auml;t des Kindes durch ihre mannigfaltigen Einstellm&ouml;glichkeiten. So ist am modernen Rollstuhl heute die Stellung der Antriebsr&auml;der im Verh&auml;ltnis zur Sitzposition ebenso einstellbar, wie die Sitzneigung und die Schwerpunktverteilung innerhalb der Rahmengeometrie.<br />\r\n	Das Zubeh&ouml;rprogramm f&uuml;r diese Rollst&uuml;hle ist mittlerweile so vielf&auml;ltig, dass vom einfachen Weichschaum-Sitzkissen bis hin zum individuell gefertigten Sitzsystem alles als Sonderausstattung erh&auml;ltlich ist.<br />\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Elektrorollst&uuml;hle</strong></p>\r\n<p style="text-align: justify;">\r\n	<strong>Grenzen &uuml;berwinden, Freir&auml;ume erobern, Selbst&auml;ndigkeit entwickeln</strong><br />\r\n	Auch bei Elektrorollst&uuml;hlen sind die Bed&uuml;rfnisse und der Einsatzzweck des Hilfsmittels die Grundvoraussetzungen um Aufbau und Ausstattung bestimmen zu k&ouml;nnen. Sollte die Eigenaktivit&auml;t eines Kindes zur Benutzung eines manuellen Rollstuhles nicht ausreichen, so kann ein Elektrorollstuhl f&uuml;r dieses Kind eine neue Dimension der Freiheit und Selbst&auml;ndigkeit bedeuten. Die heute mit Joystick gesteuerten E-Rollst&uuml;hle sind zwar in erster Linie immer noch Fahrger&auml;te, mit einer H&ouml;chstgeschwindigkeit von bis zu 15 km/h und einer Reichweite bis zu 35 Kilometern, aber sie k&ouml;nnen falls ben&ouml;tigt viel mehr. Die elektrische Einstellbarkeit der Sitzfunktion und die Adaptierbarkeit mit einer Sitzschale, sind wohl die am wenigsten spektakul&auml;ren technischen Highlights. Anders sieht es da bei den alternativen Steuerm&ouml;glichkeiten des Elektrorollstuhles aus, die vom bereits erw&auml;hnten Joystick bis hin zur Mundsteuerung m&ouml;glich sind.<br />\r\n	Zur absoluten Spitzentechnology geh&ouml;rt aber eindeutig die Umfeldsteuerung, mit ihr ist es m&ouml;glich Ger&auml;te wie Computer, Fernseher, Handy, HiFi-Anlage, automatisches &ouml;ffnen und schlie&szlig;en von T&uuml;ren, K&uuml;hlschrank usw., zu steuern und so weitestgehend ein Leben zu erlernen, das Grenzen &uuml;berwindet, Freir&auml;ume erobert und an Selbst&auml;ndigkeit fast keine W&uuml;nsche offen l&auml;sst.<br />\r\n	Informieren Sie sich, die Spezialisten aus unserer Reha-Fachabteilung stehen ihnen gerne beratend zur Seite.<br />\r\n	&nbsp;</p>\r\n'),
(116, 1, '', '<h3>\r\n	Reha-Buggys und Reha-Wagen</h3>\r\n'),
(117, 1, '', '<p style="text-align: justify;">\r\n	<strong>Optimale Positionierung auch f&uuml;r die Kleinsten</strong><br />\r\n	Auch f&uuml;r unsere kleinsten Patienten, f&uuml;hren wir Hilfsmittel, die ihnen die Teilnahme am Alltags-/Familienleben erm&ouml;glichen. Die wie herk&ouml;mmliche Kinderwagen aussehenden Reha-Buggys haben eine Sitz- und R&uuml;ckenbespannung aus Nylon, einen Beckengurt zur Fixierung und sind f&uuml;r Kinder ab ca. einem halben Jahr, bis fast zum Erwachsenalter einsetzbar.<br />\r\n	Reha-Wagen sind dem Krankheitsbild entsprechend wesentlich flexibler einsetzbar. Sie sind mit einer dem Alter und der Gr&ouml;&szlig;e des Kindes aufsetzbaren Sitzeinheit ausstattbar. Ihr Einsatzgebiet reicht z.B. von Entwicklungsst&ouml;rungen, verschiedene Formen des Sch&auml;del-Hirn-Traumas, diverse Arten der Muskeldystrophie, allgemein Gehunf&auml;higkeit (z.B. Spina bifida) usw.<br />\r\n	Die Ausstattung eines Reha-Kinderwagens mit Sitz- und R&uuml;ckenkantelung, wahlweise starren oder beweglichen Lenkr&auml;dern und einer mit einem Handgriff abnehmbaren Sitzeinheit geh&ouml;ren heute bereits zum Standard.<br />\r\n	Um eine st&auml;ndige Beobachtung des Kindes zu sichern, kann die Sitzeinheit entgegen der Fahrtrichtung angebracht werden. Zur optimalen Lagerung des Kindes stehen Kopfst&uuml;tzen, Thorax- und/oder Spreizpelotten zur Verf&uuml;gung. Die Sitzstellung ist leicht vom Schiebegriff aus, von aktiver Haltung bis hin zur Entlastungsstellung, einstellbar.</p>\r\n'),
(118, 1, '', '<h3>\r\n	Stehger&auml;te</h3>\r\n'),
(119, 1, '', '<p style="text-align: justify;">\r\n	<strong>Im aufrechten Stand auf Entdeckungstour</strong><br />\r\n	Wenn Kleinkinder in einem Alter von 10 bis 12 Monaten beginnen erstmals aufrecht zu stehen, ist das ein wundersch&ouml;ner Augenblick f&uuml;r die Eltern, aber noch wichtiger, es ist ein immenser Fortschritt im Entwicklungsstadium eines jungen Menschen. Die Anregung des Knochenwachstums, die Weiterentwicklung von Gelenken und Muskulatur, die F&ouml;rderung der kognitiven Wahrnehmung und die gesunde Entwicklung von Herz, Lunge und Verdauung sind die Folgen dieses Prozesses. F&uuml;r behinderte Kinder, die h&auml;ufig die aufrechte Position nicht erreichen oder halten k&ouml;nnen, gelten dieselben Prinzipien, d.h. man sollte in R&uuml;cksprache mit Arzt und Therapeut so fr&uuml;h wie m&ouml;glich damit beginnen, die bestehenden Defizite mit Hilfe technischer Hilfsmittel wenigstens teilweise zu kompensieren.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Hierbei werden wir von vier Arten Stehger&auml;ten unterst&uuml;tzt:</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		fahrbare Stehst&auml;nder</li>\r\n	<li style="text-align: justify;">\r\n		vertikale Stehst&auml;nder</li>\r\n	<li style="text-align: justify;">\r\n		Bauchschr&auml;gliegebretter</li>\r\n	<li style="text-align: justify;">\r\n		R&uuml;ckenschr&auml;gliegebretter</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	<br />\r\n	<strong>Fahrbare Stehst&auml;nder</strong> &auml;hneln einem Rollstuhl mit zwei gro&szlig;en Antriebsr&auml;dern hinten, in dem das Kind sich stehend fortbewegen kann.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Vertikale Stehst&auml;nder</strong> sind ihrem Namen entsprechend vertikal aufgebaut und in Vor- oder R&uuml;cklage 30&deg; einstellbar.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Bauchschr&auml;gliegebrett.</strong> Hier wird das Kind in der Bauchlage positioniert und fixiert, um es dann kontinuierlich steigernd bis in den aufrechten Stand zu bringen.</p>\r\n<p style="text-align: justify;">\r\n	<strong>R&uuml;ckenschr&auml;gliegebrett. </strong>Hier wird das Kind in der R&uuml;ckenlage positioniert und fixiert, um es dann kontinuierlich steigernd bis in den aufrechten Stand zu bringen.</p>\r\n<p style="text-align: justify;">\r\n	Der dauerhafte Einsatz von Stehger&auml;ten vermindert Spastiken der Beinmuskulatur, beugt Kontrakturen vor, stabilisiert den Kreislauf und unterst&uuml;tzt die Verdauung des kleinen Patienten.<br />\r\n	&nbsp;</p>\r\n'),
(120, 1, '', '<h3>\r\n	Die Vorteile:</h3>\r\n'),
(121, 1, '', '<div>\r\n	<p style="margin-bottom: 0cm; line-height: 100%">\r\n		<br />\r\n		<font color="#666666"><font face="Trebuchet MS, serif"><b>&bull;</b></font></font><font color="#666666"><font face="Trebuchet MS, serif"> Kein konventioneller Abdruck<br />\r\n		&bull; H&ouml;chste Pr&auml;zision<br />\r\n		&bull; Kein Langzeitprovisorium n&ouml;tig<br />\r\n		&bull; Kein Folgetermin n&ouml;tig</font></font></p>\r\n</div>\r\n'),
(122, 1, '', '<h3>\r\n	Was ist CEREC 3D &ndash; Restauration?</h3>\r\n'),
(123, 1, '', '<div>\r\n	<p style="margin-bottom: 0cm">\r\n		<font color="#666666"><font face="Trebuchet MS, serif">Die Herstellung gestaltet sich grunds&auml;tzlich anders als bei traditionellen Verfahren. Statt eines Zahnabdruckes wird mit einer speziellen 3D-Kamera ein digitales Modell erstellt und am Computer weiter bearbeitet. Patienten mit Neigung zum W&uuml;rgereiz werden dieses Verfahren besonders sch&auml;tzen.<br />\r\n		<br />\r\n		Auf Basis dieser Vorarbeit wird die Versorgung aus einem Keramikblock herausgefr&auml;st. Die industriell gefertigten Keramikbl&ouml;cke erm&ouml;glichen durch Farb- und Transparenzverlauf eine nahezu unsichtbare Zahnversorgung.</font></font><br />\r\n		<br />\r\n		<font color="#666666"><font face="Trebuchet MS, serif"><b>Die Vorteile einer CEREC-Versorgung liegen auf der Hand:</b></font></font><br />\r\n		<br />\r\n		<font color="#666666"><font face="Trebuchet MS, serif">&bull; Digitale Abformung ohne W&uuml;rgereiz<br />\r\n		&bull; K&uuml;rzere Behandlungsdauer<br />\r\n		&bull; Langlebige Keramik<br />\r\n		&bull; Metall- und allergiefrei<br />\r\n		&bull; nat&uuml;rliche Zahnfarbe<br />\r\n		&bull; geringere Fehlerquote durch optimierte Herstellungsprozesse&nbsp;</font></font></p>\r\n	<p style="margin-bottom: 0cm">\r\n		&nbsp;</p>\r\n	<p style="margin-bottom: 0cm">\r\n		<font color="#666666"><font face="Trebuchet MS, serif">CEREC 3D-Keramik ist zahnfarben, durchscheinend und k&ouml;rpervertr&auml;glich. Als metallfreier Werkstoff l&auml;sst sie sich problemlos mit vorhandenen metallischen Versorgungen kombinieren. CEREC 3D erm&ouml;glicht das gesamte Spektrum der Zahnwiederherstellung abzudecken. Vom einfachen Inlay bis zu Seitenzahnkronen k&ouml;nnen alle Methoden mit CEREC 3D direkt in einer Sitzung konstruiert und eingegliedert werden. Provisorien und Abdr&uuml;cke k&ouml;nnen so &uuml;berfl&uuml;ssig werden. Die zahnsubstanzschonende Cerec 3D Versorgung kann dort noch mit einem CEREC 3D-Onlay helfen, wo traditionell Kronen eingesetzt werden.</font></font></p>\r\n</div>\r\n'),
(124, 1, '', '<h3>\r\n	Wundversorgung</h3>\r\n'),
(125, 1, '', '<p style="text-align: justify;">\r\n	Chronische Wunden (&bdquo;Ulcus&ldquo;) sind eine massive und schwerwiegende Komplikationen einer vorhandenen Systemerkrankung (z.B. Diabetes).&nbsp; Dass solche Wunden nicht heilbar sind, ist eine weit verbreitete,&nbsp; jedoch absolut falsche Einsch&auml;tzung. Das gezielte Zusammenwirken von Arzt (Diabetologe, Gef&auml;&szlig;chirurg, Radiologe usw.) und entsprechend geschulten Wundexperten kann in einem hohen Prozentsatz zur Abheilung zum Teil schon jahrelang bestehender Wunden f&uuml;hren.<br />\r\n	<br />\r\n	Unsere Wundexperten sind nach den Richtlinien der ICW e.V. zertifizierte Fachkr&auml;fte und darin geschult chronische Wunden wie:</p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		Ulcus cruris</li>\r\n	<li style="text-align: justify;">\r\n		Dekubitalgeschw&uuml;re</li>\r\n	<li style="text-align: justify;">\r\n		diabetisch bedingte Wunden</li>\r\n	<li style="text-align: justify;">\r\n		Nahtinsuffizienzen</li>\r\n	<li style="text-align: justify;">\r\n		onkologische Wunden</li>\r\n	<li style="text-align: justify;">\r\n		Fisteln</li>\r\n	<li style="text-align: justify;">\r\n		Verbrennungen 1. und 2. Grades</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	nach Einverst&auml;ndnis und ggf. Weisung des behandelnden Arztes, zu behandeln.<br />\r\n	<br />\r\n	Wichtig ist es die Lebensqualit&auml;t von Menschen mit chronischen Wunden zu erh&ouml;hen und ihnen ein schmerzfreies Leben zu erm&ouml;glichen.<br />\r\n	Eine leichte Anwendbarkeit und eine hohe Patientencompliance sind die Voraussetzung f&uuml;r gute Wundversorgung.<br />\r\n	Moderne Wundverb&auml;nde lassen sich leicht applizieren, sind flexibel und k&ouml;nnen aufgrund der hohen Exsudataufnahmekapazit&auml;t lange auf der Wunde belassen werden. So wird die Wundheilung optimal unterst&uuml;tzt und dem Patienten eine hohe Sicherheit geboten.<br />\r\n	Wunden stellen uns heute vor unterschiedliche Herausforderungen, so gibt es nicht nur verschiedene Verbandstechnologien f&uuml;r die einzelnen Wundheilungsphasen (von der Nekrose bis zur Epithelisierung), sondern auch modernste Wundverb&auml;nde mit aktiven Substanzen wie z. B. Silber f&uuml;r bakteriell kontaminierte Wunden oder Ibuprofen f&uuml;r schmerzende Wunden.</p>\r\n<p style="text-align: justify;">\r\n	Wir schulen Angeh&ouml;rige und Pflegekr&auml;fte, &uuml;ber die Anwendung modernster Methoden der Wundbehandlung.<br />\r\n	Jede Wunde wird &uuml;ber die Dauer der Behandlung genauestens dokumentiert, fotografiert und vermessen, um deren Behandlungsfortschritt auch gegen&uuml;ber dem zust&auml;ndigen Kostentr&auml;ger belegen zu k&ouml;nnen.<br />\r\n	&nbsp;</p>\r\n'),
(126, 1, '', '<h3>\r\n	Brustprothetik</h3>\r\n'),
(127, 1, '', '<p>\r\n	J&auml;hrlich erkranken ca. 72.000 Frauen an Brustkrebs, wobei zu beobachten ist, dass leider immer mehr j&uuml;ngere Frauen mit dieser Diagnose konfrontiert werden.<br />\r\n	&quot;Brustkrebs&quot; eine Diagnose die f&uuml;r Frauen gleichzustellen ist mit Angst, Resignation und dem Gef&uuml;hl den Boden unter den F&uuml;&szlig;en zu verlieren.<br />\r\n	Doch um diese Krankheit zu besiegen braucht man ein positives Lebensgef&uuml;hl - wir wollen Sie dabei unterst&uuml;tzen.<br />\r\n	Vertrauen Sie unseren speziell geschulten Mitarbeiterinnen, sie werden Ihnen auf Wunsch bereits in der Klinik zur lymphologischen Kompressionsbehandlung oder prothetischen Erstversorgung, beratend zur Seite stehen.</p>\r\n<p>\r\n	Wir geben Ihnen Sicherheit mit Spezial-BHs, passenden Dessous, Epithesen und Bademoden, damit Sie Ihren Alltag wieder ohne Einschr&auml;nkungen erleben k&ouml;nnen.</p>\r\n<p>\r\n	<strong>Unser Leistungsspektrum - f&uuml;r mehr Lebensqualit&auml;t</strong></p>\r\n<ul>\r\n	<li>\r\n		lymphologische Kompressionsbehandlung und prothetische Erstversorgung schon in der Klinik</li>\r\n	<li>\r\n		diskrete und kompetente Beratung - von Frau zu Frau</li>\r\n	<li>\r\n		langj&auml;hrige, hochqualifizierte Mitarbeiterinnen</li>\r\n	<li>\r\n		Versorgung mit Brustprothesen, Haftepithesen, Teilprothesen, Sport- und Badeepithesen</li>\r\n	<li>\r\n		topmodische Dessous und Bademoden, in allen Gr&ouml;&szlig;en</li>\r\n	<li>\r\n		eigene Schneiderin zur individuellen Anpassung</li>\r\n	<li>\r\n		umfangreiches Angebot an Accessoires</li>\r\n	<li>\r\n		kontinuierliche Schulungen sorgen daf&uuml;r, dass unsere Patientinnen immer dem Stand der Technik entsprechend versorgt werden</li>\r\n	<li>\r\n		Rezeptanforderung bei Ihrem Arzt</li>\r\n	<li>\r\n		Abkl&auml;rung der Kosten&uuml;bernahme bei Ihrer Krankenkasse</li>\r\n	<li>\r\n		kostenlose Hausbesuche</li>\r\n</ul>\r\n<p>\r\n	<br />\r\n	Die Zusammenarbeit mit den weltweit f&uuml;hrenden Herstellern auf dem Gebiet der Brustprothetik, gepaart mit der fachlichen Kompetenz unserer Mitarbeiterinnen sorgt daf&uuml;r, dass Lebensqualit&auml;t, Lebensintensit&auml;t und Lebensfreude bei Ihnen wieder zum Alltag geh&ouml;ren.</p>\r\n'),
(128, 1, '', 'blank'),
(129, 1, '', '<p>\r\n	Florian Smola</p>\r\n'),
(130, 1, '', '<p>\r\n	+49 (0) 851 93143-17</p>\r\n'),
(131, 1, '', '<p>\r\n	<a href="mailto:blank">f.smola@sanitaetshaus-fuerst.de</a></p>\r\n'),
(132, 1, '', 'blank'),
(133, 1, '', '<p>\r\n	Wolfgang Desch</p>\r\n'),
(134, 1, '', '<p>\r\n	+49 (0) 851 93143-17</p>\r\n'),
(135, 1, '', '<p>\r\n	<a href="mailto:blank">w.desch@sanitaetshaus-fuerst.de</a></p>\r\n'),
(136, 1, '', 'blank'),
(137, 1, '', '<p>\r\n	0851-6730</p>\r\n'),
(138, 1, '', '<p>\r\n	0851-73488</p>\r\n'),
(139, 1, '', '<p>\r\n	drlu.bauer@gmx.de</p>\r\n'),
(140, 1, '', 'blank'),
(141, 1, '', '<p>\r\n	+ 49 (0) 8552 671</p>\r\n'),
(142, 1, '', 'blank'),
(143, 1, '', 'blank'),
(144, 1, '', '<p>\r\n	+49 (0) 851 93143-0</p>\r\n'),
(145, 1, '', '<p>\r\n	+49 (0) 851 93143-15</p>\r\n'),
(146, 1, '', '<p>\r\n	<a href="mailto:blank">info@sanitaetshaus-fuerst.de </a></p>\r\n'),
(147, 1, '', '<p>\r\n	+ 49 (0) 851-6730</p>\r\n'),
(148, 1, '', 'blank'),
(149, 1, '', 'blank'),
(150, 1, '', 'blank'),
(151, 1, '', '<p>\r\n	+49 (0) 851 93143-0</p>\r\n'),
(152, 1, '', '<p>\r\n	+49 (0) 851 93143-15</p>\r\n'),
(153, 1, '', '<p>\r\n	<a href="mailto:blank">info@sanitaetshaus-fuerst.de</a></p>\r\n'),
(154, 1, '', 'blank'),
(155, 1, '', '<p>\r\n	+ 49 (0) 8552 671</p>\r\n'),
(156, 1, '', 'blank'),
(157, 1, '', 'blank'),
(158, 1, '', '<h3>\r\n	test</h3>\r\n'),
(159, 1, '', '<p>\r\n	sdadasdad</p>\r\n'),
(160, 1, '', '<p>\r\n	Dr Bauer Ludwig</p>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(161, 1, '', '<p>\r\n	hier einen kurzen Text</p>\r\n'),
(162, 1, '', '<h3>\r\n	Prothesen32323</h3>\r\n'),
(163, 1, '', '<p style="text-align: justify;">\r\n	<strong>Prothesen</strong><br />\r\n	<br />\r\n	In Deutschland leben ca. 250.000 Menschen mit einer Amputation und j&auml;hrlich kommen ca. 55.000 Neuamputationen hinzu.<br />\r\n	Neben Unf&auml;llen, Tumorerkrankungen, Infektionen und Verletzungsfolgen die einen verh&auml;ltnism&auml;&szlig;ig geringen Anteil der Amputationsgr&uuml;nde darstellen, sind heute Gef&auml;&szlig;erkrankungen, z.B. als Folge von Diabetes, die mit Abstand h&auml;ufigste Amputationsursache.</p>\r\n<p style="text-align: justify;">\r\n	Wurde eine Amputation durchgef&uuml;hrt, ist dies f&uuml;r den jeweils Betroffenen eine gewaltige psychische Belastung, die meist nur mit professioneller Hilfe gemeistert werden kann. Erst die Aussicht, auch mit einer Prothese sein Leben weitestgehend unabh&auml;ngig meistern zu k&ouml;nnen gibt vielen Betroffenen wieder Mut und Hoffnung f&uuml;r eine weitere Zukunft.</p>\r\n<p style="text-align: justify;">\r\n	Prothesen sind K&ouml;rperersatzst&uuml;cke die nach Amputationen oder Dysmelien (angeborenes Fehlen von Gliedma&szlig;en) ihren Einsatz finden. Gerade in der Prothesentechnik hat in den letzten 30 Jahren eine wahre technische Revolution stattgefunden. Der Einsatz modernster Materialien, wie Carbon, Silikon, Titan usw. und die Verwendung mikrochipgesteuerter Bauteile oder myoelektronischer Sensoren, machen den Prothesenbau von heute zur high technology und den Orthop&auml;die-Techniker zum absoluten Spezialisten.</p>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<br />\r\n	<strong>Prothesen der oberen Extremit&auml;t:</strong></p>\r\n<p style="text-align: justify;">\r\n	<strong>Armprothesen:</strong><br />\r\n	Armprothesen k&ouml;nnen die wichtigsten Grundfunktionen der fehlenden Hand - wie z.B. Hand &ouml;ffnen und schlie&szlig;en - ersetzen, sowie das &auml;u&szlig;ere Erscheinungsbild wiederherstellen. Wir sind heute in der Lage, Ihnen von der rein kosmetischen Armprothese bis hin zur myoelektrischen high-end Prothese,&nbsp; alle Systeme entsprechend der jeweiligen Amputationsh&ouml;he, zu fertigen.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Kosmetische Armprothesen (Habitusprothesen)</strong><br />\r\n	Kosmetische Armprothesen werden zur Wiederherstellung des &auml;u&szlig;eren Erscheinungsbildes getragen und von Patienten bevorzugt, f&uuml;r die das &auml;u&szlig;ere Erscheinungsbild von entscheidender Bedeutung ist. Die funktionellen M&ouml;glichkeiten sind meist jedoch auf ein einfaches Gegenhalten beschr&auml;nkt.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Myoelektrische Armprothesen</strong><br />\r\n	Myoelektrische Armprothesen sind fremdkraftbetrieben. Bei jeder vom Patienten gewollten Kontraktion des Muskels, entsteht auf der Haut eine elektrische Spannung, die zum Steuern der elektrisch angetriebenen Prothesen genutzt wird. Man spricht hierbei auch von gedankengesteuerten Prothesensystemen.</p>\r\n<p style="text-align: justify;">\r\n	Diese Systeme sind heute so ausgefeilt, dass man damit nicht mehr nur das einfache Hand&ouml;ffnen und -schlie&szlig;en steuert, sondern auch die Drehung des Handgelenks, sowie Beugung und Streckung des Ellenbogens.</p>\r\n<p style="text-align: justify;">\r\n	Nur wenigen Firmen in Deutschland ist es gestattet diese Prothesensysteme zu fertigen, da sie in ihrer Komplexit&auml;t enormes Fachwissen und technisches Know-how erfordern.<br />\r\n	Das Sanit&auml;tshaus F&uuml;rst hat die vom Hersteller aufgestellten f&uuml;nf Myo-Qualit&auml;tskriterien alle erreicht und steht selbst unter den qualifizierten Betrieben in einer Ausnahmeposition.&nbsp;&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unser Leistungsspektrum - f&uuml;r Ihre Mobilit&auml;t</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		kontinuierliche Aus- und Weiterbildung unserer Orthop&auml;die-Techniker</li>\r\n	<li style="text-align: justify;">\r\n		Kooperation mit speziell geschulten Therapeuten</li>\r\n	<li style="text-align: justify;">\r\n		modernste technische Ausstattung</li>\r\n	<li style="text-align: justify;">\r\n		Erfahrene Orthop&auml;die-Techniker im Myo-Prothesenbau</li>\r\n	<li style="text-align: justify;">\r\n		Qualitativ hochwertige Prothesensysteme</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r Dynamic-Arm (aktive Ellenbogenbeugung u. -streckung)</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r Michelangelo-Hand (Axon Bus System)</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r MyoBock Systeme</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r MyoBock Kinder Systeme</li>\r\n	<li style="text-align: justify;">\r\n		kostenlose Hausbesuche</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Silikonprothesen der oberen Extremit&auml;t:</strong><br />\r\n	<br />\r\n	<strong>Finger- und Teilhandprothesen aus Silikon</strong><br />\r\n	Neben ihrer Eigenschaft als Mittel der sozialen Kommunikation ist die Hand das wichtigste Werkzeug des Menschen, immer im Blick, immer einsatzbereit. Entsprechend stigmatisierend empfinden Menschen schwere Verletzungen der Hand (meist durch Unfall), in denen ein oder mehrere Finger amputiert wurden.</p>\r\n<p style="text-align: justify;">\r\n	Psychische Probleme, in einer Welt wo alles perfekt sein muss, berufliche Probleme, wenn man pl&ouml;tzlich eine Tastatur nicht mehr richtig bedienen kann, usw..<br />\r\n	Es gibt viele Gr&uuml;nde, warum Menschen den Wunsch an uns herantragen, ihnen ihre Hand wieder so herzustellen, dass diese kosmetisch perfekt und fast wieder uneingeschr&auml;nkt nutzbar ist.</p>\r\n<p style="text-align: justify;">\r\n	Voraussetzung f&uuml;r so ein Versorgungsergebnis ist eine exakte Ma&szlig;- und Abformtechnik, eine an Perfektion grenzende Fertigungstechnik und eine Farbgestaltung die sich zu fast 100 Prozent an den Vorgaben der nat&uuml;rlichen Hand orientiert.</p>\r\n<p style="text-align: justify;">\r\n	Das hohe technische Wissen, kontinuierliche Schulungen und jahrelange Erfahrung in der Verarbeitung von Silikon-Kautschuken waren der Grund, dass der weltgr&ouml;&szlig;te Hersteller von Prothesen-Passteilen, die Firma &quot;Otto Bock Health Care Deutschland GmbH&quot; aus Duderstadt, das Sanit&auml;tshaus F&uuml;rst in die erlesene Liste der Silikon-Qualit&auml;tspartner aufnahm.</p>\r\n<p style="text-align: justify;">\r\n	Zusammen mit der Firma Otto Bock fertigen wir, egal ob einzelner Finger oder Teilhand, Prothesen, die an Passgenauigkeit und kosmetischer Perfektion, keine W&uuml;nsche offen lassen.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unser Leistungsspektrum:</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		hochwertige technische Ausstattung</li>\r\n	<li style="text-align: justify;">\r\n		jahrelange Erfahrung im Bereich Silikontechnik</li>\r\n	<li style="text-align: justify;">\r\n		kontinuierliche Weiterbildungen unserer Orthop&auml;dietechniker</li>\r\n	<li style="text-align: justify;">\r\n		verfassen einer herausragenden fachlichen Expertise</li>\r\n	<li style="text-align: justify;">\r\n		Hausbesuche</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	<a href="http://www.leben-mit-fingeramputation.de" target="_blank"><br />\r\n	http://www.leben-mit-fingeramputation.de</a></p>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Prothesen der unteren Extremit&auml;t:</strong><br />\r\n	<br />\r\n	<strong> Beinprothesen</strong><br />\r\n	Mobilit&auml;t ist Lebensqualit&auml;t, in jedem Alter, auch nach einer Beinamputation. So vielf&auml;ltig unser Leben ist, so verschieden sind auch die Anforderungen an eine Prothese.</p>\r\n<p style="text-align: justify;">\r\n	Jede von uns gefertigte Prothese ist ein Unikat, die individuell f&uuml;r Ihren Nutzer hergestellt wurde.<br />\r\n	Ob Stumpfbettungen aus HTV-Silikon (Hochtemparaturvernetztes Silikon), aus Gie&szlig;harz mit oder ohne flexiblen Innenschaft, mit Silikon-, Gel- oder Polyurethan-Linern, usw. - egal welche Anforderungen Ihre Stumpfverh&auml;ltnisse an uns stellen, wir sind in der Lage diese zu erf&uuml;llen.</p>\r\n<p style="text-align: justify;">\r\n	Das menschliche Bein erf&uuml;llt eine Vielzahl von Aufgaben und somit sind auch die Anforderungen an ein Prothesenbein sehr gro&szlig;. Eine Prothese ist eine Kombination aus Prothesenschaft (Stumpfbettung) und diversen Passteilen, die sich gegenseitig so erg&auml;nzen, dass sie das menschliche Bein so gut wie m&ouml;glich ersetzen. Welche Passteile im Einzelnen verwendet werden, richtet sich nach der jeweiligen Amputationsh&ouml;he und dem Aktivit&auml;tsgrad des Patienten.</p>\r\n<p style="text-align: justify;">\r\n	<strong>Wir unterscheiden hierbei vier Mobilit&auml;tsklassen:</strong><br />\r\n	Mobilit&auml;tsklasse 1: Innenbereichsgeher<br />\r\n	Mobilit&auml;tsklasse 2: eingeschr&auml;nkter Au&szlig;enbereichsgeher<br />\r\n	Mobilit&auml;tsklasse 3: uneingeschr&auml;nkter Au&szlig;enbereichsgeher<br />\r\n	Mobilit&auml;tsklasse 4: uneingeschr&auml;nkter Au&szlig;enbereichsgeher mit besonders hohen Anspr&uuml;chen</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unser Leistungsspektrum - f&uuml;r Ihre Mobilit&auml;t</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		kontinuierliche Aus- und Weiterbildung unserer Orthop&auml;die-Techniker</li>\r\n	<li style="text-align: justify;">\r\n		Kooperation mit speziell geschulten Therapeuten</li>\r\n	<li style="text-align: justify;">\r\n		modernste technische Ausstattung</li>\r\n	<li style="text-align: justify;">\r\n		Erfahrene Orthop&auml;die-Techniker im Prothesenbau</li>\r\n	<li style="text-align: justify;">\r\n		Qualitativ hochwertige Prothesensysteme</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r das mikroprozessorgeregelte Kniegelenk GENIUM&reg;</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r das mikroprozessorgeregelte Kniegelenk C-Leg&reg;</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r das AeroLink&reg;-Unterdrucksystem</li>\r\n	<li style="text-align: justify;">\r\n		zertifiziert f&uuml;r Harmony&reg;-Unterdrucksystem</li>\r\n	<li style="text-align: justify;">\r\n		kostenlose Hausbesuche</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Oberschenkelprothesen</strong><br />\r\n	Eine Oberschenkelamputation oder auch transfemorale Amputation wird dann durchgef&uuml;hrt, wenn das vorhandene Kniegelenk aus medizinischen Gr&uuml;nden vom Chirurgen nicht mehr erhalten werden kann.</p>\r\n<p style="text-align: justify;">\r\n	Die l&auml;ngsovale Schaftform (CAT-CAM)&nbsp; in Kombination mit hydrostatischer Belastungsaufnahme, d.h. es wird die gesamte Stumpfoberfl&auml;che zur Lastaufnahme herangezogen, ist heute die Schaftform der Wahl. Hierbei bietet sich dem Patienten der Vorteil, gegen&uuml;ber der veralteten querovalen Schaftform, dass die Prothesenf&uuml;hrung in der Stand- und Schwungphase, durch den gro&szlig;fl&auml;chigen Kontakt erheblich verbessert wurde.<br />\r\n	Ob der Patient letztlich mit einem Saugsystem und flexiblem Innenschaft, oder einem Linersystem mit distaler Arretierung versorgt wird ist letztlich den Stumpfverh&auml;ltnissen, dem Krankheitsbild und/oder auch dem Wunsch des Patienten geschuldet.<br />\r\n	Dank kontinuierlicher Zusatzqualifikationen ist die orthop&auml;dische Werkstatt des Sanit&auml;tshauses F&uuml;rst, heute in der Lage seinen Patienten modernste Prothesenpassteile, wie z.B. die mikroprozessergeregelten Kniegelenke C-Leg&reg; oder das noch weiterentwickelte Genium&reg; zu bieten.</p>\r\n<p style="text-align: justify;">\r\n	Diese Kniegelenke unterscheiden sich ma&szlig;geblich von konventionellen mechanischen Kniegelenken, wie nachfolgend aufgef&uuml;hrt:</p>\r\n<p style="text-align: justify;">\r\n	<strong>C-Leg&reg; Kniegelenk<br />\r\n	</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		vollst&auml;ndig mikroprozessorgeregeltes Kniegelenk</li>\r\n	<li style="text-align: justify;">\r\n		unerreicht hohe Sicherheit und Dynamik</li>\r\n	<li style="text-align: justify;">\r\n		Ann&auml;herung an nat&uuml;rliches Gangbild</li>\r\n	<li style="text-align: justify;">\r\n		sicheres, harmonisches Gehen in unterschiedlichen Schrittgeschwindigkeiten und auf verschiedenen Untergr&uuml;nden</li>\r\n	<li style="text-align: justify;">\r\n		dreij&auml;hrige Garantie mit kostenfreier Serviceinspektion nach 24 Monaten</li>\r\n	<li style="text-align: justify;">\r\n		C-Leg Mobilit&auml;tsgarantie</li>\r\n	<li style="text-align: justify;">\r\n		Empfohlen f&uuml;r die Mobilit&auml;tsgrade 2 bis 4</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	und zu den bereits aufgef&uuml;hrten Punkten bietet das derzeit beste Kniegelenk folgende zus&auml;tzliche Vorteile:<br />\r\n	&nbsp;<br />\r\n	<strong> Genium&reg; Kniegelenk</strong></p>\r\n<ul>\r\n	<li style="text-align: justify;">\r\n		optimiertes physiologischen Gehen</li>\r\n	<li style="text-align: justify;">\r\n		nat&uuml;rliches Treppensteigen</li>\r\n	<li style="text-align: justify;">\r\n		nat&uuml;rliches &Uuml;berwinden von Hindernissen</li>\r\n	<li style="text-align: justify;">\r\n		nat&uuml;rliches Stehen</li>\r\n	<li style="text-align: justify;">\r\n		Empfohlen f&uuml;r die Mobilit&auml;tsgrade 2 bis 4</li>\r\n</ul>\r\n<p style="text-align: justify;">\r\n	&nbsp;</p>\r\n<p style="text-align: justify;">\r\n	<strong>Unterschenkelprothesen</strong></p>\r\n<p style="text-align: justify;">\r\n	Die Unterschenkelamputation oder auch transtibiale Amputation ist eine sowohl funktionell als auch kosmetisch gut zu versorgende Amputation.<br />\r\n	Die Stumpfbettung erfolgt heute in der Regel mit Linern aus Silikon, Gel oder Polyurethan, aber auch die Verwendung von Polytol&reg;- oder HTV-Innensch&auml;ften liefert gerade bei schwierigen Stumpfverh&auml;ltnissen beste Ergebnisse.<br />\r\n	Der Liner oder Innenschaft dient als&nbsp; &bdquo;zweite Haut&ldquo; zwischen den beweglichen Weichteilen des Stumpfes und der harten Schale des Schaftes, welcher die sogenannten Scherkr&auml;fte zwischen Haut und Prothesenschaft auf ein Minimum reduziert und somit den Tragekomfort der Prothese erheblich erh&ouml;ht.<br />\r\n	Je nach Aktivit&auml;tsgrad des zu versorgenden Patienten erfolgt dann die Auswahl der Fu&szlig;systems. Egal ob sicheres Stehen und vorsichtiges Gehen, dynamisches Marschieren oder schnelles Rennen f&uuml;r Sie im Vordergrund steht, bei uns bekommen Sie den Prothesenfu&szlig; der individuell auf Sie abgestimmt ist. Durch die&nbsp; Zusammenarbeit mit den weltweit f&uuml;hrenden Herstellern f&uuml;r Prothesensysteme, sind wir heute in der Lage, Ihre Prothese mit dem f&uuml;r Sie idealen Fu&szlig;system auszustatten.</p>\r\n<p style="text-align: justify;">\r\n	<br />\r\n	<strong>Fu&szlig;prothesen aus Silikon</strong></p>\r\n<p style="text-align: justify;">\r\n	Ihr Amputationsstumpf ist verheilt und weitestgehend schmerzfrei belastbar, dann ist die Zeit gekommen Sie mit einer Silikon-Fu&szlig;prothese zu versorgen, die kosmetisch und &auml;sthetisch, aber auch funktionell keine W&uuml;nsche offen l&auml;sst.<br />\r\n	Im Vordergrund dieses exklusiven Prothesensystems stehen dabei eine gleichm&auml;&szlig;ige Druckverteilung und ein verbessertes Gangbild. Eine optimale Fixierung am Amputationsstumpf verhindert Hautirritationen.<br />\r\n	Der kosmetische Aspekt vervollst&auml;ndigt auch hier die Versorgung. Barfu&szlig;laufen wird ebenso erm&ouml;glicht wie das Tragen von Konfektionsschuhen mit verschiedenen Absatzh&ouml;hen.</p>\r\n<p style="text-align: justify;">\r\n	<a href="http://www.vorfussamputation.de/" target="_blank">http://www.vorfussamputation.de/</a></p>\r\n'),
(164, 1, '', 'blank'),
(165, 1, '', 'blank'),
(166, 1, '', 'blank'),
(167, 1, '', 'blank'),
(168, 1, '', '<p>\r\n	Zahnarzthelferlein 1</p>\r\n'),
(169, 1, '', 'blank'),
(170, 1, '', '<p>\r\n	Gabi</p>\r\n'),
(171, 1, '', '<p>\r\n	Thomas Kasparbauer &nbsp;Angestellt</p>\r\n'),
(172, 1, '', 'blank'),
(173, 1, '', 'blank'),
(174, 1, '', '<p>\r\n	Carmen</p>\r\n'),
(175, 1, '', 'blank'),
(176, 1, '', 'blank'),
(177, 1, '', 'blank'),
(178, 1, '', 'blank'),
(179, 1, '', 'blank'),
(180, 1, '', 'blank'),
(181, 1, '', 'blank'),
(182, 1, '', 'blank'),
(183, 1, '', 'blank'),
(184, 1, '', 'blank'),
(185, 1, '', 'blank'),
(186, 1, '', '<p>\r\n	Unser Team</p>\r\n'),
(187, 1, '', '<table height="109" width="355">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				Montag - Freitag</td>\r\n			<td>\r\n				08.00 - 12.30 Uhr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Montag, Dienstag</td>\r\n			<td>\r\n				14.30 - 28.00 Uhr</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Donnerstag</td>\r\n			<td>\r\n				14.30 - 19.00 Uhr</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(188, 1, '', 'blank'),
(189, 1, '', 'blank'),
(190, 1, '', ''),
(191, 1, '', '<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n<h4>\r\n	Willkommen in der Zahnarztpraxis</h4>\r\n<h4>\r\n	Dr. Ludwig Bauer, Thomas Kasparbauer (angest)</h4>\r\n<p>\r\n	Unsere Praxis in Passau, Neuburgerstra&szlig;e 49&nbsp; bietet Ihnen ein breites Spektrum zahn&auml;rztlicher Leistungen.</p>\r\n<p>\r\n	So haben Sie als Patient die Wahl zwischen bew&auml;hrten L&ouml;sungen und modernen Therapien. Eine kompetente und individuelle Beratung ist f&uuml;r uns selbstverst&auml;ndlich.</p>\r\n<p>\r\n	Wir m&ouml;chten Sie auf dieser Webseite &uuml;ber uns, die Praxis und unser Leistungsangebot informieren, um Ihnen den Aufenthalt in unserer Praxis so angenehm wie m&ouml;glich zu gestalten.</p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n'),
(192, 1, '', '<h3>\r\n	Blattimplantate</h3>\r\n'),
(193, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(194, 1, '', '<h3>\r\n	Schmalkieferimplantate</h3>\r\n'),
(195, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(196, 1, '', '<h3>\r\n	Diskimplantate</h3>\r\n'),
(197, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(198, 1, '', '<h3>\r\n	Subperiostale Implantate</h3>\r\n'),
(199, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(200, 1, '', '<h3>\r\n	Keramik-Implantate</h3>\r\n'),
(201, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(202, 1, '', '<h3>\r\n	Zirconium(IV)-oxid</h3>\r\n'),
(203, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(204, 1, '', '<h3>\r\n	Zytokine</h3>\r\n'),
(205, 1, '', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n'),
(206, 1, '', '<h3>\r\n	Indikation</h3>\r\n'),
(207, 1, '', '<p>\r\n	In jedem Mund bildet sich nach ein bis zwei Tagen ein Belag auf den Z&auml;hnen, Plaque oder auch Biofilm genannt. Dieser Biofilm besteht aus Milliarden von Bakterien, die einen regen Stoffwechsel entwickeln. Dabei werden isolierte Kohlenhydrate verwertet und S&auml;uren sowie Zellgifte ausgeschieden. Durch diese aggressiven Substanzen entstehen Zahnsch&auml;den (Zahnkaries) und Zahnfleischentz&uuml;ndungen (Gingivitis) bis hin zum Knochenabbau (Parodontitis). Vielen Patienten gelingt es auch durch eine gr&uuml;ndliche Zahnpflege nicht, alle Zwischenr&auml;ume und Nischen in der Mundh&ouml;hle zu erreichen und damit diese Bakterien zu entfernen.<br />\r\n	<br />\r\n	Insbesondere bei &auml;lteren Patienten ist eine regelm&auml;&szlig;ige gr&uuml;ndliche Reinigung des Gebisses unerl&auml;sslich, weil das Zahnfleisch zur&uuml;ckgeht. Dadurch wird die freiliegende, Belag und Bakterien ausgesetzte, Zahnoberfl&auml;che gr&ouml;&szlig;er. Au&szlig;erdem l&auml;sst die Fingerfertigkeit im Alter nach, was sich auch auf die Qualit&auml;t der Putztechnik auswirken kann. Drittens ver&auml;ndert sich der Stoffwechsel im Alter in vielen F&auml;llen ung&uuml;nstig, beispielsweise durch chronische Krankheiten oder Medikamente, und die Anf&auml;lligkeit f&uuml;r Karies und Parodontitis w&auml;chst.</p>\r\n'),
(208, 1, '', '<h3>\r\n	Indikation</h3>\r\n'),
(209, 1, '', '<p>\r\n	In jedem Mund bildet sich nach ein bis zwei Tagen ein Belag auf den Z&auml;hnen, Plaque oder auch Biofilm genannt. Dieser Biofilm besteht aus Milliarden von Bakterien, die einen regen Stoffwechsel entwickeln. Dabei werden isolierte Kohlenhydrate verwertet und S&auml;uren sowie Zellgifte ausgeschieden. Durch diese aggressiven Substanzen entstehen Zahnsch&auml;den (Zahnkaries) und Zahnfleischentz&uuml;ndungen (Gingivitis) bis hin zum Knochenabbau (Parodontitis). Vielen Patienten gelingt es auch durch eine gr&uuml;ndliche Zahnpflege nicht, alle Zwischenr&auml;ume und Nischen in der Mundh&ouml;hle zu erreichen und damit diese Bakterien zu entfernen.<br />\r\n	<br />\r\n	Insbesondere bei &auml;lteren Patienten ist eine regelm&auml;&szlig;ige gr&uuml;ndliche Reinigung des Gebisses unerl&auml;sslich, weil das Zahnfleisch zur&uuml;ckgeht. Dadurch wird die freiliegende, Belag und Bakterien ausgesetzte, Zahnoberfl&auml;che gr&ouml;&szlig;er. Au&szlig;erdem l&auml;sst die Fingerfertigkeit im Alter nach, was sich auch auf die Qualit&auml;t der Putztechnik auswirken kann. Drittens ver&auml;ndert sich der Stoffwechsel im Alter in vielen F&auml;llen ung&uuml;nstig, beispielsweise durch chronische Krankheiten oder Medikamente, und die Anf&auml;lligkeit f&uuml;r Karies und Parodontitis w&auml;chst.</p>\r\n'),
(210, 1, '', '<h3>\r\n	Vorsorge</h3>\r\n'),
(211, 1, '', '<p>\r\n	Die Vorsorge durch regelm&auml;&szlig;ige professionelle Zahnreinigung wird vom deutschen Zahn&auml;rzteverband empfohlen. Sie sollte alle sechs bis zw&ouml;lf Monate durchgef&uuml;hrt werden. Die H&auml;ufigkeit der Vorsorge wird allerdings von vielen Faktoren bestimmt. So belegen Studien, dass Wohnort und Lebensgewohnheiten entscheidend die dentale Gesundheit beeinflussen und ein starrer 12-Monatsrhythmus keinesfalls f&uuml;r alle Patienten notwendig ist. So zeigte zum Beispiel eine vergleichende Untersuchung deutscher Gro&szlig;st&auml;dte, dass die &uuml;berdurchschnittlich hohe Wasserqualit&auml;t N&uuml;rnbergs lediglich einen Zweijahres-Rhythmus in der professionellen Zahnreinigung verlangt. Bei kariesaktivem Gebiss oder parodontaler Vorsch&auml;digung sollte eine PZR allerdings alle drei bis sechs Monate durchgef&uuml;hrt werden. Zus&auml;tzlich wird nach jeder PZR-Behandlung die regelm&auml;&szlig;ige Anwendung von den Zahnschmelz h&auml;rtenden Mitteln empfohlen. hallo</p>\r\n'),
(212, 1, '', '<h3>\r\n	Wirksamkeit</h3>\r\n'),
(213, 1, '', '<p>\r\n	In mehreren mittlerweile klassischen Studien hat unter anderem Per Axelsson aus Schweden bereits in den achtziger Jahren nachgewiesen, dass durch die regelm&auml;&szlig;ige systematische Zahnreinigung das Parodontitis- und Kariesrisiko und damit die Wahrscheinlichkeit einer Erkrankung stark gesenkt werden kann. In einzelnen Stellungnahmen von Krankenkassen wird die wissenschaftliche Qualit&auml;t von Studien, welche die Wirksamkeit der professionellen Zahnreinigung untersuchen, als nicht besonders hoch eingestuft. Zahlreiche aussagekr&auml;ftige Studien best&auml;tigen jedoch den Langzeiterfolg der systematischen Karies- und Parodontitisprophylaxe.</p>\r\n'),
(214, 1, '', 'blank'),
(215, 1, '', 'blank'),
(216, 1, '', 'blank'),
(217, 1, '', 'blank'),
(218, 1, '', '<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n<h4>\r\n	Willkommen in der Zahnarztpraxis</h4>\r\n<h4>\r\n	Dr. Ludwig Bauer, Thomas Kasparbauer (angest)</h4>\r\n<p>\r\n	Unsere Praxis in Passau, Neuburgerstra&szlig;e 49&nbsp; bietet Ihnen ein breites Spektrum zahn&auml;rztlicher Leistungen.</p>\r\n<p>\r\n	So haben Sie als Patient die Wahl zwischen bew&auml;hrten L&ouml;sungen und modernen Therapien. Eine kompetente und individuelle Beratung ist f&uuml;r uns selbstverst&auml;ndlich.</p>\r\n<p>\r\n	Wir m&ouml;chten Sie auf dieser Webseite &uuml;ber uns, die Praxis und unser Leistungsangebot informieren, um Ihnen den Aufenthalt in unserer Praxis so angenehm wie m&ouml;glich zu gestalten.</p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n'),
(219, 1, '', ''),
(220, 1, '', '<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<h4>\r\n		Praxisphilosophie</h4>\r\n	<p>\r\n		Unser Ziel ist es, durch individuelle auf jeden pers&ouml;nlich abgestimmte Therapiem&ouml;glichkeiten zufriedene Patienten zu gewinnen.</p>\r\n	<p>\r\n		Mit unserem kompetenten und hochmotivierten Team wollen wir hochwertige Behandlungsziele erreichen.</p>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<h4>\r\n			Unser Behandlungsspektrum</h4>\r\n		<p>\r\n			In unserer Zahnarztpraxis bieten wir das gesamte Spektrum der Zahnheilkunde an. Wir m&ouml;chten Sie &uuml;ber unser Leistungsangebot informieren, um Ihnen den Aufenthalt so angenehm wie m&ouml;glich zu gestalten.</p>\r\n	</div>\r\n</div>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n'),
(221, 1, '', '<h3>\r\n	Nur eine Behandlungssitzung</h3>\r\n'),
(222, 1, '', '<p style="margin-bottom: 0cm">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Mit der CEREC 3D-Messkamera nehmen wir in nur wenigen Sekunden eine dreidimensionale Aufnahme vom zu behandelnden Zahn. Dabei wird in der Regel auf einen konventionellen Abdruck, den viele Patienten als unangenehm empfinden, verzichtet. Am Bildschirm wird die Krone in Ihrem Beisein konstruiert. Danach schleift CEREC 3D die Restauration vollautomatisch aus einem Keramikblock in wenigen Minuten heraus.<br />\r\n	<br />\r\n	Die Restauration danach sofort eingepasst und mit dem Zahn sorgf&auml;ltig verklebt.&nbsp;</font></font></p>\r\n'),
(223, 1, '', '<h3>\r\n	Biokompatible Zahnkeramik</h3>\r\n'),
(224, 1, '', '<p style="margin-bottom: 0cm">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Die CEREC 3D-Keramik wird aus Naturstoffen hergestellt und ist absolut vertr&auml;glich. Sie verh&auml;lt sich &auml;hnlich wie gesunder Zahnschmelz, reagiert nicht auf kalt oder hei&szlig; und ist geschmacksneutral, da keine Wechselwirkungen mit anderen Zahnf&uuml;llungen im Mund auftreten.&nbsp;</font></font></p>\r\n'),
(225, 1, '', '<h3>\r\n	Lange Lebensdauer</h3>\r\n'),
(226, 1, '', '<p style="margin-bottom: 0cm">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Vielf&auml;ltige Studien zu CEREC 3D beweisen, dass CEREC 3D-Restaurationen mindestens die gleiche, langj&auml;hrige Haltbarkeit haben wie fr&uuml;her Goldversorgungen.&nbsp;</font></font></p>\r\n'),
(227, 1, '', '<h3>\r\n	Das sind Ihre Vorteile bei einer CEREC 3D-Versorgung:</h3>\r\n');
INSERT INTO `languagetexts` (`text_id`, `language_id`, `header`, `text`) VALUES
(228, 1, '', '<p style="margin-bottom: 0cm">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">&bull; Nur eine Behandlungssitzung<br />\r\n	&bull; Biokompatible Zahnkeramik<br />\r\n	&bull; Absolut metallfrei<br />\r\n	&bull; Schont Ihre gesunde Zahnsubstanz<br />\r\n	&bull; Sehr gute Haltbarkeit<br />\r\n	&bull; Keine Wartezeit auf ein Labor<br />\r\n	&bull; Keine Provisorien</font></font></p>\r\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `siteitems`
--

DROP TABLE IF EXISTS `siteitems`;
CREATE TABLE IF NOT EXISTS `siteitems` (
  `site_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  UNIQUE KEY `site_pos` (`site_id`,`position`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `siteitems`
--

INSERT INTO `siteitems` (`site_id`, `item_id`, `position`) VALUES
(11, 31, 2),
(11, 27, 3),
(11, 32, 4),
(11, 33, 5),
(11, 34, 6),
(11, 35, 7),
(11, 36, 8),
(11, 105, 9),
(11, 106, 10),
(11, 123, 11),
(11, 139, 12),
(14, 103, 2),
(14, 104, 3),
(14, 105, 4),
(14, 106, 5),
(15, 105, 1),
(15, 106, 2),
(19, 73, 2),
(19, 37, 4),
(19, 85, 5),
(19, 97, 6),
(19, 98, 7),
(19, 105, 10),
(19, 106, 11),
(19, 140, 12),
(19, 141, 13),
(19, 142, 14),
(19, 143, 15),
(20, 74, 2),
(20, 78, 3),
(20, 81, 4),
(20, 37, 5),
(20, 86, 6),
(20, 105, 7),
(20, 106, 8),
(22, 110, 1),
(22, 114, 3),
(22, 115, 4),
(22, 116, 5),
(22, 117, 6),
(22, 118, 7),
(22, 122, 8),
(22, 137, 9),
(22, 138, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `siteitemtypes`
--

DROP TABLE IF EXISTS `siteitemtypes`;
CREATE TABLE IF NOT EXISTS `siteitemtypes` (
  `site_id` int(10) unsigned NOT NULL,
  `itemtype_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  UNIQUE KEY `site_pos` (`site_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `is_in_menu` tinyint(4) NOT NULL,
  `position` int(11) NOT NULL,
  `iconstyle` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'myic-home',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `header` text COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8_bin NOT NULL,
  `metadescription` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `parent_id` (`parent_id`,`is_in_menu`),
  KEY `position` (`position`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=31 ;

--
-- Daten für Tabelle `sites`
--

INSERT INTO `sites` (`site_id`, `parent_id`, `is_in_menu`, `position`, `iconstyle`, `name`, `url`, `title`, `header`, `text`, `metakeywords`, `metadescription`) VALUES
(11, 0, 1, 3, 'myic-home', 'Startseite', 'index', 'Startseite', 'Startseite', '<p>\r\n	Startseite</p>\r\n', 'Startseite', 'Startseite'),
(12, 0, 1, 4, 'myic-zoom-in', 'Dienstleistungen', 'dienstleistungen', 'Dienstleistungen', 'Dienstleistungen', '<p>\r\n	Dienstleistungen</p>\r\n', 'Dienstleistungen', 'Dienstleistungen'),
(14, 0, 1, 6, 'myic-envelope', 'Kontakt', 'kontakt', 'Kontakt', 'Kontakt', '<p>\r\n	Kontakt</p>\r\n', 'Kontakt', 'Kontakt'),
(15, 0, 1, 7, 'myic-align-justify', 'Impressum', 'impressum', 'Impressum', 'Impressum', '<p>\r\n	<strong>Angaben gem&auml;&szlig; &sect; 5 TMG:</strong></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Zahnarztpraxis Dr. Bauer, Kasparbauer</b></font></font><br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Neuburgerstra&szlig;e 49</font></font></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">94032 Passau<br />\r\n	<br />\r\n	Telefon: 0851/6730<br />\r\n	Telefax: 0851/73488</font></font><br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Inhaltlich Verantwortlicher gem&auml;&szlig; &sect;55 Abs. 2 RStV:</b></font></font><br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Zahnarzt Dr. Ludwig Bauer, Zhomas Kasparbauer (Adresse wie oben)</font></font></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Zust&auml;ndige Kammer:</b></font></font><br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Bayerische Landeszahn&auml;rztekammer (BLZK)<br />\r\n	K&ouml;rperschaft des &ouml;ffentlichen Rechts<br />\r\n	Fallstra&szlig;e 34<br />\r\n	D-81369 M&uuml;nchen</font></font><br />\r\n	<a href="http://www.blzk.de"><font color="#003366"><font face="Trebuchet MS, serif"><u>www.blzk.de</u></font></font></a><br />\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Zust&auml;ndige kassenzahn&auml;rztliche Vereinigung:</b></font></font><br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Kassenzahn&auml;rztliche Vereinigung Bayerns (KZVB)<br />\r\n	K&ouml;rperschaft des &ouml;ffentlichen Rechts<br />\r\n	Fallstra&szlig;e 34<br />\r\n	D-81369 M&uuml;nchen</font></font><br />\r\n	<a href="http://www.kzvb.de"><font color="#003366"><font face="Trebuchet MS, serif"><u>www.kzvb.de</u></font></font></a><br />\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Berufsbezeichnung:</b></font></font><br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Zahnarzt (verliehen in der Bundesrepublik Deutschland)</font></font><br />\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Berufsrechtliche Regelungen:</b></font></font><br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">- Zahnheilkundegesetz<br />\r\n	- Berufsordnung f&uuml;r Zahn&auml;rzte<br />\r\n	- Heilberufegesetz des Landes Bayern<br />\r\n	- Geb&uuml;hrenordnung f&uuml;r Zahn&auml;rzte</font></font></p>\r\n', 'Impressum', 'Impressum'),
(19, 12, 1, 4, 'myic-home', 'Cerec 3D', 'cerec_3d', 'Cerec 3D', 'Cerec 3D', '<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<span style="font-size:16px;"><font color="#666666"><font face="Trebuchet MS, serif"><b>Perfekter Zahnersatz in nur einer Sitzung</b>!<br />\r\n	<br />\r\n	Es ist heute bereits m&ouml;glich, hochqualitative Inlays (keramische F&uuml;llungen), Teilkronen und Kronen aus Keramik in nur einer Sitzung anzufertigen und einzusetzen.<br />\r\n	<br />\r\n	Diese innovative Methode hei&szlig;t CEREC. Denn mit CEREC m&uuml;ssen Sie nicht den unangenehmen konventionellen Gebissabdruck &uuml;ber sich ergehen lassen. Er wird rein digital und mit h&ouml;chster Pr&auml;zision erzeugt. Zus&auml;tzlich kommen Sie bei dieser Behandlung v&ouml;llig ohne ein Provisorium aus, denn der Zahnersatz wird sofort computergesteuert herausgearbeitet.<br />\r\n	<br />\r\n	Keramischer Zahnersatz hat den weiteren Vorteil f&uuml;r Sie, dass er rein aus nat&uuml;rlichen Materialien besteht und somit belastungsfrei f&uuml;r Ihren Organismus ist.</font></font></span></p>\r\n', 'Cerec 3D', 'Cerec 3D'),
(20, 12, 1, 5, 'myic-home', 'Praxis und Meisterlabor', 'praxis_meisterlabor', 'Praxis und Meisterlabor', 'Praxis und Meisterlabor', '<p>\r\n	Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\r\n', 'Praxis und Meisterlabor', 'Praxis und Meisterlabor'),
(22, 0, 1, 4, 'myic-user', 'Team', 'team', 'Unser Team', 'Team', '<p>\r\n	Hier eine &Uuml;bersicht unserer Mitarbeiter in der Zahnarztpraxis Dr. Bauer:</p>\r\n', 'Mitarbeiter, Team', 'Die Mitarbeiter der Zahnarztpraxis Dr. Bauer'),
(23, 12, 1, 6, 'myic-home', 'Prophylaxe', 'prophylaxe', 'Prophylaxe', 'Prophylaxe', '<p style="margin-bottom: 0cm; line-height: 100%">\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Mundgesundheit und Erhaltungstherapie sind f&uuml;r uns untrennbare Elemente der Vorsorge. St&auml;ndige Fortbildung und die neuesten Methoden zum Thema Dentalhygiene sichern den nachhaltigen Erfolg unserer Prophylaxeleistungen.<br />\r\n	<br />\r\n	Ziel ist der langfristige Erhalt Ihrer eigenen Z&auml;hne und des Zahnersatzes, dauerhafter Erfolg von Parodontalbehandlungen, ein gesundes Zahnfleisch, die Vorbeugung gegen Karies und Parodontitis (Zahnbetterkrankungen), Schutz vor Zahnfleischblutungen und ein strahlend wei&szlig;es L&auml;cheln.</font></font><br />\r\n	<br />\r\n	<a><font color="#666666"><font face="Trebuchet MS, serif"><font style="font-size: 13pt"><u>Was ist professionelle Mundhygiene und wie l&auml;uft sie ab?</u></font></font></font></a></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Bei der professionellen Zahnreinigung bzw. Prophylaxe werden Zahnbel&auml;ge sowie Verf&auml;rbungen (z. B. durch Kaffee, Tee, Nikotin, Rotwein) auch an den schwer erreichbaren Stellen, beispielsweise in Zahnzwischenr&auml;umen, von unseren speziellen Mitarbeiterinnen (Zahnmedizinische Fachassistentin, weitergebildete Prophylaxeassistentin) mittels spezieller Verfahren (AIR-FLOW) gr&uuml;ndlich und schonend auch subgingival (=unterhalb des Zahnfleischsaumes) beseitigt.<br />\r\n	<br />\r\n	Jede Sitzung beginnt mit der Erhebung von diagnostischen Befunden. Als Patient erhalten Sie somit eine Verlaufskontrolle &uuml;ber Ihre Mundhygienesituation.<br />\r\n	Zahnbel&auml;ge und Plaque werden abh&auml;ngig vom Befund mit unterschiedlichen Instrumenten entfernt. Es wird immer schonend und vorsichtig behandelt.<br />\r\n	<br />\r\n	Man kann es nicht oft genug betonen: Nur eine regelm&auml;&szlig;ige professionelle Mundhygiene, mindestens zwei Mal j&auml;hrlich, sch&uuml;tzt Sie zusammen mit der h&auml;uslichen Zahnpflege effektiv vor Karies und Parodontitis und erh&auml;lt Ihre Z&auml;hne lange Zeit gesund. Die professionelle Mundhygiene oder Prophylaxe ist eine Privatleistung, die bei Erwachsenen von den gesetzlichen Krankenkassen nicht und von Privatversicherungen in unterschiedlicher H&ouml;he &uuml;bernommen wird.</font></font></p>\r\n', 'Prophylaxe', 'Prophylaxe'),
(24, 12, 1, 7, 'myic-home', 'Parodontologie', 'parodontologie', 'Parodontologie', 'Parodontologie', '<p>\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Parodontitis (umgangssprachlich: Parodontose) ist eine der h&auml;ufigsten Erkrankungen des Zahnhalteapparates. Meistens wird die Erkrankung erst sehr sp&auml;t festgestellt.<br />\r\n	<br />\r\n	Bakterien l&ouml;sen Zahnfleischblutungen und Entz&uuml;ndungen aus. Diese f&uuml;hren zum Knochenabbau. Folgen sind Zahnfleischr&uuml;ckgang, Zahnlockerung, Zahnfehlstellungen und im schlimmsten Fall der Verlust des Zahnes.<br />\r\n	Wird die Parodontitis fr&uuml;hzeitig erkannt, kann durch regelm&auml;&szlig;ige professionelle Zahnreinigung und eine Parodontitisbehandlung die Entz&uuml;ndung und der Knochenabbau gestoppt werden. Bei fortgeschrittener Erkrankung kann der Knochen oftmals wieder aufgebaut werden. Gelockerte Z&auml;hne werden geschient und k&ouml;nnen damit in der Regel ein Leben lang erhalten bleiben.</font></font><br />\r\n	<br />\r\n	<a><font color="#666666"><font face="Trebuchet MS, serif"><font style="font-size: 13pt"><u>Was ist Parodontitis?</u></font></font></font></a><font color="#666666"><font face="Trebuchet MS, serif"><font style="font-size: 13pt"> </font></font></font></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Parodontitis ist eine durch Bakterien verursachte Zahnfleischerkrankung. Unbehandelt f&uuml;hrt die Parodontitis mehr oder weniger schnell zur Zahnlockerung und zum Zahnverlust.<br />\r\n	<br />\r\n	Die Parodontitis hat aber nicht nur Auswirkungen auf die Z&auml;hne und den Zahnhalteapparat (Knochen, Zahnfleisch), vielmehr geraten Bakterien und Giftstoffe &uuml;ber die Blutbahn in den gesamten K&ouml;rper.<br />\r\n	<br />\r\n	Die Entz&uuml;ndungsbakterien setzen fortw&auml;hrend Botenstoffe und Gifte frei. Zahlreiche Untersuchungen zeigen, dass eine nicht behandelte Parodontitis das Risiko von Herzinfarkt und Schlaganfall erh&ouml;hen kann. F&uuml;r Schwangere steigt die Gefahr untergewichtiger Fr&uuml;hgeburten. Es bestehen auch enge Zusammenh&auml;nge zu Erkrankungen wie Diabetes.<br />\r\n	<br />\r\n	Da die Parodontitis schleichend verl&auml;uft und anfangs keine Schmerzen verursacht, wird sie meist zusp&auml;t behandelt.<br />\r\n	<br />\r\n	Man wei&szlig;, dass praktisch jeder Zahnfleischr&uuml;ckgang auf eine Besiedlung mit Bakterien zur&uuml;ckzuf&uuml;hren ist. Diese Bakterien vermehren sich an der Zahnoberfl&auml;che langsam in Richtung Zahnwurzel entlang und verursachen dort Entz&uuml;ndungen. Knochenabbau ist die Folge. Sind die Bakterien in die Zahnfleischtaschen vorgedrungen, so vertiefen sich diese Taschen immer weiter - unerreichbar f&uuml;r die Zahnb&uuml;rste. Die Bakterien bilden auf der Wurzeloberfl&auml;che einen Belag, den so genannten Biofilm, der als guter N&auml;hrboden f&uuml;r eine fortschreitende bakterielle Besiedelung dient.<br />\r\n	<br />\r\n	Die Behandlung der Parodontitis zielt auf die Entfernung bzw. Minimierung der Bakterienanzahl. Meist ist dies ohne Operation am Zahnfleisch m&ouml;glich und wird unter &ouml;rtlicher Bet&auml;ubung durchgef&uuml;hrt.<br />\r\n	<br />\r\n	Neue Methoden erm&ouml;glichen es uns, die Z&auml;hne sozusagen unter dem Zahnfleischrand zu reinigen. Dies geschieht mit speziellen Ultraschallger&auml;ten (z.B. unserem Vector-Parodontitisger&auml;t). Dabei werden Zahnstein, Konkremente, Plaque und Bakterien soweit entfernt, dass der K&ouml;rper die Entz&uuml;ndung selbst heilen kann.<br />\r\n	<br />\r\n	Zus&auml;tzlich werden die Zahnfleischtaschen und die Mundh&ouml;hle desinfiziert.<br />\r\n	Wir reinigen die Mundh&ouml;hle (Wangen, Zunge, Rachenraum) mit speziellen Mitteln, wir sp&uuml;len die Zahnfleischtaschen mit medizinischen L&ouml;sungen (Chlorhexidin-Sp&uuml;ll&ouml;sungen). Um ein m&ouml;glichst langes und stabiles Ergebnis erzielen zu k&ouml;nnen, ist das Wichtigste eine perfekte h&auml;usliche Mundhygiene mit guter Pflege der Zahnzwischenr&auml;ume und ein regelm&auml;&szlig;ige Kontrolle in unserer Prophylaxesitzung.<br />\r\n	<br />\r\n	In ganz speziellen und schweren Erkrankungsf&auml;llen, der sog. aggressiven Parodontitis, bei der bestimmte Bakteriengruppen vermehrt zu finden sind, kann es notwendig sein, die Parodontitistherapie mit Antibiotikaeinnahme zu kombinieren. Eventuell ist auch ein chirurgischer Zugang zur Wurzeloberfl&auml;che zu schaffen, um diese unter Sicht zu reinigen und desinfizieren.<br />\r\n	<br />\r\n	Die Parodontitis ist eine lebenslange Erkrankung und bedarf regelm&auml;&szlig;iger Kontrollen des Zahnfleisches, um eine eventuell erneut auftretende Entz&uuml;ndung fr&uuml;hzeitig zu erkennen und therapieren zu k&ouml;nnen.</font></font><br />\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Zahnarzt Dominik Meling ist in der Parodontitisbehandlung spezialisiert und zertifiziert.</b></font></font></p>\r\n', 'Parodontologie', 'Parodontologie'),
(25, 12, 1, 8, 'myic-home', 'Implantologie', 'Implantologie', 'Implantologie', 'Implantologie', '<p>\r\n	&nbsp;</p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Implantate sind k&uuml;nstliche Zahnwurzeln aus biokompatiblem, gut vertr&auml;glichem Titan.<br />\r\n	<br />\r\n	Nach einer Einheilphase von 3-5 Monaten werden die Implantate mit Kronen und Br&uuml;cken versorgt oder als Verankerungselemente f&uuml;r herausnehmbaren Zahnersatz verwendet.</font></font><br />\r\n	<br />\r\n	<a><font color="#666666"><font face="Trebuchet MS, serif"><font style="font-size: 13pt"><u>Weitere Informationen &raquo; </u></font></font></font></a></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Implantate sind k&uuml;nstliche Zahnwurzeln, die in den Kieferknochen eingepflanzt werden, um verloren gegangene Z&auml;hne zu ersetzen &ndash; von der Wurzel bis zur Krone. Sie bestehen aus hochwertigem Reintitan (z.B. vom deutschen Hersteller CAMLOG), das sich durch eine hervorragende K&ouml;rpervertr&auml;glichkeit auszeichnet. Eine Altersgrenze f&uuml;r den Einsatz von Implantaten gibt es nicht.<br />\r\n	<br />\r\n	Im Vergleich zu klassischen L&ouml;sungen beim Ersatz von eigenen Z&auml;hnen bieten Implantate entscheidende Vorteile:<br />\r\n	Als festsitzender Zahnersatz geben diese ein sicheres Gef&uuml;hl beim Sprechen und Kauen. Sie gleichen weitgehend eigenen Z&auml;hnen. &Auml;hnlich zu nat&uuml;rlichen Zahnwurzeln &uuml;bertragen sie den Kaudruck gleichm&auml;&szlig;ig auf den gesamten Kieferknochen.<br />\r\n	Br&uuml;cken oder Zahnprothesen k&ouml;nnen dagegen Kieferknochen und Zahnfleisch manchmal einseitig belasten und dadurch auch dauerhaft sch&auml;digen.<br />\r\n	<br />\r\n	Im Gegensatz zu Br&uuml;cken oder Kronen m&uuml;ssen bei einem Implantat Nachbarz&auml;hne nicht beschliffen werden: Gesunde Zahnsubstanz bleibt somit erhalten.<br />\r\n	<br />\r\n	Bei Implantaten gibt es gewisse Einschr&auml;nkungen, bei denen eine Implantation nicht oder nur mit gro&szlig;em Aufwand und erh&ouml;htem Risiko m&ouml;glich ist. Au&szlig;erdem gibt es wenige allgemeine Erkrankungen, bei denen eine Implantation nicht m&ouml;glich ist, wie z.B. ein schlecht oder nicht eingestellter Diabetes mellitus, starke St&ouml;rungen der Blutgerinnung und bestimmte Knochenleiden.<br />\r\n	<br />\r\n	Faktoren, die das Langzeitergebnis bzw. die Einheilung von Implantaten beeinflussen, sind v.a. Rauchen und eine nicht behandelte Parodontitis (Zahnfleischentz&uuml;ndung). Das Rauchen st&ouml;rt die Wundheilung. Der Knochenabbau bei einer &quot;Periimplantitis&quot; (Entz&uuml;ndung des Zahnfleisches und des Knochens um das Implantat) kann langfristig zu einem Verlust der k&uuml;nstlichen Zahnwurzeln f&uuml;hren.<br />\r\n	<br />\r\n	Implantate k&ouml;nnen nur in Kieferbereiche gesetzt werden, in denen ausreichend Knochen zur Verankerung vorhanden ist. Fehlt Knochen, so kann man heute bis zu einem bestimmten Ausma&szlig; knochenaufbauende Ma&szlig;nahmen durchf&uuml;hren: zum Beispiel mit Eigenknochen aus anderen Regionen des Kiefers oder mit speziellem Knochenaufbaumaterial, das im K&ouml;rper durch Umbauvorg&auml;nge zu Knochen wird.<br />\r\n	<br />\r\n	Implantate bieten langfristigen und sicheren Halt f&uuml;r festsitzenden oder herausnehmbaren Zahnersatz &ndash; auch bei Vollprothesen.<br />\r\n	Schlechte oder locker sitzende Prothesen sowie Einschr&auml;nkungen beim Essen oder in der Aussprache geh&ouml;ren mit implantatgest&uuml;tzter Versorgung der Vergangenheit an.</font></font><br />\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><b>Herr Zahnarzt Dr. Ludwig Bauer ist in der Implantatbehandlung spezialisiert und zertifiziert</b></font></font><font color="#666666"><font face="Trebuchet MS, serif">.</font></font></p>\r\n', 'Implantologie', 'Implantologie'),
(26, 12, 1, 9, 'myic-home', 'Zahnersatz', 'Zahnersatz', 'Zahnersatz', 'Zahnersatz', '<p style="margin-bottom: 0cm">\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Z&auml;hne k&ouml;nnen durch Krankheit, Karies oder durch einen Unfall verletzt werden. Manchmal kann es sogar zu einem Zahnverlust kommen.<br />\r\n	<br />\r\n	Man versucht dann, durch Zahnersatz (z.B. Kronen) die Z&auml;hne funktionell stabil und &auml;sthetisch ansprechend zu erhalten. Entstandene Zahnl&uuml;cken m&uuml;ssen mit k&uuml;nstlichen &bdquo;dritten Z&auml;hnen&ldquo; geschlossen werden.<br />\r\n	<br />\r\n	Gemeinsam mit unseren Patienten besprechen wir die verschiedenen Ersatzm&ouml;glichkeiten und erkl&auml;ren die unterschiedlichen Vor- und Nachteile.<br />\r\n	Dadurch finden wir f&uuml;r Sie individuell den optimalen prothetischen L&uuml;ckenschluss unter Ber&uuml;cksichtigung h&ouml;chster Anspr&uuml;che und Vorstellungen.<br />\r\n	<br />\r\n	Gro&szlig;en Wert legen wir auf eine realistische Nachbildung, Stabilit&auml;t, Pr&auml;zision und Vertr&auml;glichkeit.</font></font></p>\r\n', 'Zahnersatz', 'Zahnersatz'),
(27, 12, 1, 10, 'myic-home', 'Funktionstherapie', 'Funktionstherapie', 'Funktionstherapie', 'Funktionstherapie', '<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif"><font style="font-size: 13pt">Funktionsst&ouml;rungen des Kiefergelenkes</font></font></font><br />\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Bei vielen Beschwerden werden die Fehlstellungen der Kiefergelenke h&auml;ufig nicht bemerkt und deshalb auch nicht therapiert.<br />\r\n	Oftmals wird &uuml;ber viele Jahre nicht an eine derartige Ursache gedacht.<br />\r\n	Gerade diese Symptome treten heute vermehrt auf und sollten zu einem besonderen Augenmerk auf die Kiefergelenkssituation f&uuml;hren:</font></font><br />\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Pressen oder Knirschen der Z&auml;hne im Schlaf, ein besonders h&auml;ufiges Symptom bei Stressgeplagten</font></font></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Zahnlockerung durch &Uuml;berlastung und Fehlstellung einzelner Z&auml;hne</font></font></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Knacken oder Knirschen des Kiefergelenks beim &Ouml;ffnen und Schlie&szlig;en des Mundes</font></font></p>\r\n	</li>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Kopfschmerzen und Abgeschlagenheit </font></font></p>\r\n	</li>\r\n</ul>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<br />\r\n	<a><font color="#666666"><font face="Trebuchet MS, serif"><font style="font-size: 13pt"><u>Weitergehende Therapie &raquo; </u></font></font></font></a></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Von den beteiligten Muskelgruppen k&ouml;nnen die lokalen Schmerzen in weite Bereiche ausstrahlen. Eine &Uuml;berlastung von Z&auml;hnen und Gelenken durch St&ouml;rung in der Biss-Situation machen eine Funktionsanalyse und Funktionstherapie notwendig.<br />\r\n	<br />\r\n	Wir nehmen uns Zeit f&uuml;r die Diagnose und lokalisieren versteckte Problemzonen, wie zum Beispiel Fr&uuml;hkontakte oder eine falsche Bisslage.<br />\r\n	<br />\r\n	Wir stellen in unserem Eigenlabor hochwertige Aufbiss- oder Knirscherschienen individuell auf unsere Patienten angepasst her. Diese Schienen sind in vielen F&auml;llen ein effizientes Therapiemittel.<br />\r\n	<br />\r\n	Mit Krankengymnastik k&ouml;nnen Muskelverspannungen gelockert werden.<br />\r\n	<br />\r\n	Wir werden zudem von einem erfahrenen Physiotherapeuten, mit Spezialausbildung auf diesem Gebiet, fachlich unterst&uuml;tzt und begleitet. Mit Krankengymnastik und Physiotherapie k&ouml;nnen Muskelverspannungen gelockert und gel&ouml;st werden und zus&auml;tzliche Erleichterung verschaffen.<br />\r\n	<br />\r\n	Bei notwendigen Kiefer- und Zahnstellungsregulierungen kooperieren wir mit erfahrenen Kieferorthop&auml;den.</font></font></p>\r\n', 'Funktionstherapie', 'Funktionstherapie'),
(28, 12, 1, 11, 'myic-home', 'Ästhetische Zahnheilkunde', 'aesthetische_zahnheilkunde', 'Ästhetische Zahnheilkunde', 'Ästhetische Zahnheilkunde', '<p style="margin-bottom: 0cm">\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Ein offenes Lachen ist Zeichen f&uuml;r Lebensfreude und Selbstbewusstsein.<br />\r\n	Daher w&uuml;nschen Patienten f&uuml;r verloren gegangene Z&auml;hne m&ouml;glichst unauff&auml;lligen und &auml;sthetischen Ersatz.<br />\r\n	Keramikkronen, Br&uuml;cken und Prothesen sind heute individuelle und nat&uuml;rlich wirkende Alternativen f&uuml;r eine funktionelle und ansprechende Versorgung.<br />\r\n	<br />\r\n	&Auml;sthetische Korrekturm&ouml;glichkeiten tragen zu einem harmonischen &Auml;u&szlig;eren bei und dies bei gleichzeitigem Erhalt der Funktionalit&auml;t.<br />\r\n	Dazu geh&ouml;ren z. B. zahnfarbene, k&ouml;rpervertr&auml;gliche F&uuml;llungen (Composite) oder hauchd&uuml;nne, nat&uuml;rlich wirkende Keramikschalen (Veneers) sowie die schonende Zahnaufhellung durch kosmetische Verfahren in der Praxis (Bleaching).<br />\r\n	<br />\r\n	Die Amalgamf&uuml;llungen (Standardf&uuml;llmaterial, das von der gesetzlichen Krankenversicherung bezahlt wird) verwenden wir nicht mehr.<br />\r\n	<br />\r\n	Auf Wunsch f&uuml;hren wir eine Amalgamsanierung durch. Dabei wird das metallische F&uuml;llmaterial gegen biokompatible, zahnfarbene Compositef&uuml;llungen ausget</font></font></p>\r\n', 'Ästhetische Zahnheilkunde', 'Ästhetische Zahnheilkunde'),
(29, 12, 0, 12, 'myic-home', 'Laser-Behandlung', 'Laser_Behandlung', 'Laser-Behandlung', 'Laser-Behandlung', '<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Bei uns in der Praxis wird zur Behandlungsunterst&uuml;tzung ein moderner Diodenlaser eingesetzt. </font></font></p>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">sehr effiziente Wirkung bei Parodontitisbehandlung </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">optimale Desinfektion bei Wurzelkanalbehandlungen </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Weichteilchirurgie ohne Blutung, in der Regel ohne Naht </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">schonende Durchtrennung des Lippenb&auml;ndchens </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Behandlung von Aphten und Herpes </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Schmerzlinderung </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Desensibilisierung von Zahnh&auml;lsen </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Beschleunigung des Heilungsprozesses </font></font></p>\r\n	</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		<p style="margin-top: 0.18cm; margin-bottom: 0.18cm; line-height: 100%">\r\n			<font color="#666666"><font face="Trebuchet MS, serif">Schonendes Bleaching (Zahnaufhellung)</font></font></p>\r\n	</li>\r\n</ul>\r\n', 'Laser-Behandlung', 'Laser-Behandlung'),
(30, 12, 1, 13, 'myic-home', 'Endodontologie', 'Endodontologie', 'Endodontologie', 'Endodontologie', '<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<br />\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Die moderne Endodontologie (Wurzelkanalbehandlung) hilft uns heute, im Wurzelbereich erkrankte Z&auml;hne zu erhalten, die fr&uuml;her nicht zu retten waren.<br />\r\n	<br />\r\n	Die entz&uuml;ndeten oder abgestorbenen Nerven in den Wurzelkan&auml;len im Inneren des Zahnes werden entfernt, die Kan&auml;le gereinigt, desinfiziert und nach einer Medikamenteneinlage mit einer Wurzelf&uuml;llung dicht verschlossen.<br />\r\n	<br />\r\n	Je nach Ausgangsbefund dauert die Ausheilungsphase bis zu mehrere Monate.</font></font><br />\r\n	<br />\r\n	<a><font color="#666666"><font face="Trebuchet MS, serif"><font style="font-size: 13pt"><u>Weitere Informationen &raquo; </u></font></font></font></a></p>\r\n<p style="margin-bottom: 0cm; line-height: 100%">\r\n	<font color="#666666"><font face="Trebuchet MS, serif">Der gesunde Zahn besteht aus der Zahnkrone und einer oder mehreren Zahnwurzeln. W&auml;hrend der sichtbare Teil des Zahnes, n&auml;mlich die Zahnkrone, durch den harten Zahnschmelz gesch&uuml;tzt wird, befinden sich im Inneren der Zahnwurzel Blutgef&auml;&szlig;e, Bindegewebe und Nervenfasern.<br />\r\n	Ist ein Zahn durch einen Unfall oder Karies stark zerst&ouml;rt, k&ouml;nnen Bakterien in den Nerv eindringen und diesen schmerzhaft entz&uuml;nden.<br />\r\n	<br />\r\n	Dies hat das Absterben des Nervs zur Folge.<br />\r\n	<br />\r\n	Mit einer Wurzelkanalbehandlung wird versucht den erkrankten Zahn zu erhalten. Der Wurzelkanal wird mit Handfeilen aus Stahl und flexiblem Nickel-Titan sowie mit rotierenden maschinellen Feilen gereinigt und desinfiziert. Elektrometrisch wird die Wurzell&auml;nge bestimmt und der Hohlraum nach der Ausheilung bakteriendicht verschlossen.<br />\r\n	<br />\r\n	Mit R&ouml;ntgenbildern wird der Heilungsprozess an der Wurzelspitze und im Knochen sowie die Dichtigkeit der Wurzelf&uuml;llung kontrolliert.</font></font></p>\r\n', 'Endodontologie', 'Endodontologie');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL,
  `seite` varchar(255) NOT NULL,
  `bild_id` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  PRIMARY KEY (`slider_id`),
  KEY `seite` (`seite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `slider`
--

INSERT INTO `slider` (`slider_id`, `position`, `seite`, `bild_id`, `titel`, `text`, `link`, `target`) VALUES
(1, 1, 'index', 15, 'Pflegezentrum Moritz', '„Dort gepflegt werden, wo man Zuhause ist“', '', '_self'),
(2, 2, 'index', 2, 'Tagespflege „Am Pangerlberg“', '„Tagsüber bestens versorgt und betreut, abends wieder in den eigenen vier Wänden“', '', '_self'),
(3, 2, 'pflegedienst', 15, 'Pflegezentrum Moritz', '„Dort gepflegt werden, wo man zuhause ist“', '', '_self'),
(4, 1, 'tagespflege', 2, 'Tagespflege „Am Pangerlberg“', '„Tagsüber bestens versorgt und betreut, abends wieder in den eigenen vier Wänden“', '', '_self'),
(11, 3, 'index', 88, 'fgdg', 'asdasdasdasda', '', '_self');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sliderimages`
--

DROP TABLE IF EXISTS `sliderimages`;
CREATE TABLE IF NOT EXISTS `sliderimages` (
  `slider_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `image_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `text` varchar(255) COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `slider_pos` (`slider_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `slider_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stellenangebote`
--

DROP TABLE IF EXISTS `stellenangebote`;
CREATE TABLE IF NOT EXISTS `stellenangebote` (
  `stellenangebote_id` int(11) NOT NULL AUTO_INCREMENT,
  `seite` varchar(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `unterzeile` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`stellenangebote_id`),
  KEY `seite` (`seite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `stellenangebote`
--

INSERT INTO `stellenangebote` (`stellenangebote_id`, `seite`, `titel`, `unterzeile`, `text`) VALUES
(1, 'pflegedienst', 'Pflegekräfte auf Teilzeitbasis', 'ab sofort', '<p>\n	<u>Wir bieten</u></p>\n<p>\n	Ihnen eine anspruchsvolle und abwechslungsreiche T&auml;tigkeit in einem dynamischen Team, umfangreiche externe und interne Fortbildungsm&ouml;glichkeiten, eine angemessene Verg&uuml;tung und weitere Sozialleistungen.</p>\n<p>\n	<u>Wir erwarten</u></p>\n<p>\n	eine abgeschlossene Ausbildung als Altenpflegerin, Gesundheits- und Krankenpflegerin, Krankenschwester, examinierte Pflegehelferin oder Pflegehilfskr&auml;fte mit mehrj&auml;hriger Berufserfahrung in der h&auml;uslichen Pflege.</p>\n<p>\n	Wenn wir Ihr Interesse geweckt haben, senden Sie uns bitte Ihre vollst&auml;ndigen Bewerbungsunterlagen zu.</p>\n'),
(4, 'stellenangebote', 'Mitarbeiter/in für unseren Fahrdienst', 'ab sofort', '<p>\n	F&uuml;r unsere Tagespflegeeinrichtung suchen wir noch eine Aushilfskraft f&uuml;r Personenbef&ouml;rderung mit einem Kleinbus.</p>\n<p>\n	Wenn Sie im Besitz eines g&uuml;ltigen F&uuml;hrerscheines Kl. B (+ einen F&uuml;hrerschein zur Fahrgastbef&ouml;rderung) sind und das 18. Lebensjahr vollendet haben, freuen wir uns auf Ihre Bewerbung.</p>\n<p>\n	F&uuml;r das Erlangen der Ortskenntnisse und der n&ouml;tigen Dokumente werden wir Sie unterst&uuml;tzen.</p>\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `texts`
--

DROP TABLE IF EXISTS `texts`;
CREATE TABLE IF NOT EXISTS `texts` (
  `text_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`text_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=229 ;

--
-- Daten für Tabelle `texts`
--

INSERT INTO `texts` (`text_id`, `name`) VALUES
(1, 'Startseite Text'),
(2, 'Startseite Titel'),
(3, 'Oachkatzöschwoaf'),
(4, 'Startseite Seo1'),
(5, 'Startseite Seo2'),
(6, 'Startseite Sortiment 1 Titel'),
(7, 'Startseite Sortiment 1 Text'),
(8, 'Startseite Sortiment 1 Hover'),
(9, 'Startseite Sortiment 2 Titel'),
(10, 'Startseite Sortiment 2 Text'),
(11, 'Startseite Sortiment 2 Hover'),
(12, 'Startseite Sortiment 3 Hover'),
(13, 'Startseite Sortiment 3 Titel'),
(14, 'Startseite Sortiment 3 Text'),
(15, 'Startseite Sortiment 4 Hover'),
(16, 'Startseite Sortiment 4 Text'),
(17, 'Startseite Sortiment 4 Titel'),
(18, 'Startseite Sortiment 5 Hover'),
(19, 'Startseite Sortiment 5 Text'),
(20, 'Startseite Sortiment 5 Titel'),
(21, 'Startseite Sortiment 6 Hover'),
(22, 'Startseite Sortiment 6 Text'),
(23, 'Startseite Sortiment 6 Titel'),
(24, 'Orthopädietechnik 1 Titel'),
(25, 'Orthopädietechnik 1 Text'),
(26, 'Orthopädietechnik 2 Titel'),
(27, 'Orthopädietechnik 2 Text'),
(28, 'Orthopädietechnik 3 Titel'),
(29, 'Orthopädietechnik 3 Text'),
(30, 'Orthopädietechnik 4 Text'),
(31, 'Orthopädietechnik 4 Titel'),
(32, 'Orthopädietechnik 5 Text'),
(33, 'Orthopädietechnik 5 Titel'),
(34, 'Orthopädietechnik 6 Titel'),
(35, 'Orthopädietechnik 6 Text'),
(36, 'Orthopädietechnik 7 Titel'),
(37, 'Orthopädietechnik 7 Text'),
(38, 'Orthopädietechnik 8 Titel'),
(39, 'Orthopädietechnik 8 Text'),
(41, 'Reha-Technik 1 Titel'),
(42, 'Reha-Technik 1 Text'),
(43, 'Reha-Technik 2 Titel'),
(44, 'Reha-Technik 2 Text'),
(45, 'Reha-Technik 3 Titel'),
(46, 'Reha-Technik 3 Text'),
(47, 'Reha-Technik 4 Titel'),
(48, 'Reha-Technik 4 Text'),
(49, 'Reha-Technik 5 Titel'),
(50, 'Reha-Technik 5 Text'),
(51, 'Reha-Technik 6 Titel'),
(52, 'Reha-Technik 6 Text'),
(53, 'Reha-Technik 7 Titel'),
(54, 'Reha-Technik 7 Text'),
(55, 'generated'),
(56, 'generated'),
(57, 'generated'),
(58, 'generated'),
(59, 'generated'),
(60, 'generated'),
(61, 'generated'),
(62, 'generated'),
(63, 'generated'),
(64, 'generated'),
(65, 'generated'),
(66, 'generated'),
(67, 'generated'),
(68, 'generated'),
(69, 'generated'),
(70, 'generated'),
(71, 'generated'),
(72, 'generated'),
(73, 'generated'),
(74, 'generated'),
(75, 'generated'),
(76, 'Reha-Technik 1 Titel Kopie'),
(77, 'Reha-Technik 1 Text Kopie'),
(78, 'generated'),
(79, 'generated'),
(80, 'generated'),
(81, 'generated'),
(82, 'generated'),
(83, 'generated'),
(84, 'generated'),
(85, 'generated'),
(86, 'generated'),
(87, 'generated'),
(88, 'generated Kopie'),
(89, 'generated Kopie'),
(90, 'generated'),
(91, 'generated'),
(92, 'generated'),
(93, 'generated'),
(94, 'generated'),
(95, 'generated'),
(96, 'generated'),
(97, 'generated'),
(98, 'generated'),
(99, 'generated'),
(100, 'Orthopädietechnik 2 Titel Kopie'),
(101, 'Orthopädietechnik 2 Text Kopie'),
(102, 'Orthopädietechnik 1 Titel Kopie'),
(103, 'Orthopädietechnik 1 Text Kopie'),
(104, 'Orthopädietechnik 1 Titel Kopie Kopie'),
(105, 'Orthopädietechnik 1 Text Kopie Kopie'),
(106, 'Orthopädietechnik 1 Titel Kopie Kopie'),
(107, 'Orthopädietechnik 1 Text Kopie Kopie'),
(108, 'Orthopädietechnik 2 Titel Kopie'),
(109, 'Orthopädietechnik 2 Text Kopie'),
(110, 'Orthopädietechnik 2 Titel Kopie Kopie'),
(111, 'Orthopädietechnik 2 Text Kopie Kopie'),
(112, 'Orthopädietechnik 2 Titel Kopie Kopie'),
(113, 'Orthopädietechnik 2 Text Kopie Kopie'),
(114, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie'),
(115, 'Orthopädietechnik 2 Text Kopie Kopie Kopie'),
(116, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie'),
(117, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie'),
(118, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie Kopie'),
(119, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie Kopie'),
(120, 'generated Kopie'),
(121, 'generated Kopie'),
(122, 'generated Kopie Kopie'),
(123, 'generated Kopie Kopie'),
(124, 'generated Kopie Kopie Kopie'),
(125, 'generated Kopie Kopie Kopie'),
(126, 'generated Kopie Kopie Kopie Kopie'),
(127, 'generated Kopie Kopie Kopie Kopie'),
(128, 'generated'),
(129, 'generated'),
(130, 'generated'),
(131, 'generated'),
(132, 'generated'),
(133, 'generated'),
(134, 'generated'),
(135, 'generated'),
(136, 'generated'),
(137, 'generated'),
(138, 'generated'),
(139, 'generated'),
(140, 'generated'),
(141, 'generated'),
(142, 'generated'),
(143, 'generated'),
(144, 'generated'),
(145, 'generated'),
(146, 'generated'),
(147, 'generated'),
(148, 'generated'),
(149, 'generated'),
(150, 'generated'),
(151, 'generated'),
(152, 'generated'),
(153, 'generated'),
(154, 'generated'),
(155, 'generated'),
(156, 'generated'),
(157, 'generated'),
(158, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie'),
(159, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie'),
(160, 'generated'),
(161, 'generated'),
(162, 'Orthopädietechnik 2 Titel Kopie'),
(163, 'Orthopädietechnik 2 Text Kopie'),
(164, 'generated Kopie'),
(165, 'generated Kopie'),
(166, 'generated Kopie'),
(167, 'generated Kopie'),
(168, 'generated Kopie'),
(169, 'generated Kopie'),
(170, 'generated Kopie Kopie'),
(171, 'generated Kopie Kopie'),
(172, 'generated Kopie'),
(173, 'generated Kopie'),
(174, 'generated Kopie Kopie Kopie'),
(175, 'generated Kopie Kopie Kopie'),
(176, 'generated Kopie Kopie Kopie Kopie'),
(177, 'generated Kopie Kopie Kopie Kopie'),
(178, 'generated Kopie Kopie Kopie Kopie Kopie'),
(179, 'generated Kopie Kopie Kopie Kopie Kopie'),
(180, 'generated Kopie Kopie Kopie Kopie Kopie Kopie'),
(181, 'generated Kopie Kopie Kopie Kopie Kopie Kopie'),
(182, 'generated'),
(183, 'generated'),
(184, 'generated'),
(185, 'generated'),
(186, 'generated'),
(187, 'generated'),
(188, 'generated'),
(189, 'generated'),
(190, 'generated'),
(191, 'generated'),
(192, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie'),
(193, 'Orthopädietechnik 2 Text Kopie Kopie Kopie'),
(194, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie'),
(195, 'Orthopädietechnik 2 Text Kopie Kopie Kopie'),
(196, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie'),
(197, 'Orthopädietechnik 2 Text Kopie Kopie Kopie'),
(198, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie'),
(199, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie'),
(200, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie'),
(201, 'Orthopädietechnik 2 Text Kopie Kopie Kopie'),
(202, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie'),
(203, 'Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie'),
(204, 'Orthopädietechnik 2 Titel Kopie Kopie Kopie'),
(205, 'Orthopädietechnik 2 Text Kopie Kopie Kopie'),
(206, 'Reha-Technik 5 Titel Kopie'),
(207, 'Reha-Technik 5 Text Kopie'),
(208, 'Reha-Technik 5 Titel Kopie'),
(209, 'Reha-Technik 5 Text Kopie'),
(210, 'Reha-Technik 5 Titel Kopie'),
(211, 'Reha-Technik 5 Text Kopie'),
(212, 'Reha-Technik 5 Titel Kopie'),
(213, 'Reha-Technik 5 Text Kopie'),
(214, 'generated Kopie Kopie Kopie Kopie Kopie'),
(215, 'generated Kopie Kopie Kopie Kopie Kopie'),
(216, 'generated Kopie Kopie'),
(217, 'generated Kopie Kopie'),
(218, 'generated'),
(219, 'generated'),
(220, 'generated'),
(221, 'generated Kopie Kopie'),
(222, 'generated Kopie Kopie'),
(223, 'generated Kopie Kopie Kopie'),
(224, 'generated Kopie Kopie Kopie'),
(225, 'generated Kopie Kopie Kopie Kopie'),
(226, 'generated Kopie Kopie Kopie Kopie'),
(227, 'generated Kopie Kopie Kopie Kopie Kopie'),
(228, 'generated Kopie Kopie Kopie Kopie Kopie');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

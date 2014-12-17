DROP TABLE IF EXISTS adressen;

CREATE TABLE `adressen` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO adressen VALUES("1","Pflegezentrum Moritz","Georg-Knon-Straße","17","94121","Salzweg","Deutschland","0851 75 66 466","","info@pflegezentrum-moritz.de","http://www.pflegezentrum-moritz.de","Mo, Mi, Fr: 8:00 – 14:00 Uhr  - Di, Do: 8:00 – 16:00 Uhr");
INSERT INTO adressen VALUES("2","Tagespflege „Am Pangerlberg“","Am Pangerlberg","9","94124","Büchlberg","Deutschland","08505 91 88 200","","info@tagespflege-moritz.de","http://www.tagespflege-moritz.de","Mo, Di, Mi, Fr: 8:00 – 17:00 Uhr");



DROP TABLE IF EXISTS bilder;

CREATE TABLE `bilder` (
  `bild_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategorie` varchar(255) NOT NULL COMMENT 'Normales bild oder slider widescreen',
  PRIMARY KEY (`bild_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

INSERT INTO bilder VALUES("79","bild");
INSERT INTO bilder VALUES("80","bild");
INSERT INTO bilder VALUES("81","bild");
INSERT INTO bilder VALUES("82","bild");
INSERT INTO bilder VALUES("86","bild");
INSERT INTO bilder VALUES("87","bild");
INSERT INTO bilder VALUES("88","bild");
INSERT INTO bilder VALUES("89","bild");
INSERT INTO bilder VALUES("90","bild");
INSERT INTO bilder VALUES("95","slider");
INSERT INTO bilder VALUES("96","slider");
INSERT INTO bilder VALUES("97","slider");
INSERT INTO bilder VALUES("98","bild");



DROP TABLE IF EXISTS content;

CREATE TABLE `content` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO content VALUES("1","index","top_links","Pflegezentrum Moritz","„Dort gepflegt werden, wo man Zuhause ist“","<p>\n	Menschenw&uuml;rdige, zuverl&auml;ssige und fachlich hochqualifizierte Pflege nach den individuellen Bed&uuml;rfnissen der Patienten hat sich das Pflegezentrum Moritz auf seine Fahnen geschrieben.</p>\n<p>\n	Wir unterst&uuml;tzen Sie bei allen Leistungen der Pflegeversicherung nach SGB XI, bei allen behandlungspflegerischen Leistungen nach SGB V und bei Betreuungsleistungen nach &sect; 45b SGB XI.</p>\n","8");
INSERT INTO content VALUES("2","index","top_rechts","Tagespflege „Am Pangerlberg“","„Tagsüber bestens versorgt, abends wieder in den eigenen vier Wänden“","<p>\n	Tagespflegest&auml;tten sind Orte, in denen pflegebed&uuml;rftige und gerontopsychiatrisch erkrankte Menschen stundenweise betreut und versorgt werden und wo sie selbstbestimmt ihren individuellen Freiraum gestalten k&ouml;nnen.</p>\n<p>\n	Pflegende Angeh&ouml;rige werden dadurch bei der t&auml;glichen Pflege sp&uuml;rbar entlastet.</p>\n","84");
INSERT INTO content VALUES("3","pflegedienst","leistungen","Leistungen","","<p>\n	Grundpflegerische und hauswirtschaftliche Versorgung:</p>\n<p>\n	&bull; Hilfestellung bei der K&ouml;rperpflege<br />\n	&bull; Duschen und Baden, Hautpflege<br />\n	&bull; Inkontinenzversorgung etc.<br />\n	&bull; Reinigung der Wohnung, W&auml;sche waschen, b&uuml;geln etc.<br />\n	<br />\n	Medizinische Versorgung:</p>\n<p>\n	&bull; Verabreichen von Injektionen (z. B. Insulin) und Blutzucker-Messungen<br />\n	&bull; Herrichten und Verabreichen von Medikamenten<br />\n	&bull; Wundversorgung etc.<br />\n	&nbsp;&nbsp;&nbsp;<br />\n	Betreuung:</p>\n<p>\n	&bull; Gespr&auml;che f&uuml;hren, Spazieren gehen Spiele, Begleitung bei Aktivit&auml;ten<br />\n	&bull; Stundenweise Beaufsichtigung</p>\n<p>\n	<br />\n	Dar&uuml;ber hinaus:</p>\n<p>\n	&bull; unterst&uuml;tzen wir Sie bei Antr&auml;gen an die Kranken- und Pflegekasse sowie an Beh&ouml;rden<br />\n	&bull; unterst&uuml;tzen wir Sie bei Antr&auml;gen auf Pflegestufe bzw. H&ouml;herstufungsantr&auml;gen und Verhinderungspflege<br />\n	&bull; vermitteln wir bei Bedarf Hausnotruf, Essen auf R&auml;dern, Fu&szlig;pflege und mehr<br />\n	&bull; beraten und unterst&uuml;tzen wir Angeh&ouml;rige in allen pflegerelevanten Bereichen<br />\n	&nbsp;</p>\n","0");
INSERT INTO content VALUES("4","pflegedienst","pflegeversicherung","Pflegeversicherung","","<p>\n	<strong>Leistungen - Pflegeversicherung</strong></p>\n<p>\n	Die Pflegeversicherung stellt pflegebed&uuml;rftigen Menschen finanzielle Mittel/Leistungen&nbsp; zur Verf&uuml;gung. Grunds&auml;tzlich gilt, dass diese Leistungen jedoch erst nach Begutachtung/Einstufung&nbsp; durch den MDK bzw. bei Vorliegen einer Pflegestufe abgerufen werden k&ouml;nnen.<br />\n	Das Leistungsspektrum der Pflegeversicherung ist sehr umfangreich und hat eine sehr gro&szlig;e Bandbreite,&nbsp; weswegen Angeh&ouml;rige oder&nbsp; Pflegebed&uuml;rftige&nbsp; damit oft &uuml;berfordert sind.<br />\n	<strong>Nehmen Sie diesbez&uuml;glich bitte Kontakt mit uns auf &ndash; gerne beraten wir Sie in allen relevanten Belangen.</strong></p>\n<p>\n	Genaue und aktuelle Informationen zu allen Pflegeleistungen finden sie unter folgenden Links:</p>\n<p>\n	<a href=\"http://www.bmg.bund.de/pflege/leistungen/leistungen-der-pflegeversicherung.html\" target=\"_blank\">http://www.bmg.bund.de/pflege/leistungen/leistungen-der-pflegeversicherung.html</a></p>\n","0");
INSERT INTO content VALUES("5","tagespflege","informationen","Informationen","","<p>\n	Tagespflegest&auml;tten sind Orte, in denen pflegebed&uuml;rftige und gerontopsychiatrisch erkrankte Menschen stundenweise betreut und versorgt werden und wo sie selbstbestimmt ihren individuellen Freiraum gestalten k&ouml;nnen. Pflegende Angeh&ouml;rige werden dadurch bei der t&auml;glichen Pflege sp&uuml;rbar entlastet.</p>\n<p>\n	Unser Neubau ist komplett barrierefrei, besitzt einen gro&szlig;en Garten sowie&nbsp; eine sonnige Terrasse.&nbsp; Es stehen mehrere Ruher&auml;ume zum R&uuml;ckzug zur Verf&uuml;gung. F&uuml;r eine ausgewogene Verpflegung sowie&nbsp; eine fachliche, abwechslungsreiche und liebevolle Betreuung ist gesorgt.</p>\n<p>\n	Ihre Pflegeversicherung stellt Ihnen finanzielle Mittel f&uuml;r teilstation&auml;re Leistungen zu Verf&uuml;gung. Sogar, wenn Sie bereits Leistungen zur h&auml;uslichen Pflege erhalten, bleiben diese bei Inanspruchnahme von Tagespflege-Leistungen unber&uuml;hrt.</p>\n<p>\n	Gerne beraten wir Sie diesbez&uuml;glich in einem pers&ouml;nlichen Gespr&auml;ch.</p>\n","0");
INSERT INTO content VALUES("6","pflegeueberleitung","informationen","Informationen","","<h1>\n	Kooperationspartner</h1>\n<p>\n	&nbsp;</p>\n<p>\n	Das Pflegezentrum Moritz ist&nbsp; als Kooperationspartner des Passauer Klinikums f&uuml;r den&nbsp; Bereich &Uuml;berleitungspflege zust&auml;ndig. Nach der Entlassung eines Pflegebed&uuml;rftigen aus dem Krankenhaus werden Angeh&ouml;rige oft vor scheinbar unl&ouml;sbare Aufgaben gestellt, beispielsweise in der Frage der notwendigen Hilfsmittel oder welche Hilfen es durch die Pflegeversicherung gibt.&nbsp; In diesen Belangen stehen die Fachpflegeberaterinnen der &Uuml;berleitungspflege Versicherten und pflegenden Angeh&ouml;rigen unterst&uuml;tzend zur Seite. Besonderen Wert legen wir&nbsp; auf einen reibungslosen &Uuml;bergang vom Klinikaufenthalt zur h&auml;uslichen oder station&auml;ren Weiterversorgung.</p>\n<p>\n	Die Pflegeberatung ist ein Zusatzservice von uns und f&uuml;r die Versicherten und deren Angeh&ouml;rigen immer kostenfrei!<br />\n	&nbsp;</p>\n<p>\n	<strong>Kontakt:<br />\n	<strong>Klinikum Passau: (0851) 5300 1508 </strong></strong></p>\n<p>\n	&nbsp;</p>\n","0");
INSERT INTO content VALUES("7","impressum","impressum","Impressum","","<p>\n	<br />\n	<strong>Angaben gem&auml;&szlig; &sect; 5 TMG:</strong>ffff<br />\n	Heinz Moritz<br />\n	Georg-Knon-Str. 17<br />\n	94121 Salzweg</p>\n<p>\n	<strong>Kontakt:</strong><br />\n	Telefon: 0851/7566466<br />\n	Telefax: 0851/7566467<br />\n	E-Mail: info@pflegezentrum-moritz.de<br />\n	&nbsp;</p>\n<p>\n	<strong>Verantwortlich f&uuml;r den Inhalt nach &sect; 55 Abs. 2 RStV:</strong><br />\n	Heinz Moritz<br />\n	Georg-Knon-Str. 17<br />\n	94121 Salzweg<br />\n	<br />\n	<strong>Quellenangaben f&uuml;r die verwendeten Bilder und Grafiken:</strong><br />\n	Melcak / Marketingagentur dasWerkzeug GbR<br />\n	Pflegezentrum Moritz</p>\n<p>\n	<br />\n	<strong><span style=\"font-size:18px;\">Haftungsausschluss</span><br />\n	<br />\n	Haftung f&uuml;r Inhalte</strong><br />\n	Als Diensteanbieter sind wir gem&auml;&szlig; &sect; 7 Abs.1 TMG f&uuml;r eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach &sect;&sect; 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, &uuml;bermittelte oder gespeicherte fremde Informationen zu &uuml;berwachen oder nach Umst&auml;nden zu forschen, die auf eine rechtswidrige T&auml;tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber&uuml;hrt. Eine diesbez&uuml;gliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung m&ouml;glich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.<br />\n	<br />\n	<strong>Haftung f&uuml;r Links</strong><br />\n	Unser Angebot enth&auml;lt Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb k&ouml;nnen wir f&uuml;r diese fremden Inhalte auch keine Gew&auml;hr &uuml;bernehmen. F&uuml;r die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf m&ouml;gliche Rechtsverst&ouml;&szlig;e &uuml;berpr&uuml;ft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.<br />\n	<br />\n	<strong>Urheberrecht</strong><br />\n	Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielf&auml;ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung au&szlig;erhalb der Grenzen des Urheberrechtes bed&uuml;rfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur f&uuml;r den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.</p>\n<p>\n	<strong>Datenschutz</strong><br />\n	Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten m&ouml;glich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit m&ouml;glich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdr&uuml;ckliche Zustimmung nicht an Dritte weitergegeben.<br />\n	Wir weisen darauf hin, dass die Daten&uuml;bertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitsl&uuml;cken aufweisen kann. Ein l&uuml;ckenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht m&ouml;glich.<br />\n	Der Nutzung von im Rahmen der Impressumspflicht ver&ouml;ffentlichten Kontaktdaten durch Dritte zur &Uuml;bersendung von nicht ausdr&uuml;cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr&uuml;cklich widersprochen. Die Betreiber der Seiten behalten sich ausdr&uuml;cklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n","0");



DROP TABLE IF EXISTS elements;

CREATE TABLE `elements` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `foreign_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`element_id`),
  KEY `elementtype` (`type`),
  KEY `foreignid` (`foreign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO elements VALUES("2","Startseite Bild","bilder","86");
INSERT INTO elements VALUES("12","Startseite Seo1","text","4");
INSERT INTO elements VALUES("13","Startseite Seo2","text","5");
INSERT INTO elements VALUES("14","Startseite Titel","text","2");
INSERT INTO elements VALUES("15","Startseite Slider","slider","2");
INSERT INTO elements VALUES("16","Startseite Text","text","1");
INSERT INTO elements VALUES("17","Startseite Sortiment 1 Bild","bilder","89");
INSERT INTO elements VALUES("18","Startseite Sortiment 1 Titel","text","6");
INSERT INTO elements VALUES("19","Startseite Sortiment 1 Text","text","7");
INSERT INTO elements VALUES("20","Startseite Sortiment 1 Hover","text","8");
INSERT INTO elements VALUES("21","Startseite Sortiment 2 Bild","bilder","80");
INSERT INTO elements VALUES("22","Startseite Sortiment 2 Hover","text","11");
INSERT INTO elements VALUES("23","Startseite Sortiment 2 Text","text","10");
INSERT INTO elements VALUES("24","Startseite Sortiment 2 Titel","text","9");
INSERT INTO elements VALUES("25","Startseite Sortiment 3 Bild","bilder","86");
INSERT INTO elements VALUES("26","Startseite Sortiment 3 Hover","text","12");
INSERT INTO elements VALUES("27","Startseite Sortiment 3 Text","text","14");
INSERT INTO elements VALUES("28","Startseite Sortiment 3 Titel","text","13");
INSERT INTO elements VALUES("29","Startseite Sortiment 4 Bild","bilder","88");
INSERT INTO elements VALUES("30","Startseite Sortiment 4 Hover","text","15");
INSERT INTO elements VALUES("31","Startseite Sortiment 4 Text","text","16");
INSERT INTO elements VALUES("32","Startseite Sortiment 4 Titel","text","17");
INSERT INTO elements VALUES("33","Startseite Sortiment 5 Bild","bilder","86");
INSERT INTO elements VALUES("34","Startseite Sortiment 5 Hover","text","18");
INSERT INTO elements VALUES("35","Startseite Sortiment 5 Text","text","19");
INSERT INTO elements VALUES("36","Startseite Sortiment 5 Titel","text","20");
INSERT INTO elements VALUES("37","Startseite Sortiment 6 Bild","bilder","86");
INSERT INTO elements VALUES("38","Startseite Sortiment 6 Hover","text","21");
INSERT INTO elements VALUES("39","Startseite Sortiment 6 Text","text","22");
INSERT INTO elements VALUES("40","Startseite Sortiment 6 Titel","text","23");
INSERT INTO elements VALUES("41","Orthopädietechnik 1 Bild","bilder","89");
INSERT INTO elements VALUES("42","Orthopädietechnik 1 Text","text","25");
INSERT INTO elements VALUES("43","Orthopädietechnik 1 Titel","text","24");
INSERT INTO elements VALUES("44","Orthopädietechnik 2 Bild","bilder","86");
INSERT INTO elements VALUES("45","Orthopädietechnik 2 Titel","text","26");
INSERT INTO elements VALUES("46","Orthopädietechnik 2 Text","text","27");
INSERT INTO elements VALUES("47","Orthopädietechnik 3 Bild","bilder","86");
INSERT INTO elements VALUES("48","Orthopädietechnik 3 Text","text","29");
INSERT INTO elements VALUES("49","Orthopädietechnik 3 Titel","text","28");
INSERT INTO elements VALUES("50","Orthopädietechnik 4 Bild","bilder","86");
INSERT INTO elements VALUES("51","Orthopädietechnik 4 Titel","text","31");
INSERT INTO elements VALUES("52","Orthopädietechnik 4 Text","text","30");
INSERT INTO elements VALUES("53","Orthopädietechnik 5 Bild","bilder","86");
INSERT INTO elements VALUES("54","Orthopädietechnik 5 Titel","text","33");
INSERT INTO elements VALUES("55","Orthopädietechnik 5 Text","text","32");
INSERT INTO elements VALUES("56","Orthopädietechnik 6 Bild","bilder","86");
INSERT INTO elements VALUES("57","Orthopädietechnik 6 Titel","text","34");
INSERT INTO elements VALUES("58","Orthopädietechnik 6 Text","text","35");
INSERT INTO elements VALUES("59","Orthopädietechnik 7 Bild","bilder","86");
INSERT INTO elements VALUES("60","Orthopädietechnik 7 Titel","text","36");
INSERT INTO elements VALUES("61","Orthopädietechnik 7 Text","text","37");
INSERT INTO elements VALUES("62","Orthopädietechnik 8 Bild","bilder","86");
INSERT INTO elements VALUES("63","Orthopädietechnik 8 Titel","text","38");
INSERT INTO elements VALUES("64","Orthopädietechnik 8 Text","text","39");
INSERT INTO elements VALUES("65","Reha-Technik 1 Bild","bilder","86");
INSERT INTO elements VALUES("66","Reha-Technik 1 Titel","text","41");
INSERT INTO elements VALUES("67","Reha-Technik 1 Text","text","42");
INSERT INTO elements VALUES("68","Reha-Technik 2 Bild","bilder","86");
INSERT INTO elements VALUES("69","Reha-Technik 2 Titel","text","43");
INSERT INTO elements VALUES("70","Reha-Technik 2 Text","text","44");
INSERT INTO elements VALUES("71","Reha-Technik 3 Bild","bilder","86");
INSERT INTO elements VALUES("72","Reha-Technik 3 Titel","text","45");
INSERT INTO elements VALUES("73","Reha-Technik 3 Text","text","46");
INSERT INTO elements VALUES("74","Reha-Technik 4 Bild","bilder","86");
INSERT INTO elements VALUES("75","Reha-Technik 4 Titel","text","47");
INSERT INTO elements VALUES("76","Reha-Technik 4 Text","text","48");
INSERT INTO elements VALUES("77","Reha-Technik 5 Bild","bilder","86");
INSERT INTO elements VALUES("78","Reha-Technik 5 Titel","text","49");
INSERT INTO elements VALUES("79","Reha-Technik 5 Text","text","50");
INSERT INTO elements VALUES("80","Reha-Technik 6 Bild ","bilder","86");
INSERT INTO elements VALUES("81","Reha-Technik 6 Titel","text","51");
INSERT INTO elements VALUES("82","Reha-Technik 6 Text","text","52");
INSERT INTO elements VALUES("83","Reha-Technik 7 Bild","bilder","86");
INSERT INTO elements VALUES("84","Reha-Technik 7 Titel","text","53");
INSERT INTO elements VALUES("85","Reha-Technik 7 Text","text","54");
INSERT INTO elements VALUES("86","autocreate","bilder","86");
INSERT INTO elements VALUES("87","autocreate","text","0");
INSERT INTO elements VALUES("88","autocreate","text","0");
INSERT INTO elements VALUES("89","autocreate","text","0");
INSERT INTO elements VALUES("90","autocreate","text","0");
INSERT INTO elements VALUES("91","autocreate","bilder","86");
INSERT INTO elements VALUES("92","autocreate","text","0");
INSERT INTO elements VALUES("93","autocreate","text","0");
INSERT INTO elements VALUES("94","autocreate","text","0");
INSERT INTO elements VALUES("95","autocreate","text","0");
INSERT INTO elements VALUES("96","autocreate","bilder","86");
INSERT INTO elements VALUES("97","autocreate","text","0");
INSERT INTO elements VALUES("98","autocreate","text","0");
INSERT INTO elements VALUES("99","autocreate","text","0");
INSERT INTO elements VALUES("100","autocreate","text","0");
INSERT INTO elements VALUES("101","autocreate","bilder","86");
INSERT INTO elements VALUES("102","autocreate","bilder","86");
INSERT INTO elements VALUES("103","autocreate","text","56");
INSERT INTO elements VALUES("104","autocreate","text","57");
INSERT INTO elements VALUES("105","autocreate","text","58");
INSERT INTO elements VALUES("106","autocreate","text","59");
INSERT INTO elements VALUES("107","autocreate","bilder","86");
INSERT INTO elements VALUES("108","autocreate","text","60");
INSERT INTO elements VALUES("109","autocreate","text","61");
INSERT INTO elements VALUES("110","autocreate","text","62");
INSERT INTO elements VALUES("111","autocreate","text","63");
INSERT INTO elements VALUES("112","autocreate","bilder","79");
INSERT INTO elements VALUES("113","autocreate","text","64");
INSERT INTO elements VALUES("114","autocreate","text","65");
INSERT INTO elements VALUES("115","autocreate","text","66");
INSERT INTO elements VALUES("116","autocreate","text","67");
INSERT INTO elements VALUES("117","autocreate","bilder","86");
INSERT INTO elements VALUES("118","autocreate","text","68");
INSERT INTO elements VALUES("119","autocreate","text","69");
INSERT INTO elements VALUES("120","autocreate","text","70");
INSERT INTO elements VALUES("121","autocreate","text","71");
INSERT INTO elements VALUES("122","autocreate","bilder","86");
INSERT INTO elements VALUES("123","autocreate","text","72");
INSERT INTO elements VALUES("124","autocreate","text","73");
INSERT INTO elements VALUES("125","autocreate","text","74");
INSERT INTO elements VALUES("126","autocreate","text","75");
INSERT INTO elements VALUES("127","Reha-Technik 1 Bild Kopie","bilder","86");
INSERT INTO elements VALUES("128","Reha-Technik 1 Titel Kopie","text","76");
INSERT INTO elements VALUES("129","Reha-Technik 1 Text Kopie","text","77");
INSERT INTO elements VALUES("130","autocreate","bilder","86");
INSERT INTO elements VALUES("131","autocreate","text","78");
INSERT INTO elements VALUES("132","autocreate","text","79");
INSERT INTO elements VALUES("133","autocreate","bilder","86");
INSERT INTO elements VALUES("134","autocreate","text","80");
INSERT INTO elements VALUES("135","autocreate","text","81");
INSERT INTO elements VALUES("136","autocreate","bilder","86");
INSERT INTO elements VALUES("137","autocreate","text","82");
INSERT INTO elements VALUES("138","autocreate","text","83");
INSERT INTO elements VALUES("139","autocreate","bilder","86");
INSERT INTO elements VALUES("140","autocreate","text","84");
INSERT INTO elements VALUES("141","autocreate","text","85");
INSERT INTO elements VALUES("142","autocreate","bilder","86");
INSERT INTO elements VALUES("143","autocreate","text","86");
INSERT INTO elements VALUES("144","autocreate","text","87");
INSERT INTO elements VALUES("145","autocreate Kopie","bilder","86");
INSERT INTO elements VALUES("146","autocreate Kopie","text","88");
INSERT INTO elements VALUES("147","autocreate Kopie","text","89");
INSERT INTO elements VALUES("148","autocreate","text","90");
INSERT INTO elements VALUES("149","autocreate","text","91");
INSERT INTO elements VALUES("150","autocreate","text","92");
INSERT INTO elements VALUES("151","autocreate","text","93");
INSERT INTO elements VALUES("152","autocreate","text","94");
INSERT INTO elements VALUES("153","autocreate","text","95");
INSERT INTO elements VALUES("154","autocreate","text","96");
INSERT INTO elements VALUES("155","autocreate","text","97");
INSERT INTO elements VALUES("156","autocreate","text","98");
INSERT INTO elements VALUES("157","autocreate","text","99");
INSERT INTO elements VALUES("158","Orthopädietechnik 2 Bild Kopie","bilder","86");
INSERT INTO elements VALUES("159","Orthopädietechnik 2 Titel Kopie","text","100");
INSERT INTO elements VALUES("160","Orthopädietechnik 2 Text Kopie","text","101");
INSERT INTO elements VALUES("161","Orthopädietechnik 1 Bild Kopie","bilder","89");
INSERT INTO elements VALUES("162","Orthopädietechnik 1 Titel Kopie","text","102");
INSERT INTO elements VALUES("163","Orthopädietechnik 1 Text Kopie","text","103");
INSERT INTO elements VALUES("164","Orthopädietechnik 1 Bild Kopie Kopie","bilder","89");
INSERT INTO elements VALUES("165","Orthopädietechnik 1 Titel Kopie Kopie","text","104");
INSERT INTO elements VALUES("166","Orthopädietechnik 1 Text Kopie Kopie","text","105");
INSERT INTO elements VALUES("167","Orthopädietechnik 1 Bild Kopie Kopie","bilder","89");
INSERT INTO elements VALUES("168","Orthopädietechnik 1 Titel Kopie Kopie","text","106");
INSERT INTO elements VALUES("169","Orthopädietechnik 1 Text Kopie Kopie","text","107");
INSERT INTO elements VALUES("170","Orthopädietechnik 2 Bild Kopie","bilder","86");
INSERT INTO elements VALUES("171","Orthopädietechnik 2 Titel Kopie","text","108");
INSERT INTO elements VALUES("172","Orthopädietechnik 2 Text Kopie","text","109");
INSERT INTO elements VALUES("173","Orthopädietechnik 2 Bild Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("174","Orthopädietechnik 2 Titel Kopie Kopie","text","110");
INSERT INTO elements VALUES("175","Orthopädietechnik 2 Text Kopie Kopie","text","111");
INSERT INTO elements VALUES("176","Orthopädietechnik 2 Bild Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("177","Orthopädietechnik 2 Titel Kopie Kopie","text","112");
INSERT INTO elements VALUES("178","Orthopädietechnik 2 Text Kopie Kopie","text","113");
INSERT INTO elements VALUES("179","Orthopädietechnik 2 Bild Kopie Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("180","Orthopädietechnik 2 Titel Kopie Kopie Kopie","text","114");
INSERT INTO elements VALUES("181","Orthopädietechnik 2 Text Kopie Kopie Kopie","text","115");
INSERT INTO elements VALUES("182","Orthopädietechnik 2 Bild Kopie Kopie Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("183","Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie","text","116");
INSERT INTO elements VALUES("184","Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie","text","117");
INSERT INTO elements VALUES("185","Orthopädietechnik 2 Bild Kopie Kopie Kopie Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("186","Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie Kopie","text","118");
INSERT INTO elements VALUES("187","Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie Kopie","text","119");
INSERT INTO elements VALUES("188","autocreate Kopie","bilder","86");
INSERT INTO elements VALUES("189","autocreate Kopie","text","120");
INSERT INTO elements VALUES("190","autocreate Kopie","text","121");
INSERT INTO elements VALUES("191","autocreate Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("192","autocreate Kopie Kopie","text","122");
INSERT INTO elements VALUES("193","autocreate Kopie Kopie","text","123");
INSERT INTO elements VALUES("194","autocreate Kopie Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("195","autocreate Kopie Kopie Kopie","text","124");
INSERT INTO elements VALUES("196","autocreate Kopie Kopie Kopie","text","125");
INSERT INTO elements VALUES("197","autocreate Kopie Kopie Kopie Kopie","bilder","86");
INSERT INTO elements VALUES("198","autocreate Kopie Kopie Kopie Kopie","text","126");
INSERT INTO elements VALUES("199","autocreate Kopie Kopie Kopie Kopie","text","127");
INSERT INTO elements VALUES("200","autocreate","bilder","79");
INSERT INTO elements VALUES("201","autocreate","text","128");
INSERT INTO elements VALUES("202","autocreate","text","129");
INSERT INTO elements VALUES("203","autocreate","text","130");
INSERT INTO elements VALUES("204","autocreate","text","131");
INSERT INTO elements VALUES("205","autocreate","bilder","79");
INSERT INTO elements VALUES("206","autocreate","text","132");
INSERT INTO elements VALUES("207","autocreate","text","133");
INSERT INTO elements VALUES("208","autocreate","text","134");
INSERT INTO elements VALUES("209","autocreate","text","135");
INSERT INTO elements VALUES("210","autocreate","bilder","79");
INSERT INTO elements VALUES("211","autocreate","text","136");
INSERT INTO elements VALUES("212","autocreate","text","137");
INSERT INTO elements VALUES("213","autocreate","text","138");
INSERT INTO elements VALUES("214","autocreate","text","139");
INSERT INTO elements VALUES("215","autocreate","bilder","79");
INSERT INTO elements VALUES("216","autocreate","text","140");
INSERT INTO elements VALUES("217","autocreate","text","141");
INSERT INTO elements VALUES("218","autocreate","text","142");
INSERT INTO elements VALUES("219","autocreate","text","143");
INSERT INTO elements VALUES("220","autocreate","bilder","79");
INSERT INTO elements VALUES("221","autocreate","text","144");
INSERT INTO elements VALUES("222","autocreate","text","145");
INSERT INTO elements VALUES("223","autocreate","text","146");
INSERT INTO elements VALUES("224","autocreate","text","147");
INSERT INTO elements VALUES("225","autocreate","bilder","79");
INSERT INTO elements VALUES("226","autocreate","text","148");
INSERT INTO elements VALUES("227","autocreate","text","149");
INSERT INTO elements VALUES("228","autocreate","text","150");
INSERT INTO elements VALUES("229","autocreate","text","151");
INSERT INTO elements VALUES("230","autocreate","text","152");
INSERT INTO elements VALUES("231","autocreate","text","153");
INSERT INTO elements VALUES("232","autocreate","text","154");
INSERT INTO elements VALUES("233","autocreate","text","155");
INSERT INTO elements VALUES("234","autocreate","text","156");
INSERT INTO elements VALUES("235","autocreate","text","157");



DROP TABLE IF EXISTS galerie;

CREATE TABLE `galerie` (
  `galerie_id` int(11) NOT NULL AUTO_INCREMENT,
  `seite` varchar(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `datum` date NOT NULL,
  `text` text NOT NULL,
  `bild_id` int(11) NOT NULL,
  PRIMARY KEY (`galerie_id`),
  KEY `seite` (`seite`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO galerie VALUES("9","tagespflege","Impressionen Tagespflege Büchlberg","2013-11-01","","84");
INSERT INTO galerie VALUES("10","pflegedienst","Impressionen Ambulanter Pflegedienst Salzweg","2013-11-11","\n            ","50");



DROP TABLE IF EXISTS galeriebilder;

CREATE TABLE `galeriebilder` (
  `galerie_id` int(11) NOT NULL,
  `bilder_id` int(11) NOT NULL,
  KEY `galerie_id` (`galerie_id`,`bilder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO galeriebilder VALUES("2","3");
INSERT INTO galeriebilder VALUES("2","6");
INSERT INTO galeriebilder VALUES("2","14");
INSERT INTO galeriebilder VALUES("2","17");
INSERT INTO galeriebilder VALUES("3","3");
INSERT INTO galeriebilder VALUES("3","5");
INSERT INTO galeriebilder VALUES("3","9");
INSERT INTO galeriebilder VALUES("4","3");
INSERT INTO galeriebilder VALUES("4","4");
INSERT INTO galeriebilder VALUES("4","8");
INSERT INTO galeriebilder VALUES("4","9");
INSERT INTO galeriebilder VALUES("6","7");
INSERT INTO galeriebilder VALUES("6","19");
INSERT INTO galeriebilder VALUES("6","24");
INSERT INTO galeriebilder VALUES("6","29");
INSERT INTO galeriebilder VALUES("6","36");
INSERT INTO galeriebilder VALUES("6","37");
INSERT INTO galeriebilder VALUES("6","38");
INSERT INTO galeriebilder VALUES("9","3");
INSERT INTO galeriebilder VALUES("9","34");
INSERT INTO galeriebilder VALUES("9","36");
INSERT INTO galeriebilder VALUES("9","45");
INSERT INTO galeriebilder VALUES("9","57");
INSERT INTO galeriebilder VALUES("9","58");
INSERT INTO galeriebilder VALUES("9","66");
INSERT INTO galeriebilder VALUES("9","73");
INSERT INTO galeriebilder VALUES("9","74");
INSERT INTO galeriebilder VALUES("9","76");
INSERT INTO galeriebilder VALUES("9","77");
INSERT INTO galeriebilder VALUES("9","78");
INSERT INTO galeriebilder VALUES("9","81");
INSERT INTO galeriebilder VALUES("10","5");
INSERT INTO galeriebilder VALUES("10","33");
INSERT INTO galeriebilder VALUES("10","59");
INSERT INTO galeriebilder VALUES("10","72");



DROP TABLE IF EXISTS itemelements;

CREATE TABLE `itemelements` (
  `item_id` int(10) unsigned NOT NULL,
  `element_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  UNIQUE KEY `integrety` (`item_id`,`position`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO itemelements VALUES("27","12","1");
INSERT INTO itemelements VALUES("27","13","2");
INSERT INTO itemelements VALUES("30","2","1");
INSERT INTO itemelements VALUES("30","14","2");
INSERT INTO itemelements VALUES("30","16","3");
INSERT INTO itemelements VALUES("30","15","4");
INSERT INTO itemelements VALUES("31","17","1");
INSERT INTO itemelements VALUES("31","18","2");
INSERT INTO itemelements VALUES("31","19","3");
INSERT INTO itemelements VALUES("31","20","4");
INSERT INTO itemelements VALUES("32","21","1");
INSERT INTO itemelements VALUES("32","24","2");
INSERT INTO itemelements VALUES("32","23","3");
INSERT INTO itemelements VALUES("32","22","4");
INSERT INTO itemelements VALUES("33","25","1");
INSERT INTO itemelements VALUES("33","28","2");
INSERT INTO itemelements VALUES("33","27","3");
INSERT INTO itemelements VALUES("33","26","4");
INSERT INTO itemelements VALUES("34","29","1");
INSERT INTO itemelements VALUES("34","32","2");
INSERT INTO itemelements VALUES("34","31","3");
INSERT INTO itemelements VALUES("34","30","4");
INSERT INTO itemelements VALUES("35","33","1");
INSERT INTO itemelements VALUES("35","36","2");
INSERT INTO itemelements VALUES("35","35","3");
INSERT INTO itemelements VALUES("35","34","4");
INSERT INTO itemelements VALUES("36","37","1");
INSERT INTO itemelements VALUES("36","40","2");
INSERT INTO itemelements VALUES("36","39","3");
INSERT INTO itemelements VALUES("36","38","4");
INSERT INTO itemelements VALUES("37","15","1");
INSERT INTO itemelements VALUES("38","41","1");
INSERT INTO itemelements VALUES("38","43","2");
INSERT INTO itemelements VALUES("38","42","3");
INSERT INTO itemelements VALUES("39","44","1");
INSERT INTO itemelements VALUES("39","45","2");
INSERT INTO itemelements VALUES("39","46","3");
INSERT INTO itemelements VALUES("40","47","1");
INSERT INTO itemelements VALUES("40","49","2");
INSERT INTO itemelements VALUES("40","48","3");
INSERT INTO itemelements VALUES("41","50","1");
INSERT INTO itemelements VALUES("41","51","2");
INSERT INTO itemelements VALUES("41","52","3");
INSERT INTO itemelements VALUES("42","53","1");
INSERT INTO itemelements VALUES("42","54","2");
INSERT INTO itemelements VALUES("42","55","3");
INSERT INTO itemelements VALUES("43","56","1");
INSERT INTO itemelements VALUES("43","57","2");
INSERT INTO itemelements VALUES("43","58","3");
INSERT INTO itemelements VALUES("44","59","1");
INSERT INTO itemelements VALUES("44","60","2");
INSERT INTO itemelements VALUES("44","61","3");
INSERT INTO itemelements VALUES("46","65","1");
INSERT INTO itemelements VALUES("46","66","2");
INSERT INTO itemelements VALUES("46","67","3");
INSERT INTO itemelements VALUES("47","68","1");
INSERT INTO itemelements VALUES("47","69","2");
INSERT INTO itemelements VALUES("47","70","3");
INSERT INTO itemelements VALUES("48","71","1");
INSERT INTO itemelements VALUES("48","72","2");
INSERT INTO itemelements VALUES("48","73","3");
INSERT INTO itemelements VALUES("49","74","1");
INSERT INTO itemelements VALUES("49","75","2");
INSERT INTO itemelements VALUES("49","76","3");
INSERT INTO itemelements VALUES("50","77","1");
INSERT INTO itemelements VALUES("50","78","2");
INSERT INTO itemelements VALUES("50","79","3");
INSERT INTO itemelements VALUES("51","80","1");
INSERT INTO itemelements VALUES("51","81","2");
INSERT INTO itemelements VALUES("51","82","3");
INSERT INTO itemelements VALUES("52","83","1");
INSERT INTO itemelements VALUES("52","84","2");
INSERT INTO itemelements VALUES("52","85","3");
INSERT INTO itemelements VALUES("70","102","1");
INSERT INTO itemelements VALUES("70","103","2");
INSERT INTO itemelements VALUES("70","104","3");
INSERT INTO itemelements VALUES("70","105","4");
INSERT INTO itemelements VALUES("70","106","5");
INSERT INTO itemelements VALUES("71","107","1");
INSERT INTO itemelements VALUES("71","108","2");
INSERT INTO itemelements VALUES("71","109","3");
INSERT INTO itemelements VALUES("71","110","4");
INSERT INTO itemelements VALUES("71","111","5");
INSERT INTO itemelements VALUES("72","112","1");
INSERT INTO itemelements VALUES("72","113","2");
INSERT INTO itemelements VALUES("72","114","3");
INSERT INTO itemelements VALUES("72","115","4");
INSERT INTO itemelements VALUES("72","116","5");
INSERT INTO itemelements VALUES("73","117","1");
INSERT INTO itemelements VALUES("73","118","2");
INSERT INTO itemelements VALUES("73","119","3");
INSERT INTO itemelements VALUES("73","120","4");
INSERT INTO itemelements VALUES("73","121","5");
INSERT INTO itemelements VALUES("74","122","1");
INSERT INTO itemelements VALUES("74","123","2");
INSERT INTO itemelements VALUES("74","124","3");
INSERT INTO itemelements VALUES("74","125","4");
INSERT INTO itemelements VALUES("74","126","5");
INSERT INTO itemelements VALUES("75","127","1");
INSERT INTO itemelements VALUES("75","128","2");
INSERT INTO itemelements VALUES("75","129","3");
INSERT INTO itemelements VALUES("76","130","1");
INSERT INTO itemelements VALUES("76","131","2");
INSERT INTO itemelements VALUES("76","132","3");
INSERT INTO itemelements VALUES("77","133","1");
INSERT INTO itemelements VALUES("77","134","2");
INSERT INTO itemelements VALUES("77","135","3");
INSERT INTO itemelements VALUES("78","136","1");
INSERT INTO itemelements VALUES("78","137","2");
INSERT INTO itemelements VALUES("78","138","3");
INSERT INTO itemelements VALUES("81","145","1");
INSERT INTO itemelements VALUES("81","146","2");
INSERT INTO itemelements VALUES("81","147","3");
INSERT INTO itemelements VALUES("82","148","1");
INSERT INTO itemelements VALUES("82","149","2");
INSERT INTO itemelements VALUES("83","150","1");
INSERT INTO itemelements VALUES("83","151","2");
INSERT INTO itemelements VALUES("84","152","1");
INSERT INTO itemelements VALUES("84","153","2");
INSERT INTO itemelements VALUES("85","154","1");
INSERT INTO itemelements VALUES("85","155","2");
INSERT INTO itemelements VALUES("86","156","1");
INSERT INTO itemelements VALUES("86","157","2");
INSERT INTO itemelements VALUES("87","158","1");
INSERT INTO itemelements VALUES("87","159","2");
INSERT INTO itemelements VALUES("87","160","3");
INSERT INTO itemelements VALUES("88","161","1");
INSERT INTO itemelements VALUES("88","162","2");
INSERT INTO itemelements VALUES("88","163","3");
INSERT INTO itemelements VALUES("89","164","1");
INSERT INTO itemelements VALUES("89","165","2");
INSERT INTO itemelements VALUES("89","166","3");
INSERT INTO itemelements VALUES("90","167","1");
INSERT INTO itemelements VALUES("90","168","2");
INSERT INTO itemelements VALUES("90","169","3");
INSERT INTO itemelements VALUES("91","170","1");
INSERT INTO itemelements VALUES("91","171","2");
INSERT INTO itemelements VALUES("91","172","3");
INSERT INTO itemelements VALUES("92","173","1");
INSERT INTO itemelements VALUES("92","174","2");
INSERT INTO itemelements VALUES("92","175","3");
INSERT INTO itemelements VALUES("93","176","1");
INSERT INTO itemelements VALUES("93","177","2");
INSERT INTO itemelements VALUES("93","178","3");
INSERT INTO itemelements VALUES("94","179","1");
INSERT INTO itemelements VALUES("94","180","2");
INSERT INTO itemelements VALUES("94","181","3");
INSERT INTO itemelements VALUES("95","182","1");
INSERT INTO itemelements VALUES("95","183","2");
INSERT INTO itemelements VALUES("95","184","3");
INSERT INTO itemelements VALUES("96","185","1");
INSERT INTO itemelements VALUES("96","186","2");
INSERT INTO itemelements VALUES("96","187","3");
INSERT INTO itemelements VALUES("97","188","1");
INSERT INTO itemelements VALUES("97","189","2");
INSERT INTO itemelements VALUES("97","190","3");
INSERT INTO itemelements VALUES("98","191","1");
INSERT INTO itemelements VALUES("98","192","2");
INSERT INTO itemelements VALUES("98","193","3");
INSERT INTO itemelements VALUES("99","194","1");
INSERT INTO itemelements VALUES("99","195","2");
INSERT INTO itemelements VALUES("99","196","3");
INSERT INTO itemelements VALUES("100","197","1");
INSERT INTO itemelements VALUES("100","198","2");
INSERT INTO itemelements VALUES("100","199","3");
INSERT INTO itemelements VALUES("101","200","1");
INSERT INTO itemelements VALUES("101","201","2");
INSERT INTO itemelements VALUES("101","202","3");
INSERT INTO itemelements VALUES("101","203","4");
INSERT INTO itemelements VALUES("101","204","5");
INSERT INTO itemelements VALUES("102","205","1");
INSERT INTO itemelements VALUES("102","206","2");
INSERT INTO itemelements VALUES("102","207","3");
INSERT INTO itemelements VALUES("102","208","4");
INSERT INTO itemelements VALUES("102","209","5");
INSERT INTO itemelements VALUES("103","210","1");
INSERT INTO itemelements VALUES("103","211","2");
INSERT INTO itemelements VALUES("103","212","3");
INSERT INTO itemelements VALUES("103","213","4");
INSERT INTO itemelements VALUES("103","214","5");
INSERT INTO itemelements VALUES("104","215","1");
INSERT INTO itemelements VALUES("104","216","2");
INSERT INTO itemelements VALUES("104","217","3");
INSERT INTO itemelements VALUES("104","218","4");
INSERT INTO itemelements VALUES("104","219","5");
INSERT INTO itemelements VALUES("105","220","1");
INSERT INTO itemelements VALUES("105","221","2");
INSERT INTO itemelements VALUES("105","222","3");
INSERT INTO itemelements VALUES("105","223","4");
INSERT INTO itemelements VALUES("105","224","5");
INSERT INTO itemelements VALUES("106","225","1");
INSERT INTO itemelements VALUES("106","226","2");
INSERT INTO itemelements VALUES("106","227","3");
INSERT INTO itemelements VALUES("106","228","4");
INSERT INTO itemelements VALUES("106","229","5");
INSERT INTO itemelements VALUES("107","230","1");
INSERT INTO itemelements VALUES("107","231","2");
INSERT INTO itemelements VALUES("107","232","3");
INSERT INTO itemelements VALUES("108","233","1");
INSERT INTO itemelements VALUES("108","234","2");
INSERT INTO itemelements VALUES("108","235","3");



DROP TABLE IF EXISTS items;

CREATE TABLE `items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO items VALUES("27","7");
INSERT INTO items VALUES("82","7");
INSERT INTO items VALUES("83","7");
INSERT INTO items VALUES("84","7");
INSERT INTO items VALUES("85","7");
INSERT INTO items VALUES("86","7");
INSERT INTO items VALUES("30","9");
INSERT INTO items VALUES("31","10");
INSERT INTO items VALUES("32","10");
INSERT INTO items VALUES("33","10");
INSERT INTO items VALUES("34","10");
INSERT INTO items VALUES("35","10");
INSERT INTO items VALUES("36","10");
INSERT INTO items VALUES("37","11");
INSERT INTO items VALUES("38","12");
INSERT INTO items VALUES("39","12");
INSERT INTO items VALUES("40","12");
INSERT INTO items VALUES("41","12");
INSERT INTO items VALUES("42","12");
INSERT INTO items VALUES("43","12");
INSERT INTO items VALUES("44","12");
INSERT INTO items VALUES("46","12");
INSERT INTO items VALUES("47","12");
INSERT INTO items VALUES("48","12");
INSERT INTO items VALUES("49","12");
INSERT INTO items VALUES("50","12");
INSERT INTO items VALUES("51","12");
INSERT INTO items VALUES("52","12");
INSERT INTO items VALUES("75","12");
INSERT INTO items VALUES("76","12");
INSERT INTO items VALUES("77","12");
INSERT INTO items VALUES("78","12");
INSERT INTO items VALUES("81","12");
INSERT INTO items VALUES("87","12");
INSERT INTO items VALUES("88","12");
INSERT INTO items VALUES("89","12");
INSERT INTO items VALUES("90","12");
INSERT INTO items VALUES("91","12");
INSERT INTO items VALUES("92","12");
INSERT INTO items VALUES("93","12");
INSERT INTO items VALUES("94","12");
INSERT INTO items VALUES("95","12");
INSERT INTO items VALUES("96","12");
INSERT INTO items VALUES("97","12");
INSERT INTO items VALUES("98","12");
INSERT INTO items VALUES("99","12");
INSERT INTO items VALUES("100","12");
INSERT INTO items VALUES("70","13");
INSERT INTO items VALUES("71","13");
INSERT INTO items VALUES("72","13");
INSERT INTO items VALUES("73","13");
INSERT INTO items VALUES("74","13");
INSERT INTO items VALUES("101","13");
INSERT INTO items VALUES("102","13");
INSERT INTO items VALUES("103","13");
INSERT INTO items VALUES("104","13");
INSERT INTO items VALUES("105","13");
INSERT INTO items VALUES("106","13");
INSERT INTO items VALUES("107","17");
INSERT INTO items VALUES("108","17");



DROP TABLE IF EXISTS itemtypeelementtypes;

CREATE TABLE `itemtypeelementtypes` (
  `itemtype_id` int(11) NOT NULL,
  `elementtype` varchar(255) COLLATE utf8_bin NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  KEY `elementtpye` (`elementtype`),
  KEY `itemtype_id` (`itemtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO itemtypeelementtypes VALUES("5","slider","1","topslider");
INSERT INTO itemtypeelementtypes VALUES("5","text","2","toptext");
INSERT INTO itemtypeelementtypes VALUES("3","bilder","1","Titelbild");
INSERT INTO itemtypeelementtypes VALUES("3","text","2","header");
INSERT INTO itemtypeelementtypes VALUES("5","bilder","3","bigbild");
INSERT INTO itemtypeelementtypes VALUES("5","bilder","4","smallbild");
INSERT INTO itemtypeelementtypes VALUES("3","text","3","text");
INSERT INTO itemtypeelementtypes VALUES("6","text","1","Header");
INSERT INTO itemtypeelementtypes VALUES("6","text","2","text");
INSERT INTO itemtypeelementtypes VALUES("6","bilder","3","bilddrunter");
INSERT INTO itemtypeelementtypes VALUES("3","slider","4","sliderslide");
INSERT INTO itemtypeelementtypes VALUES("7","text","1","seo1");
INSERT INTO itemtypeelementtypes VALUES("7","text","2","seo2");
INSERT INTO itemtypeelementtypes VALUES("9","bilder","1","Bild");
INSERT INTO itemtypeelementtypes VALUES("9","text","2","Titel");
INSERT INTO itemtypeelementtypes VALUES("9","text","3","Text");
INSERT INTO itemtypeelementtypes VALUES("9","slider","4","Slider");
INSERT INTO itemtypeelementtypes VALUES("10","bilder","1","Bild");
INSERT INTO itemtypeelementtypes VALUES("10","text","2","Titel");
INSERT INTO itemtypeelementtypes VALUES("10","text","3","Text");
INSERT INTO itemtypeelementtypes VALUES("10","text","4","Hover");
INSERT INTO itemtypeelementtypes VALUES("11","slider","1","slider");
INSERT INTO itemtypeelementtypes VALUES("12","bilder","1","Bild");
INSERT INTO itemtypeelementtypes VALUES("12","text","2","Titel");
INSERT INTO itemtypeelementtypes VALUES("12","text","3","Text");
INSERT INTO itemtypeelementtypes VALUES("13","bilder","1","bild");
INSERT INTO itemtypeelementtypes VALUES("13","text","2","abteilung");
INSERT INTO itemtypeelementtypes VALUES("13","text","3","name");
INSERT INTO itemtypeelementtypes VALUES("13","text","4","tel");
INSERT INTO itemtypeelementtypes VALUES("13","text","5","mail");
INSERT INTO itemtypeelementtypes VALUES("17","text","1","tel");
INSERT INTO itemtypeelementtypes VALUES("17","text","2","fax");
INSERT INTO itemtypeelementtypes VALUES("17","text","3","mail");



DROP TABLE IF EXISTS itemtypes;

CREATE TABLE `itemtypes` (
  `itemtype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`itemtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO itemtypes VALUES("7","SEO Texte");
INSERT INTO itemtypes VALUES("9","Startseite Oben");
INSERT INTO itemtypes VALUES("10","Startseite Sortiment");
INSERT INTO itemtypes VALUES("11","Slider");
INSERT INTO itemtypes VALUES("12","Sortiment Eintrag");
INSERT INTO itemtypes VALUES("13","Ansprechpartner");
INSERT INTO itemtypes VALUES("16","Cooler Itemtyp");
INSERT INTO itemtypes VALUES("17","Ansprechpartner Unten");



DROP TABLE IF EXISTS languages;

CREATE TABLE `languages` (
  `language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO languages VALUES("1","Deutsch");



DROP TABLE IF EXISTS languagetexts;

CREATE TABLE `languagetexts` (
  `text_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `header` varchar(255) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `language2text` (`text_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO languagetexts VALUES("1","1","","<p>\n	Wir sind ein Dienstleistungsunternehmen der Gesundheitsbranche, das sich seit mittlerweile fast 4 Jahrzehnten in Familienbesitz befindet und zu den f&uuml;hrenden H&auml;usern seiner Art in Niederbayern z&auml;hlt.<br />\n	<br />\n	Moderne Hilfsmittel und technisch ausgereifte Fertigungsmethoden gepaart mit hochqualifiziertem Personal, erm&ouml;glichen heute eine Patientenversorgung, die an Professionalit&auml;t und technischen Knowhow keine W&uuml;nsche offen l&auml;sst.<br />\n	<br />\n	<strong>Ihre Gesundheit liegt uns am Herzen!</strong></p>\n");
INSERT INTO languagetexts VALUES("2","1","","<h4>\n	Top Produkte - Zertifizierter Betrieb - freundlicher Service</h4>\n");
INSERT INTO languagetexts VALUES("3","1","","Eichkätzchenschwanz");
INSERT INTO languagetexts VALUES("4","1","","<div class=\"teasertext\" itemprop=\"description\">\n	Eine akustische Installation im Bahnhof Heumarkt sorgt bei vielen Fahrg&auml;sten f&uuml;r Irritationen. Jeden Tag zu einer bestimmten Zeit wird eine Sonderfahrt angek&uuml;ndigt, doch dieser Zug kommt niemals. Der Geisterzug ist Teil eines KVB-Kunstkonzeptes.<span class=\"TBAutor\"> &nbsp;Von <span class=\"Name\" itemprop=\"author\">Tim Attenberger</span> </span></div>\n<p>\n	<span class=\"District\"><span itemprop=\"contentLocation\">Innenstadt</span>.&nbsp;</span></p>\n<p itemprop=\"text\">\n	Jeden Abend spielt sich seit Sonntag auf dem Bahnsteig der neuen U-Bahn-Haltestelle Heumarkt eine unheimliche und auch etwas skurrile Szene ab, die bei den Fahrg&auml;sten f&uuml;r Irritation sorgt. Auf der Anzeigentafel wird stets zwischen 20 Uhr und Mitternacht eine Sonderfahrt angezeigt. Doch die angek&uuml;ndigte Bahn wird niemals kommen, obwohl die Wartenden genau h&ouml;ren k&ouml;nnen, wie der Zug ohne anzuhalten durch die Station rast. So soll der Eindruck eines Geisterzugs entstehen, der durch das K&ouml;lner U-Bahn-Netz f&auml;hrt. M&ouml;glich machen das insgesamt 28 Lautsprecher, die entlang des Bahnsteigs und bis in die Tunnel verbaut wurden. Sie werden einmal pro Tag in den Abendstunden von einem Zufallsgenerator angesteuert. Eine wichtige Voraussetzung daf&uuml;r besteht aus Sicherheitsgr&uuml;nden darin, dass zur selben Zeit keine echte Bahn am Gleis stehen darf.</p>\n");
INSERT INTO languagetexts VALUES("5","1","","<p>\n	In welche Schule soll ich mein Kind schicken? Um diese Entscheidung zu erleichtern, bieten Grundschulen und weiterf&uuml;hrende Schulen in den kommenden Tagen Informationsveranstaltungen und Tage der offenen T&uuml;r an.<span class=\"TBAutor\"> &nbsp;Von <span class=\"Name\" itemprop=\"author\">Uwe Sch&auml;fer</span> </span> <span class=\"District\"><span itemprop=\"contentLocation\">K&ouml;ln</span>.&nbsp;</span></p>\n<p itemprop=\"text\">\n	An welche Schule soll ich mein Kind schicken? Das fragen sich viele Eltern, deren Kinder entweder bald eingeschult werden oder solche, deren Kinder sich bald f&uuml;r eine weiterf&uuml;hrende Schule entscheiden m&uuml;ssen. Um diese Entscheidung zu erleichtern, bieten Grundschulen und weiterf&uuml;hrende Schulen in den kommenden Tagen Informationsveranstaltungen und Tage der offenen T&uuml;r an.</p>\n");
INSERT INTO languagetexts VALUES("6","1","","<h3>\n	Kinderorthop&auml;die</h3>\n");
INSERT INTO languagetexts VALUES("7","1","","<p>\n	Sitzschalen, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te</p>\n");
INSERT INTO languagetexts VALUES("8","1","","<p>\n	BEschreibung of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\n");
INSERT INTO languagetexts VALUES("9","1","","<h3>\n	Reha-Technik</h3>\n");
INSERT INTO languagetexts VALUES("10","1","","<p>\n	Sitzschalen, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te</p>\n");
INSERT INTO languagetexts VALUES("11","1","","<p>\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\n");
INSERT INTO languagetexts VALUES("12","1","","<p>\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\n");
INSERT INTO languagetexts VALUES("13","1","","<h3>Orthopädietechnik</h3>");
INSERT INTO languagetexts VALUES("14","1","","<p>\n	Sitzschalen, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te</p>\n");
INSERT INTO languagetexts VALUES("15","1","","<p>\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\n");
INSERT INTO languagetexts VALUES("16","1","","<p>\n	Sitzschalen, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te, Orthesen, Rollst&uuml;hle, Buggys, Stehger&auml;te</p>\n");
INSERT INTO languagetexts VALUES("17","1","","<h3>\n	Homecare</h3>\n");
INSERT INTO languagetexts VALUES("18","1","","<p>\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\n");
INSERT INTO languagetexts VALUES("19","1","","<p>\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\n");
INSERT INTO languagetexts VALUES("20","1","","<h3>\n	Sanit&auml;tshaus</h3>\n");
INSERT INTO languagetexts VALUES("21","1","","<p>\n	Description of the project dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum...</p>\n");
INSERT INTO languagetexts VALUES("22","1","","<p>\n	Eine gro&szlig;e Auswahl aus unseren Produkte</p>\n");
INSERT INTO languagetexts VALUES("23","1","","<h3>\n	Bl&auml;tterkatalog</h3>\n");
INSERT INTO languagetexts VALUES("24","1","","<h3>\n	Orthesen</h3>\n");
INSERT INTO languagetexts VALUES("25","1","","<p style=\"text-align: justify;\">\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\n");
INSERT INTO languagetexts VALUES("26","1","","<h3>\n	Prothesen</h3>\n");
INSERT INTO languagetexts VALUES("27","1","","<p style=\"text-align: justify;\">\n	<strong>Prothesen</strong><br />\n	<br />\n	In Deutschland leben ca. 250.000 Menschen mit einer Amputation und j&auml;hrlich kommen ca. 55.000 Neuamputationen hinzu.<br />\n	Neben Unf&auml;llen, Tumorerkrankungen, Infektionen und Verletzungsfolgen die einen verh&auml;ltnism&auml;&szlig;ig geringen Anteil der Amputationsgr&uuml;nde darstellen, sind heute Gef&auml;&szlig;erkrankungen, z.B. als Folge von Diabetes, die mit Abstand h&auml;ufigste Amputationsursache.</p>\n<p style=\"text-align: justify;\">\n	Wurde eine Amputation durchgef&uuml;hrt, ist dies f&uuml;r den jeweils Betroffenen eine gewaltige psychische Belastung, die meist nur mit professioneller Hilfe gemeistert werden kann. Erst die Aussicht, auch mit einer Prothese sein Leben weitestgehend unabh&auml;ngig meistern zu k&ouml;nnen gibt vielen Betroffenen wieder Mut und Hoffnung f&uuml;r eine weitere Zukunft.</p>\n<p style=\"text-align: justify;\">\n	Prothesen sind K&ouml;rperersatzst&uuml;cke die nach Amputationen oder Dysmelien (angeborenes Fehlen von Gliedma&szlig;en) ihren Einsatz finden. Gerade in der Prothesentechnik hat in den letzten 30 Jahren eine wahre technische Revolution stattgefunden. Der Einsatz modernster Materialien, wie Carbon, Silikon, Titan usw. und die Verwendung mikrochipgesteuerter Bauteile oder myoelektronischer Sensoren, machen den Prothesenbau von heute zur high technology und den Orthop&auml;die-Techniker zum absoluten Spezialisten.</p>\n<p style=\"text-align: justify;\">\n	&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<br />\n	<strong>Prothesen der oberen Extremit&auml;t:</strong></p>\n<p style=\"text-align: justify;\">\n	<strong>Armprothesen:</strong><br />\n	Armprothesen k&ouml;nnen die wichtigsten Grundfunktionen der fehlenden Hand - wie z.B. Hand &ouml;ffnen und schlie&szlig;en - ersetzen, sowie das &auml;u&szlig;ere Erscheinungsbild wiederherstellen. Wir sind heute in der Lage, Ihnen von der rein kosmetischen Armprothese bis hin zur myoelektrischen high-end Prothese,&nbsp; alle Systeme entsprechend der jeweiligen Amputationsh&ouml;he, zu fertigen.</p>\n<p style=\"text-align: justify;\">\n	<strong>Kosmetische Armprothesen (Habitusprothesen)</strong><br />\n	Kosmetische Armprothesen werden zur Wiederherstellung des &auml;u&szlig;eren Erscheinungsbildes getragen und von Patienten bevorzugt, f&uuml;r die das &auml;u&szlig;ere Erscheinungsbild von entscheidender Bedeutung ist. Die funktionellen M&ouml;glichkeiten sind meist jedoch auf ein einfaches Gegenhalten beschr&auml;nkt.</p>\n<p style=\"text-align: justify;\">\n	<strong>Myoelektrische Armprothesen</strong><br />\n	Myoelektrische Armprothesen sind fremdkraftbetrieben. Bei jeder vom Patienten gewollten Kontraktion des Muskels, entsteht auf der Haut eine elektrische Spannung, die zum Steuern der elektrisch angetriebenen Prothesen genutzt wird. Man spricht hierbei auch von gedankengesteuerten Prothesensystemen.</p>\n<p style=\"text-align: justify;\">\n	Diese Systeme sind heute so ausgefeilt, dass man damit nicht mehr nur das einfache Hand&ouml;ffnen und -schlie&szlig;en steuert, sondern auch die Drehung des Handgelenks, sowie Beugung und Streckung des Ellenbogens.</p>\n<p style=\"text-align: justify;\">\n	Nur wenigen Firmen in Deutschland ist es gestattet diese Prothesensysteme zu fertigen, da sie in ihrer Komplexit&auml;t enormes Fachwissen und technisches Know-how erfordern.<br />\n	Das Sanit&auml;tshaus F&uuml;rst hat die vom Hersteller aufgestellten f&uuml;nf Myo-Qualit&auml;tskriterien alle erreicht und steht selbst unter den qualifizierten Betrieben in einer Ausnahmeposition.&nbsp;&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<strong>Unser Leistungsspektrum - f&uuml;r Ihre Mobilit&auml;t</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		kontinuierliche Aus- und Weiterbildung unserer Orthop&auml;die-Techniker</li>\n	<li style=\"text-align: justify;\">\n		Kooperation mit speziell geschulten Therapeuten</li>\n	<li style=\"text-align: justify;\">\n		modernste technische Ausstattung</li>\n	<li style=\"text-align: justify;\">\n		Erfahrene Orthop&auml;die-Techniker im Myo-Prothesenbau</li>\n	<li style=\"text-align: justify;\">\n		Qualitativ hochwertige Prothesensysteme</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r Dynamic-Arm (aktive Ellenbogenbeugung u. -streckung)</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r Michelangelo-Hand (Axon Bus System)</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r MyoBock Systeme</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r MyoBock Kinder Systeme</li>\n	<li style=\"text-align: justify;\">\n		kostenlose Hausbesuche</li>\n</ul>\n<p style=\"text-align: justify;\">\n	&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<strong>Silikonprothesen der oberen Extremit&auml;t:</strong><br />\n	<br />\n	<strong>Finger- und Teilhandprothesen aus Silikon</strong><br />\n	Neben ihrer Eigenschaft als Mittel der sozialen Kommunikation ist die Hand das wichtigste Werkzeug des Menschen, immer im Blick, immer einsatzbereit. Entsprechend stigmatisierend empfinden Menschen schwere Verletzungen der Hand (meist durch Unfall), in denen ein oder mehrere Finger amputiert wurden.</p>\n<p style=\"text-align: justify;\">\n	Psychische Probleme, in einer Welt wo alles perfekt sein muss, berufliche Probleme, wenn man pl&ouml;tzlich eine Tastatur nicht mehr richtig bedienen kann, usw..<br />\n	Es gibt viele Gr&uuml;nde, warum Menschen den Wunsch an uns herantragen, ihnen ihre Hand wieder so herzustellen, dass diese kosmetisch perfekt und fast wieder uneingeschr&auml;nkt nutzbar ist.</p>\n<p style=\"text-align: justify;\">\n	Voraussetzung f&uuml;r so ein Versorgungsergebnis ist eine exakte Ma&szlig;- und Abformtechnik, eine an Perfektion grenzende Fertigungstechnik und eine Farbgestaltung die sich zu fast 100 Prozent an den Vorgaben der nat&uuml;rlichen Hand orientiert.</p>\n<p style=\"text-align: justify;\">\n	Das hohe technische Wissen, kontinuierliche Schulungen und jahrelange Erfahrung in der Verarbeitung von Silikon-Kautschuken waren der Grund, dass der weltgr&ouml;&szlig;te Hersteller von Prothesen-Passteilen, die Firma &quot;Otto Bock Health Care Deutschland GmbH&quot; aus Duderstadt, das Sanit&auml;tshaus F&uuml;rst in die erlesene Liste der Silikon-Qualit&auml;tspartner aufnahm.</p>\n<p style=\"text-align: justify;\">\n	Zusammen mit der Firma Otto Bock fertigen wir, egal ob einzelner Finger oder Teilhand, Prothesen, die an Passgenauigkeit und kosmetischer Perfektion, keine W&uuml;nsche offen lassen.</p>\n<p style=\"text-align: justify;\">\n	<strong>Unser Leistungsspektrum:</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		hochwertige technische Ausstattung</li>\n	<li style=\"text-align: justify;\">\n		jahrelange Erfahrung im Bereich Silikontechnik</li>\n	<li style=\"text-align: justify;\">\n		kontinuierliche Weiterbildungen unserer Orthop&auml;dietechniker</li>\n	<li style=\"text-align: justify;\">\n		verfassen einer herausragenden fachlichen Expertise</li>\n	<li style=\"text-align: justify;\">\n		Hausbesuche</li>\n</ul>\n<p style=\"text-align: justify;\">\n	<a href=\"http://www.leben-mit-fingeramputation.de\" target=\"_blank\"><br />\n	http://www.leben-mit-fingeramputation.de</a></p>\n<p style=\"text-align: justify;\">\n	&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<strong>Prothesen der unteren Extremit&auml;t:</strong><br />\n	<br />\n	<strong> Beinprothesen</strong><br />\n	Mobilit&auml;t ist Lebensqualit&auml;t, in jedem Alter, auch nach einer Beinamputation. So vielf&auml;ltig unser Leben ist, so verschieden sind auch die Anforderungen an eine Prothese.</p>\n<p style=\"text-align: justify;\">\n	Jede von uns gefertigte Prothese ist ein Unikat, die individuell f&uuml;r Ihren Nutzer hergestellt wurde.<br />\n	Ob Stumpfbettungen aus HTV-Silikon (Hochtemparaturvernetztes Silikon), aus Gie&szlig;harz mit oder ohne flexiblen Innenschaft, mit Silikon-, Gel- oder Polyurethan-Linern, usw. - egal welche Anforderungen Ihre Stumpfverh&auml;ltnisse an uns stellen, wir sind in der Lage diese zu erf&uuml;llen.</p>\n<p style=\"text-align: justify;\">\n	Das menschliche Bein erf&uuml;llt eine Vielzahl von Aufgaben und somit sind auch die Anforderungen an ein Prothesenbein sehr gro&szlig;. Eine Prothese ist eine Kombination aus Prothesenschaft (Stumpfbettung) und diversen Passteilen, die sich gegenseitig so erg&auml;nzen, dass sie das menschliche Bein so gut wie m&ouml;glich ersetzen. Welche Passteile im Einzelnen verwendet werden, richtet sich nach der jeweiligen Amputationsh&ouml;he und dem Aktivit&auml;tsgrad des Patienten.</p>\n<p style=\"text-align: justify;\">\n	<strong>Wir unterscheiden hierbei vier Mobilit&auml;tsklassen:</strong><br />\n	Mobilit&auml;tsklasse 1: Innenbereichsgeher<br />\n	Mobilit&auml;tsklasse 2: eingeschr&auml;nkter Au&szlig;enbereichsgeher<br />\n	Mobilit&auml;tsklasse 3: uneingeschr&auml;nkter Au&szlig;enbereichsgeher<br />\n	Mobilit&auml;tsklasse 4: uneingeschr&auml;nkter Au&szlig;enbereichsgeher mit besonders hohen Anspr&uuml;chen</p>\n<p style=\"text-align: justify;\">\n	<strong>Unser Leistungsspektrum - f&uuml;r Ihre Mobilit&auml;t</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		kontinuierliche Aus- und Weiterbildung unserer Orthop&auml;die-Techniker</li>\n	<li style=\"text-align: justify;\">\n		Kooperation mit speziell geschulten Therapeuten</li>\n	<li style=\"text-align: justify;\">\n		modernste technische Ausstattung</li>\n	<li style=\"text-align: justify;\">\n		Erfahrene Orthop&auml;die-Techniker im Prothesenbau</li>\n	<li style=\"text-align: justify;\">\n		Qualitativ hochwertige Prothesensysteme</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r das mikroprozessorgeregelte Kniegelenk GENIUM&reg;</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r das mikroprozessorgeregelte Kniegelenk C-Leg&reg;</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r das AeroLink&reg;-Unterdrucksystem</li>\n	<li style=\"text-align: justify;\">\n		zertifiziert f&uuml;r Harmony&reg;-Unterdrucksystem</li>\n	<li style=\"text-align: justify;\">\n		kostenlose Hausbesuche</li>\n</ul>\n<p style=\"text-align: justify;\">\n	&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<strong>Oberschenkelprothesen</strong><br />\n	Eine Oberschenkelamputation oder auch transfemorale Amputation wird dann durchgef&uuml;hrt, wenn das vorhandene Kniegelenk aus medizinischen Gr&uuml;nden vom Chirurgen nicht mehr erhalten werden kann.</p>\n<p style=\"text-align: justify;\">\n	Die l&auml;ngsovale Schaftform (CAT-CAM)&nbsp; in Kombination mit hydrostatischer Belastungsaufnahme, d.h. es wird die gesamte Stumpfoberfl&auml;che zur Lastaufnahme herangezogen, ist heute die Schaftform der Wahl. Hierbei bietet sich dem Patienten der Vorteil, gegen&uuml;ber der veralteten querovalen Schaftform, dass die Prothesenf&uuml;hrung in der Stand- und Schwungphase, durch den gro&szlig;fl&auml;chigen Kontakt erheblich verbessert wurde.<br />\n	Ob der Patient letztlich mit einem Saugsystem und flexiblem Innenschaft, oder einem Linersystem mit distaler Arretierung versorgt wird ist letztlich den Stumpfverh&auml;ltnissen, dem Krankheitsbild und/oder auch dem Wunsch des Patienten geschuldet.<br />\n	Dank kontinuierlicher Zusatzqualifikationen ist die orthop&auml;dische Werkstatt des Sanit&auml;tshauses F&uuml;rst, heute in der Lage seinen Patienten modernste Prothesenpassteile, wie z.B. die mikroprozessergeregelten Kniegelenke C-Leg&reg; oder das noch weiterentwickelte Genium&reg; zu bieten.</p>\n<p style=\"text-align: justify;\">\n	Diese Kniegelenke unterscheiden sich ma&szlig;geblich von konventionellen mechanischen Kniegelenken, wie nachfolgend aufgef&uuml;hrt:</p>\n<p style=\"text-align: justify;\">\n	<strong>C-Leg&reg; Kniegelenk<br />\n	</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		vollst&auml;ndig mikroprozessorgeregeltes Kniegelenk</li>\n	<li style=\"text-align: justify;\">\n		unerreicht hohe Sicherheit und Dynamik</li>\n	<li style=\"text-align: justify;\">\n		Ann&auml;herung an nat&uuml;rliches Gangbild</li>\n	<li style=\"text-align: justify;\">\n		sicheres, harmonisches Gehen in unterschiedlichen Schrittgeschwindigkeiten und auf verschiedenen Untergr&uuml;nden</li>\n	<li style=\"text-align: justify;\">\n		dreij&auml;hrige Garantie mit kostenfreier Serviceinspektion nach 24 Monaten</li>\n	<li style=\"text-align: justify;\">\n		C-Leg Mobilit&auml;tsgarantie</li>\n	<li style=\"text-align: justify;\">\n		Empfohlen f&uuml;r die Mobilit&auml;tsgrade 2 bis 4</li>\n</ul>\n<p style=\"text-align: justify;\">\n	und zu den bereits aufgef&uuml;hrten Punkten bietet das derzeit beste Kniegelenk folgende zus&auml;tzliche Vorteile:<br />\n	&nbsp;<br />\n	<strong> Genium&reg; Kniegelenk</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		optimiertes physiologischen Gehen</li>\n	<li style=\"text-align: justify;\">\n		nat&uuml;rliches Treppensteigen</li>\n	<li style=\"text-align: justify;\">\n		nat&uuml;rliches &Uuml;berwinden von Hindernissen</li>\n	<li style=\"text-align: justify;\">\n		nat&uuml;rliches Stehen</li>\n	<li style=\"text-align: justify;\">\n		Empfohlen f&uuml;r die Mobilit&auml;tsgrade 2 bis 4</li>\n</ul>\n<p style=\"text-align: justify;\">\n	&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<strong>Unterschenkelprothesen</strong></p>\n<p style=\"text-align: justify;\">\n	Die Unterschenkelamputation oder auch transtibiale Amputation ist eine sowohl funktionell als auch kosmetisch gut zu versorgende Amputation.<br />\n	Die Stumpfbettung erfolgt heute in der Regel mit Linern aus Silikon, Gel oder Polyurethan, aber auch die Verwendung von Polytol&reg;- oder HTV-Innensch&auml;ften liefert gerade bei schwierigen Stumpfverh&auml;ltnissen beste Ergebnisse.<br />\n	Der Liner oder Innenschaft dient als&nbsp; &bdquo;zweite Haut&ldquo; zwischen den beweglichen Weichteilen des Stumpfes und der harten Schale des Schaftes, welcher die sogenannten Scherkr&auml;fte zwischen Haut und Prothesenschaft auf ein Minimum reduziert und somit den Tragekomfort der Prothese erheblich erh&ouml;ht.<br />\n	Je nach Aktivit&auml;tsgrad des zu versorgenden Patienten erfolgt dann die Auswahl der Fu&szlig;systems. Egal ob sicheres Stehen und vorsichtiges Gehen, dynamisches Marschieren oder schnelles Rennen f&uuml;r Sie im Vordergrund steht, bei uns bekommen Sie den Prothesenfu&szlig; der individuell auf Sie abgestimmt ist. Durch die&nbsp; Zusammenarbeit mit den weltweit f&uuml;hrenden Herstellern f&uuml;r Prothesensysteme, sind wir heute in der Lage, Ihre Prothese mit dem f&uuml;r Sie idealen Fu&szlig;system auszustatten.</p>\n<p style=\"text-align: justify;\">\n	<br />\n	<strong>Fu&szlig;prothesen aus Silikon</strong></p>\n<p style=\"text-align: justify;\">\n	Ihr Amputationsstumpf ist verheilt und weitestgehend schmerzfrei belastbar, dann ist die Zeit gekommen Sie mit einer Silikon-Fu&szlig;prothese zu versorgen, die kosmetisch und &auml;sthetisch, aber auch funktionell keine W&uuml;nsche offen l&auml;sst.<br />\n	Im Vordergrund dieses exklusiven Prothesensystems stehen dabei eine gleichm&auml;&szlig;ige Druckverteilung und ein verbessertes Gangbild. Eine optimale Fixierung am Amputationsstumpf verhindert Hautirritationen.<br />\n	Der kosmetische Aspekt vervollst&auml;ndigt auch hier die Versorgung. Barfu&szlig;laufen wird ebenso erm&ouml;glicht wie das Tragen von Konfektionsschuhen mit verschiedenen Absatzh&ouml;hen.</p>\n<p style=\"text-align: justify;\">\n	<a href=\"http://www.vorfussamputation.de/\" target=\"_blank\">http://www.vorfussamputation.de/</a></p>\n");
INSERT INTO languagetexts VALUES("28","1","","<h3>\n	Schuheinlagen nach Ma&szlig;<br />\n	&nbsp;&nbsp;&nbsp;</h3>\n");
INSERT INTO languagetexts VALUES("29","1","","<p style=\"text-align: justify;\">\n	Eine der wohl in der &Ouml;ffentlichkeit am meisten untersch&auml;tzten Versorgungsformen in der Orthop&auml;dietechnik.<br />\n	Kopfschmerz, H&uuml;ftschmerz, Nackenverspannungen, Wirbels&auml;ulenprobleme usw. das alles aber k&ouml;nnen Auswirkungen einer Fehlstellung der F&uuml;&szlig;e sein.<br />\n	Nach Verordnung Ihres Arztes fertigen wir f&uuml;r Sie Ihre individuelle Fu&szlig;bettung, nach Form- oder Computerabdruck. Egal ob f&uuml;r den Sport-, Berufs-, Arbeits- oder Freizeitschuh Ihre Einlage ist immer ein medizinisches Hilfsmittel, ein Unikat, das die Statik Ihres K&ouml;rpers neu ausrichtet, den Bewegungsablauf korrigiert und vorhandene Schmerzen beseitigt.<br />\n	Gegen&uuml;ber vergangen Jahren sind die heutigen Einlagenmodelle keine harten und starren Einlegeplatten mehr, sondern technisch ausgereifte Hilfsmittel die sowohl an Materialauswahl, als auch an punktuellen Korrekturm&ouml;glichkeiten keine W&uuml;nsche mehr offen lassen.<br />\n	Die heute h&auml;ufigsten Fu&szlig;fehlstellungen sind Knick-, Senk-, Spreiz- und Plattfu&szlig; resultierend aus schlechtem Billigschuhwerk und dem zunehmenden Alter und dem &Uuml;bergewicht der Bev&ouml;lkerung.<br />\n	Auch bei Kindern ist zu beobachten, dass die Zahl der Fu&szlig;fehlstellungen in den letzten zehn Jahren gravierend anstieg, &Uuml;bergewicht und Bewegungsmangel sind hier mit Sicherheit die Hauptgr&uuml;nde daf&uuml;r.<br />\n	Aber egal ob Jung oder Alt wir die Techniker der orthop&auml;dischen Werkstatt des Sanit&auml;tshaus F&uuml;rst haben f&uuml;r Ihre F&uuml;&szlig;e die optimale L&ouml;sung f&uuml;r eine schmerzfreie Mobilit&auml;t in die Zukunft.</p>\n");
INSERT INTO languagetexts VALUES("30","1","","<p style=\"text-align: justify;\">\n	Als besonderen Service bieten wir unseren Kunden auch orthop&auml;dische Zurichtungen am konfektionierten Schuh an.</p>\n<p style=\"text-align: justify;\">\n	Die w&auml;ren:</p>\n<p style=\"text-align: justify;\">\n	<strong>Innen- und Au&szlig;enranderh&ouml;hung</strong> bei lateraler oder medialer Gonarthrose, Genu varum, Genu valgum, Au&szlig;en- oder Innenbandl&auml;sionen an Knie- oder Sprunggelenk<br />\n	Verk&uuml;rzungsausgleich an Sohle und/oder Absatz bei Beinverk&uuml;rzung, Spitzfu&szlig;, Achillessehnenverk&uuml;rzung, Achillodynie, Entlastung der Wadenmuskulatur (z. B. bei Teilruptur)</p>\n<p style=\"text-align: justify;\">\n	<strong>(Ballen-)Rolle mit r&uuml;ckversetztem Auftritt und besonders starker Wirkung </strong>bei Fu&szlig;wurzel-, Sprunggelenks- oder Kniearthrose, Achillodynie, Versteifung des Kniegelenks, bei Frakturen an Gro&szlig;zehe oder Fu&szlig;wurzel, Beugekontraktur des Kniegelenks, K&ouml;hler II oder III, Abriss der Patellasehne, Polyneuropathie, Ulcus an der Fu&szlig;sohle, Hallux rigidus<br />\n	<br />\n	<strong>Schuhbodenversteifung</strong> bei Fu&szlig;wurzelarthrose, Fu&szlig;wurzelarthrodese, unverheilten Mittelfu&szlig;frakturen<br />\n	<br />\n	<strong>Schmetterlingsrolle mit Weichpolsterung der Mittelfu&szlig;k&ouml;pfchen</strong> bei entz&uuml;ndeten Metatarsalgelenken und kontraktem, schmerzhaften Senk-Spreizfu&szlig;<br />\n	<br />\n	<strong>Haglundfersenpolster</strong> bei Haglundferse und Bursitis Achillessehne (Schleimbeutelentz&uuml;ndung an der Achillessehne)</p>\n");
INSERT INTO languagetexts VALUES("31","1","","<h3>\n	Schuhzurichtungen</h3>\n");
INSERT INTO languagetexts VALUES("32","1","","<p style=\"text-align: justify;\">\n	Kaum eine Erkrankung wird die Medizin in den n&auml;chsten Jahren und Jahrzehnten vor gr&ouml;&szlig;ere Herausforderungen stellen wie Diabetes mellitus. Bei Diabetes-Patienten wird vom K&ouml;rper entweder zu wenig oder gar kein Insulin produziert, dieses Hormon ist aber zur Senkung des Blutzuckerspiegels unbedingt n&ouml;tig.<br />\n	Diabetes ist heute haupts&auml;chlich eine Erkrankung der modernen Gesellschaft, wenig Bewegung und das viele und z. T. ungesunde Essen sind sicherlich Hauptgr&uuml;nde f&uuml;r das Auftreten von Diabetes, aber auch Faktoren wie Vererbung spielen sicherlich eine Rolle.<br />\n	Eine unbehandelte oder schlecht eingestellte Diabetes kann heute eine ganze Anzahl von Organen sch&auml;digen, wie:</p>\n<ul>\n	<li style=\"text-align: justify;\">\n		Herz</li>\n	<li style=\"text-align: justify;\">\n		Nieren</li>\n	<li style=\"text-align: justify;\">\n		Augen</li>\n	<li style=\"text-align: justify;\">\n		Nervensystem</li>\n	<li style=\"text-align: justify;\">\n		Blutgef&auml;&szlig;e</li>\n</ul>\n<p style=\"text-align: justify;\">\n	<br />\n	Die beiden letzteren fallen in das Versorgungsspektrum des Orthop&auml;dietechnikers.<br />\n	Bei Sch&auml;digungen des Nervensystems ist es die diabetische Polyneuropathie (dPNP) die den Techniker vor Herausforderungen stellt. Sie ist eine Sch&auml;digung multipler Nerven und beginnt an den Fu&szlig;sohlen und steigt in der Regel symmetrisch auf</p>\n<p style=\"text-align: justify;\">\n	Durch zus&auml;tzlich auftretende Fu&szlig;fehlstellungen wird die Bildung von Druckgeschw&uuml;ren beg&uuml;nstigt. Diese Druckgeschw&uuml;re in Verbindung mit der zus&auml;tzlich auftretenden Angiopathie (Durchblutungsst&ouml;rung) k&ouml;nnen bis hin zur Amputation des betroffenen Beines f&uuml;hren.<br />\n	Hier setzt die Arbeit unserer Fachleute an. Entlastung und Weichbettung der gef&auml;hrdeten Fu&szlig;sohlenregion mittels individuell nach Gipsabdruck angefertigten <strong>diabetisch adaptierten Fu&szlig;bettungen</strong> im Mehrschicht- Polsterverfahren.</p>\n<p style=\"text-align: justify;\">\n	Diese diabetisch adaptierten Fu&szlig;bettungen in Verbindung mit einem <strong>Diabetiker Therapieschuh</strong> bringen der gesch&auml;digten Fu&szlig;sohlenregion die Entlastung, die diese zum Abheilen ben&ouml;tigt. Bei Diabetiker Therapieschuhen sind im Fu&szlig;raum keine auftragenden N&auml;hte oder einengenden Zehenkappen, eine zus&auml;tzliche Sohlenversteifung mit Abrollhilfe verhindert Scherkr&auml;fte, die zu einer weiteren Reizung des diabetischen Fu&szlig;syndroms (diabetische Podopathie) f&uuml;hren w&uuml;rden.</p>\n<p style=\"text-align: justify;\">\n	Das durch die diabetische Polyneuropathie hervorgerufene, fehlende Schmerzempfinden mit gleichzeitiger &Uuml;berlastung des betroffenen Fu&szlig;es, kann im fortgeschrittenen Stadium zu einem sogenannten Charcot-Fu&szlig; f&uuml;hren. Hierbei handelt es sich um Knochenfrakturen die unbehandelt erst zu einer Schwellung, dann R&ouml;tung, bis hin zur Verformung des Fu&szlig;es, f&uuml;hren.<br />\n	Die Behandlung eines Charcot-Fu&szlig;es aus orthop&auml;dietechnischer Sicht, reicht vom industriell hergestellten <strong>Diabetic Walker</strong> bis hin zur individuell hergestellten <strong>Zwei-Schalen-Orthese</strong> nach Gipsabdruck.<br />\n	Durch unsere Zusammenarbeit mit Fach&auml;rzten und die kontinuierliche Schulung unserer Mitarbeiter sind wir bei Fragen zur Versorgung des diabetischen Fu&szlig;syndroms, Ihr Ansprechpartner in der Region.</p>\n");
INSERT INTO languagetexts VALUES("33","1","","<h3>\n	Diabetes mellitus</h3>\n");
INSERT INTO languagetexts VALUES("34","1","","<h3>\n	Schuhzurichtungen</h3>\n");
INSERT INTO languagetexts VALUES("36","1","","<h3>\n	Diabetes</h3>\n");
INSERT INTO languagetexts VALUES("41","1","","<h3>\n	Rollst&uuml;hle</h3>\n");
INSERT INTO languagetexts VALUES("42","1","","<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\"><u>Standardrollstuhl</u></font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Standardrollst&uuml;hle bestehen aus einem faltbaren Rohrrahmen, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;ndern vorne, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer Sitz- und R&uuml;ckenbespannung aus Kunstleder, je nach Modell auch gepolstert.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken. Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Spezielle Ausf&uuml;hrungen f&uuml;r Beinamputierte mit nach hinten verlagertem Radstand stehen ebenfalls zur Verf&uuml;gung, bzw. Standardmodelle sind auch nachtr&auml;glich in Amputiertenrollst&uuml;hle umr&uuml;stbar.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\"><i>Download PDF</i></font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\"><u>Leichtgewichtsrollstuhl</u></font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Leichtgewichtrollst&uuml;hle bestehen aus Aluminium oder anderen Leichtmetallen, zwei gro&szlig;en R&auml;dern hinten, zwei kleine Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, ebenfalls aus Aluminium, sowie einer Sitz- und R&uuml;ckenbespannung aus textilem Material, je nach Modell auch gepolstert.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar. Leichtgewichtrollst&uuml;hle sind gegen&uuml;ber herk&ouml;mmlichen Rollst&uuml;hlen ca. 3 bis 5 kg leichter. Diese Gewichtseinsparung bedeutet jedoch nicht, dass Behinderte mit geringen Greifkr&auml;ften mit diesen Rollstuhlmodellen besser versorgt w&auml;ren. Der Fahrwiderstand von Rollst&uuml;hlen ist entscheidend und wird durch eine blo&szlig;e Gewichtsverringerung kaum beeinflusst. Das geringe Gewicht von Leichtgewichtrollst&uuml;hlen soll es Behinderten selbst erleichtern, ihren Rollstuhl selbst&auml;ndig, z.B. in einem Pkw, zu verstauen.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\"><u>Aktivrollstuhl</u></font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Aktivrollst&uuml;hle bestehen meist aus einem faltbaren Rohrrahmen (Stahl, Aluminium, Titan o.a.) gro&szlig;en Antriebsr&auml;dern hinten und kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, einer meist festen textilen R&uuml;cken- und Sitzbespannung.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Der Schwerpunkt des Rollstuhls kann durch variable Befestigungsm&ouml;glichkeiten der Antriebsr&auml;der ver&auml;ndert werden, wodurch eine Anpassung an die jeweilige Aktivit&auml;t und Behinderung des Rollstuhlbenutzers m&ouml;glich ist. Ferner ist eine Radsturzeinstellung bei einigen Modellen m&ouml;glich.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Durch die Anpassungsm&ouml;glichkeit der Radposition wird au&szlig;erdem eine bessere Kraftausnutzung erreicht. Unterschiedlich gestaltete oder verstellbare R&uuml;ckenlehnen (h&ouml;henverstellbar) unterst&uuml;tzen die Anpassung an den jeweiligen Verwendungszweck. Durch vielf&auml;ltige Ausstattungsvariationen, die den Herstellerlisten zu entnehmen sind, ist eine Anpassung an nahezu alle Aktivit&auml;ten m&ouml;glich.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Gew&ouml;hnlich stehen mehrere R&uuml;ckenteile, Seitenteile, Fu&szlig;st&uuml;tzen, Lenkrollen und Antriebsr&auml;der zur Auswahl, die jeweils auf entsprechende Aktivit&auml;ten abgestellt sind und durch ihre Kombinationsvielfalt eine ideale Anpassung erm&ouml;glichen.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Durch die Umbauf&auml;higkeit von Aktivrollst&uuml;hlen ist es m&ouml;glich, diese sowohl im normalen Umfeld als Alternative zum Standardrollstuhl und gleichzeitig als Sportrollstuhl zu verwenden. Mit Hilfe zus&auml;tzlicher Seitenteile, entsprechender R&auml;der und R&uuml;ckenteile er&uuml;brigt sich die Zweitanschaffung eines Standardrollstuhls.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\"><u>Multifunktionsrollstuhl</u></font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Multifunktionsrollst&uuml;hle sind meist nicht faltbar und verf&uuml;gen &uuml;ber eine Sitz- und R&uuml;ckenlehnenverstellung mittels mechanischem Gest&auml;nge oder &uuml;ber Gasdruckfeder, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer anatomischen Sitz- und R&uuml;ckenpolsterung.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></span></strong></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<strong><span style=\"font-family:comic sans ms,cursive;\"><font size=\"2\">Durch die M&ouml;glichkeit der Sitz- und R&uuml;ckenlehnenverstellung ist es Behinderten m&ouml;glich, eine ihrer Behinderung nach, physiologisch angemessene, Sitzhaltung einzunehmen.</font></span></strong></p>\n");
INSERT INTO languagetexts VALUES("43","1","","<h3>\n	Gehhilfen</h3>\n");
INSERT INTO languagetexts VALUES("44","1","","<p>\n	<span style=\"color:#ffd700;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Gehhilfen text</span></span></p>\n<p>\n	<span style=\"color:#ffd700;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Gehhilfen text</span></span></p>\n<p>\n	<span style=\"color:#ffd700;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Gehhilfen text</span></span></p>\n<p>\n	<span style=\"color:#ffd700;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Gehhilfen text</span></span></p>\n<p>\n	<span style=\"color:#ffd700;\"><span style=\"font-family: tahoma,geneva,sans-serif;\">Gehhilfen text</span></span></p>\n");
INSERT INTO languagetexts VALUES("45","1","","<h3>\n	Bad &amp; Toilette</h3>\n");
INSERT INTO languagetexts VALUES("46","1","","<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\"><u>Badewannenlifter</u></font></span></span></p>\n<ul>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Maximale Belastbarkeit 140 kg</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Keine H&ouml;henadapter erforderlich (f&uuml;r Badewannen bis zu einer Wannentiefe von 48 cm)</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Hygieneaussparung erleichtert die Intimpflege</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Sitz-und R&uuml;ckenteil sind ergonomisch geformt</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Schwimmf&auml;hige und bequeme Handsteuerung</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Akku ist in der Handsteuerung integriert und kann jederzeit geladen werden</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Ladezustand wird rechtzeitig angezeigt</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Einfach zu reinigen durch glatte Oberfl&auml;chen und geschlossene R&uuml;ckeneinheit</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Der Lift l&auml;sst sich ohne gro&szlig;e Kraftanstrengung anheben,</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Leicht zu verstauen und zu transportieren zusammengefaltet oder in 2 Teilen</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Geringer Montageaufwand</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Auf elektromagnetische Vertr&auml;glichkeit gepr&uuml;ft</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Alle Bez&uuml;ge abnehmbar und leicht zu reinigen</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">3 Jahre Garantie auf den Badewannenlift, 2 Jahre Garantie auf den Akku. Ausgenommen sind Sauger und Bez&uuml;ge</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">jetzt mit Gleitschuhen statt Rollen</font></span></span></p>\n	</li>\n</ul>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\"><u>Duschhocker</u></font></span></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Das Leichtgewicht mit maximaler Belastbarkeit</font></span></span></p>\n<ul>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">In drei Ausf&uuml;hrungen lieferbar</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Bis zu 180 kg belastbar</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Nur 1,6 kg Eigengewicht</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Einfach zu montieren, zu zerlegen und zu reinigen</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Vielseitig einsetzbar</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Beine 3-fach h&ouml;henverstellbar</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Rostfreie, silber eloxierte Aluminiumbeine</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">4 Ablaufschlitze in der Sitzfl&auml;che</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Lieferung in praktischer Mitnahmeverpackung</font></span></span></p>\n	</li>\n</ul>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\"><u>Duschstuhl, faltbar</u></font></span></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Gibt Sicherheit im Bad</font></span></span></p>\n<ul>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Mit nur einem Handgriff faltbar</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Einfache und platzsparende Lagerung</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Bis 130 kg belastbar</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">4-fach h&ouml;henverstellbare Beine</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Hygieneaussparung</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Wasserablaufl&ouml;cher in der Sitzfl&auml;che</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Leicht zu reinigen</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Rostfreier Rahmen aus pulverbeschichtetem Stahlrohr</font></span></span></p>\n	</li>\n</ul>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\"><u>Duschklappsitz</u></font></span></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Passt in jede Dusche - bei Nichtgebrauch einfach zusammenklappen</font></span></span></p>\n<ul>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Platzsparend an der Wand zu montieren</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">is 130 kg belastbar</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">St&uuml;tzbeine mit Gummikappen f&uuml;r zus&auml;tzliche Stabilit&auml;t und Sicherheit</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">4-fach h&ouml;henverstellbar f&uuml;r individuelle Anpassung</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Feinjustierbarer Fu&szlig; zum Ausgleich von Bodenunebenheiten</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Mit Hygieneaussparung</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Wasserablaufl&ouml;cher in der Sitzfl&auml;che</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Lieferung mit beiliegender Bohrschablone</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Rostfreier Rahmen aus pulverbeschichtetem Stahlrohr</font></span></span></p>\n	</li>\n</ul>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\"><u>Toilettensitzerh&ouml;hung</u></font></span></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Mit Deckel</font></span></span></p>\n<ul>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Mit zwei Hygieneaussparungen vorne und hinten</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Griffmulde am Deckel</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Fixierschraube zur schnellen und einfachen Befestigung</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Guter Halt &ndash; rutsch- und verschiebungssicher</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Auf Sicherheit gepr&uuml;ft</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Gut zu reinigen, da glatte Oberfl&auml;chen</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Lieferung in praktischer Mitnahme-Trageverpackung</font></span></span></p>\n	</li>\n</ul>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><u><font size=\"2\">Toilettensitzerh&ouml;hung mit Armlehnen</font></u></span></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Bei der festverschraubten Toilettensitzerh&ouml;hung ist jederzeit eine individuelle Anpassung an den Nutzer ohne Werkzeug m&ouml;glich:</font></span></span></p>\n<ul>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">drei verschiedene Sitzh&ouml;hen</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">drei verschiedene Winkel, nach vorn abfallend</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Die hochklappbaren, ergonomischen Armlehnen sorgen f&uuml;r zus&auml;tzlichen Halt beim Hinsetzen und Aufstehen. Bei Bedarf kann auch nur eine Armlehne montiert werden. Durch die Schnellspannverschraubung ist eine blitzschnelle Montage jederzeit m&ouml;glich.</font></span></span></p>\n	</li>\n	<li>\n		<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n			<span style=\"color:#00ffff;\"><span style=\"font-family: georgia,serif;\"><font size=\"2\">Hohe Belastbarkeit: 120kg!</font></span></span></p>\n	</li>\n</ul>\n");
INSERT INTO languagetexts VALUES("47","1","","<h3>\n	Betten</h3>\n");
INSERT INTO languagetexts VALUES("48","1","","<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><u><span style=\"background-color:#ff0000;\">Pflegebetten</span></u></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Elektrisch betriebene Pflegebetten bieten eine komfortable L&ouml;sung f&uuml;r die Pflege von kranken, pflegebed&uuml;rftigen, gebrechlichen und behinderten Menschen.</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><u><span style=\"background-color:#ff0000;\">Einlegerahmen</span></u></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Die Pflege des Partners in den eigenen vier W&auml;nden erh&auml;lt eine ganz neue Dimension:</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Der Betteinsatz erm&ouml;glicht durch den Einbau in ein vorhandenes Bett den Erhalt des gewohnten M&ouml;belumfeldes. Der Betteinsatz ist in unterschiedlichen Breiten erh&auml;ltlich. Die Standf&uuml;&szlig;e fixieren den Einsatz mit Bodenausgleichsschrauben und Befestigungslaschen sicher innerhalb des Bettes. H&ouml;henverstellbar &uuml;ber Elektromotor erleichtert der Betteinsatz die Pflege. Die viergeteilte Liegefl&auml;che ist elektromotorisch verstellbar. Der Betteinsatz ist in nur wenigen Minuten zu montieren. Im Zubeh&ouml;rangebot finden sich u. a. Aufrichter mit Triangelgriff und Seitenschutz.</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Das 24 Volt Antriebssystem wird serienm&auml;&szlig;ig geliefert.</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><u><span style=\"background-color:#ff0000;\">Nachttisch</span></u></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Technische Daten:</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Gewicht: 32 kg</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">H&ouml;he: 88 cm</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Breite: 55 cm</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Gesamttiefe: 45,5 cm</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Gesamtbreite (Bett-Tischplatte ausgeklappt): 123 cm</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Oberplatte: 53,5 x 45,5 cm</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Bett-Tischplatte: 66 x 37 cm</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Doppellaufrollen: &oslash; 50 mm, 2 Rollen feststellbar</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Ausf&uuml;hrung:</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Korpus mit zwei T&uuml;ren, einem Einlegeboden, einer ausziehbaren Schublade und einem offenen Fach</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Schublade nach beiden Seiten bis zu einem Anschlag ausziehbar, daher ist der Nachttisch von beiden Seiten des Bettes aus nutzbar</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Korpus bzw. Fronten aus 16 - 25 mm Holz-Spanplatten, kunststoffbeschichtet, Buche Dekor</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Seitlich angebrachter Bett-Tisch ist in einer seitlichen F&uuml;hrung ausklappbar</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Holzgestell mit 4 Doppellaufrollen, 2 Rollen feststellbar</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Ober- und Bett-Tischplatte sowie Zwischenboden mit 0,8 mm Kunststoffbeschichtung, Kanten der Oberplatte sowie der Bett-Tischplatte mit abgerundeten Kunsststoffanleimern</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Schublade und T&uuml;ren mit Hartkunststoffgriffen</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">Bestellnummern:</span></font></span></strong></span></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<span style=\"color:#00ff00;\"><strong><span style=\"font-family: lucida sans unicode,lucida grande,sans-serif;\"><font size=\"2\"><span style=\"background-color:#ff0000;\">61.3631.33 Nachttisch &quot;Hermann&quot; Buche Dekor, kunststoffbeschichtet</span></font></span></strong></span></p>\n");
INSERT INTO languagetexts VALUES("49","1","","<h3>\n	Sauerstofftherapie</h3>\n");
INSERT INTO languagetexts VALUES("51","1","","<h3>\n	Dekubitustherapie</h3>\n");
INSERT INTO languagetexts VALUES("53","1","","<h3>\n	Sonderbau</h3>\n");
INSERT INTO languagetexts VALUES("56","1","","<p>\n	Kinderorthop&auml;die</p>\n");
INSERT INTO languagetexts VALUES("57","1","","<p>\n	Andreas Winzer</p>\n");
INSERT INTO languagetexts VALUES("58","1","","<p>\n	+49 (0) 851 93143-18</p>\n");
INSERT INTO languagetexts VALUES("59","1","","<p>\n	<em><a href=\"mailto:a.winzer@sanitaetshaus-fuerst.de\">a.winzer@sanitaetshaus-fuerst.de</a></em></p>\n");
INSERT INTO languagetexts VALUES("60","1","","<p>\n	blank</p>\n");
INSERT INTO languagetexts VALUES("61","1","","<p>\n	blank</p>\n");
INSERT INTO languagetexts VALUES("62","1","","<p>\n	blank</p>\n");
INSERT INTO languagetexts VALUES("63","1","","");
INSERT INTO languagetexts VALUES("64","1","","<p>\n	Orthop&auml;dietechnik</p>\n");
INSERT INTO languagetexts VALUES("65","1","","<p>\n	Hans-Peter F&uuml;rst</p>\n");
INSERT INTO languagetexts VALUES("66","1","","<p>\n	+49 (0) 851 93143-0</p>\n");
INSERT INTO languagetexts VALUES("67","1","","<p>\n	<a href=\"mailto:tnpaulik@gmail.com\">hp.fuerst@sanitaetshaus-fuerst.de</a></p>\n");
INSERT INTO languagetexts VALUES("68","1","","<p>\n	Homecare</p>\n");
INSERT INTO languagetexts VALUES("69","1","","<p>\n	Birgit Bauer</p>\n");
INSERT INTO languagetexts VALUES("70","1","","<p>\n	+49 (0) 851/93143-23</p>\n");
INSERT INTO languagetexts VALUES("71","1","","<p>\n	<a href=\"mailto:blank\">b.bauer@sanitaetshaus-fuerst.de</a></p>\n");
INSERT INTO languagetexts VALUES("72","1","","<p>\n	Sanit&auml;tshaus</p>\n");
INSERT INTO languagetexts VALUES("73","1","","blank");
INSERT INTO languagetexts VALUES("74","1","","blank");
INSERT INTO languagetexts VALUES("75","1","","blank");
INSERT INTO languagetexts VALUES("76","1","","<h3>\n	Rollst&uuml;hle 2</h3>\n");
INSERT INTO languagetexts VALUES("77","1","","<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\"><u>Standardrollstuhl</u></font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Standardrollst&uuml;hle bestehen aus einem faltbaren Rohrrahmen, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;ndern vorne, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer Sitz- und R&uuml;ckenbespannung aus Kunstleder, je nach Modell auch gepolstert.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken. Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Spezielle Ausf&uuml;hrungen f&uuml;r Beinamputierte mit nach hinten verlagertem Radstand stehen ebenfalls zur Verf&uuml;gung, bzw. Standardmodelle sind auch nachtr&auml;glich in Amputiertenrollst&uuml;hle umr&uuml;stbar.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\"><i>Download PDF</i></font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\"><u>Leichtgewichtsrollstuhl</u></font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Leichtgewichtrollst&uuml;hle bestehen aus Aluminium oder anderen Leichtmetallen, zwei gro&szlig;en R&auml;dern hinten, zwei kleine Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, ebenfalls aus Aluminium, sowie einer Sitz- und R&uuml;ckenbespannung aus textilem Material, je nach Modell auch gepolstert.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar. Leichtgewichtrollst&uuml;hle sind gegen&uuml;ber herk&ouml;mmlichen Rollst&uuml;hlen ca. 3 bis 5 kg leichter. Diese Gewichtseinsparung bedeutet jedoch nicht, dass Behinderte mit geringen Greifkr&auml;ften mit diesen Rollstuhlmodellen besser versorgt w&auml;ren. Der Fahrwiderstand von Rollst&uuml;hlen ist entscheidend und wird durch eine blo&szlig;e Gewichtsverringerung kaum beeinflusst. Das geringe Gewicht von Leichtgewichtrollst&uuml;hlen soll es Behinderten selbst erleichtern, ihren Rollstuhl selbst&auml;ndig, z.B. in einem Pkw, zu verstauen.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\"><u>Aktivrollstuhl</u></font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Aktivrollst&uuml;hle bestehen meist aus einem faltbaren Rohrrahmen (Stahl, Aluminium, Titan o.a.) gro&szlig;en Antriebsr&auml;dern hinten und kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen, einer meist festen textilen R&uuml;cken- und Sitzbespannung.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Der Schwerpunkt des Rollstuhls kann durch variable Befestigungsm&ouml;glichkeiten der Antriebsr&auml;der ver&auml;ndert werden, wodurch eine Anpassung an die jeweilige Aktivit&auml;t und Behinderung des Rollstuhlbenutzers m&ouml;glich ist. Ferner ist eine Radsturzeinstellung bei einigen Modellen m&ouml;glich.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Durch die Anpassungsm&ouml;glichkeit der Radposition wird au&szlig;erdem eine bessere Kraftausnutzung erreicht. Unterschiedlich gestaltete oder verstellbare R&uuml;ckenlehnen (h&ouml;henverstellbar) unterst&uuml;tzen die Anpassung an den jeweiligen Verwendungszweck. Durch vielf&auml;ltige Ausstattungsvariationen, die den Herstellerlisten zu entnehmen sind, ist eine Anpassung an nahezu alle Aktivit&auml;ten m&ouml;glich.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Gew&ouml;hnlich stehen mehrere R&uuml;ckenteile, Seitenteile, Fu&szlig;st&uuml;tzen, Lenkrollen und Antriebsr&auml;der zur Auswahl, die jeweils auf entsprechende Aktivit&auml;ten abgestellt sind und durch ihre Kombinationsvielfalt eine ideale Anpassung erm&ouml;glichen.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Durch die Umbauf&auml;higkeit von Aktivrollst&uuml;hlen ist es m&ouml;glich, diese sowohl im normalen Umfeld als Alternative zum Standardrollstuhl und gleichzeitig als Sportrollstuhl zu verwenden. Mit Hilfe zus&auml;tzlicher Seitenteile, entsprechender R&auml;der und R&uuml;ckenteile er&uuml;brigt sich die Zweitanschaffung eines Standardrollstuhls.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<br />\n	&nbsp;</p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\"><u>Multifunktionsrollstuhl</u></font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Multifunktionsrollst&uuml;hle sind meist nicht faltbar und verf&uuml;gen &uuml;ber eine Sitz- und R&uuml;ckenlehnenverstellung mittels mechanischem Gest&auml;nge oder &uuml;ber Gasdruckfeder, zwei gro&szlig;en R&auml;dern hinten, zwei kleinen Lenkr&auml;dern vorn, abnehmbaren und austauschbaren Armlehnen und Fu&szlig;st&uuml;tzen sowie einer anatomischen Sitz- und R&uuml;ckenpolsterung.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Mittels Greifreifen an den gro&szlig;en R&auml;dern kann der Benutzer den Rollstuhl antreiben und lenken.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Durch zahlreiche Sonderausstattungen sind diese Rollst&uuml;hle an nahezu alle Behinderungsarten anpassbar.</font></font></p>\n<p style=\"margin-bottom: 0.42cm; line-height: 150%\">\n	<font face=\"Calibri, sans-serif\"><font size=\"2\">Durch die M&ouml;glichkeit der Sitz- und R&uuml;ckenlehnenverstellung ist es Behinderten m&ouml;glich, eine ihrer Behinderung nach, physiologisch angemessene, Sitzhaltung einzunehmen.</font></font></p>\n");
INSERT INTO languagetexts VALUES("78","1","","blank");
INSERT INTO languagetexts VALUES("79","1","","blank");
INSERT INTO languagetexts VALUES("80","1","","<h3>\n	blank</h3>\n");
INSERT INTO languagetexts VALUES("81","1","","blank");
INSERT INTO languagetexts VALUES("82","1","","<h3>\n	blank</h3>\n");
INSERT INTO languagetexts VALUES("83","1","","blank");
INSERT INTO languagetexts VALUES("84","1","","blank");
INSERT INTO languagetexts VALUES("85","1","","blank");
INSERT INTO languagetexts VALUES("86","1","","blank");
INSERT INTO languagetexts VALUES("87","1","","blank");
INSERT INTO languagetexts VALUES("88","1","","<h3>\n	blank 2</h3>\n");
INSERT INTO languagetexts VALUES("89","1","","blank");
INSERT INTO languagetexts VALUES("90","1","","blank");
INSERT INTO languagetexts VALUES("91","1","","blank");
INSERT INTO languagetexts VALUES("92","1","","blank");
INSERT INTO languagetexts VALUES("93","1","","blank");
INSERT INTO languagetexts VALUES("94","1","","blank");
INSERT INTO languagetexts VALUES("95","1","","blank");
INSERT INTO languagetexts VALUES("96","1","","blank");
INSERT INTO languagetexts VALUES("97","1","","blank");
INSERT INTO languagetexts VALUES("98","1","","blank");
INSERT INTO languagetexts VALUES("99","1","","blank");
INSERT INTO languagetexts VALUES("100","1","","<h3>\n	Beinprothesen</h3>\n");
INSERT INTO languagetexts VALUES("101","1","","<p>\n	Beweglichkeit bleibt Lebensqualit&auml;t. In jedem Alter und auch nach einer Amputation der unteren Extremit&auml;t gilt dies. So vielf&auml;ltig aber unser Leben ist, so verschieden sind Ihre Anforderungen an Ihre Prothese.<br />\n	F&uuml;r die Versorgung, die genau zu Ihnen passt, liefert Ihnen Ihr Sanit&auml;tshaus F&uuml;rst die individuelle L&ouml;sung.<br />\n	Das menschliche Bein erf&uuml;llt eine Vielzahl von Funktionen und somit sind auch die Anforderungen an ein Prothesenbein sehr gro&szlig;.<br />\n	Eine Beinprothese ist eine Kombination von Passteilen, die sich gegenseitig so erg&auml;nzen, dass sie das menschliche Bein so gut wie m&ouml;glich ersetzen. Welche Passteile im Einzelnen verwendet werden, richtet sich nach den jeweiligen Indikationen und dem Aktivit&auml;tsgrad des Patienten.<br />\n	Die erste Komponente einer Prothese ist normalerweise der Liner - eine Silikonh&uuml;lle, die auf den Stumpf aufgerollt wird. Dieser Liner besteht aus einem polsternden, dehnbaren Material, das wie ein Puffer zwischen dem harten, gewichtstragenden Prothesenschaft und der empfindlichen Stumpfhaut liegt. Zudem bietet der Liner eine feste Verbindung mit der Prothese.<br />\n	Wenn der Liner angezogen ist, steigt der Amputierte mit seinem Stumpf in den Prothesenschaft. Dieser Schaft, der aus unterschiedlichen Materialien bestehen kann, ist individuell von unseren Orthop&auml;dietechnikern f&uuml;r ihn angefertigt worden.<br />\n	Bei einem oberschenkelamputierten Anwender schlie&szlig;t sich nun unterhalb des Schaftes ein Kniegelenk an. Je besser dieses Gelenk auf die Bed&uuml;rfnisse des Amputierten abgestimmt ist, desto harmonischer und nat&uuml;rlicher ist das Gangbild. Darunter folgt ein Aluminium- oder<br />\n	Carbon-Rohr, das in einem Fu&szlig;modul endet. Bei Prothesenf&uuml;&szlig;en sind vor allem Eigenschaften wie die F&auml;higkeit zu Energier&uuml;ckgabe und ein guter Laufkomfort entscheidend.<br />\n	Bei einer Unterschenkelprothese ist das Fu&szlig;modul entweder direkt mit dem Schaft verbunden oder ebenfalls &uuml;ber ein Aluminium- oder Carbon-Rohr. Der jeweilige Aufbau ist abh&auml;ngig von der K&ouml;rpergr&ouml;&szlig;e des Anwenders und der L&auml;nge seines Stumpfes.</p>\n");
INSERT INTO languagetexts VALUES("102","1","","<h3>\n	Orthesen</h3>\n");
INSERT INTO languagetexts VALUES("103","1","","<p>\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\n");
INSERT INTO languagetexts VALUES("104","1","","<h3>\n	Orthesen</h3>\n");
INSERT INTO languagetexts VALUES("105","1","","<p>\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\n");
INSERT INTO languagetexts VALUES("106","1","","<h3>\n	Orthesen</h3>\n");
INSERT INTO languagetexts VALUES("107","1","","<p>\n	Orthesen sind orthop&auml;die-technische Hilfsmittel, die entweder als individuelle Ma&szlig;orthese in den orthop&auml;dischen Werkst&auml;tten des Sanit&auml;tshauses F&uuml;rst gefertigt werden, oder ein von der Industrie gefertigtes Produkt das nach den Ma&szlig;vorgaben des Herstellers am Patienten angepasst wird.<br />\n	Orthesen gleichen angeborene oder erworbene Fehlstellungen des Bewegungsapparates aus oder unterst&uuml;tzen diesen in seiner Funktion. Diese Hilfsmittel dienen prim&auml;r zur Stabilisierung, Entlastung, Ruhigstellung, F&uuml;hrung oder Korrektur der Gelenke. Orthesen k&ouml;nnen durch die Entlastung des betroffenen K&ouml;rperteils die Heilung unterst&uuml;tzen. Dies gilt vor allem auch nach (Sport-)Verletzungen an B&auml;ndern, Gelenken oder Knochen.<br />\n	Der prophylaktische Einsatz von Orthesen, speziell bei bewegungsintensiven Sportarten wie Fu&szlig;ball, Tennis, Squash, Ski Alpin, Eishockey und in der Leichtathletik f&uuml;hrt&nbsp; zu einer deutlichen Verringerung von Band- und Gelenkverletzungen.<br />\n	W&auml;hrend noch in den 70er Jahren, Orthesen haupts&auml;chlich aus Metall und Leder konstruiert wurden, so haben sich speziell in den letzten zwanzig Jahren neue Werkstoffe wie Silikon, Carbon, Polypropylen und Titan im Orthesenbau durchgesetzt, die zu einer enormen Gewichtsreduzierung gef&uuml;hrt haben und somit ganz neue Funktionen und Eigenschaften der Hilfsmittel erm&ouml;glicht haben.</p>\n");
INSERT INTO languagetexts VALUES("108","1","","<h3>\n	Orthesen</h3>\n");
INSERT INTO languagetexts VALUES("109","1","","<p>\n	Wir bauen keine Sitzschalen im 08/15 Baukastensystem. Jede von uns gefertigte Sitzschale ist ein Unikat und individuell auf die Bed&uuml;rfnisse und das Krankheitsbild des zu versorgenden Patienten abgestimmt.<br />\n	Sitzschalen unterst&uuml;tzen die anatomische Sitzhaltung, sie kompensieren Sitzfehlstellungen und/oder &ndash;instabilit&auml;ten, sie geben Halt, aber lassen dem Patienten so viel Freiheit seine Umwelt sensorisch zu erfassen.</p>\n<p>\n	Deshalb gilt gerade beim Sitzschalenbau der Grundsatz, &bdquo;so wenig wie m&ouml;glich, so viel wie n&ouml;tig&ldquo;.</p>\n<p>\n	Wir fertigen deshalb Sitzschalen f&uuml;r unsere Patienten nach einem individuellen Vakuumabdruck. Der Korpus wird aus einer auch nachtr&auml;glich verstellbaren Aluminiumkonstruktion gefertigt, um auch sp&auml;ter Wachstumssch&uuml;be und Behandlungsfortschritte zeitnah in unserer Werkstatt f&uuml;r Reha-Sonderbau, ausgleichen zu k&ouml;nnen. Die Weichbettung des K&ouml;rpers erfolgt z. T. im Mehrschichtverfahren mit&nbsp; sogenannten &bdquo;intelligenten&ldquo; Kunststoffen, somit k&ouml;nnen auch sensible Bereiche vor Druckstellen gesch&uuml;tzt werden. Die Sitzbez&uuml;ge aus fr&ouml;hlichen Mustern und bunten Farben runden das Bild einer fachlich professionellen Versorgung ab, die bei Kindern, Eltern und Therapeuten gleicherma&szlig;en auf hohe Akzeptanz und Anerkennung st&ouml;&szlig;t.<br />\n	<br />\n	Der Sitzschalenbau ist die Arbeit von Spezialisten, denn bereits wenige Millimeter k&ouml;nnen entscheidend sein f&uuml;r Therapieerfolg oder Misserfolg. Die passgenaue Stabilisierung von Becken und Rumpf, sowie die Fixierung der Beine, f&uuml;hren meist zu einer gesteigerten Kontrolle von Kopf und Rumpf.<br />\n	Durch die neu gewonnene physiologische Sitzposition erreichen wir eine Erh&ouml;hung der Vitalfunktionen in denen Atmung und Verdauung erleichtert und die sensomotorischen F&auml;higkeiten unterst&uuml;tzt werden.</p>\n<p>\n	Was vorher oft f&uuml;r unm&ouml;glich gehalten wurde, wird nach einer Sitzschalenversorgung und dem entsprechenden therapeutischen Training oft zur Realit&auml;t:</p>\n<ul>\n	<li>\n		die Bedienung von manuellen und elektrischen Rollst&uuml;hlen</li>\n	<li>\n		die Benutzung von Essbestecken</li>\n	<li>\n		die Bedienung von Kommunikationshilfen</li>\n	<li>\n		eine Erh&ouml;hung der Kontrolle von Mimik, Gestik und Sprache</li>\n</ul>\n<p>\n	Die von uns gefertigten Sitzschalen sind mit allen handels&uuml;blichen Untergestellen adaptierbar.</p>\n");
INSERT INTO languagetexts VALUES("110","1","","<h3>\n	Sitzschalen</h3>\n");
INSERT INTO languagetexts VALUES("111","1","","<p style=\"text-align: justify;\">\n	Wir bauen keine Sitzschalen im 08/15 Baukastensystem. Jede von uns gefertigte Sitzschale ist ein Unikat und individuell auf die Bed&uuml;rfnisse und das Krankheitsbild des zu versorgenden Patienten abgestimmt.<br />\n	Sitzschalen unterst&uuml;tzen die anatomische Sitzhaltung, sie kompensieren Sitzfehlstellungen und/oder &ndash;instabilit&auml;ten, sie geben Halt, aber lassen dem Patienten so viel Freiheit seine Umwelt sensorisch zu erfassen.</p>\n<p style=\"text-align: justify;\">\n	Deshalb gilt gerade beim Sitzschalenbau der Grundsatz, &bdquo;so wenig wie m&ouml;glich, so viel wie n&ouml;tig&ldquo;.</p>\n<p style=\"text-align: justify;\">\n	Wir fertigen deshalb Sitzschalen f&uuml;r unsere Patienten nach einem individuellen Vakuumabdruck. Der Korpus wird aus einer auch nachtr&auml;glich verstellbaren Aluminiumkonstruktion gefertigt, um auch sp&auml;ter Wachstumssch&uuml;be und Behandlungsfortschritte zeitnah in unserer Werkstatt f&uuml;r Reha-Sonderbau, ausgleichen zu k&ouml;nnen. Die Weichbettung des K&ouml;rpers erfolgt z. T. im Mehrschichtverfahren mit&nbsp; sogenannten &bdquo;intelligenten&ldquo; Kunststoffen, somit k&ouml;nnen auch sensible Bereiche vor Druckstellen gesch&uuml;tzt werden. Die Sitzbez&uuml;ge aus fr&ouml;hlichen Mustern und bunten Farben runden das Bild einer fachlich professionellen Versorgung ab, die bei Kindern, Eltern und Therapeuten gleicherma&szlig;en auf hohe Akzeptanz und Anerkennung st&ouml;&szlig;t.<br />\n	<br />\n	Der Sitzschalenbau ist die Arbeit von Spezialisten, denn bereits wenige Millimeter k&ouml;nnen entscheidend sein f&uuml;r Therapieerfolg oder Misserfolg. Die passgenaue Stabilisierung von Becken und Rumpf, sowie die Fixierung der Beine, f&uuml;hren meist zu einer gesteigerten Kontrolle von Kopf und Rumpf.<br />\n	Durch die neu gewonnene physiologische Sitzposition erreichen wir eine Erh&ouml;hung der Vitalfunktionen in denen Atmung und Verdauung erleichtert und die sensomotorischen F&auml;higkeiten unterst&uuml;tzt werden.</p>\n<p style=\"text-align: justify;\">\n	Was vorher oft f&uuml;r unm&ouml;glich gehalten wurde, wird nach einer Sitzschalenversorgung und dem entsprechenden therapeutischen Training oft zur Realit&auml;t:</p>\n<ul>\n	<li style=\"text-align: justify;\">\n		die Bedienung von manuellen und elektrischen Rollst&uuml;hlen</li>\n	<li style=\"text-align: justify;\">\n		die Benutzung von Essbestecken</li>\n	<li style=\"text-align: justify;\">\n		die Bedienung von Kommunikationshilfen</li>\n	<li style=\"text-align: justify;\">\n		eine Erh&ouml;hung der Kontrolle von Mimik, Gestik und Sprache<span id=\"cke_bm_99E\" style=\"display: none;\">&nbsp;</span></li>\n</ul>\n<p style=\"text-align: justify;\">\n	Die von uns gefertigten Sitzschalen sind mit allen handels&uuml;blichen Untergestellen adaptierbar.</p>\n");
INSERT INTO languagetexts VALUES("112","1","","<h3>\n	Orthesen</h3>\n");
INSERT INTO languagetexts VALUES("113","1","","<p style=\"text-align: justify;\">\n	<strong>untere Extremit&auml;t</strong></p>\n<p style=\"text-align: justify;\">\n	<strong>Sprunggelenksorthese</strong><br />\n	Diese Orthese, wird aus sehr leichtem und d&uuml;nnem ThermoLyn&reg; Polypropylen Copolymer, im Unterdruckverfahren gefertigt. Der Einsatzbereich dieser Orthese sind starke Knickf&uuml;&szlig;e sowie Klump- und Sichelf&uuml;&szlig;e mit einer sehr geringen Spitzfu&szlig;beteiligung. Die kn&ouml;chel&uuml;bergreifende Ausf&uuml;hrung erm&ouml;glicht eine sehr gute Korrektur des Fu&szlig;es sowie des unteren Sprunggelenks und f&uuml;hrt zu einer sehr guten Stabilisierung des gesamten Kn&ouml;chelbereichs.<br />\n	<br />\n	<strong>Unterschenkelorthesen</strong><br />\n	Diese ebenfalls aus Kunststoff oder Carbon gefertigten Orthesen finden ihr Einsatzgebiet dann, wenn die Spitzfu&szlig;komponente in die Korrektur der Fu&szlig;fehlstellungen mit einbezogen werden soll. Um eine langfristige Korrektur des Spitzfu&szlig;es zu erreichen muss bei diesen Orthesen eine Funktionseinschr&auml;nkung des Sprunggelenkes vorgenommen werden. Die Plantarflexion (Beugung) des Sprunggelenkes wird eingeschr&auml;nkt, die Dorsalextension (Streckung) je nach motorischer Einschr&auml;nkung freigegeben, um somit einen ann&auml;hernd physiologischen Bewegungsablauf zu erm&ouml;glichen.<br />\n	<br />\n	<strong>Oberschenkelorthesen</strong><br />\n	Oberschenkelorthesen finden Anwendung bei H&uuml;ftgelenkserkrankungen&nbsp; (H&uuml;ftdysplasie oder H&uuml;ftkopfnekrose) bei denen eine Entlastung des H&uuml;ftgelenks/H&uuml;ftkopfes unbedingt erforderlich ist, oder Erkrankungen des Kniegelenkes bei denen es auf die Achsenf&uuml;hrung und Stabilit&auml;tssicherung ankommt. Diese Orthesen werden hierbei mit Gelenken versehen, die aber je nach Art der Erkrankung mittels eines Sperrmechanismus versteift werden k&ouml;nnen.<br />\n	<br />\n	<strong>Reziproke Beckenorthesen</strong><br />\n	Diese becken&uuml;bergreifenden Orthesen mit Oberschenkel- und Unterschenkelf&uuml;hrung erm&ouml;glichen mittels eines speziellen Mechanismus vielen querschnittgel&auml;hmten Kindern einen aufrechten Gang zu erlernen.<br />\n	Die in der Orthese verbauten Gelenke sind gegeneinander frei beweglich und unter Verwendung einer reziproken Mechanik miteinander verbunden.<br />\n	&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<strong>obere Extremit&auml;t</strong></p>\n<p style=\"text-align: justify;\">\n	<strong>Unterarm-Mittelhandorthese mit oder ohne Fingerf&uuml;hrung</strong><br />\n	Diese aus weich gepolsterten Kunststoff oder auch aus Silikon gefertigte Orthese fixiert das Handgelenk in Funktionsstellung und erm&ouml;glicht dadurch aktives hantieren.<br />\n	Mit dem Einschluss der Finger erreichen wir einen positiven Einfluss auf den Muskeltonus und verringern damit die krampfende Fingerbeugung.<br />\n	<br />\n	<strong>Unterarm-Hand-Quengelorthese</strong><br />\n	Durch die Verwendung von statischen und dynamischen Quengelgelenken ist es m&ouml;glich, das Handgelenk in verschiedenen Stellungen zu fixieren. Durch den sich stetig in der St&auml;rke ver&auml;nderbaren Dauerzug werden Muskeln gedehnt. Dadurch erreichen wir eine deutliche Erh&ouml;hung der Beweglichkeit im Handgelenk, eine Zunahme der Durchblutung und einen Aufbau des Muskelgewebes.</p>\n<p style=\"text-align: justify;\">\n	<br />\n	<strong>Rumpforthesen</strong></p>\n<p style=\"text-align: justify;\">\n	<strong>Cheneau-Korsett</strong><br />\n	Das Cheneau-Korsett ist ein aktives Inspirations-Derotations-Korsett das bei jungen Patienten in der Wachstumsphase eingesetzt wird, die an einer progredienten idiopathischen Skoliose leiden. Das Korsett wird aus einem Polyethylen, nach Gipsabdruck hergestellt. Durch den asymmetrischen Bau des Cheneau-Korsetts, mit Druckpunkten (Pelotten) und gegen&uuml;berliegenden Freir&auml;umen (Expansionszonen) wird eine dreidimensionale Derotation der Wirbel vorgenommen. Durch langj&auml;hrige Erfahrung im Bau von Cheneau-Korsetten und kontinuierliche Schulungen k&ouml;nnen wir heute auf eine hervorragende Erfolgsquote, bei der Behandlung einer thorakolumbalen Skoliose, verweisen.<br />\n	Ein Cheneau-Korsett sollte ausschlie&szlig;lich zur K&ouml;rperhygiene abgenommen und bis zum Abschluss der Wachstumsphase getragen werden.<br />\n	Informieren Sie sich, die Techniker unserer orthop&auml;dischen Werkst&auml;tte stehen Ihnen gerne beratend zur Seite.</p>\n");
INSERT INTO languagetexts VALUES("114","1","","<h3>\n	Rollst&uuml;hle</h3>\n");
INSERT INTO languagetexts VALUES("115","1","","<p style=\"text-align: justify;\">\n	<strong>Aktivrollst&uuml;hle/Adaptivrollst&uuml;hle</strong></p>\n<p style=\"text-align: justify;\">\n	<strong>Freizeit, Schule oder Sport&hellip; f&uuml;r jede Aktivit&auml;t das richtige Modell</strong><br />\n	So verschieden unsere jungen Patienten sind, so unterschiedlich sind auch ihre Handicaps. Die Rollstuhlversorgung eines Kindes kann und darf sich heute nicht nach Vorgaben wie eventuellen Lagerbest&auml;nden der Kostentr&auml;ger oder einem m&ouml;glichst g&uuml;nstigen Preis richten, sondern muss individuell auf die Bed&uuml;rfnisse des jeweiligen Kindes ausgerichtet sein wie z. B. Art und schwere der Behinderung, Aktivit&auml;tsgrad, Einsatzort, Transportm&ouml;glichkeit, usw.<br />\n	Des Weiteren stellt sich nat&uuml;rlich auch die Frage, ist das Kind in der Lage den Rollstuhl selbst zu bedienen oder sollte dies &uuml;ber eine m&ouml;gliche Begleitperson geschehen.<br />\n	Wir unterscheiden heute bei manuellen Rollst&uuml;hlen zwischen Faltrollst&uuml;hlen und Rollst&uuml;hlen mit einem starren Rahmen. Rollst&uuml;hle sind heute wahre Verwandlungsk&uuml;nstler, sie unterst&uuml;tzen die Eigenaktivit&auml;t des Kindes durch ihre mannigfaltigen Einstellm&ouml;glichkeiten. So ist am modernen Rollstuhl heute die Stellung der Antriebsr&auml;der im Verh&auml;ltnis zur Sitzposition ebenso einstellbar, wie die Sitzneigung und die Schwerpunktverteilung innerhalb der Rahmengeometrie.<br />\n	Das Zubeh&ouml;rprogramm f&uuml;r diese Rollst&uuml;hle ist mittlerweile so vielf&auml;ltig, dass vom einfachen Weichschaum-Sitzkissen bis hin zum individuell gefertigten Sitzsystem alles als Sonderausstattung erh&auml;ltlich ist.<br />\n	&nbsp;</p>\n<p style=\"text-align: justify;\">\n	<strong>Elektrorollst&uuml;hle</strong></p>\n<p style=\"text-align: justify;\">\n	<strong>Grenzen &uuml;berwinden, Freir&auml;ume erobern, Selbst&auml;ndigkeit entwickeln</strong><br />\n	Auch bei Elektrorollst&uuml;hlen sind die Bed&uuml;rfnisse und der Einsatzzweck des Hilfsmittels die Grundvoraussetzungen um Aufbau und Ausstattung bestimmen zu k&ouml;nnen. Sollte die Eigenaktivit&auml;t eines Kindes zur Benutzung eines manuellen Rollstuhles nicht ausreichen, so kann ein Elektrorollstuhl f&uuml;r dieses Kind eine neue Dimension der Freiheit und Selbst&auml;ndigkeit bedeuten. Die heute mit Joystick gesteuerten E-Rollst&uuml;hle sind zwar in erster Linie immer noch Fahrger&auml;te, mit einer H&ouml;chstgeschwindigkeit von bis zu 15 km/h und einer Reichweite bis zu 35 Kilometern, aber sie k&ouml;nnen falls ben&ouml;tigt viel mehr. Die elektrische Einstellbarkeit der Sitzfunktion und die Adaptierbarkeit mit einer Sitzschale, sind wohl die am wenigsten spektakul&auml;ren technischen Highlights. Anders sieht es da bei den alternativen Steuerm&ouml;glichkeiten des Elektrorollstuhles aus, die vom bereits erw&auml;hnten Joystick bis hin zur Mundsteuerung m&ouml;glich sind.<br />\n	Zur absoluten Spitzentechnology geh&ouml;rt aber eindeutig die Umfeldsteuerung, mit ihr ist es m&ouml;glich Ger&auml;te wie Computer, Fernseher, Handy, HiFi-Anlage, automatisches &ouml;ffnen und schlie&szlig;en von T&uuml;ren, K&uuml;hlschrank usw., zu steuern und so weitestgehend ein Leben zu erlernen, das Grenzen &uuml;berwindet, Freir&auml;ume erobert und an Selbst&auml;ndigkeit fast keine W&uuml;nsche offen l&auml;sst.<br />\n	Informieren Sie sich, die Spezialisten aus unserer Reha-Fachabteilung stehen ihnen gerne beratend zur Seite.<br />\n	&nbsp;</p>\n");
INSERT INTO languagetexts VALUES("116","1","","<h3>\n	Reha-Buggys und Reha-Wagen</h3>\n");
INSERT INTO languagetexts VALUES("117","1","","<p style=\"text-align: justify;\">\n	<strong>Optimale Positionierung auch f&uuml;r die Kleinsten</strong><br />\n	Auch f&uuml;r unsere kleinsten Patienten, f&uuml;hren wir Hilfsmittel, die ihnen die Teilnahme am Alltags-/Familienleben erm&ouml;glichen. Die wie herk&ouml;mmliche Kinderwagen aussehenden Reha-Buggys haben eine Sitz- und R&uuml;ckenbespannung aus Nylon, einen Beckengurt zur Fixierung und sind f&uuml;r Kinder ab ca. einem halben Jahr, bis fast zum Erwachsenalter einsetzbar.<br />\n	Reha-Wagen sind dem Krankheitsbild entsprechend wesentlich flexibler einsetzbar. Sie sind mit einer dem Alter und der Gr&ouml;&szlig;e des Kindes aufsetzbaren Sitzeinheit ausstattbar. Ihr Einsatzgebiet reicht z.B. von Entwicklungsst&ouml;rungen, verschiedene Formen des Sch&auml;del-Hirn-Traumas, diverse Arten der Muskeldystrophie, allgemein Gehunf&auml;higkeit (z.B. Spina bifida) usw.<br />\n	Die Ausstattung eines Reha-Kinderwagens mit Sitz- und R&uuml;ckenkantelung, wahlweise starren oder beweglichen Lenkr&auml;dern und einer mit einem Handgriff abnehmbaren Sitzeinheit geh&ouml;ren heute bereits zum Standard.<br />\n	Um eine st&auml;ndige Beobachtung des Kindes zu sichern, kann die Sitzeinheit entgegen der Fahrtrichtung angebracht werden. Zur optimalen Lagerung des Kindes stehen Kopfst&uuml;tzen, Thorax- und/oder Spreizpelotten zur Verf&uuml;gung. Die Sitzstellung ist leicht vom Schiebegriff aus, von aktiver Haltung bis hin zur Entlastungsstellung, einstellbar.</p>\n");
INSERT INTO languagetexts VALUES("118","1","","<h3>\n	Stehger&auml;te</h3>\n");
INSERT INTO languagetexts VALUES("119","1","","<p style=\"text-align: justify;\">\n	<strong>Im aufrechten Stand auf Entdeckungstour</strong><br />\n	Wenn Kleinkinder in einem Alter von 10 bis 12 Monaten beginnen erstmals aufrecht zu stehen, ist das ein wundersch&ouml;ner Augenblick f&uuml;r die Eltern, aber noch wichtiger, es ist ein immenser Fortschritt im Entwicklungsstadium eines jungen Menschen. Die Anregung des Knochenwachstums, die Weiterentwicklung von Gelenken und Muskulatur, die F&ouml;rderung der kognitiven Wahrnehmung und die gesunde Entwicklung von Herz, Lunge und Verdauung sind die Folgen dieses Prozesses. F&uuml;r behinderte Kinder, die h&auml;ufig die aufrechte Position nicht erreichen oder halten k&ouml;nnen, gelten dieselben Prinzipien, d.h. man sollte in R&uuml;cksprache mit Arzt und Therapeut so fr&uuml;h wie m&ouml;glich damit beginnen, die bestehenden Defizite mit Hilfe technischer Hilfsmittel wenigstens teilweise zu kompensieren.</p>\n<p style=\"text-align: justify;\">\n	<strong>Hierbei werden wir von vier Arten Stehger&auml;ten unterst&uuml;tzt:</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		fahrbare Stehst&auml;nder</li>\n	<li style=\"text-align: justify;\">\n		vertikale Stehst&auml;nder</li>\n	<li style=\"text-align: justify;\">\n		Bauchschr&auml;gliegebretter</li>\n	<li style=\"text-align: justify;\">\n		R&uuml;ckenschr&auml;gliegebretter</li>\n</ul>\n<p style=\"text-align: justify;\">\n	<br />\n	<strong>Fahrbare Stehst&auml;nder</strong> &auml;hneln einem Rollstuhl mit zwei gro&szlig;en Antriebsr&auml;dern hinten, in dem das Kind sich stehend fortbewegen kann.</p>\n<p style=\"text-align: justify;\">\n	<strong>Vertikale Stehst&auml;nder</strong> sind ihrem Namen entsprechend vertikal aufgebaut und in Vor- oder R&uuml;cklage 30&deg; einstellbar.</p>\n<p style=\"text-align: justify;\">\n	<strong>Bauchschr&auml;gliegebrett.</strong> Hier wird das Kind in der Bauchlage positioniert und fixiert, um es dann kontinuierlich steigernd bis in den aufrechten Stand zu bringen.</p>\n<p style=\"text-align: justify;\">\n	<strong>R&uuml;ckenschr&auml;gliegebrett. </strong>Hier wird das Kind in der R&uuml;ckenlage positioniert und fixiert, um es dann kontinuierlich steigernd bis in den aufrechten Stand zu bringen.</p>\n<p style=\"text-align: justify;\">\n	Der dauerhafte Einsatz von Stehger&auml;ten vermindert Spastiken der Beinmuskulatur, beugt Kontrakturen vor, stabilisiert den Kreislauf und unterst&uuml;tzt die Verdauung des kleinen Patienten.<br />\n	&nbsp;</p>\n");
INSERT INTO languagetexts VALUES("120","1","","<h3>\n	Stoma</h3>\n");
INSERT INTO languagetexts VALUES("121","1","","<p style=\"text-align: justify;\">\n	Wir beraten, versorgen und betreuen Patienten, die vor dem Hintergrund unterschiedlichster Krankheitsbilder, ein Entero- oder Urostoma erhalten haben. Ca. 150.000 Menschen leben in Deutschland mit einem k&uuml;nstlichen Darm- oder Harnausgang, ohne dass dies von au&szlig;en auch nur ansatzweise erkennbar w&auml;re. Ob im B&uuml;ro, beim Sport oder am Strand, Entero- oder Urostoma-Patienten k&ouml;nnen heute dank modernster Versorgungsmaterialien ein weitestgehend unabh&auml;ngiges und vor allem nach au&szlig;en hin, diskretes und unbeschwertes Leben f&uuml;hren.</p>\n<p style=\"text-align: justify;\">\n	<strong>Unser Leistungsspektrum:</strong><br />\n	Auf Ihren Wunsch kontaktieren wir Sie bereits erstmals in der Klinik, kurz vor der Entlassung.<br />\n	Wir leiten Sie und/oder Ihre Angeh&ouml;rigen in Ihrem h&auml;uslichen Umfeld, in der Benutzung und Handhabung der Versorgungsmaterialien, an.<br />\n	Wir k&uuml;mmern uns um eine regelm&auml;&szlig;ige Nachsorge und die Bereitstellung der notwendigen Hilfsmittel.<br />\n	Von der Rezeptanforderung bei Ihrem Arzt, bis hin zur Erstellung des Kosten&uuml;bernahmeantrages bei Ihrer Krankenkasse, erledigen wir f&uuml;r Sie alles.<br />\n	Wir schulen und trainieren Enterostoma-Patienten bei der Irrigation.<br />\n	Wir f&uuml;hren f&uuml;r Sie eine l&uuml;ckenlose Versorgungsdokumentation, zur Vorlage bei &Auml;rzten, Kliniken oder Krankentr&auml;gern, durch.<br />\n	Unsere Hausbesuche sind selbstverst&auml;ndlich kostenlos.</p>\n<p style=\"text-align: justify;\">\n	<strong>Wir bieten Informationen und Beratung:</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		bei Fragen zum Hautschutz, um das Stoma</li>\n	<li style=\"text-align: justify;\">\n		zur Vermeidung von Komplikationen</li>\n	<li style=\"text-align: justify;\">\n		zum Schutz der Intimsph&auml;re</li>\n	<li style=\"text-align: justify;\">\n		bei Fragen zu Sexualit&auml;t und Schwangerschaft, mit Stoma</li>\n	<li style=\"text-align: justify;\">\n		bei Wiederaufnahme der Arbeit</li>\n	<li style=\"text-align: justify;\">\n		Leben mit Stoma in Freizeit, Beruf, Urlaub und Sport</li>\n</ul>\n");
INSERT INTO languagetexts VALUES("122","1","","<h3>\n	Inkontinenz</h3>\n");
INSERT INTO languagetexts VALUES("123","1","","<p style=\"text-align: justify;\">\n	Harn- oder Stuhlinkontinenz ist eine Funktionsst&ouml;rung von Blase oder Darm auf deren Drang zur Entleerung der Betroffene keinen Einfluss mehr hat. Diese Beschwerden k&ouml;nnen geschlechtsunabh&auml;ngig, Menschen verschiedenen Alters betreffen und das bedeutet dann zwangsl&auml;ufig, einen massiven Verlust von Lebensqualit&auml;t und Unabh&auml;ngigkeit.</p>\n<p style=\"text-align: justify;\">\n	Wir unterscheiden zehn Formen von Harn- und zwei Arten von Stuhlinkontinenz</p>\n<p style=\"text-align: justify;\">\n	<strong>Harninkontinenz</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		Belastungsinkontinenz auch Stressinkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Dranginkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Mischinkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Nachtinkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Kontinuierliche Inkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Neurogene Inkontinenz</li>\n	<li style=\"text-align: justify;\">\n		&Uuml;berlaufinkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Fistelinkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Undefinierte Inkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Andere Inkontinenzarten</li>\n</ul>\n<p style=\"text-align: justify;\">\n	<br />\n	<strong>Stuhlinkontinenz</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		Dranginkontinenz</li>\n	<li style=\"text-align: justify;\">\n		Passive Inkontinenz</li>\n</ul>\n<p style=\"text-align: justify;\">\n	<br />\n	Auch hier kann den meisten Betroffenen mit Hilfe modernster Hilfsmittel soweit geholfen werden, dass Sie ein Schutzgef&uuml;hl daf&uuml;r entwickeln, dass auch in der &Ouml;ffentlichkeit nichts von den vorhandenen Beschwerden erkennbar ist.</p>\n<p style=\"text-align: justify;\">\n	<strong>Unser Leistungsspektrum:</strong></p>\n<ul>\n	<li style=\"text-align: justify;\">\n		Wir helfen Ihnen bei der Bestimmung der Inkontinenzart</li>\n	<li style=\"text-align: justify;\">\n		Wir informieren Sie &uuml;ber m&ouml;gliche Behandlungsmethoden und leiten Sie ggf. weiter an andere Behandlungsinstanzen, wie z.B. Urologen, Chirurgen oder auch Physiotherapeuten, f&uuml;r eine m&ouml;gliche Beckenbodengymnastik.</li>\n	<li style=\"text-align: justify;\">\n		Wir beraten Sie diskret &uuml;ber notwendige Hilfsmittel und &uuml;bergeben Ihnen Gratismuster, zum Testen.</li>\n	<li style=\"text-align: justify;\">\n		Wir beraten und betreuen Patienten mit Pouchanlagen oder ISK (=intermittierender Katheterismus)</li>\n	<li style=\"text-align: justify;\">\n		Wir halten ein entsprechendes Lager vor, damit Sie w&auml;hrend unserer Gesch&auml;ftszeiten stets Zugriff auf die f&uuml;r Sie notwendigen Hilfsmittel haben.</li>\n	<li style=\"text-align: justify;\">\n		Wir fordern bei Ihrem Hausarzt die entsprechenden Verordnungen, nach Vorgabe Ihrer Krankenkasse, an.<br />\n		&nbsp;</li>\n</ul>\n");
INSERT INTO languagetexts VALUES("124","1","","<h3>\n	Wundversorgung</h3>\n");
INSERT INTO languagetexts VALUES("125","1","","<p style=\"text-align: justify;\">\n	Chronische Wunden (&bdquo;Ulcus&ldquo;) sind eine massive und schwerwiegende Komplikationen einer vorhandenen Systemerkrankung (z.B. Diabetes).&nbsp; Dass solche Wunden nicht heilbar sind, ist eine weit verbreitete,&nbsp; jedoch absolut falsche Einsch&auml;tzung. Das gezielte Zusammenwirken von Arzt (Diabetologe, Gef&auml;&szlig;chirurg, Radiologe usw.) und entsprechend geschulten Wundexperten kann in einem hohen Prozentsatz zur Abheilung zum Teil schon jahrelang bestehender Wunden f&uuml;hren.<br />\n	<br />\n	Unsere Wundexperten sind nach den Richtlinien der ICW e.V. zertifizierte Fachkr&auml;fte und darin geschult chronische Wunden wie:</p>\n<ul>\n	<li style=\"text-align: justify;\">\n		Ulcus cruris</li>\n	<li style=\"text-align: justify;\">\n		Dekubitalgeschw&uuml;re</li>\n	<li style=\"text-align: justify;\">\n		diabetisch bedingte Wunden</li>\n	<li style=\"text-align: justify;\">\n		Nahtinsuffizienzen</li>\n	<li style=\"text-align: justify;\">\n		onkologische Wunden</li>\n	<li style=\"text-align: justify;\">\n		Fisteln</li>\n	<li style=\"text-align: justify;\">\n		Verbrennungen 1. und 2. Grades</li>\n</ul>\n<p style=\"text-align: justify;\">\n	nach Einverst&auml;ndnis und ggf. Weisung des behandelnden Arztes, zu behandeln.<br />\n	<br />\n	Wichtig ist es die Lebensqualit&auml;t von Menschen mit chronischen Wunden zu erh&ouml;hen und ihnen ein schmerzfreies Leben zu erm&ouml;glichen.<br />\n	Eine leichte Anwendbarkeit und eine hohe Patientencompliance sind die Voraussetzung f&uuml;r gute Wundversorgung.<br />\n	Moderne Wundverb&auml;nde lassen sich leicht applizieren, sind flexibel und k&ouml;nnen aufgrund der hohen Exsudataufnahmekapazit&auml;t lange auf der Wunde belassen werden. So wird die Wundheilung optimal unterst&uuml;tzt und dem Patienten eine hohe Sicherheit geboten.<br />\n	Wunden stellen uns heute vor unterschiedliche Herausforderungen, so gibt es nicht nur verschiedene Verbandstechnologien f&uuml;r die einzelnen Wundheilungsphasen (von der Nekrose bis zur Epithelisierung), sondern auch modernste Wundverb&auml;nde mit aktiven Substanzen wie z. B. Silber f&uuml;r bakteriell kontaminierte Wunden oder Ibuprofen f&uuml;r schmerzende Wunden.</p>\n<p style=\"text-align: justify;\">\n	Wir schulen Angeh&ouml;rige und Pflegekr&auml;fte, &uuml;ber die Anwendung modernster Methoden der Wundbehandlung.<br />\n	Jede Wunde wird &uuml;ber die Dauer der Behandlung genauestens dokumentiert, fotografiert und vermessen, um deren Behandlungsfortschritt auch gegen&uuml;ber dem zust&auml;ndigen Kostentr&auml;ger belegen zu k&ouml;nnen.<br />\n	&nbsp;</p>\n");
INSERT INTO languagetexts VALUES("126","1","","<h3>\n	Brustprothetik</h3>\n");
INSERT INTO languagetexts VALUES("127","1","","<p>\n	J&auml;hrlich erkranken ca. 72.000 Frauen an Brustkrebs, wobei zu beobachten ist, dass leider immer mehr j&uuml;ngere Frauen mit dieser Diagnose konfrontiert werden.<br />\n	&quot;Brustkrebs&quot; eine Diagnose die f&uuml;r Frauen gleichzustellen ist mit Angst, Resignation und dem Gef&uuml;hl den Boden unter den F&uuml;&szlig;en zu verlieren.<br />\n	Doch um diese Krankheit zu besiegen braucht man ein positives Lebensgef&uuml;hl - wir wollen Sie dabei unterst&uuml;tzen.<br />\n	Vertrauen Sie unseren speziell geschulten Mitarbeiterinnen, sie werden Ihnen auf Wunsch bereits in der Klinik zur lymphologischen Kompressionsbehandlung oder prothetischen Erstversorgung, beratend zur Seite stehen.</p>\n<p>\n	Wir geben Ihnen Sicherheit mit Spezial-BHs, passenden Dessous, Epithesen und Bademoden, damit Sie Ihren Alltag wieder ohne Einschr&auml;nkungen erleben k&ouml;nnen.</p>\n<p>\n	<strong>Unser Leistungsspektrum - f&uuml;r mehr Lebensqualit&auml;t</strong></p>\n<ul>\n	<li>\n		lymphologische Kompressionsbehandlung und prothetische Erstversorgung schon in der Klinik</li>\n	<li>\n		diskrete und kompetente Beratung - von Frau zu Frau</li>\n	<li>\n		langj&auml;hrige, hochqualifizierte Mitarbeiterinnen</li>\n	<li>\n		Versorgung mit Brustprothesen, Haftepithesen, Teilprothesen, Sport- und Badeepithesen</li>\n	<li>\n		topmodische Dessous und Bademoden, in allen Gr&ouml;&szlig;en</li>\n	<li>\n		eigene Schneiderin zur individuellen Anpassung</li>\n	<li>\n		umfangreiches Angebot an Accessoires</li>\n	<li>\n		kontinuierliche Schulungen sorgen daf&uuml;r, dass unsere Patientinnen immer dem Stand der Technik entsprechend versorgt werden</li>\n	<li>\n		Rezeptanforderung bei Ihrem Arzt</li>\n	<li>\n		Abkl&auml;rung der Kosten&uuml;bernahme bei Ihrer Krankenkasse</li>\n	<li>\n		kostenlose Hausbesuche</li>\n</ul>\n<p>\n	<br />\n	Die Zusammenarbeit mit den weltweit f&uuml;hrenden Herstellern auf dem Gebiet der Brustprothetik, gepaart mit der fachlichen Kompetenz unserer Mitarbeiterinnen sorgt daf&uuml;r, dass Lebensqualit&auml;t, Lebensintensit&auml;t und Lebensfreude bei Ihnen wieder zum Alltag geh&ouml;ren.</p>\n");
INSERT INTO languagetexts VALUES("128","1","","blank");
INSERT INTO languagetexts VALUES("129","1","","<p>\n	Florian Smola</p>\n");
INSERT INTO languagetexts VALUES("130","1","","<p>\n	+49 (0) 851 93143-17</p>\n");
INSERT INTO languagetexts VALUES("131","1","","<p>\n	<a href=\"mailto:blank\">f.smola@sanitaetshaus-fuerst.de</a></p>\n");
INSERT INTO languagetexts VALUES("132","1","","blank");
INSERT INTO languagetexts VALUES("133","1","","<p>\n	Wolfgang Desch</p>\n");
INSERT INTO languagetexts VALUES("134","1","","<p>\n	+49 (0) 851 93143-17</p>\n");
INSERT INTO languagetexts VALUES("135","1","","<p>\n	<a href=\"mailto:blank\">w.desch@sanitaetshaus-fuerst.de</a></p>\n");
INSERT INTO languagetexts VALUES("136","1","","blank");
INSERT INTO languagetexts VALUES("137","1","","blank");
INSERT INTO languagetexts VALUES("138","1","","blank");
INSERT INTO languagetexts VALUES("139","1","","blank");
INSERT INTO languagetexts VALUES("140","1","","blank");
INSERT INTO languagetexts VALUES("141","1","","blank");
INSERT INTO languagetexts VALUES("142","1","","blank");
INSERT INTO languagetexts VALUES("143","1","","blank");
INSERT INTO languagetexts VALUES("144","1","","blank");
INSERT INTO languagetexts VALUES("145","1","","blank");
INSERT INTO languagetexts VALUES("146","1","","blank");
INSERT INTO languagetexts VALUES("147","1","","blank");
INSERT INTO languagetexts VALUES("148","1","","blank");
INSERT INTO languagetexts VALUES("149","1","","blank");
INSERT INTO languagetexts VALUES("150","1","","blank");
INSERT INTO languagetexts VALUES("151","1","","blank");
INSERT INTO languagetexts VALUES("152","1","","blank");
INSERT INTO languagetexts VALUES("153","1","","blank");
INSERT INTO languagetexts VALUES("154","1","","blank");
INSERT INTO languagetexts VALUES("155","1","","<p>\n	blank2</p>\n");
INSERT INTO languagetexts VALUES("156","1","","blank");
INSERT INTO languagetexts VALUES("157","1","","blank");



DROP TABLE IF EXISTS siteitems;

CREATE TABLE `siteitems` (
  `site_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  UNIQUE KEY `site_pos` (`site_id`,`position`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO siteitems VALUES("11","30","1");
INSERT INTO siteitems VALUES("11","31","2");
INSERT INTO siteitems VALUES("11","27","3");
INSERT INTO siteitems VALUES("11","32","4");
INSERT INTO siteitems VALUES("11","33","5");
INSERT INTO siteitems VALUES("11","34","6");
INSERT INTO siteitems VALUES("11","35","7");
INSERT INTO siteitems VALUES("11","36","8");
INSERT INTO siteitems VALUES("11","107","9");
INSERT INTO siteitems VALUES("11","108","10");
INSERT INTO siteitems VALUES("13","37","1");
INSERT INTO siteitems VALUES("13","103","2");
INSERT INTO siteitems VALUES("13","104","3");
INSERT INTO siteitems VALUES("14","37","1");
INSERT INTO siteitems VALUES("14","105","2");
INSERT INTO siteitems VALUES("14","106","3");
INSERT INTO siteitems VALUES("16","70","9");
INSERT INTO siteitems VALUES("16","82","10");
INSERT INTO siteitems VALUES("16","37","11");
INSERT INTO siteitems VALUES("16","92","13");
INSERT INTO siteitems VALUES("16","93","14");
INSERT INTO siteitems VALUES("16","94","15");
INSERT INTO siteitems VALUES("16","95","16");
INSERT INTO siteitems VALUES("16","96","17");
INSERT INTO siteitems VALUES("16","101","18");
INSERT INTO siteitems VALUES("16","107","19");
INSERT INTO siteitems VALUES("16","108","20");
INSERT INTO siteitems VALUES("17","47","1");
INSERT INTO siteitems VALUES("17","46","2");
INSERT INTO siteitems VALUES("17","48","3");
INSERT INTO siteitems VALUES("17","51","4");
INSERT INTO siteitems VALUES("17","49","5");
INSERT INTO siteitems VALUES("17","50","6");
INSERT INTO siteitems VALUES("17","52","7");
INSERT INTO siteitems VALUES("17","37","8");
INSERT INTO siteitems VALUES("17","71","9");
INSERT INTO siteitems VALUES("17","83","10");
INSERT INTO siteitems VALUES("17","107","11");
INSERT INTO siteitems VALUES("18","37","1");
INSERT INTO siteitems VALUES("18","39","2");
INSERT INTO siteitems VALUES("18","38","3");
INSERT INTO siteitems VALUES("18","40","4");
INSERT INTO siteitems VALUES("18","41","5");
INSERT INTO siteitems VALUES("18","42","6");
INSERT INTO siteitems VALUES("18","72","9");
INSERT INTO siteitems VALUES("18","84","10");
INSERT INTO siteitems VALUES("18","102","11");
INSERT INTO siteitems VALUES("19","73","2");
INSERT INTO siteitems VALUES("19","37","4");
INSERT INTO siteitems VALUES("19","85","5");
INSERT INTO siteitems VALUES("19","97","6");
INSERT INTO siteitems VALUES("19","98","7");
INSERT INTO siteitems VALUES("19","99","8");
INSERT INTO siteitems VALUES("19","100","9");
INSERT INTO siteitems VALUES("20","74","2");
INSERT INTO siteitems VALUES("20","78","3");
INSERT INTO siteitems VALUES("20","81","4");
INSERT INTO siteitems VALUES("20","37","5");
INSERT INTO siteitems VALUES("20","86","6");



DROP TABLE IF EXISTS siteitemtypes;

CREATE TABLE `siteitemtypes` (
  `site_id` int(10) unsigned NOT NULL,
  `itemtype_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  UNIQUE KEY `site_pos` (`site_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;




DROP TABLE IF EXISTS sites;

CREATE TABLE `sites` (
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO sites VALUES("11","0","1","3","myic-home","Startseite","index","Startseite","Startseite","<p>\n	Startseite</p>\n","Startseite","Startseite");
INSERT INTO sites VALUES("12","0","1","4","myic-zoom-in","Sortiment","sortiment","Sortiment","Sortiment","<p>\n	Sortiment</p>\n","Sortiment","Sortiment");
INSERT INTO sites VALUES("13","0","1","5","myic-map-marker","Standorte","standorte","Standorte","Standorte","<p>\n	<strong>Standorte</strong></p>\n","Standorte","Standorte");
INSERT INTO sites VALUES("14","0","1","6","myic-envelope","Kontakt","kontakt","Kontakt","Kontakt","<p>\n	Kontakt</p>\n","Kontakt","Kontakt");
INSERT INTO sites VALUES("15","0","1","7","myic-align-justify","Impressum","impressum","Impressum","Impressum","<p>\n	<strong>Angaben gem&auml;&szlig; &sect; 5 TMG:</strong><br />\n	Sanit&auml;tshaus F&uuml;rst GmbH<br />\n	Kleine Klingergasse 10<br />\n	D-94032 Passau<br />\n	<br />\n	Handelsregister: HRB 4802<br />\n	Ust-IdNr.: DE 130 947 403</p>\n<p style=\"text-align: justify;\">\n	<strong>Kontakt:</strong><br />\n	Telefon: +49 (0) 851 93143-0<br />\n	Telefax: +49 (0) 851 93143-15 &nbsp;&nbsp; &nbsp;<br />\n	E-Mail: info@sanitaetshaus-fuerst.de<br />\n	&nbsp;<br />\n	<strong>Verantwortlich f&uuml;r den Inhalt nach &sect; 55 Abs. 2 RStV:</strong><br />\n	Hans-Peter F&uuml;rst, Gesch&auml;ftsf&uuml;hrer<br />\n	Kleine Klingergasse 10<br />\n	D-94032 Passau<br />\n	<br />\n	<strong>Quellenangaben f&uuml;r die verwendeten Bilder und Grafiken:</strong><br />\n	Marketingagentur dasWerkzeug GbR<br />\n	Sanit&auml;tshaus F&uuml;rst<br />\n	<br />\n	<strong>Haftungsausschluss</strong><br />\n	<br />\n	<strong>Haftung f&uuml;r Inhalte</strong><br />\n	Als Dienstanbieter sind wir gem&auml;&szlig; &sect; 7 Abs.1 TMG f&uuml;r eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach &sect;&sect; 8 bis 10 TMG sind wir als Dienstanbieter jedoch nicht verpflichtet, &uuml;bermittelte oder gespeicherte fremde Informationen zu &uuml;berwachen oder nach Umst&auml;nden zu forschen, die auf eine rechtswidrige T&auml;tigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unber&uuml;hrt. Eine diesbez&uuml;gliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntnis einer konkreten Rechtsverletzung m&ouml;glich. Bei Bekanntwerden von entsprechenden Rechtsverletzungen werden wir diese Inhalte umgehend entfernen.<br />\n	<br />\n	<strong>Haftung f&uuml;r Links</strong><br />\n	Unser Angebot enth&auml;lt Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb k&ouml;nnen wir f&uuml;r diese fremden Inhalte auch keine Gew&auml;hr &uuml;bernehmen. F&uuml;r die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf m&ouml;gliche Rechtsverst&ouml;&szlig;e &uuml;berpr&uuml;ft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar. Eine permanente inhaltliche Kontrolle der verlinkten Seiten ist jedoch ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht zumutbar. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Links umgehend entfernen.<br />\n	<br />\n	<strong>Urheberrecht</strong><br />\n	Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielf&auml;ltigung, Bearbeitung, Verbreitung und jede Art der Verwertung au&szlig;erhalb der Grenzen des Urheberrechtes bed&uuml;rfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur f&uuml;r den privaten, nicht kommerziellen Gebrauch gestattet. Soweit die Inhalte auf dieser Seite nicht vom Betreiber erstellt wurden, werden die Urheberrechte Dritter beachtet. Insbesondere werden Inhalte Dritter als solche gekennzeichnet. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte umgehend entfernen.<br />\n	Datenschutz<br />\n	Die Nutzung unserer Webseite ist in der Regel ohne Angabe personenbezogener Daten m&ouml;glich. Soweit auf unseren Seiten personenbezogene Daten (beispielsweise Name, Anschrift oder eMail-Adressen) erhoben werden, erfolgt dies, soweit m&ouml;glich, stets auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdr&uuml;ckliche Zustimmung nicht an Dritte weitergegeben.<br />\n	Wir weisen darauf hin, dass die Daten&uuml;bertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitsl&uuml;cken aufweisen kann. Ein l&uuml;ckenloser Schutz der Daten vor dem Zugriff durch Dritte ist nicht m&ouml;glich.<br />\n	Der Nutzung von im Rahmen der Impressumspflicht ver&ouml;ffentlichten Kontaktdaten durch Dritte zur &Uuml;bersendung von nicht ausdr&uuml;cklich angeforderter Werbung und Informationsmaterialien wird hiermit ausdr&uuml;cklich widersprochen. Die Betreiber der Seiten behalten sich ausdr&uuml;cklich rechtliche Schritte im Falle der unverlangten Zusendung von Werbeinformationen, etwa durch Spam-Mails, vor.</p>\n","Impressum","Impressum");
INSERT INTO sites VALUES("16","12","1","1","myic-home","Kinderorthopädie","kinderorthopaedie","Kinderorthopädie","Kinderorthopädie","<p style=\"text-align: justify;\">\n	In unserer kinderorthop&auml;dischen Fachabteilung betreuen wir Kinder und Jugendliche mit angeborenen oder erworbenen Deformit&auml;ten und Erkrankungen des Bewegungsapparates. Unser spezielles Wissen und die jahrelange Erfahrung erm&ouml;glichen es uns, auch schwierigste und komplexeste Versorgungen mit einem f&uuml;r Patient, Eltern, Arzt und Therapeuten bestm&ouml;glichen therapeutischen Ergebnis abzuschlie&szlig;en.<br />\n	Ein wichtiger Aspekt der technischen Kinderorthop&auml;die ist, dass sowohl der Entwicklung, dem Behandlungsfortschritt und nat&uuml;rlich auch dem Wachstum des Kindes, h&ouml;chste Aufmerksamkeit geschenkt wird. Ein Garant daf&uuml;r, ist die interdisziplin&auml;re Zusammenarbeit unseres Hauses mit Kinderorthop&auml;den, Kinder&auml;rzten, Sozialp&auml;diatrischen Zentren, Fr&uuml;hf&ouml;rderung und Therapeuten.<br />\n	Unsere Reha-Kind-Fachberater stehen f&uuml;r h&ouml;chste Versorgungsqualit&auml;t, von der technischen Kinderorthop&auml;die, &uuml;ber rehatechnische Versorgungen bis hin zum Reha-Sonderbau.</p>\n<p style=\"text-align: justify;\">\n	Viele Erkrankungen des muskul&auml;ren und skelett&auml;ren Bewegungsapparates, machen eine orthop&auml;die-technische Kinderversorgung notwendig, z.B.:</p>\n<p>\n	<strong>Untere Extremit&auml;t:</strong></p>\n<ul>\n	<li>\n		Spitzfu&szlig;</li>\n	<li>\n		Klumpfu&szlig;</li>\n	<li>\n		Knickfu&szlig;</li>\n	<li>\n		Sichelfu&szlig;</li>\n	<li>\n		Beinverk&uuml;rzung</li>\n	<li>\n		Fehlstellungen des Kniegelenks (Genu varum, Genu valgum)</li>\n</ul>\n<p>\n	<strong>H&uuml;fte:</strong></p>\n<ul>\n	<li>\n		H&uuml;ftdysplasie</li>\n	<li>\n		H&uuml;ftkopfnekrose (Morbus Perthes)</li>\n	<li>\n		H&uuml;ftluxation</li>\n</ul>\n<p>\n	<strong>Wirbels&auml;ule:</strong></p>\n<ul>\n	<li>\n		Idiopathische Skoliosen (seitliche Verkr&uuml;mmung(en) der Wirbels&auml;ule)</li>\n	<li>\n		Kyphosen z. B. Morbus Scheuermann (Rundr&uuml;cken)</li>\n	<li>\n		Angeborene oder erworbene Querschnittsl&auml;hmungen</li>\n	<li>\n		Spina bifida (Spaltwirbel oder auch offener R&uuml;cken genannt)</li>\n</ul>\n<p>\n	<strong>Sonstige Erkrankungen des Bewegungsapparates:</strong></p>\n<ul>\n	<li>\n		bakterielle oder rheumatische Gelenk- und Knochenentz&uuml;ndungen z.B. Ostitis (Knochenentz&uuml;ndung)</li>\n	<li>\n		Muskeldystrophie z.B. Morbus Duchenne (Degeneration der Muskulatur oder auch Muskelschwund genannt)</li>\n	<li>\n		Spastiken (Krampfanf&auml;lle der Skelettmuskulatur, meist nach Hirn- oder R&uuml;ckenmarkssch&auml;digung)</li>\n	<li>\n		Rachitis (Mangelerkrankung w&auml;hrend des Knochenwachstums)</li>\n	<li>\n		Tumorerkrankungen der Knochen oder Muskulatur</li>\n	<li>\n		Osteogenesis imperfecta (Glasknochenkrankheit)</li>\n</ul>\n<p style=\"text-align: justify;\">\n	In der Fertigung unserer passgenauen Orthesen finden modernste Materialien wie Carbon, Silikon, Titan und superleichte Kunststoffe Verwendung, diese gepaart mit bunten Farben und abwechslungsreichen Mustern sorgen bei unseren jungen Patienten f&uuml;r gr&ouml;&szlig;te Akzeptanz und besten Tragekomfort.</p>\n<p>\n	<br />\n	<strong>Unser Leistungsspektrum &ndash; f&uuml;r die Mobilit&auml;t Ihres Kindes:</strong></p>\n<ul>\n	<li>\n		zwei zertifizierte Reha-Kind-Fachberater</li>\n	<li>\n		Spezialisten f&uuml;r Skolioseversorgungen (Cheneau-Korsett)</li>\n	<li>\n		zertifizierter Versorgungspartner f&uuml;r GPS-Orthesen</li>\n	<li>\n		zertifizierter Silikon-Qualit&auml;tspartner z.B.</li>\n	<li>\n		zur Erstellung von Silikon Unterarm-Handorthesen</li>\n	<li>\n		zur Erstellung von Silikon Kn&ouml;chel-Fu&szlig;orthesen</li>\n	<li>\n		zertifizierter Versorgungspartner f&uuml;r Nancy-Hylton-Orthesen</li>\n	<li>\n		zertifizierter Versorgungspartner f&uuml;r propriozeptive Einlagenversorgungen</li>\n	<li>\n		Hausbesuche</li>\n</ul>\n","Kinderorthopädie","Kinderorthopädie");
INSERT INTO sites VALUES("17","12","1","2","myic-home","Reha-Technik","reha_technik","Reha-Technik","Reha-Technik","<p>\n	Reha-Technik</p>\n","Reha-Technik","Reha-Technik");
INSERT INTO sites VALUES("18","12","1","3","myic-home","Orthopädietechnik","orthopaedietechnik","Orthopädietechnik","Orthopädietechnik","<p style=\"text-align: justify;\">\n	<strong>Mobilit&auml;t ist Leben!</strong><br />\n	Die Gebiete der technischen Orthop&auml;die sind seit 40 Jahren ein Aush&auml;ngeschild unseres Unternehmens. Spezialisierte Mitarbeiterteams in den einzelnen Fachdisziplinen sorgen f&uuml;r individuelle und ma&szlig;geschneiderte Versorgungen am Patienten.<br />\n	Unsere Patienten ob aus dem In- oder Ausland sind unsere Motivation. Wir rechtfertigen das uns entgegengebrachte Vertrauen mit passgenauen und technisch hochwertigen Versorgungen.<br />\n	Das Handicap eines Kindes oder eines Erwachsenen, die Individualit&auml;t der einzelnen Versorgung, macht die Anpassung der orthop&auml;dischen Produkte jeden Tag zu einer neuen Herausforderung.</p>\n<p style=\"text-align: justify;\">\n	Der Fortschritt in der modernen Orthop&auml;die-Technik erlaubt uns heute bereits die Herstellung von Orthesen und Prothesen mit beinahe &bdquo;nat&uuml;rlicher&ldquo; Funktionalit&auml;t. Aber auch die kosmetische Gestaltung dieser Hilfsmittel nimmt in den Augen der Betroffenen einen hohen Stellenwert ein.<br />\n	Gerade diese pers&ouml;nlichen W&uuml;nsche unserer Patienten sind es, denen wir durch kontinuierliche Weiterbildungsma&szlig;nahmen gerecht werden wollen, um so, zusammen mit &Auml;rzten und Therapeuten das Optimum einer orthop&auml;die-technischen Versorgung zu erreichen.</p>\n<p style=\"text-align: justify;\">\n	Wir m&ouml;chten Sie daher ganz herzlich dazu einladen sich auf den n&auml;chsten Seiten &uuml;ber unsere Fachgebiete zu informieren und uns und unser Unternehmen n&auml;her kennen zu lernen.</p>\n","Orthopädietechnik","Orthopädietechnik");
INSERT INTO sites VALUES("19","12","1","4","myic-home","Homecare","homecare","Homecare","Homecare","<p style=\"text-align: justify;\">\n	Eine Krankheit, ein Unfall oder einfach nur das fortschreitende Alter k&ouml;nnen Menschen in Situationen bringen, in denen eine umfassende Beratung und Betreuung von speziell geschulten Fachkr&auml;ften erforderlich ist.</p>\n<p style=\"text-align: justify;\">\n	Nur in Zusammenarbeit mit Ihnen, Ihren Angeh&ouml;rigen, dem behandelnden Arzt und/oder Pflegedienst k&ouml;nnen unsere ausnahmslos examinierten Krankenschwestern bzw. &ndash;pfleger unserer Fachabteilung HomeCare, ein speziell auf Sie zugeschnittenes Versorgungskonzept entwickeln, das Ihnen wieder zu mehr Lebensqualit&auml;t verhilft.</p>\n<p style=\"text-align: justify;\">\n	Eine gro&szlig;e Auswahl an Hilfsmitteln und Produkten von den weltweit f&uuml;hrenden Herstellern halten wir f&uuml;r Sie bereit. Unser Personal ber&auml;t und unterst&uuml;tzt Sie, bei Ihnen zu Hause, in der Klinik oder im Heim, bei Anwendung und Handhabung.</p>\n<p style=\"text-align: justify;\">\n	Die Abkl&auml;rung der Kosten&uuml;bernahme mit Ihrer Krankenkasse ist ebenso selbstverst&auml;ndlich, wie eine individuelle, diskrete und zuverl&auml;ssige Versorgung.</p>\n<p style=\"text-align: justify;\">\n	Die HomeCare im Sanit&auml;tshaus F&uuml;rst ist eine seit Jahrzehnten gewachsene eigenst&auml;ndige Abteilung die auf den Gebieten der klinischen Orthop&auml;die bayernweit Ma&szlig;st&auml;be setzt.</p>\n","Homecare","Homecare");
INSERT INTO sites VALUES("20","12","1","5","myic-home","Sanitätshaus","sanitaetshaus","Sanitätshaus","Sanitätshaus","<p>\n	Sanit&auml;tshaus</p>\n","Sanitätshaus","Sanitätshaus");



DROP TABLE IF EXISTS slider;

CREATE TABLE `slider` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO slider VALUES("1","1","index","15","Pflegezentrum Moritz","„Dort gepflegt werden, wo man Zuhause ist“","","_self");
INSERT INTO slider VALUES("2","2","index","2","Tagespflege „Am Pangerlberg“","„Tagsüber bestens versorgt und betreut, abends wieder in den eigenen vier Wänden“","","_self");
INSERT INTO slider VALUES("3","2","pflegedienst","15","Pflegezentrum Moritz","„Dort gepflegt werden, wo man zuhause ist“","","_self");
INSERT INTO slider VALUES("4","1","tagespflege","2","Tagespflege „Am Pangerlberg“","„Tagsüber bestens versorgt und betreut, abends wieder in den eigenen vier Wänden“","","_self");
INSERT INTO slider VALUES("11","3","index","88","fgdg","asdasdasdasda","","_self");



DROP TABLE IF EXISTS sliderimages;

CREATE TABLE `sliderimages` (
  `slider_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `image_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `text` varchar(255) COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `slider_pos` (`slider_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO sliderimages VALUES("2","1","96","Den Alltag meistern<br> wie alle anderen auch","Dank modernster Technik sind auch die feinsten Bewegungen kein Problem mehr");
INSERT INTO sliderimages VALUES("2","2","95","Wieder dem liebsten Hobby nachgehen","Modernste Technik im Prothesenbau verhilft Ihnen wieder Ihren liebsten Tätigkeiten nachzugehen");
INSERT INTO sliderimages VALUES("2","3","97","Zertifizierter Fortschritt","Jahrzentlanges Know-How immer wieder verbessert durch regelmäßige, zertifizierte Schulungen");



DROP TABLE IF EXISTS sliders;

CREATE TABLE `sliders` (
  `slider_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO sliders VALUES("2","Startseite");



DROP TABLE IF EXISTS stellenangebote;

CREATE TABLE `stellenangebote` (
  `stellenangebote_id` int(11) NOT NULL AUTO_INCREMENT,
  `seite` varchar(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `unterzeile` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`stellenangebote_id`),
  KEY `seite` (`seite`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO stellenangebote VALUES("1","pflegedienst","Pflegekräfte auf Teilzeitbasis","ab sofort","<p>\n	<u>Wir bieten</u></p>\n<p>\n	Ihnen eine anspruchsvolle und abwechslungsreiche T&auml;tigkeit in einem dynamischen Team, umfangreiche externe und interne Fortbildungsm&ouml;glichkeiten, eine angemessene Verg&uuml;tung und weitere Sozialleistungen.</p>\n<p>\n	<u>Wir erwarten</u></p>\n<p>\n	eine abgeschlossene Ausbildung als Altenpflegerin, Gesundheits- und Krankenpflegerin, Krankenschwester, examinierte Pflegehelferin oder Pflegehilfskr&auml;fte mit mehrj&auml;hriger Berufserfahrung in der h&auml;uslichen Pflege.</p>\n<p>\n	Wenn wir Ihr Interesse geweckt haben, senden Sie uns bitte Ihre vollst&auml;ndigen Bewerbungsunterlagen zu.</p>\n");
INSERT INTO stellenangebote VALUES("4","stellenangebote","Mitarbeiter/in für unseren Fahrdienst","ab sofort","<p>\n	F&uuml;r unsere Tagespflegeeinrichtung suchen wir noch eine Aushilfskraft f&uuml;r Personenbef&ouml;rderung mit einem Kleinbus.</p>\n<p>\n	Wenn Sie im Besitz eines g&uuml;ltigen F&uuml;hrerscheines Kl. B (+ einen F&uuml;hrerschein zur Fahrgastbef&ouml;rderung) sind und das 18. Lebensjahr vollendet haben, freuen wir uns auf Ihre Bewerbung.</p>\n<p>\n	F&uuml;r das Erlangen der Ortskenntnisse und der n&ouml;tigen Dokumente werden wir Sie unterst&uuml;tzen.</p>\n");



DROP TABLE IF EXISTS texts;

CREATE TABLE `texts` (
  `text_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`text_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO texts VALUES("1","Startseite Text");
INSERT INTO texts VALUES("2","Startseite Titel");
INSERT INTO texts VALUES("3","Oachkatzöschwoaf");
INSERT INTO texts VALUES("4","Startseite Seo1");
INSERT INTO texts VALUES("5","Startseite Seo2");
INSERT INTO texts VALUES("6","Startseite Sortiment 1 Titel");
INSERT INTO texts VALUES("7","Startseite Sortiment 1 Text");
INSERT INTO texts VALUES("8","Startseite Sortiment 1 Hover");
INSERT INTO texts VALUES("9","Startseite Sortiment 2 Titel");
INSERT INTO texts VALUES("10","Startseite Sortiment 2 Text");
INSERT INTO texts VALUES("11","Startseite Sortiment 2 Hover");
INSERT INTO texts VALUES("12","Startseite Sortiment 3 Hover");
INSERT INTO texts VALUES("13","Startseite Sortiment 3 Titel");
INSERT INTO texts VALUES("14","Startseite Sortiment 3 Text");
INSERT INTO texts VALUES("15","Startseite Sortiment 4 Hover");
INSERT INTO texts VALUES("16","Startseite Sortiment 4 Text");
INSERT INTO texts VALUES("17","Startseite Sortiment 4 Titel");
INSERT INTO texts VALUES("18","Startseite Sortiment 5 Hover");
INSERT INTO texts VALUES("19","Startseite Sortiment 5 Text");
INSERT INTO texts VALUES("20","Startseite Sortiment 5 Titel");
INSERT INTO texts VALUES("21","Startseite Sortiment 6 Hover");
INSERT INTO texts VALUES("22","Startseite Sortiment 6 Text");
INSERT INTO texts VALUES("23","Startseite Sortiment 6 Titel");
INSERT INTO texts VALUES("24","Orthopädietechnik 1 Titel");
INSERT INTO texts VALUES("25","Orthopädietechnik 1 Text");
INSERT INTO texts VALUES("26","Orthopädietechnik 2 Titel");
INSERT INTO texts VALUES("27","Orthopädietechnik 2 Text");
INSERT INTO texts VALUES("28","Orthopädietechnik 3 Titel");
INSERT INTO texts VALUES("29","Orthopädietechnik 3 Text");
INSERT INTO texts VALUES("30","Orthopädietechnik 4 Text");
INSERT INTO texts VALUES("31","Orthopädietechnik 4 Titel");
INSERT INTO texts VALUES("32","Orthopädietechnik 5 Text");
INSERT INTO texts VALUES("33","Orthopädietechnik 5 Titel");
INSERT INTO texts VALUES("34","Orthopädietechnik 6 Titel");
INSERT INTO texts VALUES("35","Orthopädietechnik 6 Text");
INSERT INTO texts VALUES("36","Orthopädietechnik 7 Titel");
INSERT INTO texts VALUES("37","Orthopädietechnik 7 Text");
INSERT INTO texts VALUES("38","Orthopädietechnik 8 Titel");
INSERT INTO texts VALUES("39","Orthopädietechnik 8 Text");
INSERT INTO texts VALUES("41","Reha-Technik 1 Titel");
INSERT INTO texts VALUES("42","Reha-Technik 1 Text");
INSERT INTO texts VALUES("43","Reha-Technik 2 Titel");
INSERT INTO texts VALUES("44","Reha-Technik 2 Text");
INSERT INTO texts VALUES("45","Reha-Technik 3 Titel");
INSERT INTO texts VALUES("46","Reha-Technik 3 Text");
INSERT INTO texts VALUES("47","Reha-Technik 4 Titel");
INSERT INTO texts VALUES("48","Reha-Technik 4 Text");
INSERT INTO texts VALUES("49","Reha-Technik 5 Titel");
INSERT INTO texts VALUES("50","Reha-Technik 5 Text");
INSERT INTO texts VALUES("51","Reha-Technik 6 Titel");
INSERT INTO texts VALUES("52","Reha-Technik 6 Text");
INSERT INTO texts VALUES("53","Reha-Technik 7 Titel");
INSERT INTO texts VALUES("54","Reha-Technik 7 Text");
INSERT INTO texts VALUES("55","generated");
INSERT INTO texts VALUES("56","generated");
INSERT INTO texts VALUES("57","generated");
INSERT INTO texts VALUES("58","generated");
INSERT INTO texts VALUES("59","generated");
INSERT INTO texts VALUES("60","generated");
INSERT INTO texts VALUES("61","generated");
INSERT INTO texts VALUES("62","generated");
INSERT INTO texts VALUES("63","generated");
INSERT INTO texts VALUES("64","generated");
INSERT INTO texts VALUES("65","generated");
INSERT INTO texts VALUES("66","generated");
INSERT INTO texts VALUES("67","generated");
INSERT INTO texts VALUES("68","generated");
INSERT INTO texts VALUES("69","generated");
INSERT INTO texts VALUES("70","generated");
INSERT INTO texts VALUES("71","generated");
INSERT INTO texts VALUES("72","generated");
INSERT INTO texts VALUES("73","generated");
INSERT INTO texts VALUES("74","generated");
INSERT INTO texts VALUES("75","generated");
INSERT INTO texts VALUES("76","Reha-Technik 1 Titel Kopie");
INSERT INTO texts VALUES("77","Reha-Technik 1 Text Kopie");
INSERT INTO texts VALUES("78","generated");
INSERT INTO texts VALUES("79","generated");
INSERT INTO texts VALUES("80","generated");
INSERT INTO texts VALUES("81","generated");
INSERT INTO texts VALUES("82","generated");
INSERT INTO texts VALUES("83","generated");
INSERT INTO texts VALUES("84","generated");
INSERT INTO texts VALUES("85","generated");
INSERT INTO texts VALUES("86","generated");
INSERT INTO texts VALUES("87","generated");
INSERT INTO texts VALUES("88","generated Kopie");
INSERT INTO texts VALUES("89","generated Kopie");
INSERT INTO texts VALUES("90","generated");
INSERT INTO texts VALUES("91","generated");
INSERT INTO texts VALUES("92","generated");
INSERT INTO texts VALUES("93","generated");
INSERT INTO texts VALUES("94","generated");
INSERT INTO texts VALUES("95","generated");
INSERT INTO texts VALUES("96","generated");
INSERT INTO texts VALUES("97","generated");
INSERT INTO texts VALUES("98","generated");
INSERT INTO texts VALUES("99","generated");
INSERT INTO texts VALUES("100","Orthopädietechnik 2 Titel Kopie");
INSERT INTO texts VALUES("101","Orthopädietechnik 2 Text Kopie");
INSERT INTO texts VALUES("102","Orthopädietechnik 1 Titel Kopie");
INSERT INTO texts VALUES("103","Orthopädietechnik 1 Text Kopie");
INSERT INTO texts VALUES("104","Orthopädietechnik 1 Titel Kopie Kopie");
INSERT INTO texts VALUES("105","Orthopädietechnik 1 Text Kopie Kopie");
INSERT INTO texts VALUES("106","Orthopädietechnik 1 Titel Kopie Kopie");
INSERT INTO texts VALUES("107","Orthopädietechnik 1 Text Kopie Kopie");
INSERT INTO texts VALUES("108","Orthopädietechnik 2 Titel Kopie");
INSERT INTO texts VALUES("109","Orthopädietechnik 2 Text Kopie");
INSERT INTO texts VALUES("110","Orthopädietechnik 2 Titel Kopie Kopie");
INSERT INTO texts VALUES("111","Orthopädietechnik 2 Text Kopie Kopie");
INSERT INTO texts VALUES("112","Orthopädietechnik 2 Titel Kopie Kopie");
INSERT INTO texts VALUES("113","Orthopädietechnik 2 Text Kopie Kopie");
INSERT INTO texts VALUES("114","Orthopädietechnik 2 Titel Kopie Kopie Kopie");
INSERT INTO texts VALUES("115","Orthopädietechnik 2 Text Kopie Kopie Kopie");
INSERT INTO texts VALUES("116","Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie");
INSERT INTO texts VALUES("117","Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie");
INSERT INTO texts VALUES("118","Orthopädietechnik 2 Titel Kopie Kopie Kopie Kopie Kopie");
INSERT INTO texts VALUES("119","Orthopädietechnik 2 Text Kopie Kopie Kopie Kopie Kopie");
INSERT INTO texts VALUES("120","generated Kopie");
INSERT INTO texts VALUES("121","generated Kopie");
INSERT INTO texts VALUES("122","generated Kopie Kopie");
INSERT INTO texts VALUES("123","generated Kopie Kopie");
INSERT INTO texts VALUES("124","generated Kopie Kopie Kopie");
INSERT INTO texts VALUES("125","generated Kopie Kopie Kopie");
INSERT INTO texts VALUES("126","generated Kopie Kopie Kopie Kopie");
INSERT INTO texts VALUES("127","generated Kopie Kopie Kopie Kopie");
INSERT INTO texts VALUES("128","generated");
INSERT INTO texts VALUES("129","generated");
INSERT INTO texts VALUES("130","generated");
INSERT INTO texts VALUES("131","generated");
INSERT INTO texts VALUES("132","generated");
INSERT INTO texts VALUES("133","generated");
INSERT INTO texts VALUES("134","generated");
INSERT INTO texts VALUES("135","generated");
INSERT INTO texts VALUES("136","generated");
INSERT INTO texts VALUES("137","generated");
INSERT INTO texts VALUES("138","generated");
INSERT INTO texts VALUES("139","generated");
INSERT INTO texts VALUES("140","generated");
INSERT INTO texts VALUES("141","generated");
INSERT INTO texts VALUES("142","generated");
INSERT INTO texts VALUES("143","generated");
INSERT INTO texts VALUES("144","generated");
INSERT INTO texts VALUES("145","generated");
INSERT INTO texts VALUES("146","generated");
INSERT INTO texts VALUES("147","generated");
INSERT INTO texts VALUES("148","generated");
INSERT INTO texts VALUES("149","generated");
INSERT INTO texts VALUES("150","generated");
INSERT INTO texts VALUES("151","generated");
INSERT INTO texts VALUES("152","generated");
INSERT INTO texts VALUES("153","generated");
INSERT INTO texts VALUES("154","generated");
INSERT INTO texts VALUES("155","generated");
INSERT INTO texts VALUES("156","generated");
INSERT INTO texts VALUES("157","generated");




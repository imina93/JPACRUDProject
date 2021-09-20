-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dndmonsterdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `dndmonsterdb` ;

-- -----------------------------------------------------
-- Schema dndmonsterdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dndmonsterdb` DEFAULT CHARACTER SET utf8 ;
USE `dndmonsterdb` ;

-- -----------------------------------------------------
-- Table `monster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `monster` ;

CREATE TABLE IF NOT EXISTS `monster` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `size` VARCHAR(45) NOT NULL,
  `race` VARCHAR(45) NOT NULL,
  `alignment` VARCHAR(45) NULL DEFAULT NULL,
  `armor_class` INT(11) NULL DEFAULT NULL,
  `challenge_rating` INT(11) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `image_url` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS dnddmuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dnddmuser'@'localhost' IDENTIFIED BY 'dnddmuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'dnddmuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `monster`
-- -----------------------------------------------------
START TRANSACTION;
USE `dndmonsterdb`;
INSERT INTO `monster` (`id`, `name`, `size`, `race`, `alignment`, `armor_class`, `challenge_rating`, `description`, `image_url`) VALUES (1, 'Abeloth', 'large', 'abberation', 'lawful evil', 16, 10, 'The aboleth is a revolting fishlike amphibian found primarily in subterranean lakes and rivers. An aboleth has a pink belly. Four pulsating blueblack orifices line the bottom of its body and secrete gray slime that smells like rancid grease. It uses its tail for propulsion in the water and drags itself along with its tentacles on land. An aboleth weighs about 6,500 pounds.', 'https://www.dndbeyond.com/avatars/thumbnails/0/11/1000/1000/636238825975375671.jpeg');
INSERT INTO `monster` (`id`, `name`, `size`, `race`, `alignment`, `armor_class`, `challenge_rating`, `description`, `image_url`) VALUES (2, 'Owlbear', 'large', 'magical beast', 'neutral', 15, 4, 'An owlbear’s coat ranges in color from brown-black to yellowish brown; its beak is a dull ivory color. A full-grown male can stand as tall as 8 feet and weigh up to 1,500 pounds. Adventurers who have survived encounters with the creature often speak of the bestial madness they glimpsed in its red-rimmed eyes.', 'https://www.dndbeyond.com/avatars/thumbnails/0/315/1000/1000/636252772225295187.jpeg');
INSERT INTO `monster` (`id`, `name`, `size`, `race`, `alignment`, `armor_class`, `challenge_rating`, `description`, `image_url`) VALUES (3, 'Dragon Turtle', 'huge', 'dragon', 'neutral', 25, 9, 'Its rough, deep green shell is much the same color as the deep water the monster favors, and the silver highlights that line the shell resemble light dancing on open water. The turtle’s legs, tail, and head are a lighter green, flecked with golden highlights. An adult dragon turtle can measure from 20 to 30 feet from snout to tail, with a shell from 15 to 25 feet in diameter, and can weigh 8,000 to 32,000 pounds.', 'https://www.dndbeyond.com/avatars/thumbnails/0/291/1000/1000/636252771128151641.jpeg');
INSERT INTO `monster` (`id`, `name`, `size`, `race`, `alignment`, `armor_class`, `challenge_rating`, `description`, `image_url`) VALUES (4, 'Spectre', 'medium', 'undead', 'lawful evil', 15, 7, 'A spectre looks much as it did in life and can be easily recognized by those who knew the individual or have seen the individual’s face in a painting or a drawing. In many cases, the evidence of a violent death is visible on its body. A spectre is roughly human-sized and is weightless.', 'https://www.aidedd.org/dnd/images/specter.jpg');
INSERT INTO `monster` (`id`, `name`, `size`, `race`, `alignment`, `armor_class`, `challenge_rating`, `description`, `image_url`) VALUES (5, 'Basilisk', 'medium', 'magical beast', 'neutral', 16, 5, 'A basilisk is a reptilian monster that petrifies living creatures with a mere gaze. A basilisk usually has a dull brown body with a yellowish underbelly. Some specimens sport a short, curved horn atop the nose. An adult basilisk’s body grows to about 6 feet long, not including its tail, which can reach an additional length of 5 to 7 feet. The creature weighs about 300 pounds.', 'https://www.dndbeyond.com/avatars/thumbnails/0/185/1000/1000/636252762168821795.jpeg');
INSERT INTO `monster` (`id`, `name`, `size`, `race`, `alignment`, `armor_class`, `challenge_rating`, `description`, `image_url`) VALUES (6, 'Androsphinx', 'large', 'magicla beast', 'chaotic good', 22, 9, 'These sphinxes are always male. Androsphinxes are clever and generally good-natured, but they can be savage opponents. Like other Sphinxes, they are enigmatic creatures with great, feathery wings and leonine bodies. All sphinxes are territorial, but the more intelligent ones can differentiate between deliberate intrusion and temporary or inadvertent trespass. A typical sphinx is about 10 feet long and weighs about 800 pounds.', 'https://www.dndbeyond.com/avatars/thumbnails/0/157/1000/1000/636252759145617281.jpeg');
INSERT INTO `monster` (`id`, `name`, `size`, `race`, `alignment`, `armor_class`, `challenge_rating`, `description`, `image_url`) VALUES (7, 'Bebilith', 'huge', 'outsider', 'chaotic evil', 22, 10, 'Demons are a race of creatures native to chaotic evil-aligned planes. They are ferocity personified and will attack any creature just for the sheer fun of it—even other demons. Bebiliths are enormous, predatory, arachnid demons that hunt other demons. A bebilith has a body the size of a plow horse, with legs spanning more than 14 feet. It weighs more than two tons.', 'https://i.pinimg.com/originals/c2/e3/c3/c2e3c37a7e574a4533c4755cab8406ca.png');

COMMIT;


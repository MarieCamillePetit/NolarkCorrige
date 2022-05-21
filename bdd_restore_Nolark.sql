-- -----------------------------
-- Création de la BDD "nolark" -
-- -----------------------------
CREATE DATABASE nolark DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE nolark;

-- ----------------------------------------------------------------------------
-- Création de l'utilisateur "nolarkuser" ayant pour mot de passe "nolarkpwd" -
-- ----------------------------------------------------------------------------
CREATE USER nolarkuser@localhost IDENTIFIED BY 'nolarkpwd';

-- -------------------------------------------------------------
-- Retirer les limitations que pourrait avoir cet utilisateurs -
-- -------------------------------------------------------------
GRANT USAGE ON * . * TO  'nolarkuser'@'localhost' IDENTIFIED BY 'nolarkpwd' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

-- ----------------------------------------------------------------------------------------
-- Donner tous les privilèges (hors ceux d'administration) à nolarkuser sur la BDD nolark -
-- ----------------------------------------------------------------------------------------
GRANT SELECT ON `nolark`.* TO 'nolarkuser'@'localhost';

-- -------------------------------
-- Création de la table "marque" -
-- -------------------------------
CREATE TABLE IF NOT EXISTS marque (
  id int(3) NOT NULL,
  nom text NOT NULL,
  CONSTRAINT pk_marque PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------
-- Création de la table "type" -
-- -----------------------------
CREATE TABLE IF NOT EXISTS type (
  id int(1) NOT NULL,
  libelle text NOT NULL,
  CONSTRAINT pk_type PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -------------------------------
-- Création de la table "casque" -
-- -------------------------------
CREATE TABLE IF NOT EXISTS casque (
  id int(5) NOT NULL,
  marque int(3) NOT NULL,
  modele text,
  type int(1) NOT NULL,
  prix float DEFAULT 0.0,
  classement int(2) DEFAULT 0,
  image text,
  stock int(4),
  CONSTRAINT pk_casque PRIMARY KEY (id),
  CONSTRAINT fk_type FOREIGN KEY (type) REFERENCES type (id),
  CONSTRAINT fk_marque FOREIGN KEY (marque) REFERENCES marque (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------
-- Remplissage de la table "type" -
-- --------------------------------
INSERT INTO type (id, libelle) VALUES
(1, 'cross'),
(2, 'enfants'),
(3, 'piste'),
(4, 'route');

-- ----------------------------------
-- Remplissage de la table "marque" -
-- ----------------------------------
INSERT INTO marque (id, nom) VALUES
(1, 'AGV'),
(2, 'Arai'),
(3, 'Bobby'),
(4, 'CL'),
(5, 'CLY'),
(6, 'Commando'),
(7, 'Dynamo'),
(8, 'FGK01'),
(9, 'Flash'),
(10, 'Givi'),
(11, 'Hornet'),
(12, 'Junior'),
(13, 'Nexx'),
(14, 'Open'),
(15, 'Project'),
(16, 'Quadrant'),
(17, 'Scorpion'),
(18, 'Shoei'),
(19, 'Torx'),
(20, 'Vertice'),
(21, 'Weave'),
(22, 'X501'),
(23, 'x60');

-- ----------------------------------
-- Remplissage de la table "casque" -
-- ----------------------------------
INSERT INTO casque (id, marque, modele, type, prix, classement, image, stock) VALUES
(1,2,'vx3 frost silver',1,249.98,20,'arai-vx3-frost-silver.jpg',-1),
(2,4,'MX ELAN MC5',1,247.1,35,'CL-MX-ELAN-MC5.jpg',17),
(3,11,'ds anthracite mat',1,226.59,5,'Hornet-ds-anthracite-mat.jpg',13),
(4,11,'ds blanc',1,205.67,20,'Hornet-ds-blanc.jpg',14),
(5,11,'ds gris',1,433.28,20,'Hornet-ds-gris.jpg',18),
(6,11,'ds noir mat',1,394.92,30,'Hornet-ds-noir-mat.jpg',10),
(7,11,'ds noir',1,168.02,25,'Hornet-ds-noir.jpg',18),
(8,18,'vfx w noir mat',1,303.95,10,'shoei-vfx-w-noir-mat-.jpg',8),
(9,22,'START F.Black',1,197.59,0,'X501-START-F.Black.jpg',19),
(10,3,'blanc',2,406.14,25,'bobby-blanc.jpg',4),
(11,3,'noir rose',2,290.43,45,'bobby-noir-rose.jpg',14),
(12,3,'noir',2,370.88,25,'bobby-noir.jpg',1),
(13,4,'xy wanted mc1',2,398.5,0,'cl-xy-wanted-mc1.jpg',-1),
(14,4,'xy wanted mc2',2,447.12,40,'cl-xy-wanted-mc2.jpg',12),
(15,4,'xy wanted mc5',2,202.86,10,'cl-xy-wanted-mc5.jpg',12),
(16,5,'blanc',2,160.88,45,'cly-blanc.jpg',16),
(17,5,'cura mc1',2,420.38,5,'cly-cura-mc1.jpg',12),
(18,5,'cura mc10',2,260.39,5,'cly-cura-mc10.jpg',18),
(19,5,'cura mc5',2,436.32,10,'cly-cura-mc5.jpg',3),
(20,5,'katzilla mc10',2,247.76,20,'cly-katzilla-mc10.jpg',17),
(21,5,'noir',2,367.46,15,'cly-noir.jpg',8),
(22,5,'razz mc5f',2,232.89,20,'cly-razz-mc5f.jpg',17),
(23,5,'razz mc8',2,436.17,35,'cly-razz-mc8.jpg',6),
(24,5,'xy wanted mc1',2,390.46,5,'cly-xy-wanted-mc1.jpg',3),
(25,5,'xy wanted mc2',2,204.61,35,'cly-xy-wanted-mc2.jpg',16),
(26,5,'xy wanted mc5',2,437.88,30,'cly-xy-wanted-mc5.jpg',5),
(27,6,'Power',2,332.33,20,'Commando-Power.jpg',18),
(28,7,'Junior Noir1',2,297.59,30,'Dynamo-Junior-Noir1.jpg',12),
(29,8,'cox rouge noir',2,405.28,0,'fgk01-cox-rouge-noir.jpg',5),
(30,9,'kid blanc',2,354.3,5,'flash-kid-blanc.jpg',8),
(31,9,'kid kokoala',2,285.61,15,'flash-kid-kokoala.jpg',15),
(32,10,'hps blanc',2,371.67,10,'givi-hps-blanc.jpg',16),
(33,12,'noir mat',2,306.68,45,'junior-noir-mat.jpg',13),
(34,12,'Noir',2,169.06,10,'Junior-Noir.jpg',15),
(35,12,'rose',2,319.15,25,'junior-rose.jpg',17),
(36,12,'Titanium',2,318.53,5,'Junior-Titanium.jpg',-1),
(37,13,'x60 cool kids blanc brillant',2,231.77,35,'nexx-x60-cool-kids-blanc-brillant.jpg',1),
(38,13,'x60 cool kids noir mat',2,290.36,5,'nexx-x60-cool-kids-noir-mat.jpg',3),
(39,13,'x60 cool kids rose mat',2,354.07,10,'nexx-x60-cool-kids-rose-mat.jpg',2),
(40,13,'x60 kid vision neon jaune',2,247.75,10,'nexx-x60-kid-vision-neon-jaune.jpg',13),
(41,13,'x60 kid vision neon orange',2,184.35,10,'nexx-x60-kid-vision-neon-orange.jpg',6),
(42,13,'x60 kids vintage noir noir',2,278.29,25,'nexx-x60-kids-vintage-noir-noir.jpg',12),
(43,13,'x60 kids vision noir',2,299.62,10,'nexx-x60-kids-vision-noir.jpg',16),
(44,13,'x60 spock',2,198.26,45,'nexx-x60-spock.jpg',6),
(45,13,'x60 vision plus rose',2,246.35,10,'nexx-x60-vision-plus-rose.jpg',8),
(46,14,'top vale symbols',2,331.73,25,'open-top-vale-symbols.jpg',9),
(47,15,'coccinelle rouge',2,334.00,0,'project-coccinelle-rouge.jpg',6),
(48,15,'fleur noir',2,163.48,45,'project-fleur-noir.jpg',8),
(49,15,'old italy 37',2,221.27,20,'project-old-italy-37.jpg',16),
(50,15,'old italy 38',2,377.52,0,'project-old-italy-38.jpg',2),
(51,15,'pretty flowers',2,364.74,0,'project-pretty-flowers.jpg',1),
(52,15,'squalo blanc',2,238.74,35,'project-squalo-blanc.jpg',18),
(53,15,'squalo jaune',2,377.5,45,'project-squalo-jaune.jpg',11),
(54,15,'squalo pink',2,388.56,15,'project-squalo-pink.jpg',0),
(55,16,'Fragment Black',2,158.06,25,'Quadrant-Fragment-Black.jpg',17),
(56,16,'Fragment Blue',2,219.51,15,'Quadrant-Fragment-Blue.jpg',13),
(57,16,'Fragment Orange',2,178.48,5,'Quadrant-Fragment-Orange.jpg',6),
(58,16,'Stripe Black Enfnt',2,323.12,10,'Quadrant-Stripe-Black-Enfnt.jpg',11),
(59,16,'Stripe Red',2,420.35,5,'Quadrant-Stripe-Red.jpg',9),
(60,19,'bobby blanc',2,306.51,0,'torx-bobby-blanc.jpg',1),
(61,19,'bobby noir rose',2,330.53,20,'torx-bobby-noir-rose.jpg',0),
(62,19,'bobby noir',2,296.14,40,'torx-bobby-noir.jpg',11),
(63,19,'walt blanc bleu',2,338.45,0,'torx-walt-blanc-bleu.jpg',6),
(64,19,'walt blanc rouge',2,283.68,25,'torx-walt-blanc-rouge.jpg',14),
(65,20,'junior',2,339.28,10,'vertice-junior.jpg',8),
(66,21,'Kid Acid',2,377.79,0,'Weave-Kid-Acid.jpg',13),
(67,21,'kid pandada',2,282.51,30,'weave-kid-pandada.jpg',9),
(68,23,'vision plus blanc',2,323.67,25,'x60-vision-plus-blanc.jpg',14),
(69,1,'skyline blanc',3,389.95,25,'agv-skyline-blanc.jpg',2),
(70,1,'skyline block blanc bleu',3,342.45,5,'agv-skyline-block-blanc-bleu.jpg',18),
(71,1,'skyline block blanc rouge',3,447.03,10,'agv-skyline-block-blanc-rouge.jpg',9),
(72,1,'Skyline Block Noir',3,188.96,35,'agv-Skyline-Block-Noir.jpg',-1),
(73,1,'Skyline Gunmetal Blue',3,210.87,45,'agv-Skyline-Gunmetal-Blue.jpg',18),
(74,1,'Skyline Multi Gunmetal Red',3,205.98,25,'agv-Skyline-Multi-Gunmetal-Red.jpg',8),
(75,1,'skyline multi gunmetal',3,389.04,20,'agv-skyline-multi-gunmetal.jpg',-1),
(76,1,'skyline noir mat',3,325.7,15,'agv-skyline-noir-mat.jpg',3),
(77,1,'skyline noir',3,375.07,30,'agv-skyline-noir.jpg',19),
(78,18,'qwest airfoil tc1',3,190.34,40,'shoei-qwest-airfoil-tc1.jpg',9),
(79,18,'qwest airfoil tc5',3,341.78,30,'shoei-qwest-airfoil-tc5.jpg',15),
(80,18,'x spirit 2 blanc',3,290.03,45,'shoei-x-spirit-2-blanc.jpg',12),
(81,18,'x spirit 2 noir',3,328.79,15,'shoei-x-spirit-2-noir.jpg',1),
(82,18,'x spirit ii marquez 2 tc1',3,188.74,0,'shoei-x-spirit-ii-marquez-2-tc1.jpg',2),
(83,18,'X Spirit II Reverb TC2',3,291.86,30,'shoei-X-Spirit-II-Reverb-TC2.jpg',9),
(84,18,'xr 1100 cavallino tc1',3,439.32,30,'shoei-xr-1100-cavallino-tc1.jpg',5),
(85,18,'xr 1100 crystal white',3,308.98,40,'shoei-xr-1100-crystal-white.jpg',13),
(86,18,'xr 1100 light silver',3,381.41,20,'shoei-xr-1100-light-silver.jpg',9),
(87,18,'xr 1100 noir mat',3,364.31,10,'shoei-xr-1100-noir-mat.jpg',14),
(88,18,'xr 1100 noir',3,212.81,25,'shoei-xr-1100-noir.jpg',-1),
(89,18,'xr 1100 pearl grey',3,283.03,35,'shoei-xr-1100-pearl-grey.jpg',14),
(90,18,'xr 1100 plugin tc8',3,431.85,40,'shoei-xr-1100-plugin-tc8.jpg',19),
(91,18,'xr 1100 Rollin TC5_4',3,150.72,0,'shoei-xr-1100-Rollin-TC5_4.jpg',18),
(92,18,'xr 1100 skeet tc2',3,380.52,5,'shoei-xr-1100-skeet-tc2.jpg',9),
(93,18,'xr 1100 Skeet TC4',3,291.91,5,'shoei-xr-1100-Skeet-TC4.jpg',17),
(94,18,'xr 1100 skeet tc6',3,435.72,10,'shoei-xr-1100-skeet-tc6.jpg',5),
(95,18,'xr 1100 tangent tc5',3,201.06,45,'shoei-xr-1100-tangent-tc5.jpg',19),
(96,18,'xr 1100 transmission tc10',3,280.67,25,'shoei-xr-1100-transmission-tc10.jpg',-1),
(97,18,'xr 1100 transmission tc2',3,209.45,25,'shoei-xr-1100-transmission-tc2.jpg',-1),
(98,18,'xr 1100 transmission tc5',3,227.95,45,'shoei-xr-1100-transmission-tc5.jpg',6),
(99,18,'xr 1100 transmission tc8',3,381.32,5,'shoei-xr-1100-transmission-tc8.jpg',5),
(100,18,'xr xr 1100 bradley tc1',3,271.89,40,'shoei-xr-xr-1100-bradley-tc1.jpg',13),
(101,17,'exo 1000 air noir mat',4,262.85,10,'scorpion-exo-1000-air--noir-mat.jpg',6),
(102,17,'exo 1000 air noir',4,211.09,0,'scorpion-exo-1000-air--noir.jpg',4),
(103,17,'exo 1000 air twister noir blanc',4,179.19,20,'scorpion-exo-1000-air--twister-noir-blanc.jpg',8),
(104,17,'exo 1000 air twister noir mat',4,285.53,35,'scorpion-exo-1000-air--twister-noir-mat.jpg',12),
(105,17,'exo 1000 anthracite mat',4,191.25,20,'scorpion-exo-1000-anthracite-mat..jpg',12),
(106,17,'exo 1000 blanc',4,381.55,35,'scorpion-exo-1000-blanc.jpg',12),
(107,17,'exo 1000 fantasia blanc argent',4,253.37,5,'scorpion-exo-1000-fantasia-blanc-argent.jpg',11),
(108,17,'exo 500 air anthracite mat',4,411.5,10,'scorpion-exo-500-air-anthracite-mat.jpg',13),
(109,17,'exo 500 air ardent noir rose',4,378.82,5,'scorpion-exo-500-air-ardent-noir-rose.jpg',-1),
(110,17,'exo 500 air blanc',4,393.37,20,'scorpion-exo-500-air-blanc.jpg',9),
(111,17,'exo 500 air hypersilver',4,429.87,40,'scorpion-exo-500-air-hypersilver.jpg',1),
(112,17,'exo 500 air nelly blanc nacre violet',4,189.2,40,'scorpion-exo-500-air-nelly-blanc-nacre-violet.jpg',14),
(113,17,'exo 500 air noir mat',4,259.04,30,'scorpion-exo-500-air-noir-mat.jpg',7),
(114,17,'exo 750 blanc',4,382.24,5,'scorpion-exo-750-scorpion-blanc.jpg',6),
(115,17,'exo 750 noir',4,153.38,10,'scorpion-exo-750-scorpion-noir.jpg',9),
(116,17,'exo 750 smoky jaune fluo',4,370.96,25,'scorpion-exo-750-smoky-jaune-fluo.jpg',19),
(117,17,'exo 750 smoky noir gris',4,277.68,45,'scorpion-exo-750-smoky-noir-gris.jpg',11);
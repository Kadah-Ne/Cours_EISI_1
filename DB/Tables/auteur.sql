CREATE TABLE `auteur` (
  `Nom_de_plume` VARCHAR(255) NOT NULL,
  `Nom` VARCHAR(255) DEFAULT '',
  `Prenom` VARCHAR(255) DEFAULT '',
  `Adresse` VARCHAR(255) DEFAULT NULL,
  `Age` INT DEFAULT NULL,
  PRIMARY KEY (Nom_de_plume)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci,
ROW_FORMAT = DYNAMIC;

ALTER TABLE `auteur` 
  ADD UNIQUE INDEX UK_auteur_Nom_de_plume(Nom_de_plume);
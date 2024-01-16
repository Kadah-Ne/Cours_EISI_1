CREATE TABLE `livre` (
  `ISBN` INT NOT NULL,
  `Nom` VARCHAR(50) NOT NULL,
  `Auteur` VARCHAR(255) NOT NULL,
  `Edition` VARCHAR(255) NOT NULL,
  `Genre` VARCHAR(255) NOT NULL,
  `Synopsis` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (ISBN)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci,
ROW_FORMAT = DYNAMIC;

ALTER TABLE `livre` 
  ADD UNIQUE INDEX UK_livre_Nom(Nom);

ALTER TABLE `livre` 
  ADD CONSTRAINT `FK_livre_Auteur` FOREIGN KEY (Auteur)
    REFERENCES auteur(Nom_de_plume);

ALTER TABLE `livre` 
  ADD CONSTRAINT `FK_livre_Edition` FOREIGN KEY (Edition)
    REFERENCES editeur(Nom);

ALTER TABLE `livre` 
  ADD CONSTRAINT `FK_livre_Genre` FOREIGN KEY (Genre)
    REFERENCES genre(Nom);
CREATE TABLE `HTML` (
  `ID`      INT NOT NULL AUTO_INCREMENT,
  `Parent`  INT,
  `Name`    VARCHAR(256),
  `Ordinal` INT,
  CONSTRAINT `PK_HTML_ID`     PRIMARY KEY (`ID`),
  CONSTRAINT `FK_HTML_Parent` FOREIGN KEY (`Parent`) REFERENCES `HTML`(`ID`)
);

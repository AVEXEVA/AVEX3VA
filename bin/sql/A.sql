CREATE TABLE A (
  `HTML` INT,
  CONSTRAINT `FK_A_HTML` FOREIGN KEY (`HTML`) REFERENCES `HTML`(`ID`)
);

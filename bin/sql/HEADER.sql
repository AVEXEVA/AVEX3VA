CREATE TABLE `Header` (
  `HTML` INT,
  CONSTRAINT `FK_Header_HTML` FOREIGN KEY (`HTML`) REFERENCES `HTML`(`ID`)
);

CREATE TABLE Sin (
  ID INT NOT NULL AUTO_INCREMENT,
  CONSTRAINT PK_Sin_ID PRIMARY KEY (ID)
);
CREATE TABLE Wrath (
  Sin INT NOT NULL,
  CONSTRAINT FK_Wrath_Sin FOREIGN KEY (Sin) REFERENCES Sin(ID)
);
CREATE TABLE Gluttony (
  Sin INT NOT NULL,
  CONSTRAINT FK_Gluttony_Sin FOREIGN KEY (Sin) REFERENCES Sin(ID)
);
CREATE TABLE Lust (
  Sin INT NOT NULL,
  CONSTRAINT FK_Lust_Sin FOREIGN KEY (Sin) REFERENCES Sin(ID)
);
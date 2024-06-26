CREATE TABLE Client (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  CONSTRAINT PK_Client_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Client_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID)
);
CREATE TABLE Lawyer (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  Client INT NOT NULL
  CONSTRAINT PK_Lawyer_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Lawyer_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID),
  CONSTRAINT FK_Lawyer_Client FOREIGN KEY (Client) REFERENCES Client(ID)
);
CREATE TABLE Case (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(256),
  Defendant INT NOT NULL,
  Prosecution INT NOT NULL,
  Jurisdiction INT NOT NULL,
  Judge INT NOT NULL,
  CONSTRAINT PK_Case_ID PRIMARY KEY (ID),
  CONSTRAINT PK_Case_Defendant FOREIGN KEY (Defendant) REFERENCES Defendant(ID),
  CONSTRAINT PK_Case_Prosecution FOREIGN KEY (Prosecution) REFERENCES Proseuction(ID)
);
CREATE TABLE Defendant (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  CONSTRAINT PK_Defendant_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Defendant_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID)
);
CREATE TABLE Prosecution (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  CONSTRAINT PK_Prosecution_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Proseuction_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID)
);
CREATE TABLE Judge (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  CONSTRAINT PK_Judge_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Judge_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID)
);
CREATE TABLE Evidence (
  ID INT NOT NULL AUTO_INCREMENT,
  Case INT NOT NULL,
  Item INT NOT NULL,
  CONSTRAINT PK_Evidence_ID PRIMARY KEY (ID),
  CONSTRAINT PK_Evidence_Case FOREIGN KEY (Case),
  CONSTRAINT PK_Evidence_Item FOREIGN KEY (Item)
);
CREATE TABLE Jury (
  ID INT NOT NULL,
  Case INT NOT NULL,
  CONSTRAINT PK_Jury_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Jury_Case FOREIGN KEY (Case) REFERENCES Case(ID)
);
CREATE TABLE Juror (
  ID INT NOT NULL,
  Jury INT NOT NULL,
  Number DEFAULT NULL,
  CONSTRAINT PK_Juror_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Juror_Jury FOREIGN KEY (Jury) REFERENCES Jury(ID)
);

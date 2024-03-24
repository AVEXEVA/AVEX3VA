CREATE TABLE Philosopher (
  ID INT NOT NULL AUTO_INCREMENT,
  Person INT NOT NULL,
  CONSTRAINT PK_Philosopher_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Philosopher_Person FOREIGN KEY (Philosopher) REFERENCES Person(ID)
);

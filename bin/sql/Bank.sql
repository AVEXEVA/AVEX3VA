CREATE TABLE Bank (
  ID INT NOT NULL AUTO_INCREMENT,
  Company INT NOT NULL,
  CONSTRAINT PK_Bank_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Bank_Company FOREIGN KEY (Company) REFERENCES Company(ID)
);

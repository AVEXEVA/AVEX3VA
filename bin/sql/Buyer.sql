CREATE TABLE Buyer (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  CONSTRAINT PK_Buyer_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Buyer_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID)
);

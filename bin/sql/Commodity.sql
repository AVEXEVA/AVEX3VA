CREATE TABLE Commodity (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Commodity_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Commodity_Item FOREIGN KEY Item(ID)
);

CREATE TABLE Appliance (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Appliance_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Appliance_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);

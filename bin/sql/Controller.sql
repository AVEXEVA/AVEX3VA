CREATE TABLE Controller (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Controller_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Controller_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Drive (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Drive_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Drive_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
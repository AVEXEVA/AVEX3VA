CREATE TABLE Button (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  Name VARCHAR(256),
  CONSTRAINT PK_Button_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Button_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Wire (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  Name VARCHAR(256)
  CONSTRAINT PK_Wire_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Wire_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Lightbulb (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Lightbulb_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Lightbulb_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Terminal (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  Block INT,
  CONSTRAINT PK_Termianl_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Terminal_Item FOREIGN KEY (Item) REFERENCES Terminal(ID)
  CONSTRAINT FK_Terminal_Block FOREIGN KEY (Block) REFERENCES Terminal_Block(ID)
);
CREATE TABLE Terminal_Block (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Terminal_Block PRIMARY KEY (ID),
  CONSTRAINT FK_Terminal_Block_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Main_Line (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Main_Line_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Main_Line_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Electric_Outlet (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Electric_Outlet_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Electric_Outlet_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Power_Supply (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT,
  CONSTRAINT PK_Power_Supply_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Power_Supply_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);

CREATE TABLE PLC (
  ID INT NOT NULL AUTO_INCREMENT,
  CONSTRAINT PK_PLC_ID PRIMARY KEY (ID)
);
CREATE TABLE PLC_Terminal (
  PLC INT NOT NULL AUTO_INCREMENT,
  CONSTRAINT FK_PLC_Terminal_PLC FOREIGN KEY (PLC) REFERENCES PLC(ID),
  CONSTRAINT FK_PLC_Terminal_Terminal FOREIGN KEY (Terminal) REFERENCES Terminal(ID)
);

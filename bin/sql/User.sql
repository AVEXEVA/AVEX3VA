CREATE TABLE User (
  ID        INT NOT NULL AUTO_INCREMENT,
  Name      VARCHAR(256),
  Password  VARCHAR(256),
  CONSTRAINT PK_User_ID     PRIMARY KEY (ID)
);
CREATE TABLE User_Person (
  User INT NOT NULL,
  Person INT NOT NULL,
  CONSTRAINT FK_User_Person_User FOREIGN KEY (User) REFERENCES User(ID),
  CONSTRAINT FK_User_Person_Person FOREIGN KEY (Person) REFERENCES Person(ID)
);
CREATE TABLE Login (
  ID INT NOT NULL AUTO_INCREMENT,
  User INT NOT NULL,
  IP VARCHAR(64),
  User_Agent INT,
  Timestamp DATETIME CURRENT_TIMESTAMP
);
CREATE TABLE Logout (
  ID INT NOT NULL,
  User INT NOT NULL,
  IP VARCHAR(64),
  User_Agent INT,
  Timestamp DATETIME CURRNET_TIMESTAMP,
  CONSTRAINT PK_Logout_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Logout_User FOREIGN KEY (User) REFERENCES User(ID)
  CONSTRAINT FK_Logout_User_Agent FOREIGN KEY (User_Agent) REFERENCES User_Agent(ID)
);
CREATE TABLE Session (
  ID INT NOT NULL,
  User INT NOT NULL,
  Token INT NOT NULL,
  Time_Lapse INT NOT NULL,
  User_Agent INT NOT NULL,
  Refreshed DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT PK_Session_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Session_User FOREIGN KEY (User) REFERENCES User(ID),
  CONSTRAINT FK_Session_Token FOREIGN KEY (Token) REFERENCES Token(ID),
  CONSTRAINT FK_Session_Time_Lapse FOREIGN KEY (Time_Lapse) REFERENCES Time_Lapse(ID),
  CONSTRAINT FK_Session_User_Agent FOREIGN KEY (User_Agent) REFERENCES User_Agent(ID)
);
CREATE TABLE Token (
  ID INT NOT NULL,
  Alphanumeric VARCHAR(256),
  CONSTRAINT PK_Token_ID PRIMARY KEY (ID)
);

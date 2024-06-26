CREATE TABLE Person (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  First_Name VARCHAR(256),
  Middle_Name VARCHAR(256),
  Last_Name VARCHAR(256),
  Birthday DATETIME,
  Email INT,
  Home INT,
  Work INT,
  Cell INT,
  Office INT,
  CONSTRAINT PK_Person_ID     PRIMARY KEY (ID),
  CONSTRAINT PK_Person_Entity FOREIGN KEY (Entity)  REFERENCES Entity(ID),
  CONSTRAINT FK_Person_Email  FOREIGN KEY (Email)   REFERENCES Email(ID),
  CONSTRAINT FK_Person_Home   FOREIGN KEY (Home)    REFERENCES Address(ID),
  CONSTRAINT FK_Person_Work   FOREIGN KEY (Work)    REFERENCES Address(ID),
  CONSTRAINT FK_Person_Cell   FOREIGN KEY (Cell)    REFERENCES Phone(ID),
  CONSTRAINT FK_Person_Office FOREIGN KEY (Office)  REFERENCES Phone(ID)
);
CREATE TABLE Friendship (
  Friendor INT NOT NULL,
  Friendee INT NOT NULL,
  CONSTRAINT FK_Friend_Friendor FOREIGN KEY (Friendor) REFERENCES Person(ID),
  CONSTRAINT FK_Friend_Friendee FOREIGN KEY (Friendee) REFERENCES Person(ID)
);
CREATE TABLE Group (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  CONSTRAINT PK_Group_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Group_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID)
);
CREATE TABLE Group_Member (
  Group INT NOT NULL,
  Member INT NOT NULL,
  CONSTRAINT FK_Group_Member_Group FOREIGN KEY (Group) REFERENCES Group(ID),
  CONSTRAINT FK_Group_Member_Member FOREIGN KEY (Member) REFERENCES Member(ID)
);
CREATE TABLE Fraternity (
  ID INT NOT NULL AUTO_INCREMENT,
  Entity INT NOT NULL,
  Name VARCHAR(256),
  Description TEXT,
  CONSTRAINT PK_Fraternity_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Fraternity_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID)
);
CREATE TABLE Fraternity_Chapter (
  ID INT NOT NULL AUTO_INCREMENT,
  Fraternity INT NOT NULL,
  Name VARCHAR(256),
  Description TEXT,
  Institution INT,
  CONSTRAINT PK_Fraternity_Chapter_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Fraternity_Chapter_Fraternity FOREIGN KEY (Fraternity) REFERENCES Fraternity(ID),
  CONSTRAINT FK_Fraternity_Chapter_Institution FOREIGN KEY (Institution) REFERENCES Institution(ID)
);
CREATE TABLE Fraternity_Member (
  ID INT NOT NULL AUTO_INCREMENT,
  Chapter INT NOT NULL,
  Person INT NOT NULL,
  Identification VARCHAR(256),
  CONSTRAINT PK_Fraternity_Member_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Fraternity_Member_Chapter FOREIGN KEY (Chapter) REFERENCES Fraternity_Chapter(ID),
  CONSTRAINT FK_Fraternity_Chapter_Person FOREIGN KEY (Person) REFERENCES Person(ID)
);

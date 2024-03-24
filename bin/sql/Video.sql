CREATE TABLE Television_Show (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(256),
  Description TEXT,
  Video INT,
  CONSTRAINT PK_Television_Show_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Television_Show_Video FOREIGN KEY (Video) REFERENCES Video(ID)
);
CREATE TABLE Movie (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(256),
  Description TEXT,
  Video INT,
  CONSTRAINT PK_Movie_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Movie_Video FOREIGN KEY (Video) REFERENCES Video(ID)
);
CREATE TABLE Commercial (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(256),
  Description TEXT,
  Video INT,
  CONSTRAINT PK_Commercial_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Commercial_Video FOREIGN KEY (Video) REFERENCES Video(ID)
);
CREATE TABLE Codec (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(256),
  Description TEXT,
  Extension INT,
  CONSTRAINT PK_Codec_ID PRIMARY KEY (ID),
  CONSTRAINT PK_Codec_Extension FOREIGN KEY Extension REFERENCES Extension(ID)
);
CREATE TABLE Video (
  ID INT NOT NULL AUTO_INCREMENT,
  Codec INT NOT NULL,
  CONSTRAINT PK_Video_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Video_Codec FOREIGN KEY (Codec) REFERENCES Codec(ID)
);

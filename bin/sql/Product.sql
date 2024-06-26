CREATE TABLE Product (
  ID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(256),
  SKU VARCHAR(256),
  Category INT NOT NULL,
  Price FLOAT,
  CONSTRAINT PK_Product_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Product_Category FOREIGN KEY (Category) REFERENCES Product_Category(ID);
);

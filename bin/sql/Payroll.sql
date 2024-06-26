CREATE TABLE Payroll (
  ID INT NOT NULL AUTO_INCREMENT,
  Employee INT NOT NULL,
  CONSTRAINT PK_Payroll_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Payroll_Employee FOREIGN KEY (Employee) REFERENCES Employee(ID)
);
CREATE TABLE Payroll_Item (
  ID INT NOT NULL AUTO_INCREMENT,
  Item INT NOT NULL,
  Amount FLOAT,
  Paid FLOAT,
  CONSTRAINT PK_Payroll_Item_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Payroll_Item_Item FOREIGN KEY (Item) REFERENCES Item(ID)
);
CREATE TABLE Expenses (
  ID INT NOT NULL,
  Employee INT NOT NULL,
  Amount FLOAT,
  Paid FLOAT,
  CONSTRAINT PK_Expenses_ID PRIMARY KEY (ID)
);
CREATE TABLE Expense (
  ID INT NOT NULL,
  Expenses INT NOT NULL,
  Amount FLOAT,
  Paid FLOAT,
  CONSTRAINT PK_Expense_ID PRIMARY KEY (ID),
  CONSTRAINT FK_Expense_Expenses FOREIGN KEY (Expenses) REFERENCES Expenses(ID)
);

CREATE TABLE Insurance_Plan_Benefit (
  Insurance_Plan INT,
  Benfit INT,
  CONSTRAINT FK_Insurance_Plan_Benfit_Insurance_Plan FOREIGN KEY (Insurance_Plan) REFERENCES Insurance_Plan(ID),
  CONSTRAINT FK_Insurance_Plan_Benefit_Benfit FOREIGN KEY (Benefit) REFERENCES Benefit(ID)
);
CREATE TABLE Insurance_Company_Plan (
  Insurance_Company INT NOT NULL,
  Insurance_Plan INT NOT NULL,
  CONSTRAINT FK_Insurance_Company_Plan_Insurance_Company FOREIGN KEY (Insurance_Company) REFERENCES Insurance_Company(ID),
  CONSTRAINT FK_Insurance_Company_Plan_Insurance_Plan FOREIGN KEY (Insurance_Plan) REFERENCES Insurance_Plan(ID)
);
CREATE TABLE Insured_Entity (
  Insurance_Plan INT NOT NULL,
  Insurance_Company INT NOT NULL,
  Entity INT NOT NULL,
  Time_Lapse INT,
  CONSTRAINT FK_Insured_Entity_Insurance_Plan FOREIGN KEY (Insurance_Plan) REFERENCES Insurance_Plan(ID),
  CONSTRAINT FK_Insured_Entity_Insurance_Company FOREIGN KEY (Insurance_Company) REFERENCES Insurance_Company(ID),
  CONSTRAINT FK_Insured_Entity_Entity FOREIGN KEY (Entity) REFERENCES Entity(ID),
  CONSTRAINT FK_Insured_Entity_Time_Lapse FOREIGN KEY (Time_Lapse) REFERENCES Time_Lapse(ID)
);

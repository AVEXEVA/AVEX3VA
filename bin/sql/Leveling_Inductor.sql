CREATE TABLE Leveling_Inductor (
	ID 						INT 			NOT NULL 	identity(1, 1)		PRIMARY KEY,
	Item					INT				NOT NULL,	/*Foreign Key*/
	[Type]					VARCHAR(255)				/*Laser, Magnet, ???*/
);

CREATE TABLE PART (
	PNO INT PRIMARY KEY,
	PNAME VARCHAR(100) NOT NULL,
	COLOUR VARCHAR(100) NOT NULL
);

CREATE TABLE SUPPLIER (
	SNO INT PRIMARY KEY,
	SNAME VARCHAR(100) NOT NULL,
	ADDRESS VARCHAR(255) NOT NULL
);

CREATE TABLE SUPPLY (
	PNO INT,
	SNO INT,
	QUANTITY INT NOT NULL,
	PRIMARY KEY (PNO, SNO),
	FOREIGN KEY (PNO) REFERENCES PART (PNO) ON DELETE CASCADE,
	FOREIGN KEY (SNO) REFERENCES SUPPLIER (SNO) ON DELETE CASCADE
;
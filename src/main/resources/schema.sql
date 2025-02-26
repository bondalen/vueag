CREATE TABLE students.dbo.tutorial (
	id int IDENTITY(1,1) NOT NULL,
	title varchar(255) NULL,
	description varchar(255) NULL,
	published bit NULL,
	CONSTRAINT tutorial_pk PRIMARY KEY (id)
);
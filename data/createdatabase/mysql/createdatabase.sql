CREATE TABLE pogym.types(
	type_id int NOT NULL,
	type nvarchar(100) NOT NULL,
 CONSTRAINT PK_types PRIMARY KEY CLUSTERED 
(
	type_id ASC
));

CREATE TABLE pogym.types_types(
	type_type_id int AUTO_INCREMENT NOT NULL,
	attacker_type_id int NOT NULL,
	defender_type_id int NOT NULL,
	multiplier decimal(18, 4) NOT NULL,
 CONSTRAINT PK_types_types PRIMARY KEY CLUSTERED 
(
	type_type_id ASC
));

ALTER TABLE pogym.types_types  ADD  CONSTRAINT FK_types_types_types FOREIGN KEY(attacker_type_id)
REFERENCES pogym.types (type_id);

#ALTER TABLE pogym.types_types CHECK CONSTRAINT FK_types_types_types

ALTER TABLE pogym.types_types  ADD  CONSTRAINT FK_types_types_types1 FOREIGN KEY(defender_type_id)
REFERENCES pogym.types (type_id)

#ALTER TABLE pogym.types_types CHECK CONSTRAINT FK_types_types_types1



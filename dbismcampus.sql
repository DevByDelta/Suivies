CREATE DATABASE IF NOT EXISTS dbismcampus;
USE dbismcampus;
 
CREATE TABLE Etudiants(
matricule_etudiant VARCHAR(10) PRIMARY KEY 
prenom VARCHAR(25) NOT NULL,
nom VARCHAR(25) NOT NULL,
datenaissance DATE,
numtel INT,
email varchar(10) NOT NULL,
);

CREATE TABLE Inscriptions( 
anne INT NOT NULL,
montant INT NOT NULL,
foreign key (code_specialisation) references Specialisations (code_specialisation),
foreign key (matricule_etudiant) references Etudiant (matricule_etudiant),
)engine=innodb;

CREATE TABLE Specialisations(
code_specialisation VARCHAR(10) PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
FOREIGN KEY (code_filiere) references Filieres (code_filiere),
)engine=innodb;


CREATE TABLE Filieres(
code_filiere VARCHAR(10) PRIMARY KEY,
libelle VARCHAR(25),
)engine=innodb;
				

CREATE TABLE Seances(
date DATE NOT NULL,
heuredebut TIME NOT NULL,
heurefin TIME NOT NULL,
 FOREIGN KEY(matricule_etudiant) references  Etudiants(matricule_etudiant),	
 FOREIGN KEY(code_cours) references Cours(code_cours),
 FOREIGN KEY(matricule_formateur) references Formateurs( matricule_formateur),
)engine=innodb;

CREATE TABLE Formateurs(
matricule_formateur VARCHAR(15) PRIMARY KEY,
prenom VARCHAR(25) NOT NULL,
nom VARCHAR(25) NOT NULL,
numtel INT NOT NULL,
email VARCHAR(50) NOT NULL,
)engine=innodb;

	
CREATE TABLE Cours(
code_cours VARCHAR(10) PRIMARY KEY,
libelle VARCHAR(100),
description VARCHAR(50),
volumehoraire INT NOT NULL,
)engine=innodb;


CREATE DATABASE IF NOT EXISTS dbismcampus;
USE dbismcampus;
 
CREATE TABLE Etudiants(
matricule_etudiant INT PRIMARY KEY 
PRENON VARCHAR(100) NOT NULL,
nom VARCHAR(10) NOT NULL,
datenaissance DATE,
numtel INT,
email varchar(10)NOT NULL,
)engine=innodb;
				 CREATE TABLE INSCRIPTIONS( 
				anne INT NOT NULL,
				montant INT NOT NULL,
                                                        foreign key (code_specialisation)references 
				specialisations(code_specialisation),
			foreign key (matricule_etudiant)references etudiant matricule_etudiant,
				)engine=innodb;

CREATE TABLE SPECIALISATIONS(
code_specialisation VARCHAR(10) PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
FOREIGN KEY(code_filiere)references filieres(code_filiere),
)engine=innodb;


				CREATE TABLE filiere(
				code_filiere VARCHAR(10) PRIMARY KEY,
				libelle VARCHAR (10),
				)engine=innodb;
				

CREATE TABLE seance(
date DATE NOT NULL,
heuredebut TIME NOT NULL,
heurefin TIME NOT NULL,
 FOREIGN KEY(matricule_etudiant) reference  etudiant matricule_etudiant,	
 FOREIGN KEY(code_cours) reference coure(code_cours),
 FOREIGN KEY(matricule_formateur) references formateur( matricule_formateur),
)engine=innodb;


			CREATE TABLE formateurs(
                                       matricule_formateur INT PRIMARY KEY,
			prenom VARCHAR NOT NULL,
			nom VARCHAR(100) NOT NULL,
			numtel INT NOT NULL
			email VARCHAR(5),NOT NULL
			)engine=innodb;

	
			CREATE TABLE cours(
    	                       code_cours VARCHAR(10) PRIMARY KEY,
                                        libelle VARCHAR(100),
			description VARCHAR (50),
			volumehoraire INT NOT NULL,
			)engine=innodb;


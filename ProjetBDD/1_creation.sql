CREATE TABLE Utilisateur(
   Id_user VARCHAR(50),
   ut_nom VARCHAR(50),
   ut_prenom VARCHAR(50),
   ut_date_naissance DATE,
   ut_pdp VARCHAR(255),
   ut_biographie VARCHAR(1000),
   ut_ville VARCHAR(50),
   ut_pays VARCHAR(50),
   PRIMARY KEY(Id_user)
);

CREATE TABLE Compte(
   Id_Compte VARCHAR(50),
   co_email VARCHAR(50),
   co_numero_tel VARCHAR(50),
   co_mdp VARCHAR(50),
   co_date_creation DATE,
   co_statut VARCHAR(50),
   Id_user VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Compte),
   FOREIGN KEY(Id_user) REFERENCES Utilisateur(Id_user)
);

CREATE TABLE profession(
   Id_Experience INT,
   pr_poste VARCHAR(150),
   pr_date_fin DATE,
   pr_date_debut DATE,
   Id_user VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Experience),
   FOREIGN KEY(Id_user) REFERENCES Utilisateur(Id_user)
);

CREATE TABLE Formation(
   Id_Formation INT,
   fo_diplome VARCHAR(50),
   PRIMARY KEY(Id_Formation)
);

CREATE TABLE Etablissement(
   Id_Etablissement INT,
   et_nom VARCHAR(50),
   et_date_creation DATE,
   et_description VARCHAR(2000),
   PRIMARY KEY(Id_Etablissement)
);

CREATE TABLE Offre_d_emploi(
   Id_Offre_d_emploi INT,
   of_titre VARCHAR(50),
   of_description VARCHAR(2000),
   of_statut VARCHAR(50),
   Id_Etablissement INT NOT NULL,
   PRIMARY KEY(Id_Offre_d_emploi),
   FOREIGN KEY(Id_Etablissement) REFERENCES Etablissement(Id_Etablissement)
);

CREATE TABLE Participer(
   Id_user VARCHAR(50),
   Id_Formation INT,
   date_obtention DATE,
   PRIMARY KEY(Id_user, Id_Formation),
   FOREIGN KEY(Id_user) REFERENCES Utilisateur(Id_user),
   FOREIGN KEY(Id_Formation) REFERENCES Formation(Id_Formation)
);

CREATE TABLE Suivre(
   Id_user VARCHAR(50),
   Id_user_1 VARCHAR(50),
   statut_suivi VARCHAR(50),
   PRIMARY KEY(Id_user, Id_user_1),
   FOREIGN KEY(Id_user) REFERENCES Utilisateur(Id_user),
   FOREIGN KEY(Id_user_1) REFERENCES Utilisateur(Id_user)
);

CREATE TABLE affilier(
   Id_Experience INT,
   Id_Etablissement INT,
   PRIMARY KEY(Id_Experience, Id_Etablissement),
   FOREIGN KEY(Id_Experience) REFERENCES profession(Id_Experience),
   FOREIGN KEY(Id_Etablissement) REFERENCES Etablissement(Id_Etablissement)
);

CREATE TABLE Propose(
   Id_Formation INT,
   Id_Etablissement INT,
   PRIMARY KEY(Id_Formation, Id_Etablissement),
   FOREIGN KEY(Id_Formation) REFERENCES Formation(Id_Formation),
   FOREIGN KEY(Id_Etablissement) REFERENCES Etablissement(Id_Etablissement)
);

CREATE TABLE Postuler(
   Id_user VARCHAR(50),
   Id_Offre_d_emploi INT,
   statut_candidature VARCHAR(50),
   PRIMARY KEY(Id_user, Id_Offre_d_emploi),
   FOREIGN KEY(Id_user) REFERENCES Utilisateur(Id_user),
   FOREIGN KEY(Id_Offre_d_emploi) REFERENCES Offre_d_emploi(Id_Offre_d_emploi)
);
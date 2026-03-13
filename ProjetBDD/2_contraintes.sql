ALTER TABLE Compte
ADD CONSTRAINT CHECK (co_email LIKE '%_@_%.__%'),
ADD CONSTRAINT CHECK (co_numero_tel LIKE '+%' OR co_numero_tel LIKE '0%'),
ADD CONSTRAINT CHECK (co_statut IN ('professionnel', 'prive'));

ALTER TABLE Postuler
ADD CONSTRAINT CHECK (statut_candidature IN ('en_attente', 'acceptee', 'refusee'));

ALTER TABLE Suivre
ADD CONSTRAINT CHECK (statut_suivi IN ('en_attente', 'acceptee', 'refusee'));

ALTER TABLE offre_d_emploi
ADD CONSTRAINT CHECK (of_statut IN ('ouverte', 'fermee'));
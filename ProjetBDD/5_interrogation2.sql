-- 1. Candidats ayant postulé à une offre de mon établissement
SELECT DISTINCT Utilisateur.ut_nom, Utilisateur.ut_prenom
FROM Utilisateur
WHERE Utilisateur.Id_user IN (
    SELECT Postuler.Id_user
    FROM Postuler
    WHERE Postuler.Id_Offre_d_emploi IN (
        SELECT Offre_d_emploi.Id_Offre_d_emploi
        FROM Offre_d_emploi
        WHERE Offre_d_emploi.Id_Etablissement = 1
    )
);

-- 2. Offres auxquelles aucun utilisateur n'a postulé
SELECT Offre_d_emploi.of_titre
FROM Offre_d_emploi
WHERE NOT EXISTS (
    SELECT 1
    FROM Postuler
    WHERE Postuler.Id_Offre_d_emploi = Offre_d_emploi.Id_Offre_d_emploi
);

-- 3. Offres d'emploi qui ont été demandées par au moins 2 candidats
SELECT id_Offre_d_emploi, COUNT(*) AS nb_candidats
FROM Postuler
GROUP BY id_Offre_d_emploi
HAVING COUNT(*) >= 2;

-- 4. Candidats ayant plus d'expérience que la moyenne
SELECT utilisateur.ut_nom, utilisateur.ut_prenom, COUNT(*) AS experiences
FROM utilisateur
JOIN profession ON utilisateur.id_user = profession.id_user
GROUP BY utilisateur.id_user, utilisateur.ut_nom, utilisateur.ut_prenom
HAVING COUNT(*) > (
    SELECT AVG(nb_exp)
    FROM (
        SELECT COUNT(*) AS nb_exp
        FROM profession
        GROUP BY id_user) AS stat
);

-- 5. Utilisateurs qui ont au moins une expérience professionnelle (EXISTS)
SELECT Utilisateur.ut_nom, Utilisateur.ut_prenom
FROM Utilisateur
WHERE EXISTS (
    SELECT 1
    FROM profession
    WHERE profession.Id_user = Utilisateur.Id_user
);

-- 6. Utilisateurs ayant postulé à au moins 2 offres
SELECT Utilisateur.ut_nom, Utilisateur.ut_prenom, COUNT(Postuler.Id_Offre_d_emploi) AS nb_candidatures
FROM Utilisateur
JOIN Postuler ON Postuler.Id_user = Utilisateur.Id_user
GROUP BY Utilisateur.Id_user, Utilisateur.ut_nom, Utilisateur.ut_prenom
HAVING COUNT(Postuler.Id_Offre_d_emploi) >= 2;
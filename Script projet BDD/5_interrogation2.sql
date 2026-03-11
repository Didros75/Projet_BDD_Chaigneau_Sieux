-- 1. Candidats ayant postulé à une offre de mon établissement (IN)
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

-- 2. Offres auxquelles aucun utilisateur n'a postulé (NOT EXISTS)
SELECT Offre_d_emploi.of_titre
FROM Offre_d_emploi
WHERE NOT EXISTS (
    SELECT 1
    FROM Postuler
    WHERE Postuler.Id_Offre_d_emploi = Offre_d_emploi.Id_Offre_d_emploi
);

-- 3. Utilisateurs qui n'ont jamais été acceptés à une offre (NOT IN)
SELECT Utilisateur.ut_nom, Utilisateur.ut_prenom
FROM Utilisateur
WHERE Utilisateur.Id_user NOT IN (
    SELECT Postuler.Id_user
    FROM Postuler
    WHERE Postuler.statut_candidature = 'acceptee'
);

-- 4. Candidats n'ayant aucune expérience professionnelle actuelle (NOT IN)
SELECT DISTINCT Utilisateur.ut_nom, Utilisateur.ut_prenom, Compte.co_email
FROM Utilisateur
JOIN Compte ON Compte.Id_user = Utilisateur.Id_user
WHERE Utilisateur.Id_user IN (
    SELECT Postuler.Id_user
    FROM Postuler
    JOIN Offre_d_emploi ON Postuler.Id_Offre_d_emploi = Offre_d_emploi.Id_Offre_d_emploi
    WHERE Offre_d_emploi.Id_Etablissement = 1
)
AND Utilisateur.Id_user NOT IN (
    SELECT profession.Id_user
    FROM profession
    WHERE profession.pr_date_fin IS NULL
);

-- 5. Utilisateurs qui ont au moins une expérience professionnelle (EXISTS)
SELECT Utilisateur.ut_nom, Utilisateur.ut_prenom
FROM Utilisateur
WHERE EXISTS (
    SELECT 1
    FROM profession
    WHERE profession.Id_user = Utilisateur.Id_user
);

-- 6.Utilisateurs ayant postulé à plus de 2 offres
SELECT Utilisateur.ut_nom, Utilisateur.ut_prenom, COUNT(Postuler.Id_Offre_d_emploi) AS nb_candidatures
FROM Utilisateur
JOIN Postuler ON Postuler.Id_user = Utilisateur.Id_user
GROUP BY Utilisateur.Id_user, Utilisateur.ut_nom, Utilisateur.ut_prenom
HAVING COUNT(Postuler.Id_Offre_d_emploi) > 2;
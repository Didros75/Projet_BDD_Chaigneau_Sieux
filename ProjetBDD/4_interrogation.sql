-- 1. Toutes les offres d'emploi ouvertes
SELECT of_titre, of_description
FROM Offre_d_emploi
WHERE of_statut = 'ouverte'
ORDER BY of_titre ASC;

-- 2. Toutes les offres d'emploi disponibles qui continennet le mot développeur
SELECT of_titre, of_description
FROM Offre_d_emploi
WHERE of_titre LIKE '%developpeur%'
AND of_statut = 'ouverte';

-- 3. Les utilisateurs ayant obtenu leur diplôme entre 2010 et 2020
SELECT Utilisateur.ut_nom, Utilisateur.ut_prenom, Formation.fo_diplome, Participer.date_obtention
FROM Participer
INNER JOIN Utilisateur ON Participer.id_user = Utilisateur.id_user
INNER JOIN Formation ON participer.id_formation = Formation.id_formation
WHERE date_obtention BETWEEN '2010-01-01' AND '2020-12-31';

-- 4. Les offres d'emploi des etablissements suivants : CloudMatrix, DevStudio France et TechCorp Solutions
SELECT of_titre, et_nom
FROM etablissement 
JOIN offre_d_emploi 
ON etablissement.Id_Etablissement = offre_d_emploi.Id_Etablissement
WHERE et_nom IN ('CloudMatrix', 'DevStudio France', 'TechCorp Solutions');

--  5. Les offres d'emploi triées par nombre de candidatures
SELECT of_titre, COUNT(*) AS nb_candidatures
FROM Postuler
JOIN offre_d_emploi
ON offre_d_emploi.Id_Offre_d_emploi = postuler.Id_Offre_d_emploi
GROUP BY of_titre
ORDER BY COUNT(*) desc;

-- 6.  Les offres d'emploi qui ont eu moins de 2 candidatures
SELECT of_titre
FROM Offre_d_emploi
WHERE id_Offre_d_emploi NOT IN (
    SELECT id_Offre_d_emploi
    FROM Postuler
    GROUP BY Id_Offre_d_emploi
	HAVING COUNT(*) < 2
);

-- 7. L'entreprise qui a le plus d'offres d'emploi
SELECT et_nom, count(offre_d_emploi.Id_Offre_d_emploi) as nb_offres
FROM etablissement
JOIN offre_d_emploi on etablissement.Id_Etablissement = offre_d_emploi.Id_Etablissement
GROUP BY etablissement.Id_Etablissement, etablissement.et_nom
ORDER BY nb_offres desc
LIMIT 1;

-- 8. Les etablissements qui proposent des formations
SELECT DISTINCT et_nom
FROM Etablissement 
WHERE EXISTS (
    SELECT *
    FROM Propose 
    WHERE Propose.id_Etablissement = Etablissement.id_Etablissement
);
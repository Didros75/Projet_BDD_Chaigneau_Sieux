-- 1. Toutes les offres d'emploi disponibles
SELECT DISTINCT of_titre, of_description
FROM Offre_d_emploi
WHERE of_statut = 'ouverte'
ORDER BY of_titre ASC;

-- 2. Offres dont la description contient Java ou Python
SELECT of_titre, of_description
FROM Offre_d_emploi
WHERE (of_titre LIKE '%Développeur%' OR of_titre LIKE '%Developer%')
AND of_statut = 'ouverte';

-- 3. Formations des utilisateurs ayant été acceptés dans des offres contenant "ingénieur" ou "engineer"
SELECT DISTINCT formation.fo_diplome, offre_d_emploi.of_titre
FROM postuler
JOIN offre_d_emploi ON postuler.Id_Offre_d_emploi = offre_d_emploi.Id_Offre_d_emploi
JOIN utilisateur ON postuler.Id_user = utilisateur.Id_user
JOIN participer ON participer.Id_user = utilisateur.Id_user
JOIN formation ON participer.Id_Formation = formation.Id_Formation
WHERE postuler.statut_candidature IN ('acceptee', 'en_attente')
AND (offre_d_emploi.of_titre LIKE '%ingénieur%' OR offre_d_emploi.of_titre LIKE '%engineer%');

-- 4. Nom, numéro de téléphone et adresse mail des utilisateurs qui ont fait l'EFREI
SELECT DISTINCT Utilisateur.ut_nom, Utilisateur.ut_prenom, Compte.co_email, Compte.co_numero_tel
FROM Utilisateur
JOIN Compte ON Compte.Id_user = Utilisateur.Id_user
JOIN Participer ON Participer.Id_user = Utilisateur.Id_user
JOIN Propose ON Propose.Id_Formation = Participer.Id_Formation
JOIN Etablissement ON Etablissement.Id_Etablissement = Propose.Id_Etablissement
WHERE Etablissement.et_nom = 'EFREI Paris'
AND Participer.date_obtention IS NOT NULL;

-- 5. Nom, numéro de téléphone et adresse mail des utilisateurs qui ont eu un poste avec Chef dans l'intitulé
SELECT DISTINCT Utilisateur.ut_nom, Utilisateur.ut_prenom, Compte.co_numero_tel, Compte.co_email
FROM Utilisateur
JOIN profession ON profession.Id_user = Utilisateur.Id_user
JOIN Compte ON Compte.Id_user = Utilisateur.Id_user
WHERE profession.pr_poste LIKE '%chef%';

-- 6. Utilisateurs ayant obtenu leur diplôme en 2015
SELECT DISTINCT Utilisateur.ut_nom, Utilisateur.ut_prenom, Formation.fo_diplome
FROM Utilisateur
JOIN Participer ON Participer.Id_user = Utilisateur.Id_user
JOIN Formation ON Formation.Id_Formation = Participer.Id_Formation
WHERE Participer.date_obtention BETWEEN '2014-01-01' AND '2016-12-31';

-- 7. Entreprise qui recrute le plus (celle avec le plus d'offres ouvertes)
SELECT Etablissement.et_nom, COUNT(Offre_d_emploi.Id_Offre_d_emploi) AS nb_offres
FROM Etablissement
JOIN Offre_d_emploi ON Offre_d_emploi.Id_Etablissement = Etablissement.Id_Etablissement
WHERE Offre_d_emploi.of_statut = 'ouverte'
GROUP BY Etablissement.Id_Etablissement, Etablissement.et_nom
ORDER BY nb_offres DESC
LIMIT 1;


-- 8. Mes suivis (personnes que je suis) qui ont un poste dans l'entreprise qui recrute le plus
SELECT DISTINCT Utilisateur.ut_nom, Utilisateur.ut_prenom, profession.pr_poste, Etablissement.et_nom
FROM Suivre
JOIN Utilisateur ON Suivre.Id_user_1 = Utilisateur.Id_user
JOIN profession ON profession.Id_user = Utilisateur.Id_user
JOIN affilier ON affilier.Id_Experience = profession.Id_Experience
JOIN Etablissement ON Etablissement.Id_Etablissement = affilier.Id_Etablissement
WHERE Suivre.Id_user = 1
AND Etablissement.et_nom = 'TechCorp Solutions';
-- ============================================================
-- SCRIPT D'INSERTION DE DONNÉES
-- Ordre respectant les contraintes de clés étrangères
-- ============================================================

-- ============================================================
-- 1. ETABLISSEMENT (pas de FK)
-- 15 entreprises (Id 1-15) + 5 écoles (Id 16-20)
-- ============================================================
INSERT INTO Etablissement (Id_Etablissement, et_nom, et_date_creation, et_description) VALUES
(1,  'TechCorp Solutions',    '2005-03-12', 'Entreprise de développement logiciel'),
(2,  'DataVision SA',         '2010-06-01', 'Société spécialisée en data science'),
(3,  'CyberSec Group',        '2008-11-20', 'Entreprise de cybersécurité'),
(4,  'InnovateTech',          '2012-04-15', 'Startup technologique innovante'),
(5,  'CloudMatrix',           '2015-09-30', 'Services cloud et infrastructure'),
(6,  'DevStudio France',      '2007-02-28', 'Studio de développement web'),
(7,  'AI Dynamics',           '2018-07-10', 'Intelligence artificielle appliquée'),
(8,  'NetWork Pro',           '2003-01-05', 'Solutions réseau et télécom'),
(9,  'SoftBridge',            '2011-08-22', 'Intégration de systèmes informatiques'),
(10, 'PixelForge',            '2016-12-01', 'Agence digitale et créative'),
(11, 'LogiSmart',             '2009-05-18', 'Logistique et systèmes embarqués'),
(12, 'FinTech360',            '2014-03-07', 'Solutions financières numériques'),
(13, 'MedTech Innovations',   '2017-10-14', 'Technologies pour le secteur médical'),
(14, 'GreenIT Solutions',     '2020-02-29', 'Informatique éco-responsable'),
(15, 'Quantix Analytics',     '2013-06-25', 'Analyse de données et business intelligence'),
(16, 'EFREI Paris',           '1936-01-01', 'École d''ingénieurs du numérique'),
(17, 'EPITA',                 '1984-01-01', 'École pour l''informatique et les techniques avancées'),
(18, 'EPITECH',               '1999-01-01', 'École de l''innovation technologique'),
(19, 'ISEP',                  '1958-01-01', 'Institut supérieur d''électronique de Paris'),
(20, 'ESIEE Paris',           '1904-01-01', 'École supérieure d''ingénieurs en électrotechnique');

-- ============================================================
-- 2. FORMATION (pas de FK)
-- ============================================================
INSERT INTO Formation (Id_Formation, fo_diplome) VALUES
(1,  'Bachelor Informatique'),
(2,  'Master Cybersécurité'),
(3,  'Master Intelligence Artificielle'),
(4,  'Bachelor Réseaux & Télécommunications'),
(5,  'Master Développement Logiciel'),
(6,  'Bachelor Data Science'),
(7,  'Master Cloud Computing'),
(8,  'Bachelor Génie Logiciel'),
(9,  'Master Systèmes Embarqués'),
(10, 'Bachelor Web & Mobile');

-- ============================================================
-- 3. PROPOSE (FK vers Formation et Etablissement déjà remplis)
-- Les écoles (Id 16-20) proposent les formations
-- Une école peut proposer plusieurs formations
-- ============================================================
INSERT INTO Propose (Id_Formation, Id_Etablissement) VALUES
(1,  16), -- EFREI : Bachelor Informatique
(2,  17), -- EPITA : Master Cybersécurité
(3,  17), -- EPITA : Master IA
(4,  18), -- EPITECH : Bachelor Réseaux
(5,  18), -- EPITECH : Master Dev Logiciel
(6,  19), -- ISEP : Bachelor Data Science
(7,  19), -- ISEP : Master Cloud Computing
(8,  20), -- ESIEE : Bachelor Génie Logiciel
(9,  20), -- ESIEE : Master Systèmes Embarqués
(10, 16); -- EFREI : Bachelor Web & Mobile

-- ============================================================
-- 4. UTILISATEUR (pas de FK)
-- 30 utilisateurs
-- ============================================================
INSERT INTO Utilisateur (Id_user, ut_nom, ut_prenom, ut_date_naissance, ut_pdp, ut_biographie, ut_ville, ut_pays) VALUES
(1,  'Martin',    'Alice',    '1990-04-12', 'pdp1.jpg',  'Développeuse passionnée',          'Paris',       'France'),
(2,  'Bernard',   'Thomas',   '1988-07-23', 'pdp2.jpg',  'Expert en cybersécurité',          'Lyon',        'France'),
(3,  'Dupont',    'Sophie',   '1992-11-05', 'pdp3.jpg',  'Data scientist confirmée',         'Marseille',   'France'),
(4,  'Leroy',     'Maxime',   '1995-02-18', 'pdp4.jpg',  'Ingénieur cloud',                  'Bordeaux',    'France'),
(5,  'Moreau',    'Julie',    '1991-08-30', 'pdp5.jpg',  'Spécialiste IA',                   'Toulouse',    'France'),
(6,  'Simon',     'Pierre',   '1987-05-14', 'pdp6.jpg',  'Architecte logiciel senior',       'Nantes',      'France'),
(7,  'Laurent',   'Emma',     '1993-09-27', 'pdp7.jpg',  'Développeuse full-stack',          'Strasbourg',  'France'),
(8,  'Lefebvre',  'Lucas',    '1989-12-03', 'pdp8.jpg',  'DevOps engineer',                  'Lille',       'France'),
(9,  'Michel',    'Camille',  '1994-03-21', 'pdp9.jpg',  'Product manager tech',             'Nice',        'France'),
(10, 'Garcia',    'Antoine',  '1986-06-09', 'pdp10.jpg', 'Lead developer backend',           'Rennes',      'France'),
(11, 'David',     'Léa',      '1990-10-15', 'pdp11.jpg', 'UX/UI designer',                   'Montpellier', 'France'),
(12, 'Bertrand',  'Nicolas',  '1992-01-28', 'pdp12.jpg', 'Ingénieur réseaux',                'Paris',       'France'),
(13, 'Robert',    'Inès',     '1988-04-17', 'pdp13.jpg', 'Analyste financière tech',         'Lyon',        'France'),
(14, 'Richard',   'Hugo',     '1991-07-08', 'pdp14.jpg', 'Développeur mobile',               'Bordeaux',    'France'),
(15, 'Petit',     'Manon',    '1993-11-22', 'pdp15.jpg', 'Chef de projet SI',                'Toulouse',    'France'),
(16, 'Durand',    'Théo',     '1996-06-14', 'pdp16.jpg', 'Étudiant en informatique',         'Paris',       'France'),
(17, 'Lecomte',   'Chloé',    '1997-09-03', 'pdp17.jpg', 'Étudiante en cybersécurité',       'Lyon',        'France'),
(18, 'Morin',     'Baptiste', '1998-02-20', 'pdp18.jpg', 'Étudiant en IA',                   'Marseille',   'France'),
(19, 'Garnier',   'Lucie',    '1997-05-11', 'pdp19.jpg', 'Étudiante en réseaux',             'Nantes',      'France'),
(20, 'Faure',     'Nathan',   '1998-11-30', 'pdp20.jpg', 'Étudiant en développement',        'Strasbourg',  'France'),
(21, 'Rousseau',  'Jade',     '1999-03-07', 'pdp21.jpg', 'Étudiante en data science',        'Bordeaux',    'France'),
(22, 'Blanc',     'Romain',   '1997-07-18', 'pdp22.jpg', 'Étudiant en cloud computing',      'Toulouse',    'France'),
(23, 'Guerin',    'Pauline',  '1998-10-25', 'pdp23.jpg', 'Étudiante en génie logiciel',      'Lille',       'France'),
(24, 'Muller',    'Axel',     '1999-01-14', 'pdp24.jpg', 'Étudiant en systèmes embarqués',   'Nice',        'France'),
(25, 'Henry',     'Océane',   '1997-04-29', 'pdp25.jpg', 'Étudiante en web & mobile',        'Rennes',      'France'),
(26, 'Girard',    'Clément',  '1985-08-06', 'pdp26.jpg', 'Consultant IT senior',             'Paris',       'France'),
(27, 'Andre',     'Margaux',  '1990-12-19', 'pdp27.jpg', 'Développeuse backend',             'Lyon',        'France'),
(28, 'Lefebvre',  'Kevin',    '1987-03-14', 'pdp28.jpg', 'Ingénieur systèmes',               'Marseille',   'France'),
(29, 'Boyer',     'Laura',    '1993-06-02', 'pdp29.jpg', 'Cheffe de projet digital',         'Bordeaux',    'France'),
(30, 'Fontaine',  'Adrien',   '1991-09-16', 'pdp30.jpg', 'Développeur frontend',             'Toulouse',    'France');

-- ============================================================
-- 5. COMPTE (FK vers Utilisateur)
-- Un compte par utilisateur
-- ============================================================
INSERT INTO Compte (Id_Compte, co_email, co_numero_tel, co_mdp, co_date_creation, co_statut, Id_user) VALUES
(1,  'alice.martin@gmail.com',      '+33612345601', 'hashed_pwd_01', '2020-01-10', 'professionnel', 1),
(2,  'thomas.bernard@gmail.com',    '+33612345602', 'hashed_pwd_02', '2019-03-22', 'professionnel', 2),
(3,  'sophie.dupont@gmail.com',     '+33612345603', 'hashed_pwd_03', '2021-05-14', 'professionnel', 3),
(4,  'maxime.leroy@gmail.com',      '+33612345604', 'hashed_pwd_04', '2022-07-01', 'professionnel', 4),
(5,  'julie.moreau@gmail.com',      '+33612345605', 'hashed_pwd_05', '2020-09-18', 'professionnel', 5),
(6,  'pierre.simon@gmail.com',      '+33612345606', 'hashed_pwd_06', '2018-11-30', 'professionnel', 6),
(7,  'emma.laurent@gmail.com',      '+33612345607', 'hashed_pwd_07', '2021-02-08', 'professionnel', 7),
(8,  'lucas.lefebvre@gmail.com',    '+33612345608', 'hashed_pwd_08', '2019-04-25', 'professionnel', 8),
(9,  'camille.michel@gmail.com',    '+33612345609', 'hashed_pwd_09', '2022-06-13', 'professionnel', 9),
(10, 'antoine.garcia@gmail.com',    '+33612345610', 'hashed_pwd_10', '2017-08-05', 'professionnel', 10),
(11, 'lea.david@gmail.com',         '+33612345611', 'hashed_pwd_11', '2020-10-20', 'professionnel', 11),
(12, 'nicolas.bertrand@gmail.com',  '+33612345612', 'hashed_pwd_12', '2021-12-07', 'professionnel', 12),
(13, 'ines.robert@gmail.com',       '+33612345613', 'hashed_pwd_13', '2019-02-14', 'professionnel', 13),
(14, 'hugo.richard@gmail.com',      '+33612345614', 'hashed_pwd_14', '2020-04-28', 'professionnel', 14),
(15, 'manon.petit@gmail.com',       '+33612345615', 'hashed_pwd_15', '2021-07-16', 'professionnel', 15),
(16, 'theo.durand@gmail.com',       '+33612345616', 'hashed_pwd_16', '2022-09-03', 'prive',         16),
(17, 'chloe.lecomte@gmail.com',     '+33612345617', 'hashed_pwd_17', '2023-01-11', 'prive',         17),
(18, 'baptiste.morin@gmail.com',    '+33612345618', 'hashed_pwd_18', '2023-02-20', 'prive',         18),
(19, 'lucie.garnier@gmail.com',     '+33612345619', 'hashed_pwd_19', '2022-11-08', 'prive',         19),
(20, 'nathan.faure@gmail.com',      '+33612345620', 'hashed_pwd_20', '2023-03-15', 'prive',         20),
(21, 'jade.rousseau@gmail.com',     '+33612345621', 'hashed_pwd_21', '2022-08-27', 'prive',         21),
(22, 'romain.blanc@gmail.com',      '+33612345622', 'hashed_pwd_22', '2023-04-04', 'prive',         22),
(23, 'pauline.guerin@gmail.com',    '+33612345623', 'hashed_pwd_23', '2022-10-19', 'prive',         23),
(24, 'axel.muller@gmail.com',       '+33612345624', 'hashed_pwd_24', '2023-05-22', 'prive',         24),
(25, 'oceane.henry@gmail.com',      '+33612345625', 'hashed_pwd_25', '2022-12-31', 'prive',         25),
(26, 'clement.girard@gmail.com',    '+33612345626', 'hashed_pwd_26', '2016-06-10', 'professionnel', 26),
(27, 'margaux.andre@gmail.com',     '+33612345627', 'hashed_pwd_27', '2020-07-23', 'professionnel', 27),
(28, 'kevin.lefebvre@gmail.com',    '+33612345628', 'hashed_pwd_28', '2018-09-08', 'professionnel', 28),
(29, 'laura.boyer@gmail.com',       '+33612345629', 'hashed_pwd_29', '2021-11-01', 'professionnel', 29),
(30, 'adrien.fontaine@gmail.com',   '+33612345630', 'hashed_pwd_30', '2020-02-17', 'professionnel', 30);

-- ============================================================
-- 6. PROFESSION (FK vers Utilisateur)
-- Utilisateurs 1-15 et 26-30 sont des professionnels (20 users)
-- Utilisateurs 16-25 sont des étudiants (pas de profession)
-- Un utilisateur peut avoir plusieurs professions, une seule sans date_fin (NULL)
-- ============================================================
INSERT INTO profession (Id_Experience, pr_poste, pr_date_fin, pr_date_debut, Id_user) VALUES
-- Utilisateur 1 : 2 postes (1 terminé, 1 en cours)
(1,  'Développeuse Junior',          '2018-12-31', '2016-01-15', 1),
(2,  'Développeuse Senior',          NULL,          '2019-01-10', 1),
-- Utilisateur 2
(3,  'Analyste Sécurité',            '2019-06-30', '2015-03-01', 2),
(4,  'Expert Cybersécurité',         NULL,          '2019-07-15', 2),
-- Utilisateur 3
(5,  'Data Analyst',                 '2020-03-31', '2017-09-01', 3),
(6,  'Data Scientist Senior',        NULL,          '2020-04-10', 3),
-- Utilisateur 4
(7,  'Ingénieur Infrastructure',     '2021-01-31', '2018-06-01', 4),
(8,  'Cloud Architect',              NULL,          '2021-02-15', 4),
-- Utilisateur 5
(9,  'Chercheuse IA Junior',         '2019-08-31', '2016-09-01', 5),
(10, 'Ingénieure IA Senior',         NULL,          '2019-09-15', 5),
-- Utilisateur 6
(11, 'Développeur Fullstack',        '2017-12-31', '2013-01-15', 6),
(12, 'Architecte Logiciel',          NULL,          '2018-01-10', 6),
-- Utilisateur 7
(13, 'Développeuse Frontend',        '2020-06-30', '2018-07-01', 7),
(14, 'Développeuse Fullstack',       NULL,          '2020-07-15', 7),
-- Utilisateur 8
(15, 'Admin Système',                '2018-09-30', '2015-10-01', 8),
(16, 'DevOps Engineer',              NULL,          '2018-10-15', 8),
-- Utilisateur 9
(17, 'Business Analyst',             '2021-03-31', '2018-04-01', 9),
(18, 'Product Manager',              NULL,          '2021-04-10', 9),
-- Utilisateur 10
(19, 'Développeur Backend',          '2016-11-30', '2012-12-01', 10),
(20, 'Lead Developer',               NULL,          '2016-12-15', 10),
-- Utilisateur 11 (un seul poste en cours)
(21, 'UX/UI Designer',               NULL,          '2017-05-01', 11),
-- Utilisateur 12
(22, 'Technicien Réseaux',           '2019-07-31', '2015-08-01', 12),
(23, 'Ingénieur Réseaux Senior',     NULL,          '2019-08-15', 12),
-- Utilisateur 13
(24, 'Analyste Junior',              '2020-02-28', '2016-03-01', 13),
(25, 'Analyste Financière Senior',   NULL,          '2020-03-10', 13),
-- Utilisateur 14
(26, 'Développeur Android',          '2021-05-31', '2018-06-01', 14),
(27, 'Développeur Mobile',           NULL,          '2021-06-15', 14),
-- Utilisateur 15
(28, 'Chef de Projet Junior',        '2020-09-30', '2017-10-01', 15),
(29, 'Chef de Projet SI',            NULL,          '2020-10-15', 15),
-- Utilisateur 26
(30, 'Consultant IT',                '2018-04-30', '2012-05-01', 26),
(31, 'Consultant IT Senior',         NULL,          '2018-05-15', 26),
-- Utilisateur 27
(32, 'Développeuse Backend Junior',  '2019-11-30', '2016-12-01', 27),
(33, 'Développeuse Backend',         NULL,          '2019-12-15', 27),
-- Utilisateur 28
(34, 'Technicien Systèmes',          '2017-08-31', '2013-09-01', 28),
(35, 'Ingénieur Systèmes',           NULL,          '2017-09-15', 28),
-- Utilisateur 29
(36, 'Chef de Projet Junior',        '2020-12-31', '2018-01-10', 29),
(37, 'Cheffe de Projet Digital',     NULL,          '2021-01-15', 29),
-- Utilisateur 30
(38, 'Développeur Frontend Junior',  '2019-05-31', '2016-06-01', 30),
(39, 'Développeur Frontend Senior',  NULL,          '2019-06-15', 30);

-- ============================================================
-- 7. AFFILIER (FK vers profession et Etablissement)
-- Lie les expériences professionnelles aux entreprises (Id 1-15)
-- ============================================================
INSERT INTO affilier (Id_Experience, Id_Etablissement) VALUES
(1,  3),  (2,  1),
(3,  3),  (4,  3),
(5,  2),  (6,  2),
(7,  5),  (8,  5),
(9,  7),  (10, 7),
(11, 6),  (12, 6),
(13, 6),  (14, 6),
(15, 8),  (16, 8),
(17, 9),  (18, 9),
(19, 1),  (20, 1),
(21, 10),
(22, 8),  (23, 8),
(24, 12), (25, 12),
(26, 10), (27, 10),
(28, 15), (29, 15),
(30, 9),  (31, 9),
(32, 1),  (33, 1),
(34, 11), (35, 11),
(36, 4),  (37, 4),
(38, 6),  (39, 6);

-- ============================================================
-- 8. PARTICIPER (FK vers Utilisateur et Formation)
-- Les 10 étudiants (16-25) ont des formations en cours (date_obtention NULL)
-- Quelques professionnels ont des formations terminées
-- ============================================================
INSERT INTO Participer (Id_user, Id_Formation, date_obtention) VALUES
-- Étudiants (formations en cours, date_obtention NULL)
(16, 1,  NULL),
(17, 2,  NULL),
(18, 3,  NULL),
(19, 4,  NULL),
(20, 5,  NULL),
(21, 6,  NULL),
(22, 7,  NULL),
(23, 8,  NULL),
(24, 9,  NULL),
(25, 10, NULL),
-- Professionnels (formations terminées)
(1,  1,  '2015-06-30'),
(2,  2,  '2014-06-30'),
(3,  6,  '2016-06-30'),
(4,  7,  '2017-06-30'),
(5,  3,  '2015-06-30'),
(6,  5,  '2012-06-30'),
(7,  10, '2017-06-30'),
(8,  4,  '2014-06-30'),
(9,  8,  '2017-06-30'),
(10, 5,  '2011-06-30');

-- ============================================================
-- 9. OFFRE_D_EMPLOI (FK vers Etablissement)
-- 50 offres proposées par les 15 entreprises
-- ============================================================
INSERT INTO Offre_d_emploi (Id_Offre_d_emploi, of_titre, of_description, of_statut, Id_Etablissement) VALUES
(1,  'Développeur Backend Java',        'Poste de dev backend en Java Spring Boot',         'ouverte',  1),
(2,  'Lead Developer Python',           'Lead tech sur projet data',                        'ouverte',  1),
(3,  'Data Engineer',                   'Construction et maintenance de pipelines data',    'ouverte',  2),
(4,  'Data Scientist Senior',           'Modélisation et analyse prédictive',               'ouverte',  2),
(5,  'Machine Learning Engineer',       'Déploiement de modèles ML en production',          'fermee',   2),
(6,  'Analyste SOC',                    'Surveillance et réponse aux incidents sécurité',   'ouverte',  3),
(7,  'Pentesteur / Ethical Hacker',     'Tests d''intrusion sur systèmes clients',          'ouverte',  3),
(8,  'Responsable Sécurité SI',         'Pilotage de la politique de sécurité',             'fermee',   3),
(9,  'Développeur Full-Stack React',    'Développement d''applications web modernes',       'ouverte',  4),
(10, 'Product Manager Tech',            'Gestion de produit SaaS B2B',                     'ouverte',  4),
(11, 'Ingénieur Cloud AWS',             'Migration et gestion infra cloud AWS',             'ouverte',  5),
(12, 'Architecte Solutions Cloud',      'Conception d''architectures cloud hybrides',       'ouverte',  5),
(13, 'SRE / DevOps',                    'Fiabilité et automatisation des systèmes',         'ouverte',  5),
(14, 'Développeur Web Frontend',        'Intégration HTML/CSS/JS et React',                 'ouverte',  6),
(15, 'Chef de Projet Digital',          'Pilotage de projets de transformation numérique',  'ouverte',  6),
(16, 'Ingénieur IA NLP',               'Traitement du langage naturel appliqué',           'ouverte',  7),
(17, 'Research Scientist ML',           'Recherche appliquée en machine learning',          'fermee',   7),
(18, 'AI Product Specialist',           'Interface entre équipes produit et IA',            'ouverte',  7),
(19, 'Ingénieur Réseaux & Sécurité',   'Gestion et sécurisation du réseau entreprise',    'ouverte',  8),
(20, 'Technicien Support N2',           'Support technique niveau 2',                       'ouverte',  8),
(21, 'Intégrateur Systèmes ERP',        'Intégration et paramétrage ERP SAP',               'ouverte',  9),
(22, 'Consultant AMOA',                 'Assistance maîtrise d''ouvrage SI',                'ouverte',  9),
(23, 'Développeur Créatif',             'Développement d''expériences web créatives',       'ouverte',  10),
(24, 'Motion Designer',                 'Création d''animations et vidéos',                 'fermee',   10),
(25, 'Développeur Systèmes Embarqués',  'Programmation bas niveau sur microcontrôleurs',    'ouverte',  11),
(26, 'Ingénieur Électronique',          'Conception de cartes électroniques',               'ouverte',  11),
(27, 'Développeur Fintech',             'Développement de solutions de paiement',           'ouverte',  12),
(28, 'Analyste Risques IT',             'Analyse et gestion des risques technologiques',    'ouverte',  12),
(29, 'Développeur Logiciels Médicaux',  'Dev de dispositifs médicaux certifiés',            'ouverte',  13),
(30, 'Data Analyst Santé',              'Analyse de données de santé',                      'ouverte',  13),
(31, 'Ingénieur Green IT',              'Optimisation de l''empreinte carbone IT',          'ouverte',  14),
(32, 'Responsable RSE Tech',            'Politique RSE dans les projets informatiques',     'ouverte',  14),
(33, 'Business Intelligence Developer', 'Développement de tableaux de bord BI',             'ouverte',  15),
(34, 'Data Analyst Senior',             'Analyse avancée de données commerciales',          'ouverte',  15),
(35, 'Développeur Backend Node.js',     'API REST en Node.js/Express',                     'ouverte',  1),
(36, 'Ingénieur Big Data',              'Traitement de données massives avec Spark',        'ouverte',  2),
(37, 'Auditeur Sécurité',               'Audits de conformité et de sécurité',              'ouverte',  3),
(38, 'UX Designer',                     'Conception d''interfaces utilisateurs',            'ouverte',  4),
(39, 'Ingénieur DevOps Senior',         'CI/CD et automatisation avancée',                  'ouverte',  5),
(40, 'Développeur Fullstack Vue.js',    'Développement d''applications SPA',                'ouverte',  6),
(41, 'Computer Vision Engineer',        'Vision par ordinateur et deep learning',           'ouverte',  7),
(42, 'Administrateur Réseaux',          'Administration et maintenance des réseaux',        'ouverte',  8),
(43, 'Chef de Projet IT',               'Gestion de projets informatiques complexes',       'ouverte',  9),
(44, 'Développeur WordPress',           'Création de sites sous CMS WordPress',             'fermee',   10),
(45, 'Ingénieur FPGA',                  'Développement sur FPGA Xilinx',                    'ouverte',  11),
(46, 'Développeur Blockchain',          'Smart contracts et applications DeFi',             'ouverte',  12),
(47, 'Biostatisticien',                 'Analyse statistique de données cliniques',         'ouverte',  13),
(48, 'Consultant Green IT',             'Conseil en sobriété numérique',                    'ouverte',  14),
(49, 'Analyste KPI',                    'Suivi et analyse des indicateurs de performance',  'ouverte',  15),
(50, 'Tech Lead Java',                  'Leadership technique sur projets Java EE',         'ouverte',  1);

-- ============================================================
-- 10. POSTULER (FK vers Utilisateur et Offre_d_emploi)
-- Les professionnels (1-15, 26-30) peuvent postuler
-- Les étudiants (16-25) n'ont pas encore de profession donc peuvent postuler aussi
-- ============================================================
INSERT INTO Postuler (Id_user, Id_Offre_d_emploi, statut_candidature) VALUES
(1,  3,  'acceptee'),
(1,  4,  'en_attente'),
(2,  6,  'acceptee'),
(2,  7,  'en_attente'),
(3,  3,  'refusee'),
(3,  36, 'en_attente'),
(4,  11, 'acceptee'),
(4,  12, 'en_attente'),
(5,  16, 'acceptee'),
(5,  41, 'en_attente'),
(6,  9,  'refusee'),
(6,  50, 'acceptee'),
(7,  14, 'en_attente'),
(7,  40, 'acceptee'),
(8,  13, 'acceptee'),
(8,  39, 'en_attente'),
(9,  10, 'refusee'),
(9,  22, 'en_attente'),
(10, 1,  'acceptee'),
(10, 35, 'en_attente'),
(11, 23, 'en_attente'),
(11, 38, 'acceptee'),
(12, 19, 'en_attente'),
(12, 42, 'acceptee'),
(13, 28, 'refusee'),
(13, 49, 'en_attente'),
(14, 9,  'en_attente'),
(14, 23, 'acceptee'),
(15, 15, 'acceptee'),
(15, 43, 'en_attente'),
(26, 22, 'acceptee'),
(26, 43, 'en_attente'),
(27, 1,  'refusee'),
(27, 35, 'en_attente'),
(28, 25, 'acceptee'),
(28, 45, 'en_attente'),
(29, 15, 'refusee'),
(29, 43, 'acceptee'),
(30, 14, 'en_attente'),
(30, 40, 'acceptee');

-- ============================================================
-- 11. SUIVRE (FK vers Utilisateur x2)
-- Utilisateur 1 a 15 demandes de suivi
-- Les autres ont entre 0 et 5
-- ============================================================
INSERT INTO Suivre (Id_user, Id_user_1, statut_suivi) VALUES
-- Utilisateur 1 est suivi par 15 personnes
(2,  1, 'acceptee'),
(3,  1, 'acceptee'),
(4,  1, 'acceptee'),
(5,  1, 'acceptee'),
(6,  1, 'acceptee'),
(7,  1, 'acceptee'),
(8,  1, 'acceptee'),
(9,  1, 'acceptee'),
(10, 1, 'acceptee'),
(11, 1, 'acceptee'),
(12, 1, 'en_attente'),
(13, 1, 'en_attente'),
(14, 1, 'en_attente'),
(15, 1, 'en_attente'),
(26, 1, 'en_attente'),
-- Autres utilisateurs (0 à 5 demandes)
(1,  2,  'acceptee'),
(3,  2,  'acceptee'),
(1,  3,  'acceptee'),
(4,  3,  'en_attente'),
(2,  4,  'acceptee'),
(5,  4,  'refusee'),
(6,  4,  'en_attente'),
(3,  5,  'acceptee'),
(7,  5,  'en_attente'),
(4,  6,  'acceptee'),
(8,  6,  'acceptee'),
(5,  7,  'en_attente'),
(9,  7,  'acceptee'),
(6,  8,  'acceptee'),
(10, 8,  'en_attente'),
(7,  9,  'acceptee'),
(11, 9,  'en_attente'),
(8,  10, 'acceptee'),
(12, 10, 'en_attente'),
(9,  11, 'acceptee'),
(13, 11, 'en_attente'),
(10, 12, 'acceptee'),
(14, 12, 'en_attente'),
(11, 13, 'acceptee'),
(15, 14, 'en_attente'),
(12, 15, 'acceptee'),
(27, 26, 'acceptee'),
(28, 27, 'en_attente'),
(29, 28, 'acceptee'),
(30, 29, 'en_attente'),
(26, 30, 'acceptee'),
(1,  31, 'acceptee');
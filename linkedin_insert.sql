-- ============================================================
-- SCRIPT D'INSERTION - BDD type LinkedIn
-- ============================================================

-- ============================================================
-- 1. ETABLISSEMENTS (entreprises + écoles)
-- ============================================================
INSERT INTO Etablissement (Id_Etablissement, Nom_Etablissement, Date_creation, Description) VALUES
(1,  'EFREI Paris',              '1936-01-01', 'École d''ingénieurs du numérique'),
(2,  'EPITA',                    '1984-01-01', 'École Pour l''Informatique et les Techniques Avancées'),
(3,  'Epitech',                  '1999-01-01', 'École Européenne d''Informatique'),
(4,  'INSA Lyon',                '1957-01-01', 'Institut National des Sciences Appliquées de Lyon'),
(5,  'Université Paris-Saclay',  '1971-01-01', 'Grande université de recherche française'),
(6,  'HEC Paris',                '1881-01-01', 'Grande école de commerce et de management'),
(7,  'Sciences Po Paris',        '1872-01-01', 'Institut d''études politiques de Paris'),
(8,  'Centrale Supélec',         '1829-01-01', 'École Centrale Paris fusionnée avec Supélec'),
(9,  'Télécom Paris',            '1878-01-01', 'École d''ingénieurs spécialisée dans les télécoms'),
(10, 'ENSIMAG',                  '1960-01-01', 'École Nationale Supérieure d''Informatique et de Mathématiques Appliquées'),
(11, 'Total Energies',           '1924-01-01', 'Groupe énergétique mondial'),
(12, 'BNP Paribas',              '1848-01-01', 'Banque internationale française'),
(13, 'Capgemini',                '1967-01-01', 'Leader mondial du conseil et des services numériques'),
(14, 'Thales Group',             '1893-01-01', 'Groupe industriel franco-américain high-tech'),
(15, 'Société Générale',         '1864-01-01', 'Banque et services financiers'),
(16, 'Orange',                   '1994-01-01', 'Opérateur télécom français'),
(17, 'Airbus',                   '1970-01-01', 'Constructeur aéronautique européen'),
(18, 'L''Oréal',                 '1909-01-01', 'Leader mondial des cosmétiques'),
(19, 'Dassault Systèmes',        '1981-01-01', 'Éditeur de logiciels 3D et PLM'),
(20, 'Sopra Steria',             '1968-01-01', 'Groupe européen de conseil et services numériques'),
(21, 'Accenture France',         '1989-01-01', 'Conseil en management et transformation digitale'),
(22, 'Decathlon',                '1976-01-01', 'Distributeur d''articles de sport'),
(23, 'SNCF',                     '1938-01-01', 'Société nationale des chemins de fer français'),
(24, 'EDF',                      '1946-01-01', 'Électricité de France'),
(25, 'Renault Group',            '1899-01-01', 'Constructeur automobile français');

-- ============================================================
-- 2. FORMATIONS
-- ============================================================
INSERT INTO Formation (Id_Formation, Diplome, Date_obtention) VALUES
(1,  'Licence Informatique',                    '2018-06-30'),
(2,  'Master Informatique',                     '2020-06-30'),
(3,  'Master Data Science',                     '2021-06-30'),
(4,  'Diplôme d''Ingénieur Informatique',        '2019-06-30'),
(5,  'Diplôme d''Ingénieur Réseaux',             '2020-06-30'),
(6,  'Diplôme d''Ingénieur Systèmes Embarqués',  '2018-06-30'),
(7,  'Master Intelligence Artificielle',         '2022-06-30'),
(8,  'Licence Mathématiques',                    '2017-06-30'),
(9,  'Master Finance',                           '2021-06-30'),
(10, 'MBA Management',                           '2020-06-30'),
(11, 'Licence Gestion',                          '2019-06-30'),
(12, 'BTS Développement Logiciel',               '2016-06-30'),
(13, 'Master Cybersécurité',                     '2022-06-30'),
(14, 'Diplôme d''Ingénieur Génie Civil',          '2017-06-30'),
(15, 'Master Marketing Digital',                 '2021-06-30'),
(16, 'Licence Sciences Politiques',              '2018-06-30'),
(17, 'Master Droit des Affaires',                '2020-06-30'),
(18, 'Diplôme d''Ingénieur Aéronautique',         '2019-06-30'),
(19, 'Master Communication',                     '2021-06-30'),
(20, 'Licence Économie',                         '2018-06-30'),
(21, 'Master Cloud Computing',                   '2023-06-30'),
(22, 'Diplôme d''Ingénieur Électronique',         '2020-06-30'),
(23, 'Master Ressources Humaines',               '2022-06-30'),
(24, 'Licence Design UX/UI',                     '2021-06-30'),
(25, 'Master Product Management',                '2023-06-30');

-- ============================================================
-- 3. PROPOSE (Formation proposée par Etablissement)
-- ============================================================
INSERT INTO Propose (Id_Formation, Id_Etablissement) VALUES
(1,  5),
(2,  5),
(3,  5),
(4,  1),
(5,  2),
(6,  3),
(7,  2),
(8,  4),
(9,  6),
(10, 6),
(11, 6),
(12, 10),
(13, 9),
(14, 8),
(15, 7),
(16, 7),
(17, 7),
(18, 8),
(19, 7),
(20, 5),
(21, 9),
(22, 4),
(23, 6),
(24, 10),
(25, 6);

-- ============================================================
-- 4. COMPTE
-- ============================================================
INSERT INTO Compte (Id_Compte, Email, Numero_de_telephone, Mdp, Date_de_creation, Statut_compte, Id_user) VALUES
(1,  'lucas.martin@gmail.com',      '0612345678', 'hashed_pwd_01', '2020-03-15', 'personnel',    1),
(2,  'emma.dubois@gmail.com',       '0623456789', 'hashed_pwd_02', '2019-07-22', 'professionnel', 2),
(3,  'noah.bernard@gmail.com',      '0634567890', 'hashed_pwd_03', '2021-01-10', 'personnel',    3),
(4,  'chloe.thomas@gmail.com',      '0645678901', 'hashed_pwd_04', '2018-11-05', 'professionnel', 4),
(5,  'ethan.petit@gmail.com',       '0656789012', 'hashed_pwd_05', '2022-04-18', 'personnel',    5),
(6,  'alice.robert@gmail.com',      '0667890123', 'hashed_pwd_06', '2020-08-30', 'professionnel', 6),
(7,  'hugo.richard@gmail.com',      '0678901234', 'hashed_pwd_07', '2019-02-14', 'personnel',    7),
(8,  'jade.simon@gmail.com',        '0689012345', 'hashed_pwd_08', '2021-06-07', 'professionnel', 8),
(9,  'leo.morel@gmail.com',         '0690123456', 'hashed_pwd_09', '2018-09-23', 'personnel',    9),
(10, 'clara.laurent@gmail.com',     '0601234567', 'hashed_pwd_10', '2022-12-01', 'professionnel', 10),
(11, 'gabriel.lefevre@gmail.com',   '0611111111', 'hashed_pwd_11', '2020-05-19', 'personnel',    11),
(12, 'manon.garcia@gmail.com',      '0622222222', 'hashed_pwd_12', '2019-10-31', 'professionnel', 12),
(13, 'raphael.martinez@gmail.com',  '0633333333', 'hashed_pwd_13', '2021-03-25', 'personnel',    13),
(14, 'lena.durand@gmail.com',       '0644444444', 'hashed_pwd_14', '2018-07-16', 'professionnel', 14),
(15, 'adam.leroy@gmail.com',        '0655555555', 'hashed_pwd_15', '2022-09-08', 'personnel',    15),
(16, 'inès.moreau@gmail.com',       '0666666666', 'hashed_pwd_16', '2020-01-27', 'professionnel', 16),
(17, 'tom.fournier@gmail.com',      '0677777777', 'hashed_pwd_17', '2019-04-13', 'personnel',    17),
(18, 'elena.girard@gmail.com',      '0688888888', 'hashed_pwd_18', '2021-08-02', 'professionnel', 18),
(19, 'nolan.bonnet@gmail.com',      '0699999999', 'hashed_pwd_19', '2018-12-20', 'personnel',    19),
(20, 'julia.dupont@gmail.com',      '0602020202', 'hashed_pwd_20', '2023-02-11', 'professionnel', 20),
(21, 'maxime.lambert@gmail.com',    '0613131313', 'hashed_pwd_21', '2020-06-04', 'personnel',    21),
(22, 'sarah.fontaine@gmail.com',    '0624242424', 'hashed_pwd_22', '2019-09-17', 'professionnel', 22),
(23, 'victor.chevalier@gmail.com',  '0635353535', 'hashed_pwd_23', '2021-11-29', 'personnel',    23),
(24, 'camille.rousseau@gmail.com',  '0646464646', 'hashed_pwd_24', '2018-04-08', 'professionnel', 24),
(25, 'théo.vincent@gmail.com',      '0657575757', 'hashed_pwd_25', '2022-07-21', 'personnel',    25),
(26, 'elisa.muller@gmail.com',      '0668686868', 'hashed_pwd_26', '2020-10-14', 'professionnel', 26),
(27, 'mathieu.lecomte@gmail.com',   '0679797979', 'hashed_pwd_27', '2019-01-06', 'personnel',    27),
(28, 'anaïs.morin@gmail.com',       '0680808080', 'hashed_pwd_28', '2021-05-18', 'professionnel', 28),
(29, 'baptiste.colin@gmail.com',    '0691919191', 'hashed_pwd_29', '2018-08-11', 'personnel',    29),
(30, 'laura.henry@gmail.com',       '0603030303', 'hashed_pwd_30', '2022-11-25', 'professionnel', 30),
(31, 'nicolas.perrin@gmail.com',    '0614141414', 'hashed_pwd_31', '2020-02-08', 'personnel',    31),
(32, 'zoé.pierre@gmail.com',        '0625252525', 'hashed_pwd_32', '2019-06-20', 'professionnel', 32),
(33, 'alexis.blanc@gmail.com',      '0636363636', 'hashed_pwd_33', '2021-09-03', 'personnel',    33),
(34, 'margot.gaillard@gmail.com',   '0647474747', 'hashed_pwd_34', '2018-03-16', 'professionnel', 34),
(35, 'romain.brun@gmail.com',       '0658585858', 'hashed_pwd_35', '2022-06-29', 'personnel',    35),
(36, 'pauline.vidal@gmail.com',     '0669696969', 'hashed_pwd_36', '2020-09-11', 'professionnel', 36),
(37, 'julien.barbier@gmail.com',    '0670707070', 'hashed_pwd_37', '2019-12-24', 'personnel',    37),
(38, 'marine.legrand@gmail.com',    '0681818181', 'hashed_pwd_38', '2021-04-07', 'professionnel', 38),
(39, 'pierre.roux@gmail.com',       '0692929292', 'hashed_pwd_39', '2018-10-20', 'personnel',    39),
(40, 'amandine.faure@gmail.com',    '0604040404', 'hashed_pwd_40', '2023-01-02', 'professionnel', 40),
(41, 'kevin.marchand@gmail.com',    '0615151515', 'hashed_pwd_41', '2020-04-15', 'personnel',    41),
(42, 'lucie.benoit@gmail.com',      '0626262626', 'hashed_pwd_42', '2019-08-28', 'professionnel', 42),
(43, 'florian.renard@gmail.com',    '0637373737', 'hashed_pwd_43', '2021-12-10', 'personnel',    43),
(44, 'aurélie.giroux@gmail.com',    '0648484848', 'hashed_pwd_44', '2018-05-23', 'professionnel', 44),
(45, 'arnaud.leclerc@gmail.com',    '0659595959', 'hashed_pwd_45', '2022-08-05', 'personnel',    45),
(46, 'océane.boyer@gmail.com',      '0660606060', 'hashed_pwd_46', '2020-11-17', 'professionnel', 46),
(47, 'damien.hubert@gmail.com',     '0671717171', 'hashed_pwd_47', '2019-03-02', 'personnel',    47),
(48, 'charlene.guillot@gmail.com',  '0682828282', 'hashed_pwd_48', '2021-07-14', 'professionnel', 48),
(49, 'adrien.meyer@gmail.com',      '0693939393', 'hashed_pwd_49', '2018-01-27', 'personnel',    49),
(50, 'stephanie.noel@gmail.com',    '0605050505', 'hashed_pwd_50', '2023-03-18', 'professionnel', 50);

-- ============================================================
-- 5. UTILISATEUR
-- ============================================================
INSERT INTO Utilisateur (Id_user, Nom, Prenom, date_de_naissance, Pdp, Biographie, Ville, Pays) VALUES
(1,  'Martin',    'Lucas',     '1995-04-12', 'pdp_01.jpg', 'Développeur passionné par le web et l''IA.',        'Paris',       'France'),
(2,  'Dubois',    'Emma',      '1993-07-08', 'pdp_02.jpg', 'Data scientist spécialisée en NLP.',               'Lyon',        'France'),
(3,  'Bernard',   'Noah',      '1997-02-19', 'pdp_03.jpg', 'Étudiant en ingénierie logicielle.',               'Bordeaux',    'France'),
(4,  'Thomas',    'Chloé',     '1991-11-25', 'pdp_04.jpg', 'Product Manager avec 10 ans d''expérience.',       'Paris',       'France'),
(5,  'Petit',     'Ethan',     '1998-09-03', 'pdp_05.jpg', 'Passionné de cybersécurité et de CTF.',            'Nantes',      'France'),
(6,  'Robert',    'Alice',     '1990-06-17', 'pdp_06.jpg', 'Directrice marketing dans le secteur tech.',       'Paris',       'France'),
(7,  'Richard',   'Hugo',      '1996-01-30', 'pdp_07.jpg', 'Ingénieur DevOps en quête de nouveaux défis.',     'Toulouse',    'France'),
(8,  'Simon',     'Jade',      '1994-08-14', 'pdp_08.jpg', 'UX Designer avec un œil pour le détail.',          'Marseille',   'France'),
(9,  'Morel',     'Léo',       '1992-03-27', 'pdp_09.jpg', 'Architecte solutions cloud AWS & Azure.',          'Paris',       'France'),
(10, 'Laurent',   'Clara',     '1999-12-05', 'pdp_10.jpg', 'Junior developer en recherche de stage.',          'Grenoble',    'France'),
(11, 'Lefèvre',   'Gabriel',   '1988-05-22', 'pdp_11.jpg', 'CTO d''une startup fintech.',                      'Paris',       'France'),
(12, 'Garcia',    'Manon',     '1995-10-09', 'pdp_12.jpg', 'Consultante en transformation digitale.',          'Lille',       'France'),
(13, 'Martinez',  'Raphaël',   '1997-07-16', 'pdp_13.jpg', 'Développeur mobile iOS & Android.',                'Paris',       'France'),
(14, 'Durand',    'Léna',      '1993-04-01', 'pdp_14.jpg', 'Chercheuse en machine learning.',                  'Saclay',      'France'),
(15, 'Leroy',     'Adam',      '1998-01-14', 'pdp_15.jpg', 'Alternant en développement full-stack.',           'Rennes',      'France'),
(16, 'Moreau',    'Inès',      '1991-08-28', 'pdp_16.jpg', 'Avocate spécialisée en droit du numérique.',       'Paris',       'France'),
(17, 'Fournier',  'Tom',       '1996-05-11', 'pdp_17.jpg', 'Ingénieur réseaux et télécoms.',                   'Nice',        'France'),
(18, 'Girard',    'Elena',     '1994-02-23', 'pdp_18.jpg', 'Responsable communication digitale.',              'Lyon',        'France'),
(19, 'Bonnet',    'Nolan',     '1992-11-06', 'pdp_19.jpg', 'Analyste financier senior.',                       'Paris',       'France'),
(20, 'Dupont',    'Julia',     '1999-06-19', 'pdp_20.jpg', 'Étudiante en master IA, passionnée de robotique.', 'Palaiseau',   'France'),
(21, 'Lambert',   'Maxime',    '1989-03-02', 'pdp_21.jpg', 'Manager projet dans l''aéronautique.',             'Toulouse',    'France'),
(22, 'Fontaine',  'Sarah',     '1995-09-15', 'pdp_22.jpg', 'Spécialiste SEO et content marketing.',            'Paris',       'France'),
(23, 'Chevalier', 'Victor',    '1997-06-28', 'pdp_23.jpg', 'Développeur backend Node.js & Python.',            'Bordeaux',    'France'),
(24, 'Rousseau',  'Camille',   '1993-01-11', 'pdp_24.jpg', 'DRH dans une scale-up technologique.',             'Paris',       'France'),
(25, 'Vincent',   'Théo',      '1998-08-24', 'pdp_25.jpg', 'Développeur frontend React & Vue.js.',             'Montpellier', 'France'),
(26, 'Müller',    'Elisa',     '1990-05-07', 'pdp_26.jpg', 'Ingénieure en systèmes embarqués.',                'Strasbourg',  'France'),
(27, 'Lecomte',   'Mathieu',   '1987-12-20', 'pdp_27.jpg', 'Directeur commercial grands comptes.',             'Paris',       'France'),
(28, 'Morin',     'Anaïs',     '1994-09-03', 'pdp_28.jpg', 'Data engineer spécialisée en Big Data.',           'Paris',       'France'),
(29, 'Colin',     'Baptiste',  '1996-06-16', 'pdp_29.jpg', 'Développeur Salesforce & CRM.',                    'Nantes',      'France'),
(30, 'Henry',     'Laura',     '1992-03-29', 'pdp_30.jpg', 'Business analyst en banque.',                      'Paris',       'France'),
(31, 'Perrin',    'Nicolas',   '1991-01-12', 'pdp_31.jpg', 'Ingénieur cloud & infrastructure.',                'Grenoble',    'France'),
(32, 'Pierre',    'Zoé',       '1997-10-25', 'pdp_32.jpg', 'Designer UI/UX freelance.',                        'Paris',       'France'),
(33, 'Blanc',     'Alexis',    '1993-08-08', 'pdp_33.jpg', 'Scrum Master certifié PSM.',                       'Marseille',   'France'),
(34, 'Gaillard',  'Margot',    '1995-05-21', 'pdp_34.jpg', 'Chargée de projet RSE & développement durable.',   'Lyon',        'France'),
(35, 'Brun',      'Romain',    '1988-03-04', 'pdp_35.jpg', 'Expert en cybersécurité et pentesting.',           'Paris',       'France'),
(36, 'Vidal',     'Pauline',   '1994-12-17', 'pdp_36.jpg', 'Consultante SAP / ERP.',                           'Toulouse',    'France'),
(37, 'Barbier',   'Julien',    '1996-09-30', 'pdp_37.jpg', 'Développeur Java & Spring Boot.',                  'Bordeaux',    'France'),
(38, 'Legrand',   'Marine',    '1992-07-13', 'pdp_38.jpg', 'Responsable marketing produit.',                   'Paris',       'France'),
(39, 'Roux',      'Pierre',    '1990-04-26', 'pdp_39.jpg', 'Ingénieur R&D dans l''industrie automobile.',      'Paris',       'France'),
(40, 'Faure',     'Amandine',  '1998-02-09', 'pdp_40.jpg', 'Développeuse Python & machine learning.',         'Saclay',      'France'),
(41, 'Marchand',  'Kevin',     '1987-11-22', 'pdp_41.jpg', 'Chef de projet digital.',                          'Rennes',      'France'),
(42, 'Benoît',    'Lucie',     '1995-09-05', 'pdp_42.jpg', 'Juriste en propriété intellectuelle.',             'Paris',       'France'),
(43, 'Renard',    'Florian',   '1997-06-18', 'pdp_43.jpg', 'Développeur Kotlin & Swift.',                      'Nice',        'France'),
(44, 'Giroux',    'Aurélie',   '1993-04-01', 'pdp_44.jpg', 'Chargée de recrutement IT.',                       'Paris',       'France'),
(45, 'Leclerc',   'Arnaud',    '1991-01-14', 'pdp_45.jpg', 'Architecte logiciel senior.',                      'Lyon',        'France'),
(46, 'Boyer',     'Océane',    '1998-10-27', 'pdp_46.jpg', 'Développeuse web en alternance.',                  'Lille',       'France'),
(47, 'Hubert',    'Damien',    '1989-08-10', 'pdp_47.jpg', 'Directeur technique ETI industrielle.',            'Grenoble',    'France'),
(48, 'Guillot',   'Charlène',  '1994-05-23', 'pdp_48.jpg', 'Analyste data & business intelligence.',          'Paris',       'France'),
(49, 'Meyer',     'Adrien',    '1996-03-06', 'pdp_49.jpg', 'Développeur C++ & systèmes temps réel.',           'Strasbourg',  'France'),
(50, 'Noël',      'Stéphanie', '1992-12-19', 'pdp_50.jpg', 'Consultante RH & transformation organisationnelle.','Bordeaux',  'France');

-- ============================================================
-- 6. PROFESSION (70 entrées — NULL date_fin = poste en cours)
-- ============================================================
INSERT INTO profession (Id_Experience, Poste_occupé, Date_fin, Date_debut, Id_user) VALUES
-- Lucas Martin
(1,  'Développeur web junior',       '2021-08-31', '2019-09-01', 1),
(2,  'Développeur full-stack',        NULL,          '2021-09-01', 1),
-- Emma Dubois
(3,  'Data analyst',                 '2020-12-31', '2019-01-01', 2),
(4,  'Data scientist',                NULL,          '2021-01-01', 2),
-- Noah Bernard
(5,  'Stagiaire développeur',         '2022-08-31', '2022-03-01', 3),
(6,  'Développeur junior',            NULL,          '2022-09-01', 3),
-- Chloé Thomas
(7,  'Chef de projet IT',            '2018-06-30', '2015-01-01', 4),
(8,  'Product Manager',               NULL,          '2018-07-01', 4),
-- Ethan Petit
(9,  'Stagiaire cybersécurité',       '2021-08-31', '2021-02-01', 5),
(10, 'Analyste cybersécurité',        NULL,          '2021-09-01', 5),
-- Alice Robert
(11, 'Responsable marketing',        '2017-12-31', '2014-03-01', 6),
(12, 'Directrice marketing',          NULL,          '2018-01-01', 6),
-- Hugo Richard
(13, 'Ingénieur système Linux',      '2020-05-31', '2018-06-01', 7),
(14, 'Ingénieur DevOps',              NULL,          '2020-06-01', 7),
-- Jade Simon
(15, 'Designer graphique',           '2019-09-30', '2017-10-01', 8),
(16, 'UX Designer senior',            NULL,          '2019-10-01', 8),
-- Léo Morel
(17, 'Ingénieur cloud junior',       '2020-11-30', '2018-12-01', 9),
(18, 'Architecte cloud',              NULL,          '2020-12-01', 9),
-- Clara Laurent
(19, 'Stage développement web',       '2023-06-30', '2023-01-01', 10),
-- Gabriel Lefèvre
(20, 'Développeur senior',           '2019-03-31', '2015-04-01', 11),
(21, 'CTO',                           NULL,          '2019-04-01', 11),
-- Manon Garcia
(22, 'Consultante junior',           '2020-06-30', '2018-07-01', 12),
(23, 'Consultante senior',            NULL,          '2020-07-01', 12),
-- Raphaël Martinez
(24, 'Développeur mobile junior',    '2021-12-31', '2020-01-01', 13),
(25, 'Développeur mobile',            NULL,          '2022-01-01', 13),
-- Léna Durand
(26, 'Ingénieure de recherche',      '2022-05-31', '2020-06-01', 14),
(27, 'Chercheuse ML senior',          NULL,          '2022-06-01', 14),
-- Adam Leroy
(28, 'Alternant développeur',         NULL,          '2022-09-01', 15),
-- Inès Moreau
(29, 'Avocate collaboratrice',       '2019-12-31', '2016-01-01', 16),
(30, 'Avocate associée',              NULL,          '2020-01-01', 16),
-- Tom Fournier
(31, 'Technicien réseau',            '2021-03-31', '2019-04-01', 17),
(32, 'Ingénieur réseaux',             NULL,          '2021-04-01', 17),
-- Elena Girard
(33, 'Chargée de communication',     '2021-09-30', '2019-10-01', 18),
(34, 'Responsable communication',     NULL,          '2021-10-01', 18),
-- Nolan Bonnet
(35, 'Analyste financier junior',    '2020-07-31', '2018-08-01', 19),
(36, 'Analyste financier senior',     NULL,          '2020-08-01', 19),
-- Julia Dupont
(37, 'Stage data science',            NULL,          '2023-02-01', 20),
-- Maxime Lambert
(38, 'Ingénieur aéronautique',       '2019-05-31', '2015-06-01', 21),
(39, 'Manager projet aéronautique',   NULL,          '2019-06-01', 21),
-- Sarah Fontaine
(40, 'Chargée de SEO',               '2020-03-31', '2018-04-01', 22),
(41, 'Spécialiste SEO senior',        NULL,          '2020-04-01', 22),
-- Victor Chevalier
(42, 'Développeur backend junior',   '2022-06-30', '2021-07-01', 23),
(43, 'Développeur backend',           NULL,          '2022-07-01', 23),
-- Camille Rousseau
(44, 'Chargée RH',                   '2019-11-30', '2017-12-01', 24),
(45, 'DRH',                           NULL,          '2019-12-01', 24),
-- Théo Vincent
(46, 'Développeur frontend junior',  '2022-12-31', '2022-01-01', 25),
(47, 'Développeur frontend',          NULL,          '2023-01-01', 25),
-- Elisa Müller
(48, 'Ingénieure embarquée junior',  '2021-08-31', '2019-09-01', 26),
(49, 'Ingénieure embarquée senior',   NULL,          '2021-09-01', 26),
-- Mathieu Lecomte
(50, 'Commercial comptes clés',      '2018-04-30', '2014-05-01', 27),
(51, 'Directeur commercial',          NULL,          '2018-05-01', 27),
-- Anaïs Morin
(52, 'Data engineer junior',         '2022-01-31', '2020-02-01', 28),
(53, 'Data engineer senior',          NULL,          '2022-02-01', 28),
-- Baptiste Colin
(54, 'Développeur CRM',               NULL,          '2021-03-01', 29),
-- Laura Henry
(55, 'Analyste business',            '2021-10-31', '2019-11-01', 30),
(56, 'Business analyst senior',       NULL,          '2021-11-01', 30),
-- Nicolas Perrin
(57, 'Ingénieur infrastructure',      NULL,          '2020-06-01', 31),
-- Zoé Pierre
(58, 'Designer UI freelance',         NULL,          '2021-05-01', 32),
-- Alexis Blanc
(59, 'Développeur Scrum',            '2021-11-30', '2019-12-01', 33),
(60, 'Scrum Master',                  NULL,          '2021-12-01', 33),
-- Margot Gaillard
(61, 'Chargée RSE',                   NULL,          '2022-03-01', 34),
-- Romain Brun
(62, 'Pentesteur',                   '2022-07-31', '2019-08-01', 35),
(63, 'Expert cybersécurité',          NULL,          '2022-08-01', 35),
-- Pauline Vidal
(64, 'Consultante SAP junior',       '2021-05-31', '2019-06-01', 36),
(65, 'Consultante SAP confirmée',     NULL,          '2021-06-01', 36),
-- Julien Barbier
(66, 'Développeur Java',              NULL,          '2021-09-01', 37),
-- Marine Legrand
(67, 'Chef de produit',               NULL,          '2020-02-01', 38),
-- Pierre Roux
(68, 'Ingénieur R&D automobile',      NULL,          '2019-01-01', 39),
-- Adrien Meyer
(69, 'Développeur C++ embarqué',      NULL,          '2022-02-01', 49),
-- Stéphanie Noël
(70, 'Consultante RH senior',         NULL,          '2020-10-01', 50);

-- ============================================================
-- 7. AFFILIER (profession ↔ établissement)
-- ============================================================
INSERT INTO affilier (Id_Experience, Id_Etablissement) VALUES
(1,  20), (2,  13), (3,  19), (4,  19),
(5,  3),  (6,  3),  (7,  21), (8,  21),
(9,  16), (10, 14), (11, 18), (12, 18),
(13, 16), (14, 20), (15, 1),  (16, 13),
(17, 12), (18, 12), (19, 5),  (20, 3),
(21, 11), (22, 13), (23, 13), (24, 16),
(25, 16), (26, 5),  (27, 5),  (28, 20),
(29, 16), (30, 16), (31, 9),  (32, 16),
(33, 18), (34, 18), (35, 15), (36, 15),
(37, 5),  (38, 17), (39, 17), (40, 22),
(41, 22), (42, 20), (43, 20), (44, 24),
(45, 24), (46, 3),  (47, 3),  (48, 14),
(49, 14), (50, 13), (51, 13), (52, 19),
(53, 19), (54, 29), (55, 12), (56, 12),
(57, 16), (58, 32), (59, 20), (60, 33),
(61, 34), (62, 35), (63, 35), (64, 36),
(65, 36), (66, 37), (67, 38), (68, 25),
(69, 49), (70, 50);

-- ============================================================
-- 8. PARTICIPER (utilisateur ↔ formation)
-- ============================================================
INSERT INTO Participer (Id_user, Id_Formation) VALUES
(1,  1),  (1,  4),
(2,  1),  (2,  3),
(3,  4),
(4,  2),  (4,  10),
(5,  13),
(6,  15), (6,  10),
(7,  5),
(8,  24),
(9,  4),  (9,  21),
(10, 4),
(11, 4),  (11, 2),
(12, 11), (12, 10),
(13, 4),
(14, 2),  (14, 7),
(15, 4),
(16, 17),
(17, 5),
(18, 19),
(19, 9),
(20, 2),  (20, 7),
(21, 18),
(22, 15),
(23, 2),
(24, 23),
(25, 4),
(26, 6),
(27, 10),
(28, 3),
(29, 4),
(30, 9),
(31, 21),
(32, 24),
(33, 2),
(34, 11),
(35, 13),
(36, 4),
(37, 2),
(38, 15),
(39, 6),
(40, 7),
(41, 15),
(42, 17),
(43, 4),
(44, 23),
(45, 4),
(46, 1),
(47, 22),
(48, 3),
(49, 6),
(50, 23);

-- ============================================================
-- 9. OFFRE_D_EMPLOI
-- ============================================================
INSERT INTO Offre_d_emploi (Id_Offre_d_emploi, Titre_offre_d_emploi, Description_offre, Statut_offre, Id_Etablissement) VALUES
(1,  'Développeur full-stack React/Node',     'Rejoignez notre équipe pour développer des solutions web modernes.',        'ouverte',  13),
(2,  'Data Scientist spécialisé NLP',         'Mission : améliorer nos algorithmes de traitement du langage naturel.',     'ouverte',  19),
(3,  'Ingénieur DevOps AWS',                  'Gestion et automatisation de notre infrastructure cloud.',                   'ouverte',  20),
(4,  'UX Designer senior',                    'Concevoir des expériences utilisateur pour nos produits digitaux.',          'ouverte',  13),
(5,  'Analyste cybersécurité',                'Surveillance, détection et réponse aux incidents de sécurité.',             'ouverte',  14),
(6,  'Chef de projet digital',                'Pilotage de projets de transformation digitale pour nos clients.',           'ouverte',  21),
(7,  'Ingénieur Machine Learning',            'Développement et déploiement de modèles ML en production.',                 'ouverte',  19),
(8,  'Architecte solutions cloud',            'Conception d''architectures cloud multi-cloud pour grands comptes.',         'ouverte',  13),
(9,  'Développeur mobile iOS',                'Développement d''applications iOS pour nos clients premium.',                'ouverte',  20),
(10, 'Responsable marketing digital',         'Stratégie et exécution des campagnes digitales B2B.',                       'ouverte',  18),
(11, 'Ingénieur réseaux senior',              'Gestion et optimisation de l''infrastructure réseau nationale.',             'ouverte',  16),
(12, 'Data Engineer',                         'Construction de pipelines de données à grande échelle.',                    'ouverte',  19),
(13, 'Développeur C++ embarqué',              'Développement systèmes embarqués temps réel pour l''aéronautique.',         'ouverte',  17),
(14, 'Product Manager',                       'Définir la vision produit et coordonner les équipes de développement.',     'ouverte',  11),
(15, 'Analyste financier',                    'Analyse des marchés financiers et conseil en investissement.',               'ouverte',  12),
(16, 'Consultant SAP FI/CO',                  'Implémentation et support de solutions SAP Finance & Controlling.',         'fermee',   21),
(17, 'Ingénieur R&D automobile',              'R&D sur les technologies d''électrification des véhicules.',                'fermee',   25),
(18, 'Business Analyst',                      'Analyse des besoins métier et rédaction des cahiers des charges.',          'fermee',   15),
(19, 'Développeur Java Spring',               'Développement d''applications de gestion bancaire.',                        'fermee',   12),
(20, 'Chargée RH & recrutement',              'Gestion du recrutement tech et développement des talents.',                 'fermee',   24),
(21, 'Scrum Master certifié',                 'Animation des cérémonies agiles et coaching des équipes.',                  'ouverte',  20),
(22, 'Ingénieur systèmes embarqués',          'Développement de firmware pour systèmes de défense.',                       'ouverte',  14),
(23, 'Responsable communication interne',     'Stratégie et mise en œuvre de la communication interne.',                   'ouverte',  23),
(24, 'Expert cybersécurité offensive',        'Red team et tests d''intrusion sur systèmes critiques.',                    'ouverte',  14),
(25, 'Consultant transformation digitale',    'Accompagnement des clients dans leur transformation numérique.',            'fermee',   21);

-- ============================================================
-- 10. POSTULER
-- ============================================================
INSERT INTO Postuler (Id_user, Id_Offre_d_emploi, Statut_quadidature) VALUES
(1,  1,  'acceptee'),
(1,  8,  'en_attente'),
(2,  2,  'acceptee'),
(2,  7,  'en_attente'),
(3,  1,  'refusee'),
(3,  9,  'en_attente'),
(4,  6,  'acceptee'),
(4,  14, 'en_attente'),
(5,  5,  'acceptee'),
(5,  24, 'en_attente'),
(6,  10, 'en_attente'),
(7,  3,  'acceptee'),
(7,  11, 'refusee'),
(8,  4,  'acceptee'),
(9,  8,  'en_attente'),
(9,  3,  'refusee'),
(10, 1,  'en_attente'),
(11, 14, 'refusee'),
(12, 6,  'en_attente'),
(13, 9,  'acceptee'),
(14, 7,  'en_attente'),
(14, 2,  'refusee'),
(15, 1,  'en_attente'),
(16, 20, 'refusee'),
(17, 11, 'en_attente'),
(18, 10, 'acceptee'),
(19, 15, 'en_attente'),
(20, 7,  'en_attente'),
(21, 13, 'acceptee'),
(22, 10, 'en_attente'),
(23, 1,  'refusee'),
(24, 20, 'acceptee'),
(25, 1,  'en_attente'),
(26, 22, 'acceptee'),
(27, 6,  'en_attente'),
(28, 12, 'acceptee'),
(29, 19, 'en_attente'),
(30, 15, 'acceptee'),
(31, 3,  'en_attente'),
(32, 4,  'refusee'),
(33, 21, 'acceptee'),
(34, 23, 'en_attente'),
(35, 24, 'acceptee'),
(36, 16, 'refusee'),
(37, 19, 'en_attente'),
(38, 10, 'acceptee'),
(39, 17, 'en_attente'),
(40, 7,  'en_attente'),
(41, 6,  'refusee'),
(42, 20, 'en_attente'),
(43, 9,  'acceptee'),
(44, 20, 'en_attente'),
(45, 8,  'acceptee'),
(46, 1,  'en_attente'),
(47, 22, 'refusee'),
(48, 12, 'en_attente'),
(49, 22, 'acceptee'),
(50, 20, 'en_attente');

-- ============================================================
-- 11. SUIVRE (connexions entre utilisateurs)
-- ============================================================
INSERT INTO Suivre (Id_user, Id_user_1, Statut_demande) VALUES
(1,  2,  'acceptee'),
(1,  9,  'acceptee'),
(2,  3,  'acceptee'),
(2,  14, 'acceptee'),
(3,  1,  'acceptee'),
(3,  5,  'en_attente'),
(4,  6,  'acceptee'),
(4,  24, 'acceptee'),
(5,  35, 'acceptee'),
(5,  13, 'en_attente'),
(6,  4,  'acceptee'),
(6,  18, 'acceptee'),
(7,  9,  'acceptee'),
(7,  31, 'en_attente'),
(8,  32, 'acceptee'),
(8,  4,  'acceptee'),
(9,  1,  'acceptee'),
(9,  7,  'acceptee'),
(10, 2,  'en_attente'),
(10, 14, 'acceptee'),
(11, 45, 'acceptee'),
(11, 9,  'acceptee'),
(12, 6,  'acceptee'),
(12, 24, 'en_attente'),
(13, 25, 'acceptee'),
(13, 37, 'acceptee'),
(14, 2,  'acceptee'),
(14, 40, 'acceptee'),
(15, 1,  'en_attente'),
(15, 3,  'acceptee'),
(16, 24, 'acceptee'),
(16, 42, 'acceptee'),
(17, 7,  'acceptee'),
(17, 49, 'acceptee'),
(18, 6,  'acceptee'),
(18, 38, 'acceptee'),
(19, 30, 'acceptee'),
(19, 48, 'en_attente'),
(20, 14, 'acceptee'),
(20, 40, 'acceptee'),
(21, 39, 'acceptee'),
(21, 17, 'en_attente'),
(22, 38, 'acceptee'),
(22, 18, 'acceptee'),
(23, 37, 'acceptee'),
(23, 1,  'en_attente'),
(24, 50, 'acceptee'),
(24, 44, 'acceptee'),
(25, 13, 'acceptee'),
(26, 49, 'acceptee'),
(27, 11, 'en_attente'),
(28, 2,  'acceptee'),
(29, 37, 'acceptee'),
(30, 19, 'acceptee'),
(31, 9,  'acceptee'),
(32, 8,  'acceptee'),
(33, 45, 'acceptee'),
(34, 12, 'refusee'),
(35, 5,  'acceptee'),
(36, 45, 'acceptee'),
(37, 23, 'acceptee'),
(38, 22, 'acceptee'),
(39, 21, 'acceptee'),
(40, 20, 'acceptee'),
(41, 27, 'acceptee'),
(42, 16, 'acceptee'),
(43, 17, 'en_attente'),
(44, 24, 'acceptee'),
(45, 11, 'acceptee'),
(46, 3,  'acceptee'),
(47, 11, 'refusee'),
(48, 30, 'acceptee'),
(49, 26, 'acceptee'),
(50, 44, 'acceptee');

-- ============================================================
-- FIN DU SCRIPT
-- ============================================================

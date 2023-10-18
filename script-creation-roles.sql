-- Création du role pour le gestionnaire
-- À l'aide de l'utilisateur sys@pdb_ecole:
CREATE ROLE GESTION;

GRANT CREATE SESSION TO GESTIONNAIRE;

GRANT CREATE TABLE, CREATE VIEW, CREATE SEQUENCE, CREATE VIEW TO GESTION;

GRANT SELECT, INSERT, UPDATE, DELETE ON EVALUATION TO GESTION;

GRANT SELECT, INSERT, UPDATE, DELETE ON ETUDIANT TO GESTION;

GRANT SELECT, INSERT, UPDATE, DELETE ON COURS TO GESTION;

GRANT SELECT, INSERT, UPDATE, DELETE ON GROUPE TO GESTION;

GRANT SELECT, INSERT, UPDATE, DELETE ON SEMESTRE TO GESTION;

-- Appliquer le role gestion pour l'utilisateur gestionnaire
GRANT GESTION TO GESTIONNAIRE
 -- Tester que le role gesion fonctionne pour l'utilisateur gestionnaire :
 -- À l'aide de l'utilisateur gestionnaire@pdb_ecole :
        SELECT * FROM SYS.EVALUATION;

SELECT
    *
FROM
    SYS.ETUDIANT;

SELECT
    *
FROM
    SYS.COURS;

SELECT
    *
FROM
    SYS.GROUPE;

SELECT
    *
FROM
    SYS.EMESTRE;

INSERT INTO SYS.ETUDIANT VALUES (
    '1NN15PS388',
    'Momo',
    'Sherbrooke',
    8712432211,
    'D'
);

INSERT INTO SYS.COURS VALUES (
    '25CS22',
    '4PG',
    1,
    1
);

INSERT INTO SYS.EVALUATION VALUES (
    '3RN13PS091',
    '30CT84',
    'PSB8C',
    19,
    14,
    15
);

INSERT INTO SYS.GROUPE VALUES (
    '1RN14CS010',
    'CSE8A'
);

INSERT INTO SYS.SEMESTRE VALUES (
    'CSE8B',
    9,
    'B'
);

-- Création du role registrariat
-- À l'aide de l'utilisateur sys@pdb_ecole:
CREATE ROLE REGISTRATIAT_ROLE;

GRANT CREATE SESSION TO REGISTRATIAT_ROLE;

GRANT SELECT ON EVALUATION TO REGISTRATIAT_ROLE;

GRANT SELECT, INSERT, UPDATE, DELETE ON ETUDIANT TO REGISTRATIAT_ROLE;

GRANT SELECT, INSERT, UPDATE, DELETE ON COURS TO REGISTRATIAT_ROLE;

GRANT SELECT ON GROUPE TO REGISTRATIAT_ROLE;

GRANT SELECT ON SEMESTRE TO REGISTRATIAT_ROLE;

-- Appliquer le role du registrariat aux deux registrariats
GRANT REGISTRATIAT_ROLE TO REGISTRARIAT1;

GRANT REGISTRATIAT_ROLE TO REGISTRARIAT2;

-- Tester que le role du registrariat fonctionne pour le registrariat1 :
-- À l'aide de l'utilisateur registrariat1@pdb_ecole:
SELECT
    *
FROM
    SYS.EVALUATION;

SELECT
    *
FROM
    SYS.ETUDIANT;

SELECT
    *
FROM
    SYS.COURS;

SELECT
    *
FROM
    SYS.GROUPE;

SELECT
    *
FROM
    SYS.SEMESTRE;

INSERT INTO SYS.ETUDIANT VALUES (
    '1NN15PS088',
    'John',
    'Montreal',
    8712432201,
    'B'
);

INSERT INTO SYS.COURS VALUES (
    '15CS22',
    '2PG',
    4,
    4
);

-- Tester que le role du registrariat fonctionne pour le registrariat2 :
-- À l'aide de l'utilisateur registrariat2@pdb_ecole:
SELECT
    *
FROM
    SYS.EVALUATION;

SELECT
    *
FROM
    SYS.ETUDIANT;

SELECT
    *
FROM
    SYS.COURS;

SELECT
    *
FROM
    SYS.GROUPE;

SELECT
    *
FROM
    SYS.SEMESTRE;

INSERT INTO SYS.ETUDIANT VALUES (
    '2BB15PS088',
    'Joseph',
    'Laval',
    8712567201,
    'A'
);

INSERT INTO SYS.COURS VALUES (
    '15CS23',
    '3PG',
    5,
    5
);

-- Création du role enseignement
-- À l'aide de l'utilisateur sys@pdb_ecole
CREATE ROLE ENSEIGNEMENT;

GRANT CREATE SESSION TO ENSEIGNEMENT;

GRANT SELECT, INSERT, UPDATE, DELETE ON EVALUATION TO ENSEIGNEMENT;

GRANT SELECT ON GROUPE TO ENSEIGNEMENT;

GRANT SELECT ON SEMESTRE TO ENSEIGNEMENT;

GRANT SELECT ON ETUDIANT TO ENSEIGNEMENT;

GRANT SELECT ON COURS TO ENSEIGNEMENT;

-- Appliquer le role d'enseignement sur l'utilisateur enseignant
GRANT ENSEIGNEMENT TO ENSEIGNANT;

-- Tester que le role enseignement fonctionne pour l'enseignant
-- À l'aide de l'utilisateur enseignant@pdb_ecole
SELECT
    *
FROM
    SYS.EVALUATION;

SELECT
    *
FROM
    SYS.GROUPE;

SELECT
    *
FROM
    SYS.ETUDIANT;

SELECT
    *
FROM
    SYS.SEMESTRE;

SELECT
    *
FROM
    SYS.COURS;

INSERT INTO SYS.EVALUATION VALUES (
    '2CN13GS091',
    '19CT84',
    'REB8C',
    19,
    20,
    20
);

-- Création du role api
-- À l'aide de l'utilisateur sys@pdb_ecole
CREATE ROLE API_ROLE;

GRANT CREATE SESSION TO API_ROLE;

GRANT SELECT, INSERT, UPDATE, DELETE ON GROUPE TO API_ROLE;

GRANT SELECT, INSERT, UPDATE, DELETE ON SEMESTRE TO API_ROLE;

GRANT SELECT ON ETUDIANT TO API_ROLE;

GRANT SELECT ON COURS TO API_ROLE;

GRANT SELECT ON EVALUATION TO API_ROLE;

-- Appliquer le role de l'api sur l'utilisateur api
GRANT API_ROLE TO API;

-- Tester que le role api fonctionne
-- À l'aide de l'utilisateur api@pdb_ecole
SELECT
    *
FROM
    SYS.EVALUATION;

SELECT
    *
FROM
    SYS.GROUPE;

SELECT
    *
FROM
    SYS.ETUDIANT;

SELECT
    *
FROM
    SYS.SEMESTRE;

SELECT
    *
FROM
    SYS.COURS;

INSERT INTO SYS.GROUPE VALUES (
    '1RN14PS011',
    'CSR8A'
);

INSERT INTO SYS.SEMESTRE VALUES (
    'CSE8B',
    10,
    'C'
);
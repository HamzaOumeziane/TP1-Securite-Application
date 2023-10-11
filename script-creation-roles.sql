-- Création du role pour le gestionnaire
    -- À l'aide de l'utilisateur sys@pdb_ecole:
        create role gestion;
        GRANT create session, create table, create view, create sequence, create view TO gestion;
        GRANT SELECT, INSERT, UPDATE, DELETE ON evaluation TO gestion;
        GRANT SELECT, INSERT, UPDATE, DELETE ON etudiant TO gestion;
        GRANT SELECT, INSERT, UPDATE, DELETE ON cours TO gestion;
        GRANT SELECT, INSERT, UPDATE, DELETE ON groupe TO gestion;
        GRANT SELECT, INSERT, UPDATE, DELETE ON semestre TO gestion;
    -- Appliquer le role gestion pour l'utilisateur gestionnaire
    GRANT gestion TO gestionnaire
    -- Tester que le role gesion fonctionne pour l'utilisateur gestionnaire : 
        -- À l'aide de l'utilisateur gestionnaire@pdb_ecole : 
        SELECT * FROM evaluation;
        SELECT * FROM etudiant;
        SELECT * FROM cours;
        SELECT * FROM groupe;
        SELECT * FROM semestre;
        INSERT INTO ETUDIANT VALUES ('1NN15PS388','Momo','Sherbrooke',8712432211,'D');
        INSERT INTO COURS VALUES ('25CS22','4PG', 1, 1);
        INSERT INTO EVALUATION VALUES ('3RN13PS091','30CT84','PSB8C', 19, 14, 15);
        INSERT INTO GROUPE VALUES ('1RN14CS010', 'CSE8A');
        INSERT INTO SEMESTRE VALUES ('CSE8B', 9,'B');



-- Création du role registrariat
    -- À l'aide de l'utilisateur sys@pdb_ecole:
        CREATE role registratiat_role;
        GRANT create session TO registratiat_role;
        GRANT SELECT ON evaluation to registratiat_role;
        GRANT SELECT, INSERT, UPDATE, DELETE ON etudiant TO gestion;
        GRANT SELECT, INSERT, UPDATE, DELETE ON cours TO gestion;
        GRANT SELECT ON groupe TO gestion;
        GRANT SELECT ON semestre TO gestion;
    -- Appliquer le role du registrariat aux deux registrariats
        GRANT registratiat_role TO registrariat1;
        GRANT registratiat_role TO registrariat2;
    -- Tester que le role du registrariat fonctionne pour le registrariat1 :
        -- À l'aide de l'utilisateur registrariat1@pdb_ecole:
            SELECT * FROM evaluation;
            SELECT * FROM etudiant;
            SELECT * FROM cours;
            SELECT * FROM groupe;
            SELECT * FROM semestre;
            INSERT INTO ETUDIANT VALUES ('1NN15PS088','John','Montreal',8712432201,'B');;
            INSERT INTO COURS VALUES ('15CS22','2PG', 4, 4);
    -- Tester que le role du registrariat fonctionne pour le registrariat2 :
        -- À l'aide de l'utilisateur registrariat2@pdb_ecole:
        SELECT * FROM evaluation;
        SELECT * FROM etudiant;
        SELECT * FROM cours;
        SELECT * FROM groupe;
        SELECT * FROM semestre;
        INSERT INTO ETUDIANT VALUES ('2BB15PS088','Joseph','Laval',8712567201,'A');;
        INSERT INTO COURS VALUES ('15CS23','3PG', 5, 5);




-- Création du role enseignement
    -- À l'aide de l'utilisateur sys@pdb_ecole
        Create role enseignement;
        GRANT create session TO enseignement;
        GRANT SELECT, INSERT, UPDATE, DELETE ON evaluation TO enseignement;
        GRANT SELECT ON groupe TO  api_role;
        GRANT SELECT ON semestre TO api_role;
        GRANT SELECT ON etudiant TO api_role;
        GRANT SELECT ON cours TO api_role;
    -- Appliquer le role d'enseignement sur l'utilisateur enseignant
        GRANT enseignement TO enseignant; 
-- Tester que le role enseignement fonctionne pour l'enseignant
    -- À l'aide de l'utilisateur enseignant@pdb_ecole
        SELECT * FROM evaluation;
        select * from groupe;
        SELECT * FROM etudiant;
        SELECT * FROM SEMESTRE;
        SELECT * FROM COURS;
        INSERT INTO evaluation VALUES ('2CN13GS091','19CT84','REB8C', 19, 20, 20);

-- Création du role api
    -- À l'aide de l'utilisateur sys@pdb_ecole
        create role api_role;
        GRANT create session TO api_role;
        GRANT SELECT, INSERT, UPDATE, DELETE ON groupe TO  api_role;
        GRANT SELECT, INSERT, UPDATE, DELETE ON semestre TO api_role;
        GRANT SELECT ON etudiant TO api_role;
        GRANT SELECT ON cours TO api_role;
        GRANT SELECT ON evaluation to api_role;
    -- Appliquer le role de l'api sur l'utilisateur api
        GRANT api_role TO api;
    -- Tester que le role api fonctionne 
        -- À l'aide de l'utilisateur api@pdb_ecole
        SELECT * FROM evaluation;
        select * from groupe;
        SELECT * FROM etudiant;
        SELECT * FROM SEMESTRE;
        SELECT * FROM COURS;
        INSERT INTO GROUPE VALUES ('1RN14PS011', 'CSR8A');
        INSERT INTO SEMESTRE VALUES ('CSE8B', 10,'C');
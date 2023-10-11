-- Création du role pour le gestionnaire
create role gestion;
GRANT create session, create table, create view, create sequence, create view TO gestion;
GRANT SELECT, INSERT, UPDATE, DELETE ON evaluation TO gestion;
GRANT SELECT, INSERT, UPDATE, DELETE ON etudiant TO gestion;
GRANT SELECT, INSERT, UPDATE, DELETE ON cours TO gestion;
GRANT SELECT, INSERT, UPDATE, DELETE ON groupe TO gestion;
GRANT SELECT, INSERT, UPDATE, DELETE ON semestre TO gestion;

-- Création du role registrariat




-- Création du role enseignement
Create role enseignement;
GRANT create session TO enseignement;
GRANT SELECT, INSERT, UPDATE, DELETE ON evaluation TO enseignement;
GRANT enseignement TO enseignant; 
-- Tester que le role enseignant fonctionne
select * from sys.groupe;
INSERT INTO sys.evaluation VALUES ();

-- Création du role api
create role api_role;
GRANT create session TO api_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON groupe TO  api_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON semestre TO api_role;
GRANT SELECT ON etudiant TO api_role;
GRANT SELECT ON cours TO api_role;
GRANT SELECT ON evaluation to api_role;
GRANT api_role TO api;
-- Tester que le role api fonctionne 

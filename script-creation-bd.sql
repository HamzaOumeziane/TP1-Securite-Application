--Dans CDB
--Creation de la base de données principale
CREATE PLUGGABLE DATABASE PDB_ECOLE ADMIN USER PDB_ADMINISTRATEUR IDENTIFIED BY ORACLE
FILE_NAME_CONVERT=('/opt/oracle/oradata/FREE/pdbseed/', '/opt/oracle/oradata/FREE/pdb_ecole/');

--Verification de la creation de la base de donées
SELECT
    PDB_NAME,
    STATUS
FROM
    DBA_PDBS
ORDER BY
    PDB_NAME;

--Creation de la copie de la base de donées
CREATE USER COPIE_PDB_ECOLE IDENTIFIED BY oracle;
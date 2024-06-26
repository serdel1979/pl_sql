Microsoft Windows [Versión 10.0.19045.4412]
(c) Microsoft Corporation. Todos los derechos reservados.

C:\Users\sergio>sqlplus

SQL*Plus: Release 21.0.0.0.0 - Production on MiÚ Jun 26 10:48:56 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Introduzca el nombre de usuario: system as sysdba
Introduzca la contrase±a:

Conectado a:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> archive log list;
Modo log de la base de datos              Modo de No Archivado
Archivado automßtico             Desactivado
Destino del archivo            C:\oracleXE\homes\OraDB21Home1\RDBMS
Secuencia de log en lÝnea mßs antigua     1
Secuencia de log actual           3
SQL> select log_mode from v$database;

LOG_MODE
------------
NOARCHIVELOG

SQL> archive log list;
Modo log de la base de datos              Modo de No Archivado
Archivado automßtico             Desactivado
Destino del archivo            C:\oracleXE\homes\OraDB21Home1\RDBMS
Secuencia de log en lÝnea mßs antigua     1
Secuencia de log actual           3
SQL> shutdown inmediate;
SP2-0717: opci¾n SHUTDOWN no vßlida
SQL> SHUTDOWN IMMEDIATE;
Base de datos cerrada.
Base de datos desmontada.
Instancia ORACLE cerrada.
SQL> startup mount;
Instancia ORACLE iniciada.

Total System Global Area 1610609432 bytes
Fixed Size                  9855768 bytes
Variable Size             402653184 bytes
Database Buffers         1191182336 bytes
Redo Buffers                6918144 bytes
Base de datos montada.
SQL> alter database archivelog;

Base de datos modificada.

SQL> alter system set log_archive_start=true scope=spfile;

Sistema modificado.

SQL> shutdown inmediate;
SP2-0717: opci¾n SHUTDOWN no vßlida
SQL> SHUTDOWN IMMEDIATE;
ORA-01109: base de datos sin abrir


Base de datos desmontada.
Instancia ORACLE cerrada.
SQL> startup;
ORA-32004: obsolete or deprecated parameter(s) specified for RDBMS instance
Instancia ORACLE iniciada.

Total System Global Area 1610609432 bytes
Fixed Size                  9855768 bytes
Variable Size             402653184 bytes
Database Buffers         1191182336 bytes
Redo Buffers                6918144 bytes
Base de datos montada.
Base de datos abierta.
SQL> archive log list;
Modo log de la base de datos              Modo de Archivado
Archivado automßtico             Activado
Destino del archivo            C:\oracleXE\homes\OraDB21Home1\RDBMS
Secuencia de log en lÝnea mßs antigua     1
Siguiente secuencia de log para archivar   3
Secuencia de log actual           3
SQL> select log_mode from v$database;

LOG_MODE
------------
ARCHIVELOG

SQL> SHUTDOWN IMMEDIATE;
Base de datos cerrada.
Base de datos desmontada.
Instancia ORACLE cerrada.
SQL> startup mount;
ORA-32004: obsolete or deprecated parameter(s) specified for RDBMS instance
Instancia ORACLE iniciada.

Total System Global Area 1610609432 bytes
Fixed Size                  9855768 bytes
Variable Size             402653184 bytes
Database Buffers         1191182336 bytes
Redo Buffers                6918144 bytes
Base de datos montada.
SQL> alter database noarchivelog;

Base de datos modificada.

SQL> startup;
ORA-01081: no se puede iniciar ORACLE cuando ya se estß ejecutando - ciÚrrelo primero
SQL> archivelog list;
SP2-0734: inicio "archivelog..." de comando desconocido - resto de la lÝnea ignorado.
SQL> archive log list;
Modo log de la base de datos              Modo de No Archivado
Archivado automßtico             Desactivado
Destino del archivo            C:\oracleXE\homes\OraDB21Home1\RDBMS
Secuencia de log en lÝnea mßs antigua     1
Secuencia de log actual           3
SQL>

C:\Users\sergio>sqlplus / as sysdba

SQL*Plus: Release 21.0.0.0.0 - Production on MiÚ Jun 26 11:17:15 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.


Conectado a:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> SELECT STATUS FROM V$INSTANCE;

STATUS
------------
MOUNTED

SQL> ALTER DATABASE OPEN;

Base de datos modificada.

SQL> SELECT STATUS FROM V$INSTANCE;

STATUS
------------
OPEN

SQL>














































component extends="EntityBase" displayname="SecLogin" table="seclogin" output="false" persistent="true"  {

/*
mysql> describe seclogin;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| CodLogin         | int(11)      | NO   | PRI | NULL    | auto_increment |
| CPF              | varchar(14)  | YES  |     | NULL    |                |
| Login            | varchar(20)  | YES  |     | NULL    |                |
| Senha            | varchar(15)  | YES  |     | NULL    |                |
| NomeCompleto     | varchar(255) | YES  |     | NULL    |                |
| DataRegistro     | datetime     | YES  |     | NULL    |                |
| Desabilitar      | char(1)      | YES  |     | N       |                |
| DataUltimoAcesso | datetime     | YES  |     | NULL    |                |
| EmailAlternativo | varchar(50)  | YES  |     | NULL    |                |
| IDContatoGoogle  | varchar(50)  | YES  |     | NULL    |                |
| IDContatoZoho    | varchar(50)  | YES  |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
*/

	property name="CodLogin" generator="identity" ormtype="int" fieldtype="id"  update="false" insert="false";
	property name="CPF" ormtype="string";
	property name="Login" ormtype="string" ;
	property name="Senha" ormtype="string" ;
	property name="NomeCompleto" ormtype="string" ;
	property name="DataRegistro" ormtype="datetime" ;
	property name="Desabilitar" ormtype="string" ;
	property name="DataUltimoAcesso" ormtype="datetime" ;
	property name="EmailAlternativo" ormtype="string" ;
	property name="IDContatoGoogle" ormtype="string" ;
	property name="IDContatoZoho" ormtype="string" ;
	property name="Grupos" update="false" insert="false"  type="array" fieldtype="one-to-many" cfc="SecGrupoLogin" fkcolumn="CodLogin" lazy="true";

}
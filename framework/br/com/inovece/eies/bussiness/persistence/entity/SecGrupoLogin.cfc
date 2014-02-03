component extends="EntityBase" displayname="SecGrupoLogin" table="secgrupologin" output="false" persistent="true"  {

/*
mysql> describe secgrupologin;
+---------------+---------+------+-----+---------+----------------+
| Field         | Type    | Null | Key | Default | Extra          |
+---------------+---------+------+-----+---------+----------------+
| CodGrupoLogin | int(11) | NO   | PRI | NULL    | auto_increment |
| CodLogin      | int(11) | NO   | MUL | NULL    |                |
| CodGrupo      | int(11) | NO   | MUL | NULL    |                |
+---------------+---------+------+-----+---------+----------------+
*/

	property name="CodGrupoLogin" generator="identity" ormtype="int" fieldtype="id"  update="false" insert="false";
	property name="login" fieldtype="many-to-one" cfc="SecLogin" fetch="select" fkcolumn="CodLogin" inverse="false" lazy="true" singularname="SecLogin"; 
	property name="grupo" fieldtype="many-to-one" cfc="SecGrupo" fetch="select" fkcolumn="CodGrupo" inverse="false" lazy="true" singularname="SecGrupo"; 

}
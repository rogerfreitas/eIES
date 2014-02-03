component extends="EntityBase" displayname="SecGrupo" table="secgrupo" output="false" persistent="true"  {

/*
mysql> describe secgrupo;
+----------+-------------+------+-----+---------+----------------+
| Field    | Type        | Null | Key | Default | Extra          |
+----------+-------------+------+-----+---------+----------------+
| CodGrupo | int(11)     | NO   | PRI | NULL    | auto_increment |
| DSGrupo  | varchar(50) | YES  |     | NULL    |                |
+----------+-------------+------+-----+---------+----------------+
*/

	property name="CodGrupo" generator="identity" ormtype="int" fieldtype="id"  update="false" insert="false";
	property name="DSGrupo" ormtype="string";

}
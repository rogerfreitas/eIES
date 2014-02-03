component output="false" extends="BaseDTO" {

	super.setPk('CodGrupo');
	
	super.register('CodGrupo',{ 
					acessor = "getCodGrupo" ,
					value = "" ,
					label = "CodGrupo:" ,
					columnName = "CodGrupo",
					viewFormat = "text",
					dbFormat = "int",
					len="11",
					required="true",
					write="false",
					comboxData="",
					dto={ unit="",acessor="" }
					});


	super.register('DSGrupo',{ 
					acessor = "getDSGrupo" ,
					value = "" ,
					label = "Nome do Grupo:" ,
					columnName = "DSGrupo",
					viewFormat = "text",
					dbFormat = "string",
					len="50",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});





}
component output="false" extends="BaseDTO" {

	super.setPk('CodGrupoLogin');
	
	super.register('CodGrupoLogin',{ 
					accessor = "getCodGrupoLogin,setCodGrupoLogin" ,
					value = "" ,
					label = "CodGrupoLogin:" ,
					columnName = "CodGrupoLogin",
					viewFormat = "text",
					dbFormat = "int",
					len="",
					required="true",
					write="false",
					comboxData="",
					dto={ unit="",acessor="" }
					});



	super.register('CodGrupo',{ 
					accessor = "" ,
					value = "" ,
					label = "CodGrupo:" ,
					columnName = "CodGrupo",
					viewFormat = "text",
					dbFormat = "int",
					len="",
					required="true",
					write="true",
					comboxData="",
					dto={ unit="SecGrupo",acessor="getGrupo,setGrupo" }
					});



	super.register('CodLogin',{ 
					acessor = "" ,
					value = "" ,
					label = "CodLogin:" ,
					columnName = "CodLogin",
					viewFormat = "text",
					dbFormat = "int",
					len="",
					required="true",
					write="true",
					comboxData="",
					dto={ unit="SecLogin",acessor="getLogin,setLogin" }
					});





}
component output="false" extends="BaseDTO" {

	super.setPk('CodLogin');
	
	super.register('CodLogin',{ 
					acessor = "getCodLogin,setCodLogin" ,
					value = "" ,
					label = "CodLogin:" ,
					columnName = "CodLogin",
					viewFormat = "text",
					dbFormat = "int",
					len="11",
					required="true",
					write="false",
					comboxData="",
					dto={ unit="",acessor="" }
					});

	super.register('CPF',{ 
					acessor = "getCPF,setCPF" ,
					value = "" ,
					label = "CPF:" ,
					columnName = "CPF",
					viewFormat = "text",
					dbFormat = "int",
					len="14",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});

	super.register('Login',{ 
					acessor = "getLogin,setLogin" ,
					value = "" ,
					label = "Login:" ,
					columnName = "Login",
					viewFormat = "text",
					dbFormat = "string",
					len="20",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});

	super.register('Senha',{ 
					acessor = "getSenha,setSenha" ,
					value = "" ,
					label = "Senha:" ,
					columnName = "Senha",
					viewFormat = "text",
					dbFormat = "int",
					len="15",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});

	super.register('NomeCompleto',{ 
					acessor = "getNomeCompleto,setNomeCompleto" ,
					value = "" ,
					label = "Nome Completo:" ,
					columnName = "NomeCompleto",
					viewFormat = "text",
					dbFormat = "int",
					len="255",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});


	super.register('DataRegistro',{ 
					acessor = "getDataRegistro,setDataRegistro" ,
					value = "" ,
					label = "Data Registro:" ,
					columnName = "DataRegistro",
					viewFormat = "date",
					dbFormat = "datetime",
					len="",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});


	super.register('Desabilitar',{ 
					acessor = "getDesabilitar,setDesabilitar" ,
					value = "" ,
					label = "Desabilitar:" ,
					columnName = "Desabilitar",
					viewFormat = "checkbox",
					dbFormat = "string",
					len="1",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});

	super.register('DataUltimoAcesso',{ 
					acessor = "getDataUltimoAcesso,setDataUltimoAcesso" ,
					value = "" ,
					label = "DataUltimo Acesso:" ,
					columnName = "DataUltimoAcesso",
					viewFormat = "date",
					dbFormat = "datetime",
					len="",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});


	super.register('EmailAlternativo',{ 
					acessor = "getEmailAlternativo,setEmailAlternativo" ,
					value = "" ,
					label = "Email Alternativo:" ,
					columnName = "EmailAlternativo",
					viewFormat = "text",
					dbFormat = "string",
					len="50",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});

						
	super.register('IDContatoGoogle',{ 
					acessor = "getIDContatoGoogle,setIDContatoGoogle" ,
					value = "" ,
					label = "IDContatoGoogle:" ,
					columnName = "IDContatoGoogle",
					viewFormat = "text",
					dbFormat = "string",
					len="50",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});

						
	super.register('IDContatoGoogle',{ 
					acessor = "getIDContatoGoogle,setIDContatoGoogle" ,
					value = "" ,
					label = "IDContatoGoogle:" ,
					columnName = "IDContatoGoogle",
					viewFormat = "text",
					dbFormat = "string",
					len="50",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});

						
	super.register('IDContatoZoho',{ 
					acessor = "getIDContatoZoho,setIDContatoZoho" ,
					value = "" ,
					label = "IDContatoZoho:" ,
					columnName = "IDContatoZoho",
					viewFormat = "text",
					dbFormat = "string",
					len="50",
					required="false",
					write="true",
					comboxData="",
					dto={ unit="",acessor="" }
					});


}
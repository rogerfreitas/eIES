component output="false" {

	property name="PK";
	property name="REGISTER";
	property name="ROW";
	
	//elemente do formulario, deve ser igual ao action do eies-config.xml
	property name="viewType"; 

	Variables.PK = "";
	Variables.REGISTER = "";
	Variables.ROW      = {};

	public string function getPk(){
		return Variables.PK;
	}

	private void function setPk(String pkcolumn){
		Variables.PK = arguments.pkcolumn;
	}

	private void function register(string label,Struct value){
		Variables[arguments.label] = arguments.value;
		Variables.REGISTER = listAppend(Variables.REGISTER,arguments.label);
	}

	public string function getFieldNames(){
		return Variables.REGISTER;
	}
	
	public void function setRow(Struct currentRow){
		Variables.ROW = arguments.currentRow;
	}

	public struct function get(String field){
		var local.retorno = "";
		if(StructKeyExists(Variables,arguments.field)){
			local.retorno = Variables[arguments.field];
		}
		if(Not structIsEmpty(Variables.ROW) and StructKeyExists(Variables.ROW,arguments.field)){
			local.retorno.value = Variables.ROW[arguments.field];
		}
		return local.retorno;
	}

	public struct function getValued(String field){
		var local.retorno = "";
		if(StructKeyExists(Variables.ROW,arguments.field)){
			local.retorno = Variables.ROW[arguments.field];
		}
		return local.retorno;
	}

}
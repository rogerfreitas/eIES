component output="false" {
	
	public void function setItem( required Struct value  ){
		var local = {};
		for( local.item in value ){
			Variables[local.item] = value[local.item];
		}	
	}

	private string function ArraytoString(Array value ){
		var local  = {};
			local.retorno  = "";
			local.current  = "";
		for(local.i = 1; local.i lte ArrayLen(value);local.i++){
			if(isSimpleValue(value[local.i])){
				if( isNumeric(value[local.i])){
					local.current  = value[local.i];
				}else{
					local.current  = "'"&value[local.i]&"'";
				}
			}else if(isStruct(value[local.i]) or isComponent(value[local.i]) ){
				local.current  = StructtoString(value[local.i]);
			}else if(isArray(value[local.i])){
				local.current  = ArraytoString(value[local.i]);
			}else if(isQuery(value[local.i])){
				local.current  = "{query:"&value[local.i].columnList&"}";
			}
			if( Len(local.current) ){
				local.retorno  = ListAppend(local.retorno,local.current);
			} 
			local.current = "";
		}
		return "["&local.retorno&"]";
	}
	
	private string function StructtoString(struct value ){
		var local  = {};
			local.retorno  = "";
			local.current  = "";
		for(local.i in value){
			if(local.i neq 'THIS'){
				if(isSimpleValue(value[local.i])){
					if( isNumeric(value[local.i])){
						local.current  = "#local.i#=#value[local.i]#";
					}else{
						local.current  = "#local.i#='#value[local.i]#'";
					}
				}else if(isStruct(value[local.i]) or isComponent(value[local.i])){
					local.current  = "#local.i#=#StructtoString(value[local.i])#";
				}else if(isArray(value[local.i])){
					local.current  = "#local.i#=#ArraytoString(value[local.i])#";
				}else if(isQuery(value[local.i])){
					local.current  = "#local.i#={query:#value[local.i].columnList#}";
				}
				if( Len(local.current) ){
					local.retorno  = ListAppend(local.retorno,local.current);
				} 
				local.current = "";
			}
		}
		return "{"&local.retorno&"}";
	}
	
	private boolean function isComponent(Any value){
		var local  = {};
		local.classType  = getMetaData(value);			
		if(StructKeyExists(local.classType,'class') and local.classType.class contains ".inovece."){
			return true;
		}
		return false;
	}

	public string function toString( ){
		return StructtoString(variables);
	}
	

	public void function clear( ){
		var local  = {};
		for(local.i in variables){
			if(local.i neq 'THIS'){
				if(isSimpleValue(variables[local.i])){
					variables[local.i]  = "";
				}else if(isStruct(variables[local.i])){
					variables[local.i]  = {};
				}else if( isComponent(variables[local.i]) ) {
					local.classType  = getMetaData(variables[local.i]);			
					if(StructKeyExists(local.classType,'class') and local.classType.class contains ".inovece."){
						variables[local.i]  = create('component',local.classType.class);	
						StructDelete(local.classType,'class');
					}
					
				}else if(isArray(variables[local.i])){
					variables[local.i]  = [];
				}else if(isQuery(variables[local.i])){
					variables[local.i]  = QueryNew('');
				}
			}
		}
	}




}
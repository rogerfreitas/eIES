component output="false" extends="BaseDelegate" {

	Variables.CLASSNAME = 'br.com.inovece.eies.bussiness.remote.SecGrupoLoginBeanRemote';

	public array function getData(Struct value){
		var local = {};
			local.start = 1;
			local.count = 10;
			local.filter = {};
		if(not StructIsEmpty(arguments.value)){
			if(StructKeyExists(arguments.value,'start')){
				local.start = arguments.value.start;
			}
			if(StructKeyExists(arguments.value,'count')){
				local.count = arguments.value.count;
			}
			if(StructKeyExists(arguments.value,'filter')){
				local.filter = DeserializeJSON(arguments.value.filter);
			}
		}
		return Variables.FACADE.getData(  local.start, local.count, local.filter );
	}

}
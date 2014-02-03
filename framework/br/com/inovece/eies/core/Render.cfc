component output="false" extends="Base" {

	public any function getDTO(String dto) {
		var dtoName = Hash(arguments.dto);
		if(not StructKeyExists(Variables.CACHE,dtoName)){
			Variables.CACHE[dtoName] = createObject('component', arguments.dto);
		}
		return Variables.CACHE[dtoName];
	}


}
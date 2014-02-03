component output="false"  extends="Base" {

	public any function getBean(String bean) {
		var beanName = Hash(arguments.bean);
		if(not StructKeyExists(Variables.CACHE,beanName)){
			Variables.CACHE[beanName] = createObject('component', arguments.bean);
		}
		return Variables.CACHE[beanName];
	}

}
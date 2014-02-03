component output="false" extends="Base" {

	property ServiceLocator;

	public void function setServiceLocator(any value){
		Variables.ServiceLocator = arguments.value;
	}
	
	public any function getServiceLocator(){
		return Variables.ServiceLocator;
	}

	public any function getDelegate(String delegate) {
		var delegateName = Hash(arguments.delegate);
		if(not StructKeyExists(Variables.CACHE,delegateName)){
			Variables.CACHE[delegateName] = createObject('component', arguments.delegate).getInstance(getServiceLocator().getInstance());
		}
		return Variables.CACHE[delegateName];
	}

}
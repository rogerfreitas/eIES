component output="false" {

	property name="FACADE";
	property name="CLASSNAME";
	property name="instance";

	public any function getInstance(any  ServiceLocator){
		if(Not IsDefined('variables.instance')){
			Variables.FACADE = ServiceLocator.getInstance().getBean(CLASSNAME).init();
			variables.instance = this;
		}
		return variables.instance;
	}

}
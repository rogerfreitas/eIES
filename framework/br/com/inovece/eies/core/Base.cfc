component output="false" {

	property name="CACHE";
	property name="instance";

	public any function getInstance() {
		if (Not IsDefined("Variables.instance")) {
			Variables.CACHE = {};
			Variables.instance = this;
		}
		return Variables.instance;
	}

	public struct function getCache(){
		return Variables.CACHE;
	}

}
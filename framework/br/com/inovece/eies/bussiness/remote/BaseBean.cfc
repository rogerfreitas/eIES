component output="false" {
	
	property name="dao";
	property name="CLASS";
	
	Variables.dao = "";
	
	public function init(){
		Variables.dao = CreateObject('component',Variables.CLASS);
		return this;
	}
	
}
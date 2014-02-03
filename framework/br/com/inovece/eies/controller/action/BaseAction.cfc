component output="false" {
	
	property name="remoteBean";
	property name="CLASS";
	property name="CLASSDTO";

	public function init(){
		Variables.remoteBean = CreateObject('component',Variables.CLASS);
		return this;
	}

	public void function delete(Struct FormSecLogin){
		var DTO = CreateObject('component',Variables.CLASSDTO);
		Variables.remoteBean.save(DTO.get(DTO.getPK()).value);
	}

	public function save(Struct FormSecLogin){
		var DTO = CreateObject('component',Variables.CLASSDTO);
			DTO.setRow(FormSecLogin);
		return Variables.remoteBean.save(DTO);
	}

}
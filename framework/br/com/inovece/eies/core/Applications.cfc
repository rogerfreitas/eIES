component output="false" {

	Variables.basePath = ListFirst(replace(ExpandPath('.'),"eies","eies#Chr(13)#","All"),"#Chr(13)#")&"/"; 
	this.mappings = { "/" = Variables.basePath };
	
	this.sessionmanagement = true;
	this.clientmanagement = true;

	this.ormEnabled = true;
	this.ormsettings.logSQL = true;
	

	public boolean function onApplicationStart(){
		Application.Action = new Action();
    	return True;
	}

	public boolean function onRequestStart(String targetPage){
		if(Isdefined('flushApp')){
			onApplicationStart();
		}
    	return true;
	}
}
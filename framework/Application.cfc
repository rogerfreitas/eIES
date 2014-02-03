component output="false" extends="br.com.inovece.eies.core.Applications" { 

	this.name = 'HelloWorld_v2001';
	this.datasource = "eies";

	public boolean function onRequest(String targetPage){
		Variables.currentData = Application.Action.execute('HelloWorld');
		include arguments.targetPage;
    	return true;
	}

 }
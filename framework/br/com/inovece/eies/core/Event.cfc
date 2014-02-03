component output="false" {

	property name="APPLICATIONNAME";
	property name="CONFIG";
	property name="CONFIGKEYDEFAULT";
	property name="CONTEXT";
	property name="ServiceLocator";
	property name="ManagerDelegate";
	property name="Render";

	public function init(String appName) {
		setAppName(arguments.appName);
		Variables.CONFIG  = getResources();
		return this;
	}

	private function setAppName(String appName) {
		Variables.APPLICATIONNAME = arguments.appName;
		Variables.Render          = CreateObject('component','Render');
		Variables.ManagerDelegate = CreateObject('component','ManagerDelegate');
		Variables.ManagerDelegate.setServiceLocator( CreateObject('component','ServiceLocator') );
	}

	public string function getApplicationName(){
		return Variables.APPLICATIONNAME;
	}

	public struct function getConfig(){
		return Variables.CONFIG;
	}

	public struct function getContext(){
		return Variables.CONTEXT;
	}

	public function getServiceLocator(){
		Variables.CONTEXT = { formCollection = form, urlCollection = url, cgiCollection = cgi };
		return Variables.ManagerDelegate.getServiceLocator().getInstance();
	}

	public function getManagerDelegate(){
		Variables.CONTEXT = { formCollection = form, urlCollection = url, cgiCollection = cgi };
		return Variables.ManagerDelegate.getInstance();
	}

	public function getRender(){
		Variables.CONTEXT = { formCollection = form, urlCollection = url, cgiCollection = cgi };
		return Variables.Render.getInstance();
	}
	
	public struct function getCurrentConfig(){
		var local = {};
			local.cacheID = Variables.CONFIGKEYDEFAULT;
		if(IsDefined('URL.viewID') and StructKeyExists(Variables.CONFIG,hash(URL.viewID)) ){
			local.cacheID =hash(URL.viewID);
		}
		return Variables.CONFIG[local.cacheID];
	}

	private struct function getResources(){
		var local = {};
		    local.eiesXML = XMLParse('eies-config.xml');
			local.apps = XMLSearch(local.eiesXML,"/applications/application[ @name='#Variables.APPLICATIONNAME#' ]/view/");
			local.retorno = {};
			for(local.i=1;local.i lte ArrayLen(local.apps);local.i++){
				local.current = local.apps[local.i];
				
				local.list = local.current.actions.List;
				local.execute = local.current.actions.Execute;
				local.hash = hash(local.current.XmlAttributes['location']);
				local.forms = XMLSearch(xmlparse(local.current),"/view/actions/Forms/Form");
				local.dto = [];
				for(local.o = 1; local.o lte arraylen(local.forms);local.o++){
					ArrayAppend(local.dto,{class=local.forms[local.o].XmlAttributes['class'],action=local.forms[local.o].XmlAttributes['action'] });
				}
				local.retorno[local.hash] = {
					list={ 
						dto=local.list.XmlAttributes['dto'],
						delegate=local.list.XmlAttributes['class'],
						method=local.list.XmlAttributes['name'] 
						},
					form={ 
						dto=local.dto,
						},
					execute=local.execute.XmlAttributes['class'],
				};	
				if(StructKeyExists(local.current.XmlAttributes,'default')){
					Variables.CONFIGKEYDEFAULT = local.hash;	
				}
			}
		return local.retorno;
	}

	private struct function detectEvent(){
		var local = {};
		if(NOT StructIsEmpty(FORM)){
			local.row = FORM;
			local.event = FORM.viewType;
		}
		return local;
	}
	public any function getDTOOnEvent(any DTO,String actionName){
		var local = {};
			local.currentEvent = detectEvent();
			local.execute = false;
		if(NOT StructIsEmpty(local.currentEvent)){
			if(arguments.actionName is local.currentEvent.event ){
				DTO.setRow(local.currentEvent.row);
				local.execute = true;
			}
		}
		return {dto=DTO, action=arguments.actionName,execute=local.execute};
	}
}

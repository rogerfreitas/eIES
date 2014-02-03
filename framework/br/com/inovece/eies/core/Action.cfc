component output="false" {

	property CACHE;

	public function init(){
		Variables.CACHE = {};
		return this;
	}

	private any function getApplication(String app) {
		var local = {};
			local.appName = Hash(arguments.app);
		if(not StructKeyExists(Variables.CACHE,local.appName)){
			Variables.CACHE[local.appName] = createObject('component', 'Event');
			Variables.CACHE[local.appName].init(arguments.app);
		}
		return Variables.CACHE[local.appName];
	}

	private any function executeAjax(String app, String delegate, String method,Struct params){
		init();
		var bean = getApplication(arguments.app).getManagerDelegate().getDelegate(delegate);
		return bean[arguments.method](params);
	}

	public struct function execute(String app){
		var local = {};
			local.currentDTOIndex = 0;
			local.current = getApplication(arguments.app);
			local.DTOLen = ArrayLen( local.current.getCurrentConfig().form.dto );
			local.dtoItem = [];
			for(local.i=1;local.i lte local.DTOLen; local.i++){
				arrayAppend(local.dtoItem,local.current.getDTOOnEvent( getDTO(local.current,arguments.app,local.i), local.current.getCurrentConfig().form.dto[local.i].action));	
				if(local.dtoItem[local.i].execute){
					local.currentDTOIndex = local.i;
				}
			}
			if(local.currentDTOIndex gt 0){
				local.Action = getAction(local.current,arguments.app);
				local.currentAction = local.Action[local.currentDTOIndex][local.dtoItem[local.currentDTOIndex]['action']](local.dtoItem[local.currentDTOIndex]['dto']);
				local.dtoItem[local.currentDTOIndex]['dto'].setRow(local.currentAction);
			}
			
			local.retorno = {
				report =  { 
					 columns = getDTODelegate(local.current,arguments.app),  
		             data = getDelegate(local.current,arguments.app)
					},
				dto   = local.dtoItem
			};

		return local.retorno;
	}

	private any function getAction(any class, String app){
		return class.getServiceLocator().getBean(getApplication(arguments.app).getCurrentConfig().execute);
	}
	
	private any function getDelegate(any class, String app){
		return class.getManagerDelegate().getDelegate(getApplication(arguments.app).getCurrentConfig().list.delegate)[getApplication(arguments.app).getCurrentConfig().list.method](url);
	}
	
	private any function getDTODelegate(any class, String app){
		return class.getRender().getDTO(getApplication(arguments.app).getCurrentConfig().list.dto);
	}
	
	private any function getDTO(any class, String app, Number index){
		return class.getRender().getDTO(getApplication(arguments.app).getCurrentConfig().form.dto[arguments.index].class);
	}
	
}
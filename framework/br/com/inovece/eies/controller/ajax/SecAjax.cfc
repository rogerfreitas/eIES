component restpath="/SecAjax" rest="true" extends="br.com.inovece.eies.core.Action"  {

	remote any function allUsuarios(String start restargsource="Path") httpmethod="GET" restpath="{start}" {
		arguments.start = replace(arguments.start,'n','');
		return super.executeAjax('HelloWorld','br.com.inovece.eies.controller.service.SecLoginDelegate','getDataAjax',{start=arguments.start});
	}

}
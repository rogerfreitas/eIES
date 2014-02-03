component output="false" extends="BaseBean" {

	Variables.CLASS = "br.com.inovece.eies.bussiness.persistence.dao.SecGrupoLoginDAO";

	public Array function getData(Numeric start, Numeric count, Struct filter){
		if(arguments.start lte 0 ){
			arguments.start = 1;
		}
		if(arguments.count gte 11 ){
			arguments.start = 10;
		}
		return 	Variables.dao.getSecGrupoLogin_paged(arguments.start, arguments.count, arguments.filter);
	}	
	
	public void function delete(Numeric id){
		transaction {
			try {		
				if(Not isNumeric(arguments.id) ){
					throw(message="SecGrupoLogin Invalido #arguments.id#", detail="00004");
				}
				Variables.dao.deleteSecGrupoLogin(arguments.id);
				transaction action="commit";
			} catch (any e) {
				transaction action="rollback";
			}
		  }
	}
	
	/*
		returnType - br.com.inovece.eies.bussiness.persistence.entity.SecGrupoLogin
		paramType - br.com.inovece.eies.bussiness.dto.SecGrupoLoginDTO
	*/
	public any function save(any dto){
		var retorno = false;
		transaction {
			try {		
				if( 1 eq 2 ){ //apenas exemplo de validacao
					throw(message="SecGrupoLogin Invalido #arguments.id#", detail="00005");
				}
				retorno = Variables.dao.save(arguments.dto);
				transaction action="commit";
			} catch (any e) {
				transaction action="rollback";
			}
		  }
		return retorno;
	}
	

}
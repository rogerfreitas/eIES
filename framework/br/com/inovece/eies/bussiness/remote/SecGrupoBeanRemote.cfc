component output="false" extends="BaseBean" {

	Variables.CLASS = "br.com.inovece.eies.bussiness.persistence.dao.SecGrupoDAO";

	public Array function getData(Numeric start, Numeric count, Struct filter){
		if(arguments.start lte 0 ){
			arguments.start = 1;
		}
		if(arguments.count gte 11 ){
			arguments.start = 10;
		}
		return 	Variables.dao.getSecGrupo_paged(arguments.start, arguments.count, arguments.filter);
	}	
	
	public void function delete(Numeric id){
		transaction {
			try {		
				if(Not isNumeric(arguments.id) ){
					throw(message="SecGrupo Invalido #arguments.id#", detail="00006");
				}
				Variables.dao.deleteSecGrupo(arguments.id);
				transaction action="commit";
			} catch (any e) {
				transaction action="rollback";
			}
		  }
	}
	
	/*
		returnType - br.com.inovece.eies.bussiness.persistence.entity.SecGrupo
		paramType - br.com.inovece.eies.bussiness.dto.SecGrupoDTO
	*/
	public any function save(any dto){
		var retorno = false;
		transaction {
			try {		
				if( 1 eq 2 ){ //apenas exemplo de validacao
					throw(message="SecGrupo Invalido #arguments.id#", detail="00005");
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
component output="false" extends="BaseBean" {

	Variables.CLASS = "br.com.inovece.eies.bussiness.persistence.dao.SecLoginDAO";
	
	public Array function getData(Numeric start, Numeric count, Struct filter){
		if(arguments.start lte 0 ){
			arguments.start = 1;
		}
		if(arguments.count gte 11 ){
			arguments.start = 10;
		}
		return 	Variables.dao.getSecLogin_paged(arguments.start, arguments.count, arguments.filter);
	}	
	
	
	

}
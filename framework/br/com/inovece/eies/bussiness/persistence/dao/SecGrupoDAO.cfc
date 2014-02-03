<cfcomponent output="false" extends="BaseDAO">

	<cffunction name="createSecLogin" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupo" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoDTO" required="true" />
		<cfset var newItem = DTO2Entity(arguments.item, EntityNew("SecGrupo"),false) /> 
		<cfset var KeysMap = DTO2Struct(arguments.item)  />
		<cfset entitysave(newItem) />
		<cfreturn entityload("SecGrupo",KeysMap,' CodGrupo desc ',{maxResults=1})[1] />
	</cffunction>

	<cffunction name="deleteSecGrupo" returntype="void" access="public">
		<cfargument name="id" type="any" required="true" />
		<cfset var primaryKeysMap = { CodGrupo = arguments.id }>
		<cfset var item=entityload("SecGrupo",primaryKeysMap,true)>
		<cfif isnull(arguments.item) eq false>
			<cfset entitydelete(item) />
		</cfif>
		<cfreturn />
	</cffunction>

	<cffunction name="getAllSecGrupo" returntype="Array" access="public">
		<cfreturn []> <!--- use o getSecGrupo_paged--->
		<cfreturn entityload("SecGrupo") />
	</cffunction>

	<cffunction name="IsNew" returntype="boolean" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoDTO" required="true" />
		<cfset var id = arguments.dto.get(arguments.item.getPK()).value />
		<cfreturn (  id eq "" or id eq "0" or  id eq "NaN"  ) />
	</cffunction>

	<cffunction name="save" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupo" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoDTO" required="true" />
		<cfif  IsNew(Arguments.item) >
			<cfreturn CreateSecGrupo(Arguments.item) />
		<cfelse>
			<cfreturn UpdateSecGrupo(Arguments.item) />
		</cfif>
	</cffunction>

	<cffunction name="getSecGrupo_paged" returntype="Array" access="public">
		<cfargument name="start" type="numeric" required="true" />
		<cfargument name="count" type="numeric" required="true" />
		<cfargument name="filter" type="struct" required="true" />
		<cfreturn entityload("SecGrupo",arguments.filter,"",{offset=arguments.start,maxresults=arguments.count})/>
	</cffunction>

	<cffunction name="getSecGrupo" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupo" access="public">
		 <cfargument name="id" type="any" required="true" /> 
		<cfset var primaryKeysMap = { CodGrupo = arguments.id }>
		<cfreturn entityload("SecGrupo",primaryKeysMap,true)>
	</cffunction>

	<cffunction name="updateSecGrupo" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupo" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoDTO" required="true" />
		<cfset var KeysMap = {CodGrupo = arguments.item.get('CodGrupo').value}  />
		<cfset var newItem = DTO2Entity(arguments.item, getSecGrupo(arguments.item.get('CodGrupo').value),true) /> 
		<cfset entitysave(newItem) />
		<cfreturn entityload("SecGrupo",KeysMap,' CodGrupo desc ',{maxResults=1})[1] />
	</cffunction>

	<cffunction name="count" returntype="numeric" access="public">
		<cfreturn ormexecutequery("select count(*) from SecGrupo",true)>
	</cffunction>

</cfcomponent> 
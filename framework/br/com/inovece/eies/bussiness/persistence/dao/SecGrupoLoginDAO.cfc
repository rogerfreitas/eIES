<cfcomponent output="false" extends="BaseDAO">

	<cffunction name="createSecLogin" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupoLogin" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoLoginDTO" required="true" />
		<cfset var newItem = EntityNew("SecGrupoLogin") /> 
		<cfset newItem[arguments.dto.get('CodGrupo').dto.acessor](entityload("SecGrupo",{CodGrupo = arguments.dto.get('CodGrupo').value },true)) />
		<cfset newItem[arguments.dto.get('CodLogin').dto.acessor](entityload("SecLogin",{CodLogin = arguments.dto.get('CodLogin').value },true)) />
		<cfset var KeysMap = DTO2Struct(arguments.item)  />
		<cfset entitysave(newItem) />
		<cfreturn entityload("SecGrupoLogin",KeysMap,' CodGrupoLogin desc ',{maxResults=1})[1] />
	</cffunction>

	<cffunction name="deleteSecGrupoLogin" returntype="void" access="public">
		<cfargument name="id" type="any" required="true" />
		<cfset var primaryKeysMap = { CodGrupoLogin = arguments.id }>
		<cfset var item=entityload("SecGrupoLogin",primaryKeysMap,true)>
		<cfif isnull(arguments.item) eq false>
			<cfset entitydelete(item) />
		</cfif>
		<cfreturn />
	</cffunction>

	<cffunction name="getAllSecGrupoLogin" returntype="Array" access="public">
		<cfreturn []> <!--- use o getSecGrupoLogin_paged--->
		<cfreturn entityload("SecGrupoLogin") />
	</cffunction>

	<cffunction name="IsNew" returntype="boolean" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoLoginDTO" required="true" />
		<cfset var id = arguments.dto.get(arguments.item.getPK()).value />
		<cfreturn (  id eq "" or id eq "0" or  id eq "NaN"  ) />
	</cffunction>

	<cffunction name="save" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupoLogin" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoLoginDTO" required="true" />
		<cfif  IsNew(Arguments.item) >
			<cfreturn CreateSecGrupoLogin(Arguments.item) />
		<cfelse>
			<cfreturn UpdateSecGrupoLogin(Arguments.item) />
		</cfif>
	</cffunction>

	<cffunction name="getSecGrupoLogin_paged" returntype="Array" access="public">
		<cfargument name="start" type="numeric" required="true" />
		<cfargument name="count" type="numeric" required="true" />
		<cfargument name="filter" type="struct" required="true" />
		<cfreturn entityload("SecGrupoLogin",arguments.filter,"",{offset=arguments.start,maxresults=arguments.count})/>
	</cffunction>

	<cffunction name="getSecGrupoLogin" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupoLogin" access="public">
		 <cfargument name="id" type="any" required="true" /> 
		<cfset var primaryKeysMap = { CodGrupoLogin = arguments.id }>
		<cfreturn entityload("SecGrupoLogin",primaryKeysMap,true)>
	</cffunction>

	<cffunction name="updateSecGrupoLogin" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecGrupoLogin" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecGrupoLoginDTO" required="true" />
		<cfset var KeysMap = {CodGrupoLogin = arguments.item.get('CodGrupoLogin').value}  />
		<cfset var newItem = getSecGrupoLogin(arguments.item.get('CodGrupoLogin').value) /> 
		<cfset newItem[arguments.dto.get('CodGrupo').dto.acessor](entityload("SecGrupo",{CodGrupo = arguments.dto.get('CodGrupo').value },true)) />
		<cfset newItem[arguments.dto.get('CodLogin').dto.acessor](entityload("SecLogin",{CodLogin = arguments.dto.get('CodLogin').value },true)) />
		<cfset entitysave(newItem) />
		<cfreturn entityload("SecGrupoLogin",KeysMap,' CodGrupoLogin desc ',{maxResults=1})[1] />
	</cffunction>

	<cffunction name="count" returntype="numeric" access="public">
		<cfreturn ormexecutequery("select count(*) from SecGrupoLogin",true)>
	</cffunction>

</cfcomponent> 
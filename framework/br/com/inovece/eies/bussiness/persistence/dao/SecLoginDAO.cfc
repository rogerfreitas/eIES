<cfcomponent output="false" extends="BaseDAO">

	<cffunction name="createSecLogin" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecLogin" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecLoginDTO" required="true" />
		<cfset var newItem = DTO2Entity(arguments.item, EntityNew("SecLogin"),false) /> 
		<cfset var KeysMap = DTO2Struct(arguments.item)  />
		<cfset entitysave(newItem) />
		<cfreturn entityload("SecLogin",KeysMap,' CodLogin desc ',{maxResults=1})[1] />
	</cffunction>

	<cffunction name="deleteSecLogin" returntype="void" access="public">
		<cfargument name="id" type="any" required="true" />
		<cfset var primaryKeysMap = { CodLogin = arguments.id }>
		<cfset var item=entityload("SecLogin",primaryKeysMap,true)>
		<cfif isnull(arguments.item) eq false>
			<cfset entitydelete(item) />
		</cfif>
		<cfreturn />
	</cffunction>

	<cffunction name="getAllSecLogin" returntype="Array" access="public">
		<cfreturn []> <!--- use o getSecLogin_paged--->
		<cfreturn entityload("SecLogin") />
	</cffunction>

	<cffunction name="IsNew" returntype="boolean" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecLoginDTO" required="true" />
		<cfset var id = arguments.dto.get(arguments.item.getPK()).value />
		<cfreturn (  id eq "" or id eq "0" or  id eq "NaN"  ) />
	</cffunction>

	<cffunction name="save" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecLogin" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecLoginDTO" required="true" />
		<cfif  IsNew(Arguments.item) >
			<cfreturn CreateSecLogin(Arguments.item) />
		<cfelse>
			<cfreturn UpdateSecLogin(Arguments.item) />
		</cfif>
	</cffunction>

	<cffunction name="getSecLogin_paged" returntype="Array" access="public">
		<cfargument name="start" type="numeric" required="true" />
		<cfargument name="count" type="numeric" required="true" />
		<cfargument name="filter" type="struct" required="true" />
		<cfreturn entityload("SecLogin",arguments.filter,"",{offset=arguments.start,maxresults=arguments.count})/>
	</cffunction>

	<cffunction name="getSecLogin" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecLogin" access="public">
		 <cfargument name="id" type="any" required="true" /> 
		<cfset var primaryKeysMap = { CodLogin = arguments.id }>
		<cfreturn entityload("SecLogin",primaryKeysMap,true)>
	</cffunction>

	<cffunction name="updateSecLogin" returntype="br.com.inovece.eies.bussiness.persistence.entity.SecLogin" access="public">
		<cfargument name="item" type="br.com.inovece.eies.bussiness.dto.SecLoginDTO" required="true" />
		<cfset var KeysMap = { CodLogin = arguments.item.get('CodLogin').value}  />
		<cfset var newItem = DTO2Entity(arguments.item, getSecLogin(arguments.item.get('CodLogin').value),true) /> 
		<cfset entitysave(newItem) />
		<cfreturn entityload("SecLogin",KeysMap,' CodLogin desc ',{maxResults=1})[1] />
	</cffunction>

	<cffunction name="count" returntype="numeric" access="public">
		<cfreturn ormexecutequery("select count(*) from SecLogin",true)>
	</cffunction>

</cfcomponent> 
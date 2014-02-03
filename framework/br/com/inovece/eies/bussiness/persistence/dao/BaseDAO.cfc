<cfcomponent output="false">

	<cffunction name="DTO2Entity" returntype="any" access="public">
		<cfargument name="dto" type="any" required="true" />
		<cfargument name="entity" type="any" required="true" />
		<cfargument name="update" type="boolean" required="false" default="true" />
		<cfset var local   = {} />
		<cfset     local.i = "" />
		<cfloop list="#arguments.dto.getFieldNames()#" index="local.i">
			<cfif local.i is arguments.dto.getPK() >
				<cfif arguments.update>
					<cfset arguments.entity[listlast(arguments.dto.get(local.i).ACESSOR,',')](arguments.dto.get(local.i).value)  />
				</cfif>
			<cfelse>			
				<cfset arguments.entity[listlast(arguments.dto.get(local.i).ACESSOR,',')](arguments.dto.get(local.i).value)  />
			</cfif>
		</cfloop>
		<cfreturn arguments.entity />
	</cffunction>

	<cffunction name="DTO2Struct" returntype="any" access="public">
		<cfargument name="dto" type="any" required="true" />
		<cfset var local   = {} />
		<cfset     local.i = "" />
		<cfset     local.r = {} />
		<cfloop list="#arguments.dto.getFieldNames()#" index="local.i">
			<cfset local.r[arguments.dto.get(local.i).columnName] = arguments.dto.get(local.i).value  />
		</cfloop>
		<cfreturn local.r />
	</cffunction>

</cfcomponent>
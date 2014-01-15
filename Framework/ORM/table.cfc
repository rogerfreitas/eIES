<cfcomponent persistent="true">
	<!--- DataSource Application --->
	<cfset datasource='webdb'>
	
	<cfloop>	
		<cfproperty name="#field#" column="#field#">
	</cfloop>
	
	

</cfcomponent>
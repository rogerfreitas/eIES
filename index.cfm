<br>
<cfset x=2>

<cfquery datasource="eies" name="table1">
	select idtable1,table1col,table1col2 from Table1
</cfquery>

<cfoutput query="table1">
#idtable1#<br>
</cfoutput>
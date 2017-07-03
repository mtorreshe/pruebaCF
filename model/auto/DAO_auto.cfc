<!---
============================================================================================
* IPN - CSII
* Sistema: SERO
* Modulo: administración de usuarios
* Fecha: agosoto/2016
* Descripcion: acceso a datos para la administración de usuarios.
* Autor: Yareli Andrade
============================================================================================
--->

<cfcomponent> 

    <!---
    * Fecha creación: agosto, 2016
    * @author: Yareli Andrade
    --->
    <cffunction name="getDatosAuto" hint="">
        <cfargument name="idAuto" type="numeric" required="yes" hint="">
            
			<cfset myQuery = QueryNew("marca, color", "VarChar, VarChar")> 
         
			<!--- Make two rows in the query ---> 
			<cfset newRow = QueryAddRow(MyQuery, 2)> 
			 
			<!--- Set the values of the cells in the query ---> 
			<cfset temp = QuerySetCell(myQuery, "marca", "VW", 1)> 
			<cfset temp = QuerySetCell(myQuery, "color", "rojo", 1)>
			
			<!--- Set the values of the cells in the query ---> 
			<cfset temp = QuerySetCell(myQuery, "marca", "Toyota", 2)> 
			<cfset temp = QuerySetCell(myQuery, "color", "gris", 2)>  
        <cfreturn myQuery>
		
		
    </cffunction>



</cfcomponent>
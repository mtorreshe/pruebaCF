<!---
============================================================================================
* IPN - CSII
* Sistema: SERO
* Modulo: administración de usuarios
* Fecha: agosoto/2016
* Descripcion: componente de negocio para agregar, eliminar y editar datos de los usuarios.
* Autor: Yareli Andrade
============================================================================================
--->

<cfcomponent>
    <cfproperty name="DAO" 			inject="auto.DAO_auto">
	
	<cfproperty name="populator" 	inject="wirebox:populator">
	<cfproperty name="wirebox" 		inject="wirebox">

	<cffunction name="getAuto" access="public" returntype="any" output="false">
		<cfargument name="idAuto" type="numeric">
		<cfscript>
			objAutos = DAO.getDatosAuto(idAuto);
			/*falta crear los objetos y llenarlos*/
			return objAutos;
		</cfscript>
	</cffunction>

</cfcomponent>
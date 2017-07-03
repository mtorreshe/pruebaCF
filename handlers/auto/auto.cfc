<!---
========================================================================
* IPN - CSII
* Sistema: SERO
* Modulo: administración de usuarios
* Sub modulo: 
* Fecha: agosto/2016
* Descripcion: handler 
* Autor: Yareli Andrade
=========================================================================
--->

<cfcomponent>
    
	<cfproperty name="CNauto" inject="auto.CN_auto">

	<cffunction name="index" access="remote" returntype="void" output="false">
		<cfargument name="event" type="any">
		<cfset prc.objAuto = CNauto.getAuto(1)>
		<cfset event.setView("auto/auto")>
	</cffunction>

</cfcomponent>
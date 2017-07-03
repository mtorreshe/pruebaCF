<!---
* =========================================================================
* IPN - CSII
* Sistema: SERO
* Modulo: administración de usuarios
* Sub modulo: 
* Fecha: agosto/2016
* Descripcion: handler para la autenticacion del usuario
* Autor: Yareli Andrade
* =========================================================================
--->

<cfcomponent>	
	<!---
	* Fecha creacion: agosto, 2016
	* @author Yareli Andrade
	--->
	<cffunction name="autenticacion" access="public" returntype="void" output="false" hint="Valida los datos de acceso del usuario">
		<cfargument name="Event" type="any">	
		<cfscript>
			var rc = Event.getCollection();	
					
			if ( NOT Len(rc.user) OR NOT Len(rc.password) ){
				getPlugin("MessageBox").setMessage("error2","Favor de llenar los campos de usuario y contrase&ntilde;a.");
				setNextEvent("main");
			} 
			else {
				var cnLogin = getModel("login.CN_login");
				var usuario = cnLogin.validarUsuario(rc.user, rc.password);
				
				if ( usuario.validado EQ 1 ){	
					getPlugin("SessionStorage").setVar("usuario", usuario);
					if (StructKeyExists(usuario, "PSW")) {
						var cnUsr 		= getModel("administracion.CN_usuarios");
						Request.acron 	= cnUsr.getAcron();
						Request.rol		= cnUsr.obtenerRoles();			
						Request.ur 		= cnUsr.getUr();
						event.setView("administracion/registro").noLayout();
					} else { 
						urlPaginaInicial = event.buildLink('inicio');
						getPlugin("SessionStorage").setVar("urlPaginaInicial", urlPaginaInicial);
						setNextEvent("inicio");
					}
				} else if ( usuario.validado EQ 2 ){
					getPlugin("MessageBox").setMessage("error2", "Esta cuenta de usuario fue desactivada.");
					setNextEvent("main");
				} else {
					getPlugin("MessageBox").setMessage("error2","Nombre de usuario o contrase&ntilde;a incorrectos.");
					setNextEvent("main");
				}
			}
		</cfscript>
	</cffunction>

	<!---
	* Fecha creacion: agosto, 2016
	* @author: Yareli Andrade
	--->
	<cffunction name="cerrarSesion" hint="Finaliza la sesión de usuario">
		<cfargument name="Event" type="any">
		<cfscript>
			getPlugin("SessionStorage").clearAll();
			setNextEvent("main");
		</cfscript>	
	</cffunction>	

</cfcomponent>
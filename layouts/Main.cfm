<!DOCTYPE html>
<cfprocessingdirective pageEncoding="utf-8">
<html>
    <head>
    </head>

    <!--- <body class="boxed-layout"> --->
    <body class="skin-4">
		<table border=1 style="width:100%; height: 800px;">
			<thead >
			<th>
			
				Este es el layout del proyecto  (estoy en layouts/Main.cfm)
				<p>
					aquí puede ir el menú del proyecto
				<p>
				
			</th>
			</thead>
			<tr>
			<td>
			
			  <cfoutput>
		           	#renderView()#
		        </cfoutput>	
			</td>
			</tr>
		
		</table>
		
		
		
		
		
				      	        

    </body>
</html>   

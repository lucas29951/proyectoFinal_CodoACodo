<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="misClases.Ticket"%>
<%@page import="misClases.TicketDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<script src="https://kit.fontawesome.com/a4b391749b.js" crossorigin="anonymous"></script>
<title>Back Office</title>
</head>
<body>
	
	<div class="container">
		<h1 class="text-primary">Panel de Tickets</h1>
		<div class="row">
			<table class="table table-striped">
				<thead>
					<th>Id. Venta</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Mail</th>
					<th>Cantidad</th>
					<th>Tipo</th>
					<th>Total</th>
					<th>Eliminar</th>
				</thead>
			
			<%
			List<Ticket> resultado = null;
			TicketDAO ticket = new TicketDAO();
			resultado = ticket.listarTickets();
			
			float totalFacturado = 0;
			
			for(int i=0;i<resultado.size();i++){
				String rutaE = "FrontController?accion=eliminar&id=" + resultado.get(i).getId();
				
				String tipoTicket;
				
				if(resultado.get(i).getTipo_ticket() == 1){
					tipoTicket = "Estudiante";
				} else if(resultado.get(i).getTipo_ticket() == 2){
					tipoTicket = "Trainee";
				} else {
					tipoTicket = "Junior";
				}
			%>
			
				<tr>
					<td><%= resultado.get(i).getId() %></td>
					<td><%= resultado.get(i).getNombre() %></td>
					<td><%= resultado.get(i).getApellido() %></td>
					<td><%= resultado.get(i).getMail() %></td>
					<td><%= resultado.get(i).getCant() %></td>
					<td><%= tipoTicket %></td>
					<td><%= resultado.get(i).getTotal_facturado() %></td>
					<td class="text-center"><a href=<%= rutaE %>><i class="fa-solid fa-trash-can"></i></a></td>
				</tr>
			
			<%
			totalFacturado = totalFacturado + resultado.get(i).getTotal_facturado();
			}
			%>
			
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="text-danger"><%= totalFacturado %></td>
					<td></td>
				</tr>
			</table>
			
			<a class="btn btn-success col-md-2 m-2" href="FrontController?accion=volver">Volver</a>
		</div>
	</div>
	
</body>
</html>
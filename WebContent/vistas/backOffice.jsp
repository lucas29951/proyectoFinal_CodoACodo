<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="misClases.Ticket"%>
<%@page import="misClases.TicketDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<script src="https://kit.fontawesome.com/a4b391749b.js" crossorigin="anonymous"></script>
<title>Back Office</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="FrontController">
        <img src="./img/codoacodo.png" alt="Conf Bs As" width="65" height="35" class="d-inline-block align-top">
        Conf Bs As
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item text-end">
            <a class="nav-link" href="#">La conferencia</a>
          </li>
          <li class="nav-item text-end">
            <a class="nav-link" href="#">Los oradores</a>
          </li>
          <li class="nav-item text-end">
            <a class="nav-link" href="#">El lugar y la fecha</a>
          </li>
          <li class="nav-item text-end">
            <a class="nav-link" href="FrontController#QuieroSerOrador">Conviertete en orador</a>
          </li>
          <li class="nav-item text-end">
            <a class="nav-link link-success" href="FrontController?accion=registrar">Comprar tickets</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
	<div class="container">
		<h1 class="text-primary text-center mt-2">Panel de Tickets</h1>
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
					<td><a class="ms-3" href=<%= rutaE %>><i class="fa-solid fa-trash-can"></i></a></td>
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
					<td class="fw-medium">Total Gral.</td>
					<td class="text-danger"><%= totalFacturado %></td>
					<td></td>
				</tr>
			</table>
			
			<a class="btn btn-success col-md-2 m-2" href="FrontController?accion=volver">Volver</a>
			<a class="btn btn-success col-md-2 m-2" href="FrontController?accion=oradores">Ver Oradores</a>
		</div>
	</div>
	
</body>
</html>
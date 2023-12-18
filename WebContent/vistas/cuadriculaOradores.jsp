<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="misClases.Orador"%>
<%@page import="misClases.OradorDAO"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<script src="https://kit.fontawesome.com/a4b391749b.js" crossorigin="anonymous"></script>
<title>Oradores</title>
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
		<h1 class="text-dark text-center mt-2">Oradores Confirmados</h1>
		<div class="row">
			
			
			<%
			List<Orador> resultado = null;
			OradorDAO orador = new OradorDAO();
			resultado = orador.listarOradores();
			
			for(int i=0;i<resultado.size();i++){
				
			%>
				<div class="col-md-4">
				<div class="card border-warning">
					<div class="card-header bg-warning"><br></div>
  					<div class="card-body">
    					<h5 class="card-title"><%= resultado.get(i).getNombre() %>  <%= resultado.get(i).getApellido() %></h5>
    					<p class="card-text"><%= resultado.get(i).getTematica() %></p>
    					<a href="FrontController?accion=registrar" class="btn btn-success">Anotarse</a>
  					</div>
				</div>
				</div>
			<%
			}
			%>
			
			
		</div>
	</div>
	
</body>
</html>
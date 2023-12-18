<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>Comprar Tickets</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
              <a class="navbar-brand" href="./index.html">
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
                    <a class="nav-link" href="#">Conviértete en orador</a>
                  </li>
                  <li class="nav-item text-end">
                    <a class="nav-link link-success" href="./tickets.html">Comprar tickets</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>

          <div class="container ctn-dimension">
            <div class="row pt-3 mt-2 text-center">
                <div class="col-md-4">
                    <div class="card border-primary border-2">
                      <div class="card-header bg-primary text-light">
                        <h5 class="card-title mt-2">Estudiante</h5>
                      </div>
                        <div class="card-body">
                            <p class="card-text mt-3 fs-5">Tienen un descuento</p>
                            <h6 class="card-title mt-2 fw-bold">80%</h6>
                            <p class="card-text mt-3 text-secondary mb-3">* presentar documentacion</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-info border-2">
                      <div class="card-header bg-info text-light">
                        <h5 class="card-title mt-2">Trainee</h5>
                      </div>
                        <div class="card-body">
                            <p class="card-text mt-3 fs-5">Tienen un descuento</p>
                            <h6 class="card-title mt-2 fw-bold">50%</h6>
                            <p class="card-text mt-3 text-secondary mb-3">* presentar documentacion</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card border-warning border-2">
                      <div class="card-header bg-warning text-light">
                        <h5 class="card-title mt-2">Junior</h5>
                      </div>
                        <div class="card-body">
                            <p class="card-text mt-3 fs-5">Tienen un descuento</p>
                            <h6 class="card-title mt-2 fw-bold">15%</h6>
                            <p class="card-text mt-3 text-secondary mb-3">* presentar documentacion</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="container ctn-section">
            <h2 class="text-uppercase text-center mt-3"><p class="mb-1 style-po">Venta</p>Valor de Ticket $200</h2>
            <form class="frm-dimension mx-auto mt-4">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group mb-3">
                            <input type="text" class="form-control color-input" id="nombre" placeholder="Nombre">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group mb-3">
                            <input type="text" class="form-control color-input" id="apellido" placeholder="Apellido">
                        </div>
                    </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group mb-3">
                      <input type="text" class="form-control color-input" id="correo" placeholder="Correo">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                      <div class="form-group mb-3">
                          <label for="nombre" class="form-label">Cantidad</label>
                          <input type="text" class="form-control color-input" id="cantidad" placeholder="cantidad">
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="form-group mb-3">
                          <label for="categoria" class="form-label">Categoria</label>
                          <select class="form-control form-select" aria-label="Estudiante" id="categoria">
                            <option value="1">Estudiante</option>
                            <option value="2">Trainee</option>
                            <option value="3">Junior</option>
                          </select>
                      </div>
                  </div>
              </div>
              <div class="alert alert-info mt-3" role="alert">
                Total a Pagar: $
              </div>
              <div class="row">
                <div class="col-md-6">
                  <button type="button" class="btn btn-color-custom text-light mt-3 mb-4 w-100" id="borrar">Borrar</button>
                </div>
                <div class="col-md-6">
                  <button type="button" class="btn btn-color-custom text-light mt-3 mb-4 w-100" id="resumen">Resumen</button>
                </div>
              </div>
    
            </form>
        </section>

        <footer class="color-grad text-center py-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="list-inline footer-links d-flex justify-content-evenly">
                            <li class="list-inline-item"><a href="#">Preguntas frecuentes</a></li>
                            <li class="list-inline-item"><a href="#">Contactanos</a></li>
                            <li class="list-inline-item"><a href="#">Prensa</a></li>
                            <li class="list-inline-item"><a href="#">Conferencias</a></li>
                            <li class="list-inline-item"><a href="#">Términos y condiciones</a></li>
                            <li class="list-inline-item"><a href="#">Privacidad</a></li>
                            <li class="list-inline-item"><a href="#">Estudiantes</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer> 

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="./js/script.js"></script>
    </body>
</html>
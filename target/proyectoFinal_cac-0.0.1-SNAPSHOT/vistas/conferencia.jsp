<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Codo a Codo Conf</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <!-- Barra de navegaci�n oscura -->
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
            <a class="nav-link" href="#">Convi�rtete en orador</a>
          </li>
          <li class="nav-item text-end">
            <a class="nav-link link-success" href="FrontController?accion=registrar">Comprar tickets</a>
          </li>
          <li>
          	<a class="nav-link link-warning" href="FrontController?accion=backoffice">Back Office</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Carousel con im�genes -->
<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./img/ba1.jpg" class="d-block w-100 ban-img" alt="Imagen 1">
      <div class="carousel-caption custom-caption">
        <h3 class="d-flex justify-content-end text-end margin-custom">Conf Bs As</h3>
        <p class="d-flex justify-content-end text-end">
          Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y
          experiencia de los expertos que est�n creando el futuro de Internet. Ven a conocer a miembros del evento, a
          otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!
        </p>
        <div class="d-flex justify-content-end">
          <a class="btn btn-outline-light me-3" href="#">Quiero ser orador</a>
          <a class="btn custom-color-btn text-light" href="./tickets.html">Comprar tickets</a>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <img src="./img/ba2.jpg" class="d-block w-100 ban-img" alt="Imagen 2">
      <div class="carousel-caption custom-caption">
        <h3 class="d-flex justify-content-end text-end margin-custom">Conf Bs As</h3>
        <p class="d-flex justify-content-end text-end">
          Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y
          experiencia de los expertos que est�n creando el futuro de Internet. Ven a conocer a miembros del evento, a
          otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!
        </p>
        <div class="d-flex justify-content-end">
          <a class="btn btn-outline-light me-2" href="#">Quiero ser orador</a>
          <a class="btn custom-color-btn text-light" href="./tickets.html">Comprar tickets</a>
        </div>
      </div>
    </div>
  </div>
</div>

    <!-- Secci�n de Oradores -->
    <div class="container">
      <h2 class="text-uppercase text-center mt-3"><p class="mb-1 style-po">Conoce a los</p>oradores</h2>
      <div class="row py-3">
          <div class="col-md-4">
              <div class="card mb-4">
                  <img src="./img/steve-transformed-2.jpg" class="card-img-top" alt="Orador 1">
                  <div class="card-body">
                      <span class="badge text-bg-warning">JavaScript</span>
                      <span class="badge text-bg-primary">React</span>
                      <h5 class="card-title mt-2">Steve Jobs</h5>
                      <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium ab qui aperiam quis. Provident qui rerum itaque dolor facilis, quibusdam omnis ipsa non voluptatibus amet debitis. Hic assumenda ipsum possimus.</p>
                  </div>
              </div>
          </div>
          <div class="col-md-4">
              <div class="card mb-4">
                  <img src="./img/bill.jpg" class="card-img-top" alt="Orador 2">
                  <div class="card-body">
                      <span class="badge text-bg-warning">JavaScript</span>
                      <span class="badge text-bg-primary">React</span>
                      <h5 class="card-title mt-2">Bill Gates</h5>
                      <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla nihil blanditiis voluptates, explicabo doloribus aliquam animi veniam iste debitis voluptatum asperiores et porro suscipit dolor velit atque? Eum, inventore culpa.</p>
                  </div>
              </div>
          </div>
          <div class="col-md-4">
              <div class="card mb-4">
                  <img src="./img/ada.jpeg" class="card-img-top" alt="Orador 3">
                  <div class="card-body">
                      <span class="badge text-bg-secondary">Negocios</span>
                      <span class="badge text-bg-danger">Startups</span>
                      <h5 class="card-title mt-2">Ada Lovelace</h5>
                      <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Libero, praesentium sunt impedit ducimus autem vitae consequuntur voluptatem aliquid quae. Animi quasi tempora explicabo porro, amet culpa laborum alias nihil vitae!</p>
                  </div>
              </div>
          </div>
      </div>
  </div>

      <!-- Secci�n de imagen y texto -->
      <div class="row">
        <div class="col-md-6">
          <img src="./img/honolulu.jpg" alt="Imagen de la secci�n" class="sect-img">
        </div>
        <div class="col-md-6 sect-txt text-white">
          <h2 class="ms-2 mt-3 h3">Bs As - Octubre</h2>
          <p class="ms-2 style-pi">Buenos Aires es la provincia y la localidad m�s grande del estado de Argentina, en los
            Estados Unidos. Honolulu es la m�s sure�a de entre las principales ciudades estadounidenses. Aunque el nombre de
            Honolulu se refiere al �rea urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han
            formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600km2 de superficie).</p>
          <a class="btn btn-outline-light ms-2 mb-4" href="#">Conoc� m�s</a>
        </div>
      </div>

      <!-- Formulario para convertirse en orador -->
      <section class="container">
        <h2 class="text-uppercase text-center mt-4"><p class="mb-1 style-po">Convi�rtete en un</p>orador</h2>
        <p class="text-center">
            An�tate como orador para dar una <abbr title="attribute">charla ignite</abbr>. Cu�ntanos de qu� quieres hablar.
        </p>
        <form class="frm-dimension mx-auto">
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
            <div class="form-group">
                <textarea class="form-control color-input" id="tema" rows="3" placeholder="Sobre qu� quieres hablar?"></textarea>
            </div>
            <div class="form-group mt-1">
                <label for="titulo" class="text-secondary style-lbl">Recuerda incluir un t�tulo para tu charla</label>
            </div>
            <button type="submit" class="btn btn-color-custom text-light mt-3 mb-3 w-100">Enviar</button>
        </form>
    </section>

        <!-- Footer -->
        <footer class="color-grad text-center py-4">
          <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <ul class="list-inline footer-links d-flex justify-content-evenly">
                          <li class="list-inline-item"><a href="#">Preguntas frecuentes</a></li>
                          <li class="list-inline-item"><a href="#">Contactanos</a></li>
                          <li class="list-inline-item"><a href="#">Prensa</a></li>
                          <li class="list-inline-item"><a href="#">Conferencias</a></li>
                          <li class="list-inline-item"><a href="#">T�rminos y condiciones</a></li>
                          <li class="list-inline-item"><a href="#">Privacidad</a></li>
                          <li class="list-inline-item"><a href="#">Estudiantes</a></li>
                      </ul>
                  </div>
              </div>
          </div>
      </footer> 

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vistas.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cinema UTN</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/Inicio.styles.css" />
</head>
<body>
        <form id="form1" runat="server">
        <header>

            <%-- INICIO DE NAVBAR --%>
            <nav class="navbar">
              <div class="container-fluid">
                <a class="navbar-brand" href="#">
                  <img src="./images/icons/Cinema_UTN.png" alt="" width="30" height="24" class="d-inline-block align-text-top"/>
                  Cinema UTN
                </a>
                  <div class ="float-right" id="btnINGRESAR-login">

                      <button class="btn btn-unstyled hl-nav" type="button" data-bs-toggle="collapse" data-bs-target="#collapseLogin" aria-expanded="false" aria-controls="collapseExample">
                        INGRESAR
                      </button>
                      <button class="btn btn-unstyled hl-nav" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAboutUs" aria-expanded="false" aria-controls="collapseExample">
                        SOBRE NOSOTROS
                      </button>
                  </div>
              </div>
            </nav>
        </header>
        <%-- FORMULARIO DE ACCESO --%>
        <section id="formulario-acceso" class="container">
            <div class="collapse" id="collapseLogin">
              <div class="card card-body">
                    <div class="mb-3">
                        <label for="InputEmail" class="form-label">Dirección de correo electronico</label>
                        <input type="email" class="form-control" id="InputEmail" aria-describedby="emailHelp"/>
                        <div id="emailHelp" class="form-text">El correo con  el que te registraste.</div>
                    </div>
                    <div class="mb-3">
                        <label for="InputPassword" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="InputPassword"/>
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="Check"/>
                        <label class="form-check-label" for="Check">Mantenerme en sesión</label>
                    </div>
                    <button type="submit" class="btn btn-primary">INGRESAR</button>
              </div>
            </div>
        </section>
        <%-- SOBRE NOSOTROS --%>
            <section id="about-us">
                <div class="collapse" id="collapseAboutUs">
                    <div class="card card-body">
                        <article>
                            <h1>Sobre los integrantes</h1>
                            <section class="">
                                <%-- bio de Guille --%>
                                <details>
                                    <summary>
                                        Guillermo Navarro
                                    </summary>
                                    <p>
                                        Soy estudiante de la Tecnicatura Universitaria en Programación en la UTN de General Pacheco,
                                        donde tambien trabajo en la creación y mantenimiento del software interno que utiliza la institución.
                                        Este año comencé la Licenciatura en Analisis y Gestión de Datos en la Universidad Nacional de San Luis,
                                        la que tambien otorga el titulo intermedio Analista Universitario/a en Datos.
                                        Ademas de mis formaciones tengo un canal de YouTube en el que hago entevistas a mis compañeros/as y docentes de cursadas,
                                        considero que todos tienen experiencias y conclusiones útiles que merecen toda la visibilidad posible.
                                    </p>
                                    <h3>MIS REDES</h3>
                                        <div class="social-media">
                                            <ul>
                                                <p class="text-center"><strong>¡Sigamos en contacto!</strong></p>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://www.linkedin.com/in/guillermo-navarro-61a4a5263/" class="link-text">
                                                        <i class="fa-brands fa-linkedin fa-flip"></i>
                                                    </a>
                                                </li>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://www.youtube.com/@Lapreguntafalopa" target="_blank">
                                                        <i class="fa-brands fa-youtube fa-beat"></i>
                                                    </a>
                                                </li>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://la-pregunta-falopa.000webhostapp.com/" target="_blank">
                                                        <i class="fa-solid fa-globe fa-bounce"></i>
                                                    </a>
                                                </li>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://github.com/BasiliscX" target="_blank">
                                                        <i class="fa-brands fa-github fa-spin"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                </details>
                                <%-- Bio de nicky --%>
                                <details>
                                    <summary>
                                        Nicole Ligoule
                                    </summary>
                                    <p>
                                        Desarrolladora de software en la Universidad Tecnológica Nacional,
                                        donde trabajo en proyectos de desarrollo tecnológico.
                                        Además de mi experiencia laboral, estoy cursando el último año de la Tecnicatura Universitaria en Programación en la UTN,
                                        donde aprendí las bases de la programación orientada a objetos, el desarrollo web, y el uso de herramientas como C# y .NET.
                                        Mi objetivo es seguir capacitándome y creciendo como profesional en el campo de de la informática,
                                        aportando mis conocimientos a los proyectos que realizo.
                                    </p>
                                    <h3>MIS REDES</h3>
                                        <div class="social-media">
                                            <ul>
                                                <p class="text-center"><strong>¡Sigamos en contacto!</strong></p>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://www.linkedin.com/in/nicoleligoule/" class="link-text">
                                                        <i class="fa-brands fa-linkedin fa-flip"></i>
                                                    </a>
                                                </li>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://github.com/NicoleLigoule" target="_blank">
                                                        <i class="fa-brands fa-github fa-spin"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                </details>
                                <%-- Bio de Dante --%>
                                <details>
                                    <summary>
                                        Dante Luongo
                                    </summary>
                                    <p>
                                        Soy una persona responsable con ganas de aprender. Me considero
                                        organizado y muy capaz para poder realizar las tareas que se me
                                        designen. 
                                        Me adaptaría fácilmente al ambiente del trabajo ya que soy
                                        alguien sociable, sumado a esto, soy jugador de básquet profesional,
                                        jugué en Italia formando parte de un equipo profesional a mis 19 años, por
                                        ende, sé afrontar situaciones difíciles y de presión . 
                                        Me gustan los idiomas y a menudo leo no sólo en español sino también en inglés e italiano.
                                        Egresé del colegio siendo el mejor promedio de la orientación Ciencias
                                        Sociales y quiero seguir aprendiendo en este ¡nuevo mundo del trabajo de la programación!

                                    </p>
                                    <h3>MIS REDES</h3>
                                        <div class="social-media">
                                            <ul>
                                                <p class="text-center"><strong>¡Sigamos en contacto!</strong></p>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://www.linkedin.com/in/dante-luongo/" class="link-text">
                                                        <i class="fa-brands fa-linkedin fa-flip"></i>
                                                    </a>
                                                </li>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://github.com/dantlu" target="_blank">
                                                        <i class="fa-brands fa-github fa-spin"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                </details>
                                <%-- Bio de Dani --%>
                                <details>
                                    <summary>
                                        Daniel Rios
                                    </summary>
                                    <p>
                                        Tu bio...
                                    </p>
                                    <h3>MIS REDES</h3>
                                        <div class="social-media">
                                            <ul>
                                                <p class="text-center"><strong>¡Sigamos en contacto!</strong></p>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://www.linkedin.com/in/daniel-martin-rios-0a16522a3/" class="link-text">
                                                        <i class="fa-brands fa-linkedin fa-flip"></i>
                                                    </a>
                                                </li>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://github.com/danimrios" target="_blank">
                                                        <i class="fa-brands fa-github fa-spin"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                </details>
                                <%-- Bio de Tomi --%>
                                <details>
                                    <summary>
                                        Tomi Sanguichito
                                    </summary>
                                    <p>
                                        Tu bio...
                                    </p>
                                    <h3>MIS REDES</h3>
                                        <div class="social-media">
                                            <ul>
                                                <p class="text-center"><strong>¡Sigamos en contacto!</strong></p>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://www.linkedin.com/in/tomas-munguia-0242b72bb/" class="link-text">
                                                        <i class="fa-brands fa-linkedin fa-flip"></i>
                                                    </a>
                                                </li>
                                                <li class="col-md-2 d-inline-block">
                                                    <a href="https://github.com/AceitunaGuerrera" target="_blank">
                                                        <i class="fa-brands fa-github fa-spin"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                </details>
                            </section>
                            <section>
                            </section>
                        </article>
                    </div>
                </div>
            </section>
            <%-- FIN DE NAVBAR --%>
            <%-- INICIO DE CARROUSEL --%>
            <div id="carouselExampleIndicators" class="carousel slide">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./images/carrousel/bannervaintensamente.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./images/carrousel/matrix25.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="./images/carrousel/garfield.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev custom-carousel-control" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon custom-carousel-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next custom-carousel-control" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon custom-carousel-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            <%--<section>
	<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-inner">
		  <div class="carousel-item active">
			<img src="images/carrousel/bannervaintensamente.jpg" class="d-block w-100" alt="...">
		  </div>
		  <div class="carousel-item">
			<img src="images/carrousel/matrix25.jpg" class="d-block w-100" alt="...">
		  </div>
		  <div class="carousel-item">
			<img src="images/carrousel/harrypotter.jpg" class="d-block w-100" alt="...">
		  </div>
		  <div class="carousel-item">
			<img src="images/carrousel/garfield.jpg" class="d-block w-100" alt="...">
		  </div>
		  <div class="carousel-item">
			<img src="images/carrousel/apes.jpg" class="d-block w-100" alt="...">
		  </div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
		  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
		  <span class="carousel-control-next-icon" aria-hidden="true"></span>
		  <span class="visually-hidden">Next</span>
		</button>
	</div>
</section>--%>


            <%-- FIN DE CARROUSEL --%>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://popper.js.org/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
        <script src="scripts.js"></script>

        </form>

    </body>
</html>

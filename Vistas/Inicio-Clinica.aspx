<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio-Clinica.aspx.cs" Inherits="Vistas.Inicio_Cine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 420px;
        }
        .auto-style4 {
            width: 420px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }

        .navbar{
            background: #BBDEFB;
        }
    </style>
    <%-- FUENTES ÍCONOS --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <%-- INICIO DE NAVBAR --%>
        <header>
            <nav class="navbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <i class="fa-regular fa-hospital"></i>
                        Clinica UTN
                    </a>
                    <button class="btn btn-unstyled hl-nav" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAboutUs" aria-expanded="false" aria-controls="collapseExample">
                        SOBRE NOSOTROS
                    </button>
                </div>
            </nav>
        </header>
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
                    </article>
                </div>
            </div>
        </section>
        <%-- FIN DE NAVBAR --%>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">Ingrese su DNI:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDNI" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False">Ingrese su documento</asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">Contraseña:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtContrasenia" runat="server" ForeColor="Gray" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
</body>
</html>
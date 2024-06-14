<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio-Clinica.aspx.cs" Inherits="Vistas.Inicio_Cine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%-- ESTILOS DE LOGIN --%>
    <link href="styles.login.css" rel="stylesheet" />
    <%-- FUENTES ÍCONOS --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- SCRIPTS --%>
    <script type="text/javascript">
        function clearTextBoxOnClick(textBox) {
            if (textBox.value != '') {
                textBox.value = '';
                textBox.style.color = 'black';
            }
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 113px;
        }
    </style>
    <style>
        html, body {
            height: 100%;
            margin: 0;
        }
        .main-container {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .content {
            flex: 1;
        }
        
        footer {
            background: rgb(30, 30, 30); 
            padding: 10px 0;
            text-align: center;
        }
        
        .container-fluid button{
            color: white;
        }

        .container-fluid button:hover{
            color:paleturquoise;
        }

        .container-fluid a{
            color:#607D8B;
        }
        .container-fluid a:hover{
            color:paleturquoise;
        }
        
        .auto-style2 {
            height: 26px;
        }
        
    </style>
</head>
<body>
    <%--<div id="main-content">--%>
        <%-- INICIO DE NAVBAR --%>
        <header>
            <nav class="navbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <i class="fa-regular fa-hospital"></i>
                        Clinica UTN
                    </a>
<%--                    <button class="btn btn-unstyled hl-nav" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAboutUs" aria-expanded="false" aria-controls="collapseExample">
                        SOBRE NOSOTROS
                    </button>--%>
                </div>
            </nav>
        </header>
        <%-- FIN DE NAVBAR --%>
        <%-- INICIO DE PANTALLA DE FORMULARIO --%>
        <section id="form-body" class="flex-grow-1">
            <div class="card-container">
            <%-- INICIO DEL FORM DE LOGIN --%>
            <form id="formLogin" class="auto-style14" runat="server">
                <%-- CARD DEL LOGIN --%>
                <div class="card">
                    <table class="tabla-login">
                        <tr>
                            <td class="auto-style17" style="text-align:center">
                                <asp:Label ID="lblTituloLogin" runat="server" Text="ACCEDER" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>                   
                        <tr>
                            <td class="auto-style2">Ingrese su usuario:</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:TextBox ID="txtDNI" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False" Width="230px" 
                                    Text="Ingrese su usuario" 
                                    onfocus="clearTextBoxOnClick(this)" CssClass="auto-style11"></asp:TextBox>
                            </td>

                             
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="Ingrese un usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>

                             
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                Contraseña</td>

                             
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:TextBox ID="txtContrasenia" runat="server" ForeColor="Gray" TextMode="Password" Width="230px"></asp:TextBox>
                            </td>

                             
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Debe ingresarse una contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>

                             
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Width="233px" />
                            </td>

                             
                        </tr>
                    </table>  
                                <asp:HyperLink ID="hplRegistrarse" runat="server" NavigateUrl="~/RegistroMed.aspx">Crear nuevo usuario</asp:HyperLink>
                </div>
            </form>  
                 <%-- CARD AL LADO DEL LOGIN --%>
           <%--     <div class="card">
                   
                    <asp:Label ID="lblRegistrarse" runat="server" Text="Registrarse" Font-Bold="true"></asp:Label>
                </div>--%>
            </div>
            <%-- FIN DEL FORM DE LOGIN --%>
        </section>
        <%-- FIN DE PANTALLA DE FORMULARIO --%>
    <%-- INICIO DEL FOOTER --%>
    <footer>
        <section>
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <i class="fa-regular fa-hospital"></i>
                    Clinica UTN
                </a>
                <button class="btn btn-unstyled hl-nav" type="button" data-toggle="collapse" data-target="#collapseAboutUs" aria-expanded="false" aria-controls="collapseExample">
                    SOBRE NOSOTROS
                </button>
            </div>
        </section>
        <section id="about-us">
    <div class="collapse" id="collapseAboutUs">
        <div class="card card-body">
            <article>
                <h1 style="color: black;">Sobre los integrantes</h1>
                <section class="">
                    <%-- bio de Guille --%>
                    <details>
                        <summary style="color: black;">
                            Guillermo Navarro
                        </summary>
                        <p style="color: black;">
                            Soy estudiante de la Tecnicatura Universitaria en Programación en la UTN de General Pacheco,
                            donde tambien trabajo en la creación y mantenimiento del software interno que utiliza la institución.
                            Este año comencé la Licenciatura en Analisis y Gestión de Datos en la Universidad Nacional de San Luis,
                            la que tambien otorga el titulo intermedio Analista Universitario/a en Datos.
                            Ademas de mis formaciones tengo un canal de YouTube en el que hago entevistas a mis compañeros/as y docentes de cursadas,
                            considero que todos tienen experiencias y conclusiones útiles que merecen toda la visibilidad posible.
                        </p>
                        <h3 style="color: black;">MIS REDES</h3>
                        <div class="social-media">
                            <ul>
                                <p class="text-center" style="color: black;"><strong>¡Sigamos en contacto!</strong></p>
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
                        <summary style="color: black;">
                            Nicole Ligoule
                        </summary>
                        <p style="color: black;">
                            Desarrolladora de software en la Universidad Tecnológica Nacional,
                            donde trabajo en proyectos de desarrollo tecnológico.
                            Además de mi experiencia laboral, estoy cursando el último año de la Tecnicatura Universitaria en Programación en la UTN,
                            donde aprendí las bases de la programación orientada a objetos, el desarrollo web, y el uso de herramientas como C# y .NET.
                            Mi objetivo es seguir capacitándome y creciendo como profesional en el campo de de la informática,
                            aportando mis conocimientos a los proyectos que realizo.
                        </p>
                        <h3 style="color: black;">MIS REDES</h3>
                        <div class="social-media">
                            <ul>
                                <p class="text-center" style="color: black;"><strong>¡Sigamos en contacto!</strong></p>
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
                        <summary style="color: black;">
                            Dante Luongo
                        </summary>
                        <p style="color: black;">
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
                        <h3 style="color: black;">MIS REDES</h3>
                        <div class="social-media">
                            <ul>
                                <p class="text-center" style="color: black;"><strong>¡Sigamos en contacto!</strong></p>
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
                        <summary style="color: black;">
                            Daniel Rios
                        </summary>
                        <p style="color: black;">
                            Tu bio...
                        </p>
                        <h3 style="color: black;">MIS REDES</h3>
                        <div class="social-media">
                            <ul>
                                <p class="text-center" style="color: black;"><strong>¡Sigamos en contacto!</strong></p>
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
                        <summary style="color: black;">
                            Tomas Munguia
                        </summary>
                        <p style="color: black;">
                            Soy una persona responsable, me gusta aprender sobre juegos y programacion.
                            Tengo facilidad y ganas para aprender sobre tareas asignadas.
                            Soy sociable por lo que no seria un problema adaptarme a un ambiente laboral.
                            
                          
                        </p>
                        <h3 style="color: black;">MIS REDES</h3>
                        <div class="social-media">
                            <ul>
                                <p class="text-center" style="color: black;"><strong>¡Sigamos en contacto!</strong></p>
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
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </footer>
    <%-- FIN DEL FOOTER --%>
</body>
</html>
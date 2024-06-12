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
            if (textBox.value == 'Ingrese su documento') {
                textBox.value = '';
                textBox.style.color = 'black';
            }
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 235px;
        }
    </style>
</head>
<body>
    <div class="login">
        <%-- INICIO DE NAVBAR --%>
        <header>
            <nav class="navbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <i class="fa-regular fa-hospital"></i>
                        Clinica UTN
                    </a>
                </div>
            </nav>
        </header>
        <%-- FIN DE NAVBAR --%>

        <%-- INICIO DE PANTALLA DE FORMULARIO --%>

            <section>
                <%-- INICIO DEL FORM DE LOGIN --%>
                <form id="formLogin" runat="server">
                    <div class="card">
                        <table class="tabla-login">
                            <tr>
                                <td class="auto-style17" style="text-align:center">
                                    <asp:Label ID="lblTituloLogin" runat="server" Text="ACCEDER"></asp:Label>
                                </td>
                            </tr>                   
                            <tr>
                                <td class="auto-style17">Ingrese su DNI:</td>
                            </tr>
                            <tr>
                                <td class="auto-style18">
                                    <asp:TextBox ID="txtDNI" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False" Width="230px" 
                                        Text="Ingrese su documento" 
                                        onfocus="clearTextBoxOnClick(this)" CssClass="auto-style11"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="Debe ingresarse un DNI"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">Contraseña:</td>
                            </tr>
                            <tr>
                                <td class="auto-style20">
                                    <asp:TextBox ID="txtContrasenia" runat="server" ForeColor="Gray" TextMode="Password" Width="230px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Debe ingresarse una contraseña"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style19">
                                    <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" Width="233px" />
                                </td>
                            </tr>
                        </table>  
                    </div>
                <%-- FIN DEL FORM DE LOGIN --%>
                </form>
            </section>

        <%-- FIN DE PANTALLA DE FORMULARIO --%>
    </div>
    <%-- INICIO DEL FOOTER --%>
    <footer">
        <section>
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <i class="fa-regular fa-hospital"></i>
                    Clinica UTN
                </a>
                <button class="btn btn-unstyled hl-nav" type="button" data-bs-toggle="collapse" data-bs-target="#collapseAboutUs" aria-expanded="false" aria-controls="collapseExample">
                    SOBRE NOSOTROS
                </button>
            </div>
        </section>
    </footer>
    <%-- FIN DEL FOOTER --%>


    <section class="">
  <!-- Footer -->
  <footer class="text-center text-white" style="background-color: #0a4275;">
    <!-- Grid container -->
    <div class="container p-4 pb-0">
      <!-- Section: CTA -->
      <section class="">
        <p class="d-flex justify-content-center align-items-center">
          <span class="me-3">Register for free</span>
          <button data-mdb-ripple-init type="button" class="btn btn-outline-light btn-rounded">
            Sign up!
          </button>
        </p>
      </section>
      <!-- Section: CTA -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2020 Copyright:
      <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->
</section>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
</body>
</html>

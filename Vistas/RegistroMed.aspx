<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroMed.aspx.cs" Inherits="Vistas.RegistroMed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro Médico</title>
    <link href="styles.login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <style>
        .auto-style1 {
            width: 100%;
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
        .container-fluid button {
            color: white;
        }
        .container-fluid button:hover {
            color: paleturquoise;
        }
        .container-fluid a {
            color: #607D8B;
        }
        .container-fluid a:hover {
            color: paleturquoise;
        }
        .card {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #e6ffed;
            border-radius: 15px;
        }
        .table td {
            vertical-align: middle;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 100%;
        }
        .form-control-calendar {
            width: 100%;
            background-color: white;
        }
        body, html {
            overflow-y: auto; /* Ensure the page is scrollable */
        }
    </style>
</head>
<body>
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
    <section id="form-body" class="flex-grow-1">
        <div class="card-container">
            <form id="form1" runat="server">
                <div class="card">
                    <h3 class="text-center">REGISTRARSE</h3>
                    <table class="table">
                        <tr>
                            <td class="auto-style2">DNI:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDni" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nombre:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Apellido:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Sexo:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nacionalidad:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Fecha de nacimiento:</td>
                            <td class="auto-style3">
                                <asp:Calendar ID="calenFechaNac" runat="server" CssClass="form-control-calendar"></asp:Calendar>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Provincia:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtProvincia" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Localidad:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtLocalidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Dirección:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style2">Correo electronico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtCorreoElectronico" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nº Telefonico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td class="auto-style2">Especialidad:</td>
                            <td class="auto-style3">
                               <asp:DropDownList ID="ddlEspecialidad" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2"></td>
                            <td class="auto-style3">
                                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" CssClass="btn btn-primary btn-block" />
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </section>
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
                            <!-- Bio de los integrantes -->
                            <!-- Puedes agregar más detalles aquí -->
                        </section>
                    </article>
                </div>
            </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </footer>
</body>
</html>

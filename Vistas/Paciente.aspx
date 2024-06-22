<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paciente.aspx.cs" Inherits="Vistas.Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pacientes</title>
    <link href="./Resources/estilos/styles.Pacientes.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- SCRIPTS --%>
    <script src="./utils.js" type="text/javascript"></script>
</head>
<body class="registro-medico-pac">
    <header>
        <nav class="navbar">
            <div id="hoverNav" class="container-fluid">
                <a class="navbar-brand" href="Inicio-Clinica.aspx">
                    <i class="fa-regular fa-hospital"></i>
                    Clinica UTN
                </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblUsuario" runat="server" Text="xxxx"></asp:Label>
            </div>
        </nav>
    </header>
    <section id="form-body" class="flex-grow-1">
        <div class="card-container">
            <form id="form1" runat="server">
                <div class="card">
                    <h3 class="text-center">CARGAR PACIENTE</h3>
                    <table class="table">
                        <tr>
                            <td class="auto-style2">DNI:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDniPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nombre:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNombrePac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Apellido:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtApellidoPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Sexo:</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="ddlSexoPac" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nacionalidad:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtNacionalidadPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Fecha de nacimiento:</td>
                            <td class="auto-style3">
                                <%--<asp:TextBox ID="txtFechaNac" runat="server">DD/MM/AAAA</asp:TextBox>--%>
                                <asp:TextBox ID="txtFechaNac" runat="server" ForeColor="Gray" MaxLength="30" ViewStateMode="Enabled" Wrap="False" Width="230px" 
                                    Text="DD/MM/AAAA" 
                                    onfocus="clearTextBoxOnClick(this)" CssClass="auto-style11"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Localidad:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtLocalidadPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Dirección:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtDireccionPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Correo electronico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtCorreoElectronicoPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Nº Telefonico:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtTelefonoPac" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style3">
                                <asp:Button ID="btnRegistrar" runat="server" Text="Agregar" CssClass="btn btn-primary btn-block" OnClick="btnRegistrar_Click" />
                                <asp:HyperLink ID="hplVolverAMenuPaciente" runat="server" NavigateUrl="~/MenuPacientes.aspx">Volver</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style3">
                                &nbsp;</td>
                        </tr>
                        
                    </table>
                </div>
            </form>
        </div>
    </section>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio-Clinica.aspx.cs" Inherits="Vistas.Inicio_Cine" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="~/Footer.ascx" TagName="Footer" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%-- ESTILOS DE LOGIN --%>
    <link href="./Resources/estilos/styles.login.css" rel="stylesheet" />
    <%-- FUENTES ÍCONOS --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- SCRIPTS --%>
    <script src="./utils.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style3 {
            height: 29px;
        }
    </style>
</head>
<body>
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    
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
                            <td class="auto-style3">
                                <asp:TextBox ID="txtUsuario" runat="server" ForeColor="Gray" MaxLength="30" Wrap="False" Width="230px" Placeholder="Ingrese su usuario"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CustomValidator ID="cvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese un usuario" ForeColor="Red" OnServerValidate="cvUsuario_ServerValidate" SetFocusOnError="True" ValidateEmptyText="True">Ingrese un usuario</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Contraseña
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtContrasenia" runat="server" ForeColor="Gray" TextMode="Password" Width="230px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:CustomValidator ID="cvContrasenia" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Debe ingresar una contrasenia" ForeColor="Red" OnServerValidate="cvContrasenia_ServerValidate" SetFocusOnError="True" ValidateEmptyText="True">Debe ingresar una contrasenia</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Width="233px" CausesValidation="true" OnClick="btnIngresar_Click"/>
                            </td>
                        </tr>
                    </table>  
                    <asp:HyperLink ID="hplRegistrarse" runat="server" NavigateUrl="~/RegistroMed.aspx">Crear nuevo usuario</asp:HyperLink>
                </div>
            </form>  
        </div>
    </section>
    <%-- FIN DE PANTALLA DE FORMULARIO --%>  <%-- Incluye el footer --%>    <%-- <uc:Footer runat="server" />--%>
</body>
</html>

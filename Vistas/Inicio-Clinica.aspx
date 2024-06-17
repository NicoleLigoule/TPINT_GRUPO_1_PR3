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
    <script type="text/javascript">
        function clearTextBoxOnClick(textBox) {
            if (textBox.value != '') {
                textBox.value = '';
                textBox.style.color = 'black';
            }
        }
    </script>
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
                                Contraseña
                            </td>
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
        </div>
    </section>
    <%-- FIN DE PANTALLA DE FORMULARIO --%>

    <%-- Incluye el footer --%>
    <uc:Footer runat="server" />
</body>
</html>

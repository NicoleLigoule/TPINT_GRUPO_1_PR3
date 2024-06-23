<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPacientes.aspx.cs" Inherits="Vistas.MenuPacientes" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- FONT AWESOME --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- ESTILOS --%>
    <link href="./Resources/estilos/styles.MenuPacientes.css" rel="stylesheet" />
</head>
<body class="paciente">
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
   <form id="form1" runat="server">
        <div class="card-container card">
        <h2>MENU PACIENTES</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="hplAgregarPaciente" runat="server" NavigateUrl="~/Paciente.aspx" CssClass="menu-link">Agregar Paciente</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="hplGestionarPaciente" runat="server" NavigateUrl="~/GestionPacientes.aspx" CssClass="menu-link">Gestionar Pacientes</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="hplEliminarPaciente" runat="server" NavigateUrl="~/EliminarPaciente.aspx" CssClass="menu-link">Eliminar Pacientes</asp:HyperLink>
                </td>
            </tr>
        </table>
        <div class="back-link">
            <asp:HyperLink ID="hlMenuAdministrador" runat="server" NavigateUrl="~/AdmInicio.aspx" CssClass="menu-link">Volver a Menu de Administrador</asp:HyperLink>
        </div>
    </div>
</form>

</body>
</html>

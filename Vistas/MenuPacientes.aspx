<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPacientes.aspx.cs" Inherits="Vistas.MenuPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="./Resources/estilos/styles.MenuPacientes.css" rel="stylesheet" />
</head>
<body>
    <p>
        <br />
    </p>
   <form id="form1" runat="server">
    <div class="menu-container">
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

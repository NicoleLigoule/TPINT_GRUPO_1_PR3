<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuMedico.aspx.cs" Inherits="Vistas.MenuMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="./Resources/estilos/styles.MenuMedico.css" rel="stylesheet" />
</head>
<body>
    <p>
        <br />
    </p>
   <form id="form1" runat="server">
    <div class="menu-container">
        <h2>MENU MEDICOS</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="hplAgregarMedico" runat="server" NavigateUrl="~/RegistroMed.aspx" CssClass="menu-link">Agregar Medico</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="hplGestionarMedico" runat="server" NavigateUrl="~/GestionMedico.aspx" CssClass="menu-link">Gestionar Medico</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:HyperLink ID="hplEliminarMedico" runat="server" NavigateUrl="~/EliminarMedico.aspx" CssClass="menu-link">Eliminar Medico</asp:HyperLink>
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

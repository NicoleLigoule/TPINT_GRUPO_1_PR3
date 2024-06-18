<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuMedico.aspx.cs" Inherits="Vistas.MenuMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="./Resources/estilos/styles.MenuMedico.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5">MENU MEDICOS<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AdmInicio.aspx">Volver a Menu de administardor</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AgregarMedico.aspx">Agregar Medico</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/GestionMedico.aspx">Gestionar Medico</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/EliminarMedico.aspx">Eliminar Medico</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>

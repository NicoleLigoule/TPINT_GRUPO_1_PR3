<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarMedico.aspx.cs" Inherits="Vistas.EliminarMedico" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>Eliminar Medico</title>
    <%-- FONT AWESOME --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- ESTILOS --%>
    <link href="./Resources/estilos/styles.EliminarMedico.css" rel="stylesheet" />

</head>
<body>
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hpVolver" runat="server" NavigateUrl="~/MenuMedico.aspx">Volver al menu de Medicos</asp:HyperLink>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>ELIMINAR REGISTRO MEDICO</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Ingrese Legajo del medico:</td>
                    <td>
                        <asp:TextBox ID="txtEliminar" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td class="auto-style4">
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

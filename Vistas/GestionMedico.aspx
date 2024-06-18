<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionMedico.aspx.cs" Inherits="Vistas.GestionMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestionar Medico</title>
    <link href="./Resources/estilos/styles.GestionMedico.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="GridViewMedico">
            <h2>Gestión Medico</h2>
            <asp:GridView ID="GridViewMedicos1" runat="server">
            </asp:GridView>
            <asp:HyperLink ID="hplMedico" runat="server" NavigateUrl="~/MenuMedico.aspx">Volver al menú Medico</asp:HyperLink>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionPacientes.aspx.cs" Inherits="Vistas.GestionPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="./Resources/estilos/styles.GestionPacientes.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="GridViewPacientes">
            <h2>Gestión Pacientes</h2>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:HyperLink ID="hplPacientes" runat="server" NavigateUrl="~/MenuPacientes.aspx">Volver al menú Pacientes</asp:HyperLink>
        </div>
    </form>
</body>
</html>

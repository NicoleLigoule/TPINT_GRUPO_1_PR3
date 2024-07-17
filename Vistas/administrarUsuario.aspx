<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administrarUsuario.aspx.cs" Inherits="Vistas.administrarUsuario" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 203px;
        }
        .auto-style3 {
            width: 233px;
        }
    </style>
    <%-- FUENTES ÍCONOS --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- SCRIPTS --%>
    <script src="./utils.js" type="text/javascript"></script>
</head>
<body>
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <form id="form1" runat="server">
        <div>
            <div class="row" style="margin-top: 10%">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card" style="padding: 5%">
                            <asp:Label ID="lblUsuario" runat="server" Text="Ingrese Nuevo Usuario"></asp:Label>
                            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                            <asp:Label ID="lblContrase" runat="server" Text="Nueva Contraseña"></asp:Label>
                            <asp:TextBox ID="txtContrasenia" runat="server"></asp:TextBox>
                            <asp:Label ID="lblContra" runat="server" Text="Repita Contraseña"></asp:Label>
                            <asp:TextBox ID="txtRContrasenia" runat="server"></asp:TextBox>
                            <asp:Button ID="btnAsignar" style="margin-top: 20px" runat="server" Text="Confirmar" OnClick="btnAsignar_Click" />
                    </div>
                 </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </form>
</body>
</html>

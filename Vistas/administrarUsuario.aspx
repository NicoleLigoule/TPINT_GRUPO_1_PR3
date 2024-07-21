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
        .txt{
            border-width: 2px;
            border-radius: 5px;
            border-color: cornflowerblue;
        }
        .txt:hover{
            background-color: #B3E5FC;
            color: black;
        }
        .boton{
            background-color: #448AFF;
            color: aliceblue;
            font-size: large;
        }
        .boton:hover{
            background-color: #0288D1;
        }
    </style>
    <%-- FUENTES ÍCONOS --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- SCRIPTS --%>
    <script src="./utils.js" type="text/javascript"></script>
</head>
<body style="background-color: #B3E5FC">
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <form id="form1" runat="server">
        <div>
            <div class="row" style="margin-top: 10%">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card" style="padding: 5%">
                            <asp:Label ID="lblUsuario" runat="server" Text="Ingrese Nuevo Usuario"></asp:Label>
                            <asp:TextBox ID="txtUsuario" CssClass="txt" runat="server"></asp:TextBox>
                            <asp:Label ID="lblContrase" runat="server" Text="Nueva Contraseña"></asp:Label>
                            <asp:TextBox ID="txtContrasenia" CssClass="txt" runat="server"></asp:TextBox>
                            <asp:Label ID="lblContra" runat="server" Text="Repita Contraseña"></asp:Label>
                            <asp:TextBox ID="txtRContrasenia" CssClass="txt" runat="server"></asp:TextBox><asp:CompareValidator ID="cvcontrasenia" runat="server" ErrorMessage="La contraseña no conicide " ControlToCompare="txtContrasenia" ControlToValidate="txtRContrasenia" ForeColor="Red">*</asp:CompareValidator>
                            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                            <asp:Button ID="btnAsignar" CssClass="boton" style="margin-top: 20px" runat="server" Text="Confirmar" OnClick="btnAsignar_Click" />
                            <asp:ValidationSummary ID="vs" runat="server" />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdmInicio.aspx">Volver al menu Administrador</asp:HyperLink>
                            <br />
                    </div>
                 </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </form>
</body>
</html>

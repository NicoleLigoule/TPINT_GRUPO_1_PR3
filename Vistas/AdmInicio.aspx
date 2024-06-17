<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmInicio.aspx.cs" Inherits="Vistas.AdmInicio" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
       <%-- ESTILOS DE AdmInicio --%>
    <link href="./Resources/estilos/styles.AdmInicio.css" rel="stylesheet" />
    <%-- FUENTES ÍCONOS --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- SCRIPTS --%>
    <script src="./utils.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            width: 221px;
        }
        .auto-style4 {
            height: 33px;
            width: 221px;
        }
        .auto-style5 {
            width: 221px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
    </style>
</head>
<body>
<%--    <header>
        <nav class="navbar">
            <div id="hoverNav" class="container-fluid">
                <a class="navbar-brand" href="Inicio-Clinica.aspx">
                    <i class="fa-regular fa-hospital"></i>
                    Clinica UTN
                </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblUsuario" runat="server" Text="xxxx"></asp:Label>
            </div>
        </nav>
    </header>--%>

    <%-- Incluye el Header --%>
    <uc:Header runat="server" />

    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hplHorariosMedicos" runat="server" NavigateUrl="~/HorarioMed.aspx">Horarios de Medicos</asp:HyperLink>
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hplpacientes" runat="server" NavigateUrl="~/MenuPacientes.aspx">Pacientes</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hplAsignarTurno" runat="server" NavigateUrl="~/AsignarTurno.aspx">Asignar Turno</asp:HyperLink>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hplMedicos" runat="server" NavigateUrl="~/MenuMedico.aspx">Medico</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hplReportes" runat="server">Reportes</asp:HyperLink>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte-CPDS.aspx.cs" Inherits="Vistas.Reporte_CPDS" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Reporte Consultas por Día de la Semana</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link href="./Resources/estilos/styles.Reportes.css" rel="stylesheet" />

</head>
<body>
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <form id="form1" runat="server">
        <div class="container text-center">
            <div class="row">
                <div class="col-md-12">
                    <h2>Reporte Consultas por Día de la Semana</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8 card" style="background-color:antiquewhite">
                    <div class="report-container">
                        <div class="report-item">
                            <asp:Label ID="lblConsultasPorDiaSemana" CssClass="report-label beige" runat="server"></asp:Label>
                        </div>
                        <div class="report-item">
                            <asp:Label ID="lblFechaDesdeConsultaDiaSemana" CssClass="report-label beige" runat="server">Fecha desde:</asp:Label>
                            <asp:TextBox ID="txtFechaDesde" CssClass="form-control" runat="server" />
                            <span class="date-format-info">Formato: YYYY-MM-DD</span>
                            <asp:RegularExpressionValidator ID="revFechaDesde" runat="server" ControlToValidate="txtFechaDesde" ErrorMessage="Ingrese yyyy-mm-dd" ForeColor="Red" ValidationExpression="^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|1\d|2\d|3[01])$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </div>
                        <div class="report-item">
                            <asp:Label ID="lblFechaHastaConsultaDiaSemana" CssClass="report-label beige" runat="server">Fecha hasta:</asp:Label>
                            <asp:TextBox ID="txtFechaHasta" CssClass="form-control" runat="server" />
                            <span class="date-format-info">Formato: YYYY-MM-DD</span>
                            <asp:RegularExpressionValidator ID="revFechaHasta" runat="server" ControlToValidate="txtFechaHasta" ErrorMessage="Ingrese yyyy-mm-dd" ForeColor="Red" ValidationExpression="^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|1\d|2\d|3[01])$" ValidationGroup="grupo1">*</asp:RegularExpressionValidator>
                        </div>
                        <br />
                        <div class="report-item">
                            <asp:Button ID="btnConsultar" CssClass="btn btn-primary" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
                        </div>
                         <br />
                        <div class="report-item">
                            <asp:Label ID="lblConsultasPorDiaSemanaData" CssClass="report-label-consulta beige wrap-text" runat="server"></asp:Label>
                        </div>
                         <br />
                         <br />
                        <div class="report-item">
                            <asp:HyperLink ID="hplMenuReportes" CssClass="btn btn-primary" runat="server" NavigateUrl="~/Reportes.aspx">Volver al menú Reportes</asp:HyperLink>
                        </div>
                         <br />
                        <div class="report-item">
                            <asp:HyperLink ID="hplMenuAdmin" CssClass="btn btn-primary" runat="server" NavigateUrl="~/AdmInicio.aspx">Volver al menú Administrador</asp:HyperLink>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Vistas.Reportes" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Reportes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link href="./Resources/estilos/styles.Reportes.css" rel="stylesheet" />
    <style>
        .report-label {
            margin-bottom: 10px;
            padding: 10px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .beige {
            background-color: beige;
        }
    </style>
</head>
<body>
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <form id="form1" runat="server">
        <div class="container text-center">
            <div class="row">
                <div class="col-md-12">
                    <h2>Reportes</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3 card">
                    <p>
                        En esta sección se presentan diversos reportes basados en los datos persistidos en nuestra base de datos. Los reportes están diseñados para proporcionar una visión clara y concisa de diferentes aspectos del rendimiento y operaciones de nuestro sistema.
                    </p>
                    <ul>
                        <li>Reporte de doctores: Muestra información sobre los doctores que han trabajado más horas en el último mes.</li>
                        <li>Reporte de pacientes: Proporciona datos sobre la cantidad de pacientes que han visitado el hospital, desglosados por provincia.</li>
                        <li>Reporte de atenciones: Detalla las atenciones realizadas, incluyendo las más frecuentes y las más críticas.</li>
                    </ul>
                </div>
                <div class="col-sm-9">
                    <ul class="list-unstyled">
                        <li class="mb-4">
                            <asp:Label ID="lblMedicoConMasAtenciones" CssClass="report-label beige" runat="server"></asp:Label>
                        </li>
                        <li class="mb-4">
                            <asp:Label ID="lblEspecialidadQueMasSeUso" CssClass="report-label" runat="server"></asp:Label>
                        </li>
                        <li class="mb-4">
                            <asp:Label ID="lblapcienteConMasCancelaciones" CssClass="report-label beige" runat="server"></asp:Label>
                        </li>
                        <li class="mb-4">
                            <asp:Label ID="lblLocalidadConMasPacientes" CssClass="report-label" runat="server"></asp:Label>
                        </li>
                        <li class="mb-5">
                            <asp:Label ID="lblEspecialidadMes" CssClass="report-label beige" runat="server"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lblEspecialidadMesdata" CssClass="report-label beige" runat="server"></asp:Label>
                        </li>
                        <li class="mb-4">
                            <asp:HyperLink ID="hplMenuAdmin" CssClass="btn btn-primary" runat="server" NavigateUrl="~/AdmInicio.aspx">Volver al menu Administrador</asp:HyperLink>
                        </li>
                    </ul>
                </div>               
            </div>
        </div>
    </form>
</body>
</html>

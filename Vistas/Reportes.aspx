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
                    <div class="row">
                        <div class="col-8 col-sm-6">
                            <!-- Aquí se incluiría un gráfico generado dinámicamente -->
                            <asp:Chart ID="Chart1" runat="server">
                                <Series>
                                    <asp:Series Name="Series1" ChartType="Bar">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1">
                                    </asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                        <div class="col-4 col-sm-6 card">
                            <p>
                                En el gráfico anterior se visualizarán los datos correspondientes al reporte seleccionado. Utilice las opciones disponibles para cambiar el tipo de reporte y actualizar la visualización.
                            </p>
                            <h4>Por ejemplo:</h4>
                            <ul>
                                <li>Seleccione un tipo de reporte del menú para actualizar el gráfico.</li>
                                <li>Utilice las herramientas de exportación para descargar los reportes en formato PDF o Excel.</li>
                                <li>Los reportes se actualizan automáticamente con los datos más recientes de nuestra base de datos.</li>
                            </ul>
                            <asp:HyperLink ID="hlMenuAdministrador" runat="server" NavigateUrl="~/AdmInicio.aspx" CssClass="menu-link">Volver a Menu de Administrador</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

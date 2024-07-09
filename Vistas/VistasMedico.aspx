<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistasMedico.aspx.cs" Inherits="Vistas.VistasMedico" %>
<%@ Register Src="~/Header.ascx" TagName="Header" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Vistas Medico</title>
    <%-- FONT AWESOME --%>
    <script src="https://kit.fontawesome.com/db0f6946ee.js" crossorigin="anonymous"></script>
    <%-- BOOTSTRAP --%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <%-- ESTILOS --%>
    <link href="./Resources/estilos/styles.VistasMedico.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="grdTurnoMedico" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="8" Width="992px" AutoGenerateEditButton="True" OnRowEditing="grdTurnoMedico_RowEditing" OnPageIndexChanging="grdTurnoMedico_PageIndexChanging" OnRowCancelingEdit="grdTurnoMedico_RowCancelingEdit" OnRowUpdating="grdTurnoMedico_RowUpdating">
                            <Columns>
                                <asp:TemplateField HeaderText="Legajo Medico">
                                    <EditItemTemplate>
                                        <asp:Label ID="lblLegajo1" runat="server" Text='<%# Bind("Legajo_tu") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="LegajoTurnos" runat="server" Text='<%# Bind("Legajo_tu") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha Turno">
                                    <EditItemTemplate>
                                        <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("Fecha_tu") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("Fecha_tu") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Dia Turno">
                                    <EditItemTemplate>
                                        <asp:Label ID="lblDiaTurno" runat="server" Text='<%# Bind("DiaAtencion_ha") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblDiaTurno" runat="server" Text='<%# Bind("DiaAtencion_ha") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Horario Turno">
                                    <EditItemTemplate>
                                        <asp:Label ID="lblHorario" runat="server" Text='<%# Bind("Horario_tu") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblHorarioTurno" runat="server" Text='<%# Bind("Horario_tu") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Asistencia">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TxtAsistencia" runat="server" Text='<%# Bind("Asistencia_tu") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblAsistencia" runat="server" Text='<%# Bind("Asistencia_tu") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DNI Paciente">
                                    <EditItemTemplate>
                                        <asp:Label ID="lblDniPac" runat="server" Text='<%# Bind("DniPaciente_tu") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblDniPaciente" runat="server" Text='<%# Bind("DniPaciente_tu") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Observaciones">
                                    <EditItemTemplate>
                                        <asp:Label ID="lblObservaciones" runat="server" Text='<%# Bind("Descripcion_tu") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblDescripTurno" runat="server" Text='<%# Bind("Descripcion_tu") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TxtEstado" runat="server" Text='<%# Bind("Estado_ha") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblEstadoTurno" runat="server" Text='<%# Bind("Estado_ha") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <asp:Label ID="LegajoTurno" runat="server" Text='<%# Bind("Legajo_tu") %>'></asp:Label>
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

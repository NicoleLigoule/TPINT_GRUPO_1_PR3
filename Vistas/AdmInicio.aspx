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
</head>
<body>
    <%-- Incluye el Header --%>
    <uc:Header runat="server" />

    <form id="form1" runat="server">
        <div class="row contaniner-fluid">
            <aside class="menu-container col-md-3">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style3">
                            <asp:HyperLink ID="hplHorariosMedicos" class="menu-link" runat="server" NavigateUrl="~/HorarioMed.aspx">Horarios de Medicos</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:HyperLink ID="hplpacientes" class="menu-link" runat="server" NavigateUrl="~/MenuPacientes.aspx">Pacientes</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:HyperLink ID="hplAsignarTurno" class="menu-link" runat="server" NavigateUrl="~/AsignarTurno.aspx">Asignar Turno</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:HyperLink ID="hplMedicos" class="menu-link" runat="server" NavigateUrl="~/MenuMedico.aspx">Medico</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:HyperLink ID="hplReportes" class="menu-link" runat="server" NavigateUrl="~/Reportes.aspx">Reportes</asp:HyperLink>
                            <asp:HyperLink ID="hplUsuario" class="menu-link" runat="server" NavigateUrl="~/administrarUsuario.aspx">Administrar Usuario</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </aside>
            <main class="col-md-9">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:GridView ID="GridViewMed" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridViewMedicos1_PageIndexChanging" PageSize="5" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridViewMed_SelectedIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Legajo">
                        <ItemTemplate>
                            <asp:Label ID="lblLegajo" runat="server" Text='<%# Bind("Legajo_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dni">
                        <ItemTemplate>
                            <asp:Label ID="lblDni" runat="server" Text='<%# Bind("DNI_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lblNombre" runat="server" Text='<%# Bind("Nombre_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lblApellido" runat="server" Text='<%# Bind("Apellido_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sexo">
                        <ItemTemplate>
                            <asp:Label ID="lblSexo" runat="server" Text='<%# Bind("Sexo_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nacionalidad">
                        <ItemTemplate>
                            <asp:Label ID="lblNacionalidad" runat="server" Text='<%# Bind("Nacionalidad_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha Nacimiento">
                        <ItemTemplate>
                            <asp:Label ID="lblFechaNac" runat="server" Text='<%# Bind("FechaNacimiento_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Direccion">
                        <ItemTemplate>
                            <asp:Label ID="lblDireccion" runat="server" Text='<%# Bind("Direccion_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Provincia">
                        <ItemTemplate>
                            <asp:Label ID="lblProvicia" runat="server" Text='<%# Bind("Nombre_prov") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Localidad">
                        <ItemTemplate>
                            <asp:Label ID="lblLocalidad" runat="server" Text='<%# Bind("Nombre_loca") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Correo">
                        <ItemTemplate>
                            <asp:Label ID="lblCorreo" runat="server" Text='<%# Bind("CorreoElectronico_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Telefono">
                        <ItemTemplate>
                            <asp:Label ID="lblTelefono" runat="server" Text='<%# Bind("Telefono_me") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Especialidad">
                        <ItemTemplate>
                            <asp:Label ID="lblEspecialidad" runat="server" Text='<%# Bind("Nombre_esp") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
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
                            <asp:Button ID="AltaSeleccionado" runat="server" OnClick="AltaSeleccionado_Click" Text="Dar de Alta al SELECCIONADO" />
                            <%--<asp:GridView ID="GridView1" runat="server">
                            </asp:GridView>--%>
                            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>


            </main>
        </div>
        
    </form>
</body>
</html>
